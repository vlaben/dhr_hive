# DHR hive subsystem player provider

<br/>

## logging

<br/>

| <sub>**COM_SUID**<sub/> | <sub>**COM_TYPE**<sub/> | <sub>**COM_EXID**<sub/> | <sub>**specification sheet**<sub/>   | <sub>**SQF library function**<sub/> | <sub>**short description**<sub/>           |
|:-----------------------:|:-----------------------:|:-----------------------:|:-------------------------------------|:------------------------------------|:-------------------------------------------|
|      <sub>3<sub/>       |      <sub>2<sub/>       |      <sub>1<sub/>       | <sub>[log player message][301]<sub/> | <sub>_DHR_f_plr_log_message_<sub/>  | <sub>Log message with given severity<sub/> |

<br/>

## on player join (async)

<br/>

| <sub>**MySQL Tables**<sub/>                 | <sub>**name / pattern**<sub/>            |
|:--------------------------------------------|:-----------------------------------------|
| <sub>Shared Table Hive (cross-worlds)<sub/> | `th_plr.ibd`                             |
| <sub>Unique Table World (per-world)<sub/>   | `tw_##_<worldname>_<suffix>_plr.ibd`<br> |

<br/>

| <sub>**COM_SUID**<sub/> | <sub>**COM_TYPE**<sub/> | <sub>**COM_EXID**<sub/> | <sub>**specification sheet**<sub/>     | <sub>**SQF library function**<sub/>      | <sub>**short description**<sub/>                            |
|:-----------------------:|:-----------------------:|:-----------------------:|:---------------------------------------|:-----------------------------------------|:------------------------------------------------------------|
|      <sub>3<sub/>       |      <sub>3<sub/>       |      <sub>2<sub/>       | <sub>[on player login (P)][3021]<sub/> | <sub>_DHR_f_plr_on_player_login_P_<sub/> | <sub>Get a data PROMISE for a logging in player<sub/>       |
|      <sub>3<sub/>       |      <sub>4<sub/>       |      <sub>2<sub/>       | <sub>[on player login (F)][3022]<sub/> | <sub>_DHR_f_plr_on_player_login_F_<sub/> | <sub>Retrieve FUTURE data for the logged in player<sub/>    |
|      <sub>3<sub/>       |      <sub>3<sub/>       |      <sub>3<sub/>       | <sub>[on player setup (P)][3031]<sub/> | <sub>_DHR_f_plr_on_player_setup_P_<sub/> | <sub>Get a setup data PROMISE for a joining player<sub/>    |
|      <sub>3<sub/>       |      <sub>4<sub/>       |      <sub>3<sub/>       | <sub>[on player setup (F)][3032]<sub/> | <sub>_DHR_f_plr_on_player_setup_F_<sub/> | <sub>Retrieve FUTURE setup data for the joined player<sub/> |

<br/>

## sync (per-world)

<br/>

| <sub>**MySQL Tables**<sub/>               | <sub>**name / pattern**<sub/>            |
|:------------------------------------------|:-----------------------------------------|
| <sub>Unique Table World (per-world)<sub/> | `tw_##_<worldname>_<suffix>_plr.ibd`<br> |

<br/>

