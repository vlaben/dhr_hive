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

| <sub>**COM_SUID**<sub/> | <sub>**COM_TYPE**<sub/> | <sub>**COM_EXID**<sub/> | <sub>**specification sheet**<sub/>     | <sub>**SQF library function**<sub/>      | <sub>**short description**<sub/>                            |
|:-----------------------:|:-----------------------:|:-----------------------:|:---------------------------------------|:-----------------------------------------|:------------------------------------------------------------|
|      <sub>3<sub/>       |      <sub>3<sub/>       |      <sub>2<sub/>       | <sub>[on player login (P)][3021]<sub/> | <sub>_DHR_f_plr_on_player_login_P_<sub/> | <sub>Get a data PROMISE for a logging in player<sub/>       |
|      <sub>3<sub/>       |      <sub>4<sub/>       |      <sub>2<sub/>       | <sub>[on player login (F)][3022]<sub/> | <sub>_DHR_f_plr_on_player_login_F_<sub/> | <sub>Retrieve FUTURE data for the logged in player<sub/>    |
|      <sub>3<sub/>       |      <sub>3<sub/>       |      <sub>3<sub/>       | <sub>[on player setup (P)][3031]<sub/> | <sub>_DHR_f_plr_on_player_setup_P_<sub/> | <sub>Get a setup data PROMISE for a joining player<sub/>    |
|      <sub>3<sub/>       |      <sub>4<sub/>       |      <sub>3<sub/>       | <sub>[on player setup (F)][3032]<sub/> | <sub>_DHR_f_plr_on_player_setup_F_<sub/> | <sub>Retrieve FUTURE setup data for the joined player<sub/> |

<br/>

## sync (per-world)

<br/>

| <sub>**COM_SUID**<sub/> | <sub>**COM_TYPE**<sub/> | <sub>**COM_EXID**<sub/> | <sub>**specification sheet**<sub/>          | <sub>**SQF library function**<sub/>       | <sub>**short description**<sub/>                                 |
|:-----------------------:|:-----------------------:|:-----------------------:|:--------------------------------------------|:------------------------------------------|:-----------------------------------------------------------------|
|      <sub>3<sub/>       |      <sub>2<sub/>       |      <sub>5<sub/>       | <sub>[sync character record][305]<sub/>     | <sub>_DHR_f_plr_sync_pw_record_<sub/>     | <sub>Update character database record<sub/>                      |
|      <sub>3<sub/>       |      <sub>2<sub/>       |      <sub>6<sub/>       | <sub>[sync character faction][306]<sub/>    | <sub>_DHR_f_plr_sync_pw_faction_<sub/>    | <sub>Update character faction ID<sub/>                           |
|      <sub>3<sub/>       |      <sub>2<sub/>       |      <sub>7<sub/>       | <sub>[sync character logged][307]<sub/>     | <sub>_DHR_f_plr_sync_pw_logged_<sub/>     | <sub>Update character logged<sub/>                               |
|      <sub>3<sub/>       |      <sub>2<sub/>       |      <sub>8<sub/>       | <sub>[sync character humanity][308]<sub/>   | <sub>_DHR_f_plr_sync_pw_humanity_<sub/>   | <sub>Update character humanity<sub/>                             |
|      <sub>3<sub/>       |      <sub>2<sub/>       |      <sub>9<sub/>       | <sub>[sync character cash][309]<sub/>       | <sub>_DHR_f_plr_sync_pw_cash_<sub/>       | <sub>Update character cash<sub/>                                 |
|      <sub>3<sub/>       |      <sub>2<sub/>       |      <sub>10<sub/>      | <sub>[sync character model][310]<sub/>      | <sub>_DHR_f_plr_sync_pw_model_<sub/>      | <sub>Update character skin<sub/>                                 |
|      <sub>3<sub/>       |      <sub>2<sub/>       |      <sub>11<sub/>      | <sub>[sync character worldspace][311]<sub/> | <sub>_DHR_f_plr_sync_pw_worldspace_<sub/> | <sub>Update character direction and position<sub/>               |
|      <sub>3<sub/>       |      <sub>2<sub/>       |      <sub>12<sub/>      | <sub>[sync character medical][312]<sub/>    | <sub>_DHR_f_plr_sync_pw_medical_<sub/>    | <sub>Update current character state and medical data<sub/>       |
|      <sub>3<sub/>       |      <sub>2<sub/>       |      <sub>13<sub/>      | <sub>[sync character XP][313]<sub/>         | <sub>_DHR_f_plr_sync_pw_xp_<sub/>         | <sub>Update character eXPerience stats<sub/>                     |
|      <sub>3<sub/>       |      <sub>2<sub/>       |      <sub>14<sub/>      | <sub>[sync character props][314]<sub/>      | <sub>_DHR_f_plr_sync_pw_props_<sub/>      | <sub>Update character DYNAMIC properties<sub/>                   |
|      <sub>3<sub/>       |      <sub>2<sub/>       |      <sub>15<sub/>      | <sub>[sync character gear][315]<sub/>       | <sub>_DHR_f_plr_sync_pw_gear_<sub/>       | <sub>Update character inventory and backpack<sub/>               |
|      <sub>3<sub/>       |      <sub>2<sub/>       |      <sub>16<sub/>      | <sub>[sync character death][316]<sub/>      | <sub>_DHR_f_plr_sync_pw_death_<sub/>      | <sub>Mark character database record as void (`pw_sid = 1`)<sub/> |

