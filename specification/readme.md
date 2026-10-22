# `DHR hive system extension for DayZ Epoch`

<br/>

## `Naming convention`


<br/>


| **naming convention**                    | **topic**                                                     |
|:-----------------------------------------|:--------------------------------------------------------------|
| [DZE100_hive_world_naming_convention][1] | <sub>DZE hive world / map naming convention (`DZE-108`)<sub/> |


<br/>


## `System specifications (executive summary)`


<br/>


| **specification**                 | **topic**                                                            |
|:----------------------------------|:---------------------------------------------------------------------|
| [DHR100_hive_system][10]          | <sub>**DHR hive system high level overview**<sub/>                   |
| [DHR200_hive_request_packet][20]  | <sub>Arma2OA server  communication to DHR hive system<sub/>          |
| [DHR300_hive_persistence_layer]   | <sub>DHR hive system communication to MySQL server (`DZE-108`)<sub/> |
| [DHR400_hive_response_packet][40] | <sub>DHR hive system communication to Arma2OA server<sub/>           |
| [DHR500_hive_logging][50]         | <sub>DHR hive system communication to server owner<sub/>             |


<br/>


> **Inline naming convention** `(as per DHR200: [A] NAMING CONVENTION)`:<br>
> <br>
> `COM_SUID : system element unique ID`<br>
> `COM_TYPE : type of request (this overview sets recommended COM_TYPE, but user may change it)`<br>
> `COM_EXID : execution id`

<br/>


## `Refactoring`


<br/>


| **helper**                             | **description**                            |
|:---------------------------------------|:-------------------------------------------|
| [Legacy `CHILD:*` refactoring map][60] | <sub>CSV file helper for refactoring<sub/> |


<br/>


| **specification**          | **description**                                                                                                                                                                                                                                                                                                                                                                                                 |
|:---------------------------|:----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| [DZE-107-specification][2] | <sub>`dhr_hive.dll` - partial implementation of the [DHR hive system][10],<br>`maintaining compatibility` with the legacy `HiveExt.dll` library for `DZE 1.0.7.2`.<br>**NOTES:**<br>`Supports MySQL 9.7.* LTS (requires fresh database).`<br>`The server owner does not need to make any modifications,`<br>`provided that their own code does not rely on any obsolete`<br>`calls of the CHILD:XX type.`<sub/> |
| [DZE-108-specification][3] | <sub>`dhr_hive.dll` - complete implementation of the [DHR hive system][10]<br>with major `(backward-incompatible)` changes for `DZE 1.0.8`<sub/>                                                                                                                                                                                                                                                                |


[//]: # (Link references)

[1]: naming_convention/DZE100_hive_world_naming_convention.txt

[2]: DZE-107-specification/readme.md

[3]: DZE-108-specification/readme.md

[10]: executive_summary/DHR100_hive_system.txt

[20]: executive_summary/DHR200_hive_request_packet.txt

[30]: executive_summary/DHR300_hive_persistence_layer.txt

[40]: executive_summary/DHR400_hive_response_packet.txt

[50]: executive_summary/DHR500_hive_logging.txt

[60]: refactoring/CHILD_refactoring_map.csv
