// ---------------------------------------------------------- |
//
// TEST: DZE200: Unicode scope convention test
//
// Details:
// --------
// Each test was initiated exactly 5 minutes after a fresh
// server restart to ensure identical conditions for every
// individual test.
//
// This is important because the `diag_tickTime` value
// degrades over time.
//
// Each test was performed exactly ten times, with an interval
// of approximately 1 second between individual runs
// (resulting in a total of 100,000 executions).
//
// All tests were conducted on the Lingor map.
//
// Windows 10 (x64) | Intel® Core™ i7-9700KF CPU @ 3.60GHz
//
if (!isNil "DZE200_recompile") then // define in testkit, if needed
{
    DZE200_compiled                    = nil;
    DZE200_fnc_sanitizeInput           = nil;
    DZE200_badChars                    = nil;
    DZE200_fnc_sanitizeInput_optimized = nil;
    DZE200_strict_char_filter          = nil;
    DZE200_fnc_sanitize_string         = nil;
    DZE200_number_char_filter          = nil;
    DZE200_fnc_sanitize_number         = nil;
    DZE200_run                         = nil;
    DZE200_reset                       = nil;
    DZE200_recompile                   = nil;
};


if (isNil "DZE200_compiled") then
{
    DZE200_received        = " !""#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_`abcdefghijklmnopqrstuvwxyz{|}~😀";
    DZE200_expected_string = "0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ_abcdefghijklmnopqrstuvwxyz";
    DZE200_expected_number = "+-.0123456789Ee";

    // ---------------------------------------------------------- |
    //
    // fnc_sanitizeInput
    //
    // filters DZE200_received to:
    // ---------------------------
    // " !#$%()*+-0123456789=@ABCDEFGHIJKLMNOPQRSTUVWXYZ^_abcdefghijklmnopqrstuvwxyz😀"
    //
    DZE200_fnc_sanitizeInput =
    {
        local _input = _this select 0;
        local _type  = _this select 1; // 0 = Number, 1 = String

        _input = toArray (_input);
        local _badChars = [60,62,38,123,125,91,93,59,58,39,96,126,44,46,47,63,124,92,34];

        {
            _input = _input - [_x];
        } forEach _badChars;

        _input = toString (_input);

        if (_type == 0) then {_input = parseNumber _input;};

        _input
    };

    // ---------------------------------------------------------- |
    //
    // fnc_sanitizeInput_optimized
    //
    // filters DZE200_received to:
    // ---------------------------
    // " !#$%()*+-0123456789=@ABCDEFGHIJKLMNOPQRSTUVWXYZ^_abcdefghijklmnopqrstuvwxyz😀"
    //
    DZE200_badChars = [60,62,38,123,125,91,93,59,58,39,96,126,44,46,47,63,124,92,34];

    // _this select 0: stringified Number or String
    // _this select 1: type: 0 = Number, 1 = String
    DZE200_fnc_sanitizeInput_optimized =
    {
        if (_this select 1 == 0) exitWith
        {
            parseNumber toString ((toArray (_this select 0)) - DZE200_badChars);
        };

        toString ((toArray (_this select 0)) - DZE200_badChars);
    };

    // ---------------------------------------------------------- |
    //
    // Refactored DZE function for string
    //
    // filters DZE200_received to:
    // ---------------------------
    // "0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ_abcdefghijklmnopqrstuvwxyz"
    //
    DZE200_strict_char_filter =
    [
        48,49,50,51,52,53,54,55,56,57,                                                                       // 0-9
        65,66,67,68,69,70,71,72,73,74,75,76,77,78,79,80,81,82,83,84,85,86,87,88,89,90,                       // A-Z
        95,                                                                                                  // _
        97,98,99,100,101,102,103,104,105,106,107,108,109,110,111,112,113,114,115,116,117,118,119,120,121,122 // a-z
    ];

    DZE200_fnc_sanitize_string =
    {
        local _input = toArray _this;
        toString (_input - (_input - DZE200_strict_char_filter));
    };

    // ---------------------------------------------------------- |
    //
    // Refactored DZE function for number
    //
    // filters DZE200_received to:
    // ---------------------------
    // "+-.0123456789Ee"
    //
    DZE200_number_char_filter =
    [
        43,45,46,                      // + - .
        48,49,50,51,52,53,54,55,56,57, // 0-9
        69,                            // E
        101                            // e
    ];

    DZE200_fnc_sanitize_number =
    {
        local _input = toArray _this;
        toString (_input - (_input - DZE200_number_char_filter));

        //--- Here we test the filtering, so we don't return the parsed number,
        //    but the filtered string.
        //parseNumber toString (_input - (_input - DZE200_number_char_filter));
    };

    // ---------------------------------------------------------- |
    //
    // Test runner: 10'000 cycles
    //              measuring min, max anv avg time in μs
    //
    DZE200_run =
    {
        local __fnc   = _this select 0;
        local __arg   = _this select 1;
        local __exp   = _this select 2;

        local __start = diag_tickTime;
        local __stop  = diag_tickTime;
        local __min   = 1.0;
        local __max   = 0.0;
        local __sum   = 0.0;

        local __result = [];
        __result resize 10000;

        for "_i" from 0 to 9999 do
        {
            __start = diag_tickTime;
            __arg call __fnc;
            __stop  = diag_tickTime - __start;

            __result set [_i, __stop];
        };

        local __total_calls =
        {
            call
            {
                if (_x < __min) exitWith
                {
                    __min = _x;
                };

                if (_x > __max) then
                {
                    __max = _x;
                };
            };

            __sum = __sum + _x;
            true
        } count __result;

        diag_log format [
             "[PERF] total calls: %1 | min: %2 μs | max: %3 μs | avg: %4 μs | pass: %5"
            ,__total_calls
            ,__min * 1000000
            ,__max * 1000000
            ,(__sum / 10000) * 1000000
            ,__arg call __fnc == __exp
        ];
    };

    //--- avoid recompilation
    DZE200_compiled = true;
};


