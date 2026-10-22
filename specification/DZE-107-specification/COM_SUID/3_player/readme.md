# DHR hive subsystem player provider

<br/>

## logging

<br/>

| <sub>**COM_SUID**<sub/> | <sub>**COM_TYPE**<sub/> | <sub>**COM_EXID**<sub/> | <sub>**specification sheet**<sub/>   | <sub>**SQF library function**<sub/> | <sub>**short description**<sub/>                      |
|:-----------------------:|:-----------------------:|:-----------------------:|:-------------------------------------|:------------------------------------|:------------------------------------------------------|
|      <sub>3<sub/>       |      <sub>2<sub/>       |      <sub>1<sub/>       | <sub>[log player message][301]<sub/> | <sub>_DHR_f_plr_log_message_<sub/>  | <sub>Log message with given severity<br>(`NEW`)<sub/> |

<br/>

## refactored legacy `CHILD:*` calls related to `player`

<br/>

| <sub>**COM_SUID**<sub/> | <sub>**COM_TYPE**<sub/> | <sub>**COM_EXID**<sub/> | <sub>**specification sheet**<sub/>                    | <sub>**SQF library function**<sub/>          | <sub>**short description**<sub/>                                       |
|:-----------------------:|:-----------------------:|:-----------------------:|:------------------------------------------------------|:---------------------------------------------|:-----------------------------------------------------------------------|
|      <sub>3<sub/>       |      <sub>3<sub/>       |      <sub>2<sub/>       | <sub>[CHILD:101 loadPlayer (P)][3021]<sub/>           | <sub>_DHR_f_ch101_load_player_P_<sub/>       | <sub>Get a data PROMISE for a logging in player<br>`(NEW)`<sub/>       |
|      <sub>3<sub/>       |      <sub>4<sub/>       |      <sub>2<sub/>       | <sub>[CHILD:101 loadPlayer (F)][3022]<sub/>           | <sub>_DHR_f_ch101_load_player_F_<sub/>       | <sub>Retrieve FUTURE data for the logged in player<br>`(NEW)`<sub/>    |
|      <sub>3<sub/>       |      <sub>3<sub/>       |      <sub>3<sub/>       | <sub>[CHILD:102 loadCharacterDetails (P)][3031]<sub/> | <sub>_DHR_f_ch102_load_character_P_<sub/>    | <sub>Get a setup data PROMISE for a joining player<br>`(NEW)`<sub/>    |
|      <sub>3<sub/>       |      <sub>4<sub/>       |      <sub>3<sub/>       | <sub>[CHILD:102 loadCharacterDetails (F)][3032]<sub/> | <sub>_DHR_f_ch102_load_character_F_<sub/>    | <sub>Retrieve FUTURE setup data for the joined player<br>`(NEW)`<sub/> |
|      <sub>3<sub/>       |      <sub>2<sub/>       |      <sub>4<sub/>       | <sub>[CHILD:103 recordCharacterLogin][304]<sub/>      | <sub>_DHR_f_ch103_record_login_<sub/>        | <sub>Update player login database record<sub/>                         |
|      <sub>3<sub/>       |      <sub>2<sub/>       |      <sub>5<sub/>       | <sub>[CHILD:201 playerUpdate][305]<sub/>              | <sub>_DHR_f_ch201_update_player_<sub/>       | <sub>Update character database record<sub/>                            |
|      <sub>3<sub/>       |      <sub>2<sub/>       |      <sub>15<sub/>      | <sub>[CHILD:203 playerInit][315]<sub/>                | <sub>_DHR_f_ch203_init_player_<sub/>         | <sub>Update character inventory and backpack<sub/>                     |
|      <sub>3<sub/>       |      <sub>2<sub/>       |      <sub>16<sub/>      | <sub>[CHILD:202 playerDeath][316]<sub/>               | <sub>_DHR_f_ch202_kill_character_<sub/>      | <sub>Update character alive status<sub/>                               |
|      <sub>3<sub/>       |      <sub>2<sub/>       |      <sub>23<sub/>      | <sub>[CHILD:205 updateGlobalCoins][323]<sub/>         | <sub>_DHR_f_ch205_update_global_coins_<sub/> | <sub>Update player money (cash and bank)<sub/>                         |
|      <sub>3<sub/>       |      <sub>2<sub/>       |      <sub>25<sub/>      | <sub>[CHILD:204 updateGroup][325]<sub/>               | <sub>_DHR_f_ch204_update_group_<sub/>        | <sub>Update player group<sub/>                                         |