<br/>

## sync (cross-worlds)

<br/>

| <sub>**COM_SUID**<sub/> | <sub>**COM_TYPE**<sub/> | <sub>**COM_EXID**<sub/> | <sub>**specification sheet**<sub/>     | <sub>**SQF library function**<sub/>     | <sub>**short description**<sub/>               |
|:-----------------------:|:-----------------------:|:-----------------------:|:---------------------------------------|:----------------------------------------|:-----------------------------------------------|
|      <sub>3<sub/>       |      <sub>2<sub/>       |      <sub>18<sub/>      | <sub>[sync player record][318]<sub/>   | <sub>_DHR_f_plr_sync_ph_record_<sub/>   | <sub>Update player database record<sub/>       |
|      <sub>3<sub/>       |      <sub>2<sub/>       |      <sub>19<sub/>      | <sub>[sync player name][319]<sub/>     | <sub>_DHR_f_plr_sync_ph_name_<sub/>     | <sub>Update player name<sub/>                  |
|      <sub>3<sub/>       |      <sub>2<sub/>       |      <sub>20<sub/>      | <sub>[sync player humanity][320]<sub/> | <sub>_DHR_f_plr_sync_ph_humanity_<sub/> | <sub>Update player humanity<sub/>              |
|      <sub>3<sub/>       |      <sub>2<sub/>       |      <sub>21<sub/>      | <sub>[sync player cash][321]<sub/>     | <sub>_DHR_f_plr_sync_ph_cash_<sub/>     | <sub>Update player cash<sub/>                  |
|      <sub>3<sub/>       |      <sub>2<sub/>       |      <sub>22<sub/>      | <sub>[sync player bank][322]<sub/>     | <sub>_DHR_f_plr_sync_ph_bank_<sub/>     | <sub>Update player bank<sub/>                  |
|      <sub>3<sub/>       |      <sub>2<sub/>       |      <sub>23<sub/>      | <sub>[sync player money][323]<sub/>    | <sub>_DHR_f_plr_sync_ph_money_<sub/>    | <sub>Update player money (cash and bank)<sub/> |
|      <sub>3<sub/>       |      <sub>2<sub/>       |      <sub>24<sub/>      | <sub>[sync player XP][324]<sub/>       | <sub>_DHR_f_plr_sync_ph_xp_<sub/>       | <sub>Update player eXPerience stats<sub/>      |
|      <sub>3<sub/>       |      <sub>2<sub/>       |      <sub>25<sub/>      | <sub>[sync player group][325]<sub/>    | <sub>_DHR_f_plr_sync_ph_group_<sub/>    | <sub>Update player group<sub/>                 |
|      <sub>3<sub/>       |      <sub>2<sub/>       |      <sub>26<sub/>      | <sub>[sync player props][326]<sub/>    | <sub>_DHR_f_plr_sync_ph_props_<sub/>    | <sub>Update player DYNAMIC properties<sub/>    |

<br/>

## MySQL

<br/>

| <sub>**MySQL table**<sub/>                 | <sub>**[DZE100: [A/4] Name patterns][1]**<sub/> | <sub>**specification sheet**<sub/>        | <sub>**DDL**<sub/>                 |
|:-------------------------------------------|:------------------------------------------------|:------------------------------------------|:-----------------------------------|
| <sub>**per-world** (unique) table<sub/>    | `tw_##_<worldname>_<suffix>_plr.ibd`<br>        | <sub>[331_tw_plr_ssheet.txt][33101]<sub/> | <sub>[331_tw_plr.sql][33102]<sub/> |
| <sub>**cross-worlds** (shared) table<sub/> | `th_plr.ibd`                                    | <sub>[332_th_plr_ssheet.txt][33201]<sub/> | <sub>[332_th_plr.sql][33202]<sub/> |