// ---------------------------------------------------------- |
//
// fnc_sanitizeInput
//
// "[PERF] total calls: 10000 | min: 0 μs | max: 2014.16 μs | avg: 119.104 μs | pass: false"
// "[PERF] total calls: 10000 | min: 0 μs | max: 2014.16 μs | avg: 118.884 μs | pass: false"
// "[PERF] total calls: 10000 | min: 0 μs | max: 1037.6  μs | avg: 120.789 μs | pass: false"
// "[PERF] total calls: 10000 | min: 0 μs | max: 1037.6  μs | avg: 120.789 μs | pass: false"
// "[PERF] total calls: 10000 | min: 0 μs | max: 2014.16 μs | avg: 119.006 μs | pass: false"
// "[PERF] total calls: 10000 | min: 0 μs | max: 1037.6  μs | avg: 119.672 μs | pass: false"
// "[PERF] total calls: 10000 | min: 0 μs | max: 1037.6  μs | avg: 119.397 μs | pass: false"
// "[PERF] total calls: 10000 | min: 0 μs | max: 1037.6  μs | avg: 120.398 μs | pass: false"
// "[PERF] total calls: 10000 | min: 0 μs | max: 1037.6  μs | avg: 119.403 μs | pass: false"
// "[PERF] total calls: 10000 | min: 0 μs | max: 1037.6  μs | avg: 121.313 μs | pass: false"
//                                                                 ----------
//                                                                 119.876 μs | baseline
//
[DZE200_fnc_sanitizeInput, [DZE200_received, 1], DZE200_expected_string] call DZE200_run;
diag_log ([DZE200_received, 1] call DZE200_fnc_sanitizeInput);


// ---------------------------------------------------------- |
//
// DZE200_fnc_sanitizeInput_optimized
//
// "[PERF] total calls: 10000 | min: 0 μs | max: 1007.08 μs | avg: 48.5992 μs | pass: false"
// "[PERF] total calls: 10000 | min: 0 μs | max: 1007.08 μs | avg: 48.8022 μs | pass: false"
// "[PERF] total calls: 10000 | min: 0 μs | max: 1007.08 μs | avg: 48.3948 μs | pass: false"
// "[PERF] total calls: 10000 | min: 0 μs | max: 2014.16 μs | avg: 48.996  μs | pass: false"
// "[PERF] total calls: 10000 | min: 0 μs | max: 1007.08 μs | avg: 48.4955 μs | pass: false"
// "[PERF] total calls: 10000 | min: 0 μs | max: 1007.08 μs | avg: 49.6979 μs | pass: false"
// "[PERF] total calls: 10000 | min: 0 μs | max: 1007.08 μs | avg: 48.9044 μs | pass: false"
// "[PERF] total calls: 10000 | min: 0 μs | max: 1007.08 μs | avg: 48.8983 μs | pass: false"
// "[PERF] total calls: 10000 | min: 0 μs | max: 1007.08 μs | avg: 48.1964 μs | pass: false"
// "[PERF] total calls: 10000 | min: 0 μs | max: 1007.08 μs | avg: 48.5107 μs | pass: false"
//                                                                 ----------
//                                                                 48.7495 μs | -71.1260   μs
//                                                                               -0.071126 ms
//                                                                               -0.000071 s
//
[DZE200_fnc_sanitizeInput_optimized, [DZE200_received, 1], DZE200_expected_string] call DZE200_run;
diag_log ([DZE200_received, 1] call DZE200_fnc_sanitizeInput_optimized);


