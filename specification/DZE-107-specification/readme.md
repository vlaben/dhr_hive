# `DHR hive system extension for DayZ Epoch 107`


<br/>

> **`dhr_hive.dll` - partial implementation of the [DHR hive system][10],**<br>
> **`maintaining compatibility` with the legacy `HiveExt.dll` library for `DZE 1.0.7.2`.**<br>
> <br>
> **NOTES:**<br>
> **`Supports MySQL 9.7.* LTS (requires fresh database).`**<br>
> **`The server owner does not need to make any modifications,`**<br>
> **`provided that their own code does not rely on any obsolete`**<br>
> **`calls of the CHILD:XX type.`**

<br/>


## `System specifications (executive summary)`


<br/>


| **specification**                 | **topic**                                                   |
|:----------------------------------|:------------------------------------------------------------|
| [DHR100_hive_system][10]          | <sub>**DHR hive system high level overview**<sub/>          |
| [DHR200_hive_request_packet][20]  | <sub>Arma2OA server  communication to DHR hive system<sub/> |
| [DHR400_hive_response_packet][40] | <sub>DHR hive system communication to Arma2OA server<sub/>  |
| [DHR500_hive_logging][50]         | <sub>DHR hive system communication to server owner<sub/>    |


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


## <sub>[system controller][600]<sub/>


<br/>


| <sub>**COM_SUID**<sub/> | <sub>**COM_TYPE**<sub/> | <sub>**COM_EXID**<sub/> | <sub>**specification sheet**<sub/> | <sub>**SQF library function**<sub/>    | <sub>**short description**<sub/>                                            |
|:-----------------------:|:-----------------------:|:-----------------------:|:-----------------------------------|:---------------------------------------|:----------------------------------------------------------------------------|
|      <sub>6<sub/>       |      <sub>1<sub/>       |      <sub>1<sub/>       | <sub>[start][601]<sub/>            | <sub>_DHR_f_controller_start_<sub/>    | <sub>START hive system<br>`(NEW)`<sub/>                                     |
|      <sub>6<sub/>       |      <sub>1<sub/>       |      <sub>2<sub/>       | <sub>[*stop][602]<sub/>            | <sub>_DHR_f_controller_stop_<sub/>     | <sub>STOP hive system<br>`(NEW)`<sub/>                                      |
|      <sub>6<sub/>       |      <sub>1<sub/>       |      <sub>3<sub/>       | <sub>[*restart][603]<sub/>         | <sub>_DHR_f_controller_restart_<sub/>  | <sub>RESTART hive system<br>`(NEW)`<sub/>                                   |
|      <sub>6<sub/>       |      <sub>1<sub/>       |      <sub>4<sub/>       | <sub>[revoke][604]<sub/>           | <sub>_DHR_f_controller_revoke_<sub/>   | <sub>REVOKE access to the hive system<br>`(NEW)`<sub/>                      |
|      <sub>6<sub/>       |      <sub>1<sub/>       |      <sub>5<sub/>       | <sub>[shutdown][605]<sub/>         | <sub>_DHR_f_controller_shutdown_<sub/> | <sub>SHUTDOWN hive system and optionally DayZ Epoch server<br>`(NEW)`<sub/> |

`* recommended only for development mode`


<br/>


## <sub>[subsystem provider control][500]<sub/>


<br/>


| <sub>**COM_SUID**<sub/> | <sub>**COM_TYPE**<sub/> | <sub>**COM_EXID**<sub/> | <sub>**specification sheet**<sub/>    | <sub>**SQF library function**<sub/>           | <sub>**short description**<sub/>                                                |
|:-----------------------:|:-----------------------:|:-----------------------:|:--------------------------------------|:----------------------------------------------|:--------------------------------------------------------------------------------|
|      <sub>5<sub/>       |      <sub>2<sub/>       |      <sub>1<sub/>       | <sub>[*set log severity][501]<sub/>   | <sub>_DHR_f_control_set_log_severity_<sub/>   | <sub>SET global log severity level for all subsystem providers<br>`(NEW)`<sub/> |
|      <sub>5<sub/>       |      <sub>2<sub/>       |      <sub>2<sub/>       | <sub>[*set log severities][502]<sub/> | <sub>_DHR_f_control_set_log_severities_<sub/> | <sub>SET individual log severity levels per subsystem provider<br>`(NEW)`<sub/> |

`* availability: decision will be made once DHR500: [C] LOGGING: SEVERITY LEVELS / DISCUSSION topic is closed`


<br/>


## <sub>[subsystem server provider][400]<sub/>