<br/>

| <sub>**COM_SUID**<sub/> | <sub>**COM_TYPE**<sub/> | <sub>**COM_EXID**<sub/> | <sub>**specification sheet**<sub/>         | <sub>**SQF library function**<sub/> | <sub>**short description**<sub/>                                        |
|:-----------------------:|:-----------------------:|:-----------------------:|:-------------------------------------------|:------------------------------------|:------------------------------------------------------------------------|
|      <sub>3<sub/>       |      <sub>3<sub/>       |      <sub>28<sub/>      | <sub>[*open mysql session (P)][3281]<sub/> |                                     | <sub>Get an open MySQL session PROMISE<sub/>                            |
|      <sub>3<sub/>       |      <sub>4<sub/>       |      <sub>28<sub/>      | <sub>[*open mysql session (F)][3282]<sub/> |                                     | <sub>Retrieve open MySQL session FUTURE result<sub/>                    |
|      <sub>3<sub/>       |      <sub>2<sub/>       |      <sub>29<sub/>      | <sub>[*cleanup mysql tw table][329]<sub/>  |                                     | <sub>Delete all records marked for scheduled removal (`pw_sid=0`)<sub/> |

`* internal only`


[//]: # (Link references)

[1]: ../../../naming_convention/DZE100_hive_world_naming_convention.txt

[301]: COM_EXID/01_log_message/301_log_message_ssheet.txt

[3021]: COM_EXID/02_on_player_login/302_on_player_login_P_ssheet.txt

[3022]: COM_EXID/02_on_player_login/302_on_player_login_F_ssheet.txt

[3031]: COM_EXID/03_on_player_setup/303_on_player_setup_ssheet_P.txt

[3032]: COM_EXID/03_on_player_setup/303_on_player_setup_ssheet_F.txt

[305]: COM_EXID/05_sync_pw_record/305_sync_pw_record_ssheet.txt

[306]: COM_EXID/06_sync_pw_faction/306_sync_pw_faction_ssheet.txt

[307]: COM_EXID/07_sync_pw_logged/307_sync_pw_logged_ssheet.txt

[308]: COM_EXID/08_sync_pw_humanity/308_sync_pw_humanity_ssheet.txt

[309]: COM_EXID/09_sync_pw_cash/309_sync_pw_cash_ssheet.txt

[310]: COM_EXID/10_sync_pw_model/310_sync_pw_model_ssheet.txt

[311]: COM_EXID/11_sync_pw_worldspace/311_sync_pw_worldspace_ssheet.txt

[312]: COM_EXID/12_sync_pw_medical/312_sync_pw_medical_ssheet.txt

[313]: COM_EXID/13_sync_pw_xp/313_sync_pw_xp_ssheet.txt

[314]: COM_EXID/14_sync_pw_props/314_sync_pw_props_ssheet.txt

[315]: COM_EXID/15_sync_pw_gear/315_sync_pw_gear_ssheet.txt

[316]: COM_EXID/16_sync_pw_death/316_sync_pw_death_ssheet.txt

[318]: COM_EXID/18_sync_ph_record/318_sync_ph_record_ssheet.txt

[319]: COM_EXID/19_sync_ph_name/319_sync_ph_name_ssheet.txt

[320]: COM_EXID/20_sync_ph_humanity/320_sync_ph_humanity_ssheet.txt

[321]: COM_EXID/21_sync_ph_cash/321_sync_ph_cash_ssheet.txt

[322]: COM_EXID/22_sync_ph_bank/322_sync_ph_bank_ssheet.txt

[323]: COM_EXID/23_sync_ph_money/323_sync_ph_money_ssheet.txt

[324]: COM_EXID/24_sync_ph_xp/324_sync_ph_xp_ssheet.txt

[325]: COM_EXID/25_sync_ph_group/325_sync_ph_group_ssheet.txt

[326]: COM_EXID/26_sync_ph_props/326_sync_ph_props_ssheet.txt

[3281]: COM_EXID/28_mysql_open_session/328_mysql_open_session_P_ssheet.txt

[3282]: COM_EXID/28_mysql_open_session/328_mysql_open_session_F_ssheet.txt

[329]: COM_EXID/29_mysql_cleanup_tw/329_mysql_cleanup_tw_ssheet.txt

[33101]: MySQL/01_tw/331_tw_plr_ssheet.txt

[33102]: MySQL/01_tw/331_tw_plr.sql

[33201]: MySQL/02_th/332_th_plr_ssheet.txt

[33202]: MySQL/02_th/332_th_plr.sql