// ---------------------------------------------------------- |
//
// Refactored DZE function for string
//
// "[PERF] total calls: 10000 | min: 0 μs | max: 1007.08 μs | avg: 164.297 μs | pass: true"
// "[PERF] total calls: 10000 | min: 0 μs | max: 1007.08 μs | avg: 165.598 μs | pass: true"
// "[PERF] total calls: 10000 | min: 0 μs | max: 1007.08 μs | avg: 165.198 μs | pass: true"
// "[PERF] total calls: 10000 | min: 0 μs | max: 1007.08 μs | avg: 164.005 μs | pass: true"
// "[PERF] total calls: 10000 | min: 0 μs | max: 1007.08 μs | avg: 163.702 μs | pass: true"
// "[PERF] total calls: 10000 | min: 0 μs | max: 1007.08 μs | avg: 164.487 μs | pass: true"
// "[PERF] total calls: 10000 | min: 0 μs | max: 1007.08 μs | avg: 163.309 μs | pass: true"
// "[PERF] total calls: 10000 | min: 0 μs | max: 1007.08 μs | avg: 163.501 μs | pass: true"
// "[PERF] total calls: 10000 | min: 0 μs | max: 1007.08 μs | avg: 163.113 μs | pass: true"
// "[PERF] total calls: 10000 | min: 0 μs | max: 1007.08 μs | avg: 165.491 μs | pass: true"
//                                                                 ----------
//                                                                 164.270 μs | +44.395    μs
//                                                                               +0.044395 ms
//                                                                               +0.000044 s
//
[DZE200_fnc_sanitize_string, DZE200_received, DZE200_expected_string] call DZE200_run;
diag_log (DZE200_received call DZE200_fnc_sanitize_string);


// ---------------------------------------------------------- |
//
// Refactored DZE function for number
//
// "[PERF] total calls: 10000 | min: 0 μs | max: 1007.08 μs | avg: 143.396 μs | pass: true"
// "[PERF] total calls: 10000 | min: 0 μs | max: 1007.08 μs | avg: 144.006 μs | pass: true"
// "[PERF] total calls: 10000 | min: 0 μs | max: 1007.08 μs | avg: 143.71  μs | pass: true"
// "[PERF] total calls: 10000 | min: 0 μs | max: 1007.08 μs | avg: 144.186 μs | pass: true"
// "[PERF] total calls: 10000 | min: 0 μs | max: 1007.08 μs | avg: 144.51  μs | pass: true"
// "[PERF] total calls: 10000 | min: 0 μs | max: 1007.08 μs | avg: 144.4   μs | pass: true"
// "[PERF] total calls: 10000 | min: 0 μs | max: 1007.08 μs | avg: 144.504 μs | pass: true"
// "[PERF] total calls: 10000 | min: 0 μs | max: 1007.08 μs | avg: 143.195 μs | pass: true"
// "[PERF] total calls: 10000 | min: 0 μs | max: 1007.08 μs | avg: 143.008 μs | pass: true"
// "[PERF] total calls: 10000 | min: 0 μs | max: 1007.08 μs | avg: 143.796 μs | pass: true"
//                                                                 ----------
//                                                                 143.871 μs | +23.996    μs
//                                                                               +0.023996 ms
//                                                                               +0.000024 s
//
[DZE200_fnc_sanitize_number, DZE200_received, DZE200_expected_number] call DZE200_run;
diag_log (DZE200_received call DZE200_fnc_sanitize_number);