<br/>

## MySQL

<br/>

| <sub>**MySQL table**<sub/>    | <sub>**specification sheet**<sub/>                | <sub>**DDL**<sub/>                         |
|:------------------------------|:--------------------------------------------------|:-------------------------------------------|
| <sub>**Character_DATA**<sub/> | <sub>[331_Character_DATA_ssheet.txt][33101]<sub/> | <sub>[331_Character_DATA.sql][33102]<sub/> |
| <sub>**Player_DATA**<sub/>    | <sub>[332_Player_DATA_ssheet.txt][33201]<sub/>    | <sub>[332_Player_DATA.sql][33202]<sub/>    |
| <sub>**Player_LOGIN**<sub/>   | <sub>[333_Player_LOGIN_ssheet.txt][33301]<sub/>   | <sub>[333_Player_LOGIN.sql][33302]<sub/>   |

<br/>

| <sub>**COM_SUID**<sub/> | <sub>**COM_TYPE**<sub/> | <sub>**COM_EXID**<sub/> | <sub>**specification sheet**<sub/>         | <sub>**SQF library function**<sub/> | <sub>**short description**<sub/>                     |
|:-----------------------:|:-----------------------:|:-----------------------:|:-------------------------------------------|:------------------------------------|:-----------------------------------------------------|
|      <sub>3<sub/>       |      <sub>3<sub/>       |      <sub>28<sub/>      | <sub>[*open mysql session (P)][3281]<sub/> |                                     | <sub>Get an open MySQL session PROMISE<sub/>         |
|      <sub>3<sub/>       |      <sub>4<sub/>       |      <sub>28<sub/>      | <sub>[*open mysql session (F)][3282]<sub/> |                                     | <sub>Retrieve open MySQL session FUTURE result<sub/> |

`* internal only`


[//]: # (Link references)

[301]: COM_EXID/01_log_message/301_log_message_ssheet.txt

[3021]: COM_EXID/02_on_player_login/302_CH101_load_player_P_ssheet.txt

[3022]: COM_EXID/02_on_player_login/302_CH101_load_player_F_ssheet.txt

[3031]: COM_EXID/03_on_player_setup/303_CH102_loadCharacterDetails_ssheet_P.txt

[3032]: COM_EXID/03_on_player_setup/303_CH102_loadCharacterDetails_ssheet_F.txt

[304]: COM_EXID/04_on_record_login/304_CH103_recordCharacterLogin_ssheet.txt

[305]: COM_EXID/05_sync_pw_record/305_CH201_playerUpdate_ssheet.txt

[315]: COM_EXID/15_sync_pw_gear/315_CH203_playerInit_ssheet.txt

[316]: COM_EXID/16_sync_pw_death/316_CH202_playerDeath_ssheet.txt

[323]: COM_EXID/23_sync_ph_money/323_CH205_updateGlobalCoins_ssheet.txt

[325]: COM_EXID/25_sync_ph_group/325_CH204_updateGroup_ssheet.txt

[3281]: COM_EXID/28_mysql_open_session/328_mysql_open_session_P_ssheet.txt

[3282]: COM_EXID/28_mysql_open_session/328_mysql_open_session_F_ssheet.txt

[33101]: MySQL/01_tw/331_Character_DATA_ssheet.txt

[33102]: MySQL/01_tw/331_Character_DATA.sql

[33201]: MySQL/02_th/332_Player_DATA_ssheet.txt

[33202]: MySQL/02_th/332_Player_DATA.sql

[33301]: MySQL/02_th/333_Player_LOGIN_ssheet.txt

[33302]: MySQL/02_th/333_Player_LOGIN.sql