| <sub>**COM_SUID**<sub/> | <sub>**COM_TYPE**<sub/> | <sub>**COM_EXID**<sub/> | <sub>**specification sheet**<sub/>          | <sub>**SQF library function**<sub/>          | <sub>**short description**<sub/>                                 |
|:-----------------------:|:-----------------------:|:-----------------------:|:--------------------------------------------|:---------------------------------------------|:-----------------------------------------------------------------|
|      <sub>3<sub/>       |      <sub>2<sub/>       |      <sub>5<sub/>       | <sub>[sync character record][305]<sub/>     | <sub>_DHR_f_plr_sync_character_record_<sub/> | <sub>Update character database record<sub/>                      |
|      <sub>3<sub/>       |      <sub>2<sub/>       |      <sub>6<sub/>       | <sub>[sync character logged][306]<sub/>     | <sub>_DHR_f_plr_sync_pw_logged_<sub/>        | <sub>Update character logged<sub/>                               |
|      <sub>3<sub/>       |      <sub>2<sub/>       |      <sub>7<sub/>       | <sub>[sync character humanity][307]<sub/>   | <sub>_DHR_f_plr_sync_pw_humanity_<sub/>      | <sub>Update character humanity<sub/>                             |
|      <sub>3<sub/>       |      <sub>2<sub/>       |      <sub>8<sub/>       | <sub>[sync character cash][308]<sub/>       | <sub>_DHR_f_plr_sync_pw_cash_<sub/>          | <sub>Update character cash<sub/>                                 |
|      <sub>3<sub/>       |      <sub>2<sub/>       |      <sub>9<sub/>       | <sub>[sync character model][309]<sub/>      | <sub>_DHR_f_plr_sync_pw_model_<sub/>         | <sub>Update character skin<sub/>                                 |
|      <sub>3<sub/>       |      <sub>2<sub/>       |      <sub>10<sub/>      | <sub>[sync character worldspace][310]<sub/> | <sub>_DHR_f_plr_sync_pw_worldspace_<sub/>    | <sub>Update character direction and position<sub/>               |
|      <sub>3<sub/>       |      <sub>2<sub/>       |      <sub>11<sub/>      | <sub>[sync character medical][311]<sub/>    | <sub>_DHR_f_plr_sync_pw_medical_<sub/>       | <sub>Update current character state and medical data<sub/>       |
|      <sub>3<sub/>       |      <sub>2<sub/>       |      <sub>12<sub/>      | <sub>[sync character gear][312]<sub/>       | <sub>_DHR_f_plr_sync_pw_gear_<sub/>          | <sub>Update character inventory and backpack<sub/>               |
|      <sub>3<sub/>       |      <sub>2<sub/>       |      <sub>13<sub/>      | <sub>[sync character score][313]<sub/>      | <sub>_DHR_f_plr_sync_pw_score_<sub/>         | <sub>Update character score stats<sub/>                          |
|      <sub>3<sub/>       |      <sub>2<sub/>       |      <sub>14<sub/>      | <sub>[sync character death][314]<sub/>      | <sub>_DHR_f_plr_sync_pw_death_<sub/>         | <sub>Mark character database record as void (`pw_sid = 1`)<sub/> |

<br/>

## sync (cross-worlds)

<br/>

| <sub>**MySQL Tables**<sub/>                 | <sub>**name / pattern**<sub/> |
|:--------------------------------------------|:------------------------------|
| <sub>Shared Table Hive (cross-worlds)<sub/> | `th_plr.ibd`                  |

<br/>

| <sub>**COM_SUID**<sub/> | <sub>**COM_TYPE**<sub/> | <sub>**COM_EXID**<sub/> | <sub>**specification sheet**<sub/>   | <sub>**SQF library function**<sub/>       | <sub>**short description**<sub/>               |
|:-----------------------:|:-----------------------:|:-----------------------:|:-------------------------------------|:------------------------------------------|:-----------------------------------------------|
|      <sub>3<sub/>       |      <sub>2<sub/>       |      <sub>20<sub/>      | <sub>[sync player record][320]<sub/> | <sub>_DHR_f_plr_sync_player_record_<sub/> | <sub>Update player database record<sub/>       |
|      <sub>3<sub/>       |      <sub>2<sub/>       |      <sub>21<sub/>      | <sub>[sync player name][321]<sub/>   | <sub>_DHR_f_plr_sync_ph_name_<sub/>       | <sub>Update player name<sub/>                  |
|      <sub>3<sub/>       |      <sub>2<sub/>       |      <sub>22<sub/>      | <sub>[sync player cash][322]<sub/>   | <sub>_DHR_f_plr_sync_ph_cash_<sub/>       | <sub>Update player cash<sub/>                  |
|      <sub>3<sub/>       |      <sub>2<sub/>       |      <sub>23<sub/>      | <sub>[sync player bank][323]<sub/>   | <sub>_DHR_f_plr_sync_ph_bank_<sub/>       | <sub>Update player bank<sub/>                  |
|      <sub>3<sub/>       |      <sub>2<sub/>       |      <sub>24<sub/>      | <sub>[sync player money][324]<sub/>  | <sub>_DHR_f_plr_sync_ph_money_<sub/>      | <sub>Update player money (cash and bank)<sub/> |
|      <sub>3<sub/>       |      <sub>2<sub/>       |      <sub>25<sub/>      | <sub>[sync player group][325]<sub/>  | <sub>_DHR_f_plr_sync_ph_group_<sub/>      | <sub>Update player group<sub/>                 |
|      <sub>3<sub/>       |      <sub>2<sub/>       |      <sub>26<sub/>      | <sub>[sync player score][326]<sub/>  | <sub>_DHR_f_plr_sync_ph_score_<sub/>      | <sub>Update player score stats<sub/>           |