<br/>

| <sub>**COM_SUID**<sub/> | <sub>**COM_TYPE**<sub/> | <sub>**COM_EXID**<sub/> | <sub>**specification sheet**<sub/>          | <sub>**SQF library function**<sub/>              | <sub>**short description**<sub/>                                                     |
|:-----------------------:|:-----------------------:|:-----------------------:|:--------------------------------------------|:-------------------------------------------------|:-------------------------------------------------------------------------------------|
|      <sub>4<sub/>       |      <sub>2<sub/>       |      <sub>1<sub/>       | <sub>[log server message][401]<sub/>        | <sub>_DHR_f_srv_log_message_<sub/>               | <sub>Log message with given severity<br>`(NEW)`<sub/>                                |
|      <sub>4<sub/>       |      <sub>2<sub/>       |      <sub>2<sub/>       | <sub>[rcon send global message][402]<sub/>  | <sub>_DHR_f_srv_rcon_send_global_message_<sub/>  | <sub>Send a GLOBAL Battleye message to all players<br>`(NEW)`<sub/>                  |
|      <sub>4<sub/>       |      <sub>2<sub/>       |      <sub>3<sub/>       | <sub>[rcon send private message][403]<sub/> | <sub>_DHR_f_srv_rcon_send_private_message_<sub/> | <sub>Send a PRIVATE Battleye message to a specific player<br>`(NEW)`<sub/>           |
|      <sub>4<sub/>       |      <sub>2<sub/>       |      <sub>4<sub/>       | <sub>[rcon reload scripts][404]<sub/>       | <sub>_DHR_f_srv_rcon_reload_scripts_<sub/>       | <sub>Reload the script execution filters specified in "scripts.txt"<br>`(NEW)`<sub/> |
|      <sub>4<sub/>       |      <sub>2<sub/>       |      <sub>5<sub/>       | <sub>[rcon reload events][405]<sub/>        | <sub>_DHR_f_srv_rcon_reload_events_<sub/>        | <sub>Reload all network filters such as "createVehicle.txt", ...<br>`(NEW)`<sub/>    |
|      <sub>4<sub/>       |      <sub>2<sub/>       |      <sub>6<sub/>       | <sub>[rcon set max ping][406]<sub/>         | <sub>_DHR_f_srv_rcon_set_max_ping_<sub/>         | <sub>Set the maximum acceptable ping for players (in ms)<br>`(NEW)`<sub/>            |
|      <sub>4<sub/>       |      <sub>2<sub/>       |      <sub>7<sub/>       | <sub>[rcon lock server][407]<sub/>          | <sub>_DHR_f_srv_rcon_lock_server_<sub/>          | <sub>Lock the Arma 2 OA server, prevent new clients from joining<br>`(NEW)`<sub/>    |
|      <sub>4<sub/>       |      <sub>2<sub/>       |      <sub>8<sub/>       | <sub>[rcon unlock server][408]<sub/>        | <sub>_DHR_f_srv_rcon_unlock_server_<sub/>        | <sub>Unlock the Arma 2 OA server, allow new clients to join<br>`(NEW)`<sub/>         |

`* internal only`

<br/>


## <sub>[subsystem player provider][300]<sub/>


<br/>


| <sub>**MySQL table**<sub/>    | <sub>**specification sheet**<sub/>                | <sub>**DDL**<sub/>                         |
|:------------------------------|:--------------------------------------------------|:-------------------------------------------|
| <sub>**Character_DATA**<sub/> | <sub>[331_Character_DATA_ssheet.txt][33101]<sub/> | <sub>[331_Character_DATA.sql][33102]<sub/> |
| <sub>**Player_DATA**<sub/>    | <sub>[332_Player_DATA_ssheet.txt][33201]<sub/>    | <sub>[332_Player_DATA.sql][33202]<sub/>    |
| <sub>**Player_LOGIN**<sub/>   | <sub>[333_Player_LOGIN_ssheet.txt][33301]<sub/>   | <sub>[333_Player_LOGIN.sql][33302]<sub/>   |


<br/>


| <sub>**COM_SUID**<sub/> | <sub>**COM_TYPE**<sub/> | <sub>**COM_EXID**<sub/> | <sub>**specification sheet**<sub/>                    | <sub>**SQF library function**<sub/>          | <sub>**short description**<sub/>                                       |
|:-----------------------:|:-----------------------:|:-----------------------:|:------------------------------------------------------|:---------------------------------------------|:-----------------------------------------------------------------------|
|      <sub>3<sub/>       |      <sub>2<sub/>       |      <sub>1<sub/>       | <sub>[log player message][301]<sub/>                  | <sub>_DHR_f_plr_log_message_<sub/>           | <sub>Log message with given severity<br>(`NEW`)<sub/>                  |
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
|      <sub>3<sub/>       |      <sub>3<sub/>       |      <sub>28<sub/>      | <sub>[*open mysql session (P)][3281]<sub/>            |                                              | <sub>Get an open MySQL session PROMISE<sub/>                           |
|      <sub>3<sub/>       |      <sub>4<sub/>       |      <sub>28<sub/>      | <sub>[*open mysql session (F)][3282]<sub/>            |                                              | <sub>Retrieve open MySQL session FUTURE result<sub/>                   |

`* internal only`


<br/>


## <sub>[subsystem object provider][200]<sub/>


<br/>


| <sub>**MySQL table**<sub/> | <sub>**specification sheet**<sub/>             | <sub>**DDL**<sub/>                      |
|:---------------------------|:-----------------------------------------------|:----------------------------------------|
| <sub>**Object_DATA**<sub/> | <sub>[321_Object_DATA_ssheet.txt][32101]<sub/> | <sub>[321_Object_DATA.sql][32102]<sub/> |


<br/>


| <sub>**COM_SUID**<sub/> | <sub>**COM_TYPE**<sub/> | <sub>**COM_EXID**<sub/> | <sub>**specification sheet**<sub/>                          | <sub>**SQF library function**<sub/>         | <sub>**short description**<sub/>                                                                   |
|:-----------------------:|:-----------------------:|:-----------------------:|:------------------------------------------------------------|:--------------------------------------------|:---------------------------------------------------------------------------------------------------|
|      <sub>2<sub/>       |      <sub>2<sub/>       |      <sub>1<sub/>       | <sub>[log object message][201]<sub/>                        | <sub>_DHR_f_obj_log_message_<sub/>          | <sub>Log message with given severity<br>`(NEW)`<sub/>                                              |
|      <sub>2<sub/>       |      <sub>3<sub/>       |      <sub>2<sub/>       | <sub>[CHILD:308 objectPublish (P)][2021]<sub/>              | <sub>_DHR_f_ch308_publish_object_P_<sub/>   | <sub>Get a PROMISE for a new object record<br>`(NEW)`<sub/>                                        |
|      <sub>2<sub/>       |      <sub>4<sub/>       |      <sub>2<sub/>       | <sub>[CHILD:308 objectPublish (F)][2022]<sub/>              | <sub>_DHR_f_ch308_publish_object_F_<sub/>   | <sub>Retrieve FUTURE object record<br>`(NEW)`<sub/>                                                |
|      <sub>2<sub/>       |      <sub>2<sub/>       |      <sub>4<sub/>       | <sub>[CHILD:304 objectDelete][204]<sub/>                    | <sub>_DHR_f_ch304_delete_object_<sub/>      | <sub>Delete object record<sub/>                                                                    |
|      <sub>2<sub/>       |      <sub>2<sub/>       |      <sub>7<sub/>       | <sub>[CHILD:396 datestampObjectUpdate][207]<sub/>           | <sub>_DHR_f_ch396_maintain_object_<sub/>    | <sub>Maintain object record<sub/>                                                                  |
|      <sub>2<sub/>       |      <sub>2<sub/>       |      <sub>13<sub/>      | <sub>[CHILD:306 vehicleDamaged][213]<sub/>                  | <sub>_DHR_f_ch306_update_damage_<sub/>      | <sub>Update hitpoints and damage<sub/>                                                             |
|      <sub>2<sub/>       |      <sub>2<sub/>       |      <sub>17<sub/>      | <sub>[CHILD:305 vehicleMoved][217]<sub/>                    | <sub>_DHR_f_ch305_update_movement_<sub/>    | <sub>Update worldspace and fuel<sub/>                                                              |
|      <sub>2<sub/>       |      <sub>2<sub/>       |      <sub>19<sub/>      | <sub>[CHILD:303 objectInventory][219]<sub/>                 | <sub>_DHR_f_ch303_update_inventory_<sub/>   | <sub>Update inventory and storage (bank) money<sub/>                                               |
|      <sub>2<sub/>       |      <sub>3<sub/>       |      <sub>28<sub/>      | <sub>[*open mysql session (P)][2281]<sub/>                  |                                             | <sub>Get an open MySQL session PROMISE<sub/>                                                       |
|      <sub>2<sub/>       |      <sub>4<sub/>       |      <sub>28<sub/>      | <sub>[*open mysql session (F)][2282]<sub/>                  |                                             | <sub>Retrieve open MySQL session FUTURE result<sub/>                                               |
|      <sub>2<sub/>       |      <sub>3<sub/>       |      <sub>30<sub/>      | <sub>[CHILD:302 streamObjects<br>(all obj) (P)][2301]<sub/> | <sub>_DHR_f_ch302_mysql_export_obj_P_<sub/> | <sub>Get an export MySQL object table<br>`(all obj; ObjectUID == 1)` PROMISE `(NEW)`<sub/>         |
|      <sub>2<sub/>       |      <sub>4<sub/>       |      <sub>30<sub/>      | <sub>[CHILD:302 streamObjects<br>(all obj) (F)][2302]<sub/> | <sub>_DHR_f_ch302_mysql_export_obj_F_<sub/> | <sub>Retrieve export MySQL object table<br>`(all obj; ObjectUID == 1)` FUTURE result `(NEW)`<sub/> |
|      <sub>2<sub/>       |      <sub>3<sub/>       |      <sub>31<sub/>      | <sub>[CHILD:302 streamObjects<br>(all veh) (P)][2311]<sub/> | <sub>_DHR_f_ch302_mysql_export_veh_P_<sub/> | <sub>Get an export MySQL object table<br>`(all veh; ObjectUID == 2)` PROMISE `(NEW)`<sub/>         |
|      <sub>2<sub/>       |      <sub>4<sub/>       |      <sub>31<sub/>      | <sub>[CHILD:302 streamObjects<br>(all veh) (F)][2312]<sub/> | <sub>_DHR_f_ch302_mysql_export_veh_F_<sub/> | <sub>Retrieve export MySQL object table<br>`(all veh; ObjectUID == 2)` FUTURE result `(NEW)`<sub/> |