<br/>

## MySQL

<br/>

| <sub>**COM_SUID**<sub/> | <sub>**COM_TYPE**<sub/> | <sub>**COM_EXID**<sub/> | <sub>**specification sheet**<sub/>         | <sub>**SQF library function**<sub/> | <sub>**short description**<sub/>                                        |
|:-----------------------:|:-----------------------:|:-----------------------:|:-------------------------------------------|:------------------------------------|:------------------------------------------------------------------------|
|      <sub>3<sub/>       |      <sub>3<sub/>       |      <sub>28<sub/>      | <sub>[*open mysql session (P)][3281]<sub/> |                                     | <sub>Get an open MySQL session PROMISE<sub/>                            |
|      <sub>3<sub/>       |      <sub>4<sub/>       |      <sub>28<sub/>      | <sub>[*open mysql session (F)][3282]<sub/> |                                     | <sub>Retrieve open MySQL session FUTURE result<sub/>                    |
|      <sub>3<sub/>       |      <sub>2<sub/>       |      <sub>29<sub/>      | <sub>[*cleanup mysql tw table][329]<sub/>  |                                     | <sub>Delete all records marked for scheduled removal (`pw_sid=0`)<sub/> |

`* internal only`


[//]: # (Link references)

[301]: COM_EXID/01_log_message/301_log_message_ssheet.txt

[3021]: COM_EXID/02_on_player_login/302_on_player_login_P_ssheet.txt

[3022]: COM_EXID/02_on_player_login/302_on_player_login_F_ssheet.txt

[3031]: COM_EXID/03_on_player_setup/303_on_player_setup_ssheet_P.txt

[3032]: COM_EXID/03_on_player_setup/303_on_player_setup_ssheet_F.txt

[305]: COM_EXID/05_sync_character_record/305_sync_character_record_ssheet.txt

[306]: COM_EXID/06_sync_pw_logged/306_sync_pw_logged_ssheet.txt

[307]: COM_EXID/07_sync_pw_humanity/307_sync_pw_humanity_ssheet.txt

[308]: COM_EXID/08_sync_pw_cash/308_sync_pw_cash_ssheet.txt

[309]: COM_EXID/09_sync_pw_model/309_sync_pw_model_ssheet.txt

[310]: COM_EXID/10_sync_pw_worldspace/310_sync_pw_worldspace_ssheet.txt

[311]: COM_EXID/11_sync_pw_medical/311_sync_pw_medical_ssheet.txt

[312]: COM_EXID/12_sync_pw_gear/312_sync_pw_gear_ssheet.txt

[313]: COM_EXID/13_sync_pw_score/313_sync_pw_score_ssheet.txt

[314]: COM_EXID/14_sync_pw_death/314_sync_pw_death_ssheet.txt

[320]: COM_EXID/20_sync_player_record/320_sync_player_record_ssheet.txt

[321]: COM_EXID/21_sync_ph_name/321_sync_ph_name_ssheet.txt

[322]: COM_EXID/22_sync_ph_cash/322_sync_ph_cash_ssheet.txt

[323]: COM_EXID/23_sync_ph_bank/323_sync_ph_bank_ssheet.txt

[324]: COM_EXID/24_sync_ph_money/324_sync_ph_money_ssheet.txt

[325]: COM_EXID/25_sync_ph_group/325_sync_ph_group_ssheet.txt

[326]: COM_EXID/26_sync_ph_score/326_sync_ph_score_ssheet.txt

[3281]: COM_EXID/28_mysql_open_session/328_mysql_open_session_P_ssheet.txt

[3282]: COM_EXID/28_mysql_open_session/328_mysql_open_session_F_ssheet.txt

[329]: COM_EXID/29_mysql_cleanup_tw/329_mysql_cleanup_tw_ssheet.txt