`* internal only`


<br/>


## <sub>@TODO: subsystem vehicle provider<sub/>
[//]: # (## <sub>[subsystem vehicle provider][100]<sub/>)


<br/>


> **TODO: `add virtual garage`**


[//]: # (Link references)

[10]: ../executive_summary/DHR100_hive_system.txt

[20]: ../executive_summary/DHR200_hive_request_packet.txt

[30]: ../executive_summary/DHR300_hive_persistence_layer.txt

[40]: ../executive_summary/DHR400_hive_response_packet.txt

[50]: ../executive_summary/DHR500_hive_logging.txt

[60]: ../refactoring/CHILD_refactoring_map.csv


[//]: # (@TODO: [100]: COM_SUID/1_vehicle/readme.md)


[200]: COM_SUID/2_object/readme.md

[201]: COM_SUID/2_object/COM_EXID/01_log_message/201_log_message_ssheet.txt

[2021]: COM_SUID/2_object/COM_EXID/02_create_one/202_CH308_createObject_P_ssheet.txt

[2022]: COM_SUID/2_object/COM_EXID/02_create_one/202_CH308_createObject_F_ssheet.txt

[204]: COM_SUID/2_object/COM_EXID/04_delete_one/204_CH304_objectDelete_ssheet.txt

[207]: COM_SUID/2_object/COM_EXID/07_maintain_one/207_CH396_datestampObjectUpdate_ssheet.txt

[213]: COM_SUID/2_object/COM_EXID/13_sync_ow_damage/213_CH306_vehicleDamaged_ssheet.txt

[217]: COM_SUID/2_object/COM_EXID/17_sync_ow_worldspace/217_CH305_vehicleMoved_ssheet.txt

[219]: COM_SUID/2_object/COM_EXID/19_sync_ow_inventory/219_CH303_objectInventory_ssheet.txt

[2281]: COM_SUID/2_object/COM_EXID/28_mysql_open_session/228_mysql_open_session_P_ssheet.txt

[2282]: COM_SUID/2_object/COM_EXID/28_mysql_open_session/228_mysql_open_session_F_ssheet.txt

[2301]: COM_SUID/2_object/COM_EXID/30_mysql_export_obj/230_CH302_streamObjects_obj_P_ssheet.txt

[2302]: COM_SUID/2_object/COM_EXID/30_mysql_export_obj/230_CH302_streamObjects_obj_F_ssheet.txt

[2311]: COM_SUID/2_object/COM_EXID/31_mysql_export_veh/231_CH302_streamObjects_veh_P_ssheet.txt

[2312]: COM_SUID/2_object/COM_EXID/31_mysql_export_veh/231_CH302_streamObjects_veh_F_ssheet.txt

[32101]: COM_SUID/2_object/MySQL/01_tw/321_Object_DATA_ssheet.txt

[32102]: COM_SUID/2_object/MySQL/01_tw/321_Object_DATA.sql


[300]: COM_SUID/3_player/readme.md

[301]: COM_SUID/3_player/COM_EXID/01_log_message/301_log_message_ssheet.txt

[3021]: COM_SUID/3_player/COM_EXID/02_on_player_login/302_CH101_load_player_P_ssheet.txt

[3022]: COM_SUID/3_player/COM_EXID/02_on_player_login/302_CH101_load_player_F_ssheet.txt

[3031]: COM_SUID/3_player/COM_EXID/03_on_player_setup/303_CH102_loadCharacterDetails_ssheet_P.txt

[3032]: COM_SUID/3_player/COM_EXID/03_on_player_setup/303_CH102_loadCharacterDetails_ssheet_F.txt

[304]: COM_SUID/3_player/COM_EXID/04_on_record_login/304_CH103_recordCharacterLogin_ssheet.txt

[305]: COM_SUID/3_player/COM_EXID/05_sync_pw_record/305_CH201_playerUpdate_ssheet.txt

[315]: COM_SUID/3_player/COM_EXID/15_sync_pw_gear/315_CH203_playerInit_ssheet.txt

[316]: COM_SUID/3_player/COM_EXID/16_sync_pw_death/316_CH202_playerDeath_ssheet.txt

[323]: COM_SUID/3_player/COM_EXID/23_sync_ph_money/323_CH205_updateGlobalCoins_ssheet.txt

[325]: COM_SUID/3_player/COM_EXID/25_sync_ph_group/325_CH204_updateGroup_ssheet.txt

[3281]: COM_SUID/3_player/COM_EXID/28_mysql_open_session/328_mysql_open_session_P_ssheet.txt

[3282]: COM_SUID/3_player/COM_EXID/28_mysql_open_session/328_mysql_open_session_F_ssheet.txt

[33101]: COM_SUID/3_player/MySQL/01_tw/331_Character_DATA_ssheet.txt

[33102]: COM_SUID/3_player/MySQL/01_tw/331_Character_DATA.sql

[33201]: COM_SUID/3_player/MySQL/02_th/332_Player_DATA_ssheet.txt

[33202]: COM_SUID/3_player/MySQL/02_th/332_Player_DATA.sql

[33301]: COM_SUID/3_player/MySQL/02_th/333_Player_LOGIN_ssheet.txt

[33302]: COM_SUID/3_player/MySQL/02_th/333_Player_LOGIN.sql


[400]: COM_SUID/4_server/readme.md

[401]: COM_SUID/4_server/COM_EXID/01_log_message/401_log_message_ssheet.txt

[402]: COM_SUID/4_server/COM_EXID/02_rcon_send_global_message/402_rcon_send_global_message_ssheet.txt

[403]: COM_SUID/4_server/COM_EXID/03_rcon_send_private_message/403_rcon_send_private_message_ssheet.txt

[404]: COM_SUID/4_server/COM_EXID/04_rcon_reload_scripts/404_rcon_reload_scripts_ssheet.txt

[405]: COM_SUID/4_server/COM_EXID/05_rcon_reload_events/405_rcon_reload_events_ssheet.txt

[406]: COM_SUID/4_server/COM_EXID/06_rcon_set_max_ping/406_rcon_set_max_ping_ssheet.txt

[407]: COM_SUID/4_server/COM_EXID/07_rcon_lock_server/407_rcon_lock_server_ssheet.txt

[408]: COM_SUID/4_server/COM_EXID/08_rcon_unlock_server/408_rcon_unlock_server_ssheet.txt


[500]: COM_SUID/5_control/readme.md

[501]: COM_SUID/5_control/COM_EXID/01_set_log_severity/501_set_log_severity_ssheet.txt

[502]: COM_SUID/5_control/COM_EXID/02_set_log_severities/502_set_log_severities_ssheet.txt

[600]: COM_SUID/6_controller/readme.md

[601]: COM_SUID/6_controller/COM_EXID/01_start/601_start_ssheet.txt

[602]: COM_SUID/6_controller/COM_EXID/02_stop/602_stop_ssheet.txt

[603]: COM_SUID/6_controller/COM_EXID/03_restart/603_restart_ssheet.txt

[604]: COM_SUID/6_controller/COM_EXID/04_revoke/604_revoke_ssheet.txt

[605]: COM_SUID/6_controller/COM_EXID/05_shutdown/605_shutdown_ssheet.txt
