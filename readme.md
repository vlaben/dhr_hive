# `DHR hive system extension for DayZ Epoch 108`

<br/>

## `System specifications (executive summary)`


<br/>


| **specification**                | **topic**                                                                   |
|:---------------------------------|:----------------------------------------------------------------------------|
| [DHR100_hive_system][1]          | <sub>**DHR hive system high level overview**<sub/>                          |
| [DHR200_hive_request_packet][2]  | <sub>Arma2OA server  communication to DHR hive system<sub/>                 |
| [DHR300_hive_persistence_layer]  | <sub>DHR hive system communication to MySQL server (ref 3 - phase II)<sub/> |
| [DHR400_hive_response_packet][4] | <sub>DHR hive system communication to Arma2OA server<sub/>                  |
| [DHR500_hive_logging][5]         | <sub>DHR hive system communication to server owner<sub/>                    |


<br/>


> **Naming convention** `(as per DHR200: [A] NAMING CONVENTION)`:<br>
> <br>
> `COM_SUID : system element unique ID`<br>
> `COM_TYPE : type of request (this overview sets recommended COM_TYPE, but user may change it)`<br>
> `COM_EXID : execution id`


<br/>


## <sub>[system controller][600]<sub/>


<br/>


| <sub>**COM_SUID**<sub/> | <sub>**COM_TYPE**<sub/> | <sub>**COM_EXID**<sub/> | <sub>**specification sheet**<sub/> | <sub>**SQF library function**<sub/>    | <sub>**short description**<sub/>                                 |
|:-----------------------:|:-----------------------:|:-----------------------:|:-----------------------------------|:---------------------------------------|:-----------------------------------------------------------------|
|      <sub>6<sub/>       |      <sub>1<sub/>       |      <sub>1<sub/>       | <sub>[start][601]<sub/>            | <sub>_DHR_f_controller_start_<sub/>    | <sub>START hive system<sub/>                                     |
|      <sub>6<sub/>       |      <sub>1<sub/>       |      <sub>2<sub/>       | <sub>[*stop][602]<sub/>            | <sub>_DHR_f_controller_stop_<sub/>     | <sub>STOP hive system<sub/>                                      |
|      <sub>6<sub/>       |      <sub>1<sub/>       |      <sub>3<sub/>       | <sub>[*restart][603]<sub/>         | <sub>_DHR_f_controller_restart_<sub/>  | <sub>RESTART hive system<sub/>                                   |
|      <sub>6<sub/>       |      <sub>1<sub/>       |      <sub>4<sub/>       | <sub>[revoke][604]<sub/>           | <sub>_DHR_f_controller_revoke_<sub/>   | <sub>REVOKE access to the hive system<sub/>                      |
|      <sub>6<sub/>       |      <sub>1<sub/>       |      <sub>5<sub/>       | <sub>[shutdown][605]<sub/>         | <sub>_DHR_f_controller_shutdown_<sub/> | <sub>SHUTDOWN hive system and optionally DayZ Epoch server<sub/> |

`* recommended only for development mode`


<br/>


## <sub>[subsystem provider control][500]<sub/>


<br/>


| <sub>**COM_SUID**<sub/> | <sub>**COM_TYPE**<sub/> | <sub>**COM_EXID**<sub/> | <sub>**specification sheet**<sub/>    | <sub>**SQF library function**<sub/>           | <sub>**short description**<sub/>                                     |
|:-----------------------:|:-----------------------:|:-----------------------:|:--------------------------------------|:----------------------------------------------|:---------------------------------------------------------------------|
|      <sub>5<sub/>       |      <sub>2<sub/>       |      <sub>1<sub/>       | <sub>[*set log severity][501]<sub/>   | <sub>_DHR_f_control_set_log_severity_<sub/>   | <sub>SET global log severity level for all subsystem providers<sub/> |
|      <sub>5<sub/>       |      <sub>2<sub/>       |      <sub>2<sub/>       | <sub>[*set log severities][502]<sub/> | <sub>_DHR_f_control_set_log_severities_<sub/> | <sub>SET individual log severity levels per subsystem provider<sub/> |

`* availability: decision will be made once DHR500: [C] LOGGING: SEVERITY LEVELS / DISCUSSION topic is closed`


<br/>


## <sub>[subsystem server provider][400]<sub/>


<br/>

| <sub>**COM_SUID**<sub/> | <sub>**COM_TYPE**<sub/> | <sub>**COM_EXID**<sub/> | <sub>**specification sheet**<sub/>          | <sub>**SQF library function**<sub/>              | <sub>**short description**<sub/>                                          |
|:-----------------------:|:-----------------------:|:-----------------------:|:--------------------------------------------|:-------------------------------------------------|:--------------------------------------------------------------------------|
|      <sub>4<sub/>       |      <sub>2<sub/>       |      <sub>1<sub/>       | <sub>[log server message][401]<sub/>        | <sub>_DHR_f_srv_log_message_<sub/>               | <sub>Log message with given severity<sub/>                                |
|      <sub>4<sub/>       |      <sub>2<sub/>       |      <sub>2<sub/>       | <sub>[rcon send global message][402]<sub/>  | <sub>_DHR_f_srv_rcon_send_global_message_<sub/>  | <sub>Send a GLOBAL Battleye message to all players<sub/>                  |
|      <sub>4<sub/>       |      <sub>2<sub/>       |      <sub>3<sub/>       | <sub>[rcon send private message][403]<sub/> | <sub>_DHR_f_srv_rcon_send_private_message_<sub/> | <sub>Send a PRIVATE Battleye message to a specific player<sub/>           |
|      <sub>4<sub/>       |      <sub>2<sub/>       |      <sub>4<sub/>       | <sub>[rcon reload scripts][404]<sub/>       | <sub>_DHR_f_srv_rcon_reload_scripts_<sub/>       | <sub>Reload the script execution filters specified in "scripts.txt"<sub/> |
|      <sub>4<sub/>       |      <sub>2<sub/>       |      <sub>5<sub/>       | <sub>[rcon reload events][405]<sub/>        | <sub>_DHR_f_srv_rcon_reload_events_<sub/>        | <sub>Reload all network filters such as "createVehicle.txt", ...<sub/>    |
|      <sub>4<sub/>       |      <sub>2<sub/>       |      <sub>6<sub/>       | <sub>[rcon set max ping][406]<sub/>         | <sub>_DHR_f_srv_rcon_set_max_ping_<sub/>         | <sub>Set the maximum acceptable ping for players (in ms)<sub/>            |
|      <sub>4<sub/>       |      <sub>2<sub/>       |      <sub>7<sub/>       | <sub>[rcon lock server][407]<sub/>          | <sub>_DHR_f_srv_rcon_lock_server_<sub/>          | <sub>Lock the Arma 2 OA server, prevent new clients from joining<sub/>    |
|      <sub>4<sub/>       |      <sub>2<sub/>       |      <sub>8<sub/>       | <sub>[rcon unlock server][408]<sub/>        | <sub>_DHR_f_srv_rcon_unlock_server_<sub/>        | <sub>Unlock the Arma 2 OA server, allow new clients to join<sub/>         |
|      <sub>4<sub/>       |      <sub>3<sub/>       |      <sub>28<sub/>      | <sub>[*open mysql session (P)][4281]<sub/>  |                                                  | <sub>Get an open MySQL session PROMISE<sub/>                              |
|      <sub>4<sub/>       |      <sub>4<sub/>       |      <sub>28<sub/>      | <sub>[*open mysql session (F)][4282]<sub/>  |                                                  | <sub>Retrieve open MySQL session FUTURE result<sub/>                      |

`* internal only`

<br/>


## <sub>[subsystem player provider][300]<sub/>


<br/>


| <sub>**MySQL Tables**<sub/>                 | <sub>**name / pattern**<sub/>            |
|:--------------------------------------------|:-----------------------------------------|
| <sub>Shared Table Hive (cross-worlds)<sub/> | `th_plr.ibd`                             |
| <sub>Unique Table World (per-world)<sub/>   | `tw_##_<worldname>_<suffix>_plr.ibd`<br> |


<br/>


| <sub>**COM_SUID**<sub/> | <sub>**COM_TYPE**<sub/> | <sub>**COM_EXID**<sub/> | <sub>**specification sheet**<sub/>          | <sub>**SQF library function**<sub/>          | <sub>**short description**<sub/>                                        |
|:-----------------------:|:-----------------------:|:-----------------------:|:--------------------------------------------|:---------------------------------------------|:------------------------------------------------------------------------|
|      <sub>3<sub/>       |      <sub>2<sub/>       |      <sub>1<sub/>       | <sub>[log player message][301]<sub/>        | <sub>_DHR_f_plr_log_message_<sub/>           | <sub>Log message with given severity<sub/>                              |
|      <sub>3<sub/>       |      <sub>3<sub/>       |      <sub>2<sub/>       | <sub>[on player login (P)][3021]<sub/>      | <sub>_DHR_f_plr_on_player_login_P_<sub/>     | <sub>Get a data PROMISE for a logging in player<sub/>                   |
|      <sub>3<sub/>       |      <sub>4<sub/>       |      <sub>2<sub/>       | <sub>[on player login (F)][3022]<sub/>      | <sub>_DHR_f_plr_on_player_login_F_<sub/>     | <sub>Retrieve FUTURE data for the logged in player<sub/>                |
|      <sub>3<sub/>       |      <sub>3<sub/>       |      <sub>3<sub/>       | <sub>[on player setup (P)][3031]<sub/>      | <sub>_DHR_f_plr_on_player_setup_P_<sub/>     | <sub>Get a setup data PROMISE for a joining player<sub/>                |
|      <sub>3<sub/>       |      <sub>4<sub/>       |      <sub>3<sub/>       | <sub>[on player setup (F)][3032]<sub/>      | <sub>_DHR_f_plr_on_player_setup_F_<sub/>     | <sub>Retrieve FUTURE setup data for the joined player<sub/>             |
|      <sub>3<sub/>       |      <sub>2<sub/>       |      <sub>5<sub/>       | <sub>[sync character record][305]<sub/>     | <sub>_DHR_f_plr_sync_character_record_<sub/> | <sub>Update character database record<sub/>                             |
|      <sub>3<sub/>       |      <sub>2<sub/>       |      <sub>6<sub/>       | <sub>[sync character logged][306]<sub/>     | <sub>_DHR_f_plr_sync_pw_logged_<sub/>        | <sub>Update character logged<sub/>                                      |
|      <sub>3<sub/>       |      <sub>2<sub/>       |      <sub>7<sub/>       | <sub>[sync character humanity][307]<sub/>   | <sub>_DHR_f_plr_sync_pw_humanity_<sub/>      | <sub>Update character humanity<sub/>                                    |
|      <sub>3<sub/>       |      <sub>2<sub/>       |      <sub>8<sub/>       | <sub>[sync character cash][308]<sub/>       | <sub>_DHR_f_plr_sync_pw_cash_<sub/>          | <sub>Update character cash<sub/>                                        |
|      <sub>3<sub/>       |      <sub>2<sub/>       |      <sub>9<sub/>       | <sub>[sync character model][309]<sub/>      | <sub>_DHR_f_plr_sync_pw_model_<sub/>         | <sub>Update character skin<sub/>                                        |
|      <sub>3<sub/>       |      <sub>2<sub/>       |      <sub>10<sub/>      | <sub>[sync character worldspace][310]<sub/> | <sub>_DHR_f_plr_sync_pw_worldspace_<sub/>    | <sub>Update character direction and position<sub/>                      |
|      <sub>3<sub/>       |      <sub>2<sub/>       |      <sub>11<sub/>      | <sub>[sync character medical][311]<sub/>    | <sub>_DHR_f_plr_sync_pw_medical_<sub/>       | <sub>Update current character state and medical data<sub/>              |
|      <sub>3<sub/>       |      <sub>2<sub/>       |      <sub>12<sub/>      | <sub>[sync character gear][312]<sub/>       | <sub>_DHR_f_plr_sync_pw_gear_<sub/>          | <sub>Update character inventory and backpack<sub/>                      |
|      <sub>3<sub/>       |      <sub>2<sub/>       |      <sub>13<sub/>      | <sub>[sync character XP][313]<sub/>         | <sub>_DHR_f_plr_sync_pw_xp_<sub/>            | <sub>Update character eXPerience stats<sub/>                            |
|      <sub>3<sub/>       |      <sub>2<sub/>       |      <sub>14<sub/>      | <sub>[sync character death][314]<sub/>      | <sub>_DHR_f_plr_sync_pw_death_<sub/>         | <sub>Mark character database record as void (`pw_sid = 1`)<sub/>        |
|      <sub>3<sub/>       |      <sub>2<sub/>       |      <sub>20<sub/>      | <sub>[sync player record][320]<sub/>        | <sub>_DHR_f_plr_sync_player_record_<sub/>    | <sub>Update player database record<sub/>                                |
|      <sub>3<sub/>       |      <sub>2<sub/>       |      <sub>21<sub/>      | <sub>[sync player name][321]<sub/>          | <sub>_DHR_f_plr_sync_ph_name_<sub/>          | <sub>Update player name<sub/>                                           |
|      <sub>3<sub/>       |      <sub>2<sub/>       |      <sub>22<sub/>      | <sub>[sync player cash][322]<sub/>          | <sub>_DHR_f_plr_sync_ph_cash_<sub/>          | <sub>Update player cash<sub/>                                           |
|      <sub>3<sub/>       |      <sub>2<sub/>       |      <sub>23<sub/>      | <sub>[sync player bank][323]<sub/>          | <sub>_DHR_f_plr_sync_ph_bank_<sub/>          | <sub>Update player bank<sub/>                                           |
|      <sub>3<sub/>       |      <sub>2<sub/>       |      <sub>24<sub/>      | <sub>[sync player money][324]<sub/>         | <sub>_DHR_f_plr_sync_ph_money_<sub/>         | <sub>Update player money (cash and bank)<sub/>                          |
|      <sub>3<sub/>       |      <sub>2<sub/>       |      <sub>25<sub/>      | <sub>[sync player group][325]<sub/>         | <sub>_DHR_f_plr_sync_ph_group_<sub/>         | <sub>Update player group<sub/>                                          |
|      <sub>3<sub/>       |      <sub>2<sub/>       |      <sub>26<sub/>      | <sub>[sync player XP][326]<sub/>            | <sub>_DHR_f_plr_sync_ph_xp_<sub/>            | <sub>Update player eXPerience stats<sub/>                               |
|      <sub>3<sub/>       |      <sub>3<sub/>       |      <sub>28<sub/>      | <sub>[*open mysql session (P)][3281]<sub/>  |                                              | <sub>Get an open MySQL session PROMISE<sub/>                            |
|      <sub>3<sub/>       |      <sub>4<sub/>       |      <sub>28<sub/>      | <sub>[*open mysql session (F)][3282]<sub/>  |                                              | <sub>Retrieve open MySQL session FUTURE result<sub/>                    |
|      <sub>3<sub/>       |      <sub>2<sub/>       |      <sub>29<sub/>      | <sub>[*cleanup mysql tw table][329]<sub/>   |                                              | <sub>Delete all records marked for scheduled removal (`pw_sid=0`)<sub/> |

`* internal only`


<br/>


## <sub>[subsystem object provider][200]<sub/>


<br/>


| <sub>**MySQL Tables**<sub/>               | <sub>**name / pattern**<sub/>            |
|:------------------------------------------|:-----------------------------------------|
| <sub>Unique Table World (per-world)<sub/> | `tw_##_<worldname>_<suffix>_obj.ibd`<br> |


<br/>


| <sub>**COM_SUID**<sub/> | <sub>**COM_TYPE**<sub/> | <sub>**COM_EXID**<sub/> | <sub>**specification sheet**<sub/>            | <sub>**SQF library function**<sub/>            | <sub>**short description**<sub/>                                        |
|:-----------------------:|:-----------------------:|:-----------------------:|:----------------------------------------------|:-----------------------------------------------|:------------------------------------------------------------------------|
|      <sub>2<sub/>       |      <sub>2<sub/>       |      <sub>1<sub/>       | <sub>[log object message][201]<sub/>          | <sub>_DHR_f_obj_log_message_<sub/>             | <sub>Log message with given severity<sub/>                              |
|      <sub>2<sub/>       |      <sub>3<sub/>       |      <sub>2<sub/>       | <sub>[create new object (P)][2021]<sub/>      | <sub>_DHR_f_obj_create_P_<sub/>                | <sub>Get a PROMISE for a new object record<sub/>                        |
|      <sub>2<sub/>       |      <sub>4<sub/>       |      <sub>2<sub/>       | <sub>[create new object (F)][2022]<sub/>      | <sub>_DHR_f_obj_create_F_<sub/>                | <sub>Retrieve FUTURE object record<sub/>                                |
|      <sub>2<sub/>       |      <sub>2<sub/>       |      <sub>4<sub/>       | <sub>[delete object][204]<sub/>               | <sub>_DHR_f_obj_delete_one_<sub/>              | <sub>Mark object record for scheduled removal<sub/>                     |
|      <sub>2<sub/>       |      <sub>3<sub/>       |      <sub>5<sub/>       | <sub>[delete player base (P)][2051]<sub/>     | <sub>_DHR_f_obj_delete_all_P_<sub/>            | <sub>Get a PROMISE for a player base scheduled removal<sub/>            |
|      <sub>2<sub/>       |      <sub>4<sub/>       |      <sub>5<sub/>       | <sub>[delete player base (F)][2052]<sub/>     | <sub>_DHR_f_obj_delete_all_F_<sub/>            | <sub>Retrieve player base scheduled removal FUTURE result<sub/>         |
|      <sub>2<sub/>       |      <sub>2<sub/>       |      <sub>7<sub/>       | <sub>[maintain object][207]<sub/>             | <sub>_DHR_f_obj_maintain_one_<sub/>            | <sub>Maintain object record<sub/>                                       |
|      <sub>2<sub/>       |      <sub>3<sub/>       |      <sub>8<sub/>       | <sub>[maintain player base (P)][2081]<sub/>   | <sub>_DHR_f_obj_maintain_all_P_<sub/>          | <sub>Get a PROMISE for a player base maintanance<sub/>                  |
|      <sub>2<sub/>       |      <sub>4<sub/>       |      <sub>8<sub/>       | <sub>[maintain player base (F)][2082]<sub/>   | <sub>_DHR_f_obj_maintain_all_F_<sub/>          | <sub>Retrieve player base maintanance FUTURE result<sub/>               |
|      <sub>2<sub/>       |      <sub>2<sub/>       |      <sub>10<sub/>      | <sub>[sync object record][210]<sub/>          | <sub>_DHR_f_obj_sync_record_<sub/>             | <sub>Update object database record<sub/>                                |
|      <sub>2<sub/>       |      <sub>2<sub/>       |      <sub>11<sub/>      | <sub>[sync identity][211]<sub/>               | <sub>_DHR_f_obj_sync_identity_<sub/>           | <sub>Update STATIC properties<sub/>                                     |
|      <sub>2<sub/>       |      <sub>2<sub/>       |      <sub>12<sub/>      | <sub>[sync money][212]<sub/>                  | <sub>_DHR_f_obj_sync_money_<sub/>              | <sub>Update storage money<sub/>                                         |
|      <sub>2<sub/>       |      <sub>2<sub/>       |      <sub>13<sub/>      | <sub>[sync damage][213]<sub/>                 | <sub>_DHR_f_obj_sync_damage_<sub/>             | <sub>Update damage<sub/>                                                |
|      <sub>2<sub/>       |      <sub>2<sub/>       |      <sub>14<sub/>      | <sub>[sync owner][214]<sub/>                  | <sub>_DHR_f_obj_sync_owner_for_one_<sub/>      | <sub>Update owner for a single object<sub/>                             |
|      <sub>2<sub/>       |      <sub>3<sub/>       |      <sub>15<sub/>      | <sub>[sync player base owner (P)][2151]<sub/> | <sub>_DHR_f_obj_sync_owner_for_all_P_<sub/>    | <sub>Get a PROMISE for a player base ownership change<sub/>             |
|      <sub>2<sub/>       |      <sub>4<sub/>       |      <sub>15<sub/>      | <sub>[sync player base owner (F)][2152]<sub/> | <sub>_DHR_f_obj_sync_owner_for_all_F_<sub/>    | <sub>Retrieve player base ownership change FUTURE result<sub/>          |
|      <sub>2<sub/>       |      <sub>2<sub/>       |      <sub>16<sub/>      | <sub>[sync key][216]<sub/>                    | <sub>_DHR_f_obj_sync_key_<sub/>                | <sub>Update combination key<sub/>                                       |
|      <sub>2<sub/>       |      <sub>2<sub/>       |      <sub>17<sub/>      | <sub>[sync worldspace][217]<sub/>             | <sub>_DHR_f_obj_sync_worldspace_<sub/>         | <sub>Update position and vectors<sub/>                                  |
|      <sub>2<sub/>       |      <sub>2<sub/>       |      <sub>18<sub/>      | <sub>[sync friends][218]<sub/>                | <sub>_DHR_f_obj_sync_friends_<sub/>            | <sub>Update friends<sub/>                                               |
|      <sub>2<sub/>       |      <sub>2<sub/>       |      <sub>19<sub/>      | <sub>[sync inventory][219]<sub/>              | <sub>_DHR_f_obj_sync_inventory_<sub/>          | <sub>Update inventory<sub/>                                             |
|      <sub>2<sub/>       |      <sub>2<sub/>       |      <sub>20<sub/>      | <sub>[sync props][220]<sub/>                  | <sub>_DHR_f_obj_sync_props_<sub/>              | <sub>Update DYNAMIC properties<sub/>                                    |
|      <sub>2<sub/>       |      <sub>3<sub/>       |      <sub>28<sub/>      | <sub>[*open mysql session (P)][2281]<sub/>    |                                                | <sub>Get an open MySQL session PROMISE<sub/>                            |
|      <sub>2<sub/>       |      <sub>4<sub/>       |      <sub>28<sub/>      | <sub>[*open mysql session (F)][2282]<sub/>    |                                                | <sub>Retrieve open MySQL session FUTURE result<sub/>                    |
|      <sub>2<sub/>       |      <sub>2<sub/>       |      <sub>29<sub/>      | <sub>[*cleanup mysql tw table][229]<sub/>     |                                                | <sub>Delete all records marked for scheduled removal (`ow_sid=0`)<sub/> |
|      <sub>2<sub/>       |      <sub>3<sub/>       |      <sub>30<sub/>      | <sub>[export mysql tw table (P)][2301]<sub/>  | <sub>_DHR_f_obj_mysql_export_tw_table_P_<sub/> | <sub>Get an export MySQL world table PROMISE<sub/>                      |
|      <sub>2<sub/>       |      <sub>4<sub/>       |      <sub>30<sub/>      | <sub>[export mysql tw table (F)][2302]<sub/>  | <sub>_DHR_f_obj_mysql_export_tw_table_F_<sub/> | <sub>Retrieve export MySQL world table FUTURE result<sub/>              |

`* internal only`


<br/>


## <sub>[subsystem vehicle provider][100]<sub/>


<br/>


| <sub>**MySQL Tables**<sub/>                 | <sub>**name / pattern**<sub/>            |
|:--------------------------------------------|:-----------------------------------------|
| <sub>Shared Table Hive (cross-worlds)<sub/> | `th_veh.ibd`                             |
| <sub>Unique Table World (per-world)<sub/>   | `tw_##_<worldname>_<suffix>_veh.ibd`<br> |


<br/>


| <sub>**COM_SUID**<sub/> | <sub>**COM_TYPE**<sub/> | <sub>**COM_EXID**<sub/> | <sub>**specification sheet**<sub/>            | <sub>**SQF library function**<sub/>            | <sub>**short description**<sub/>                                        |
|:-----------------------:|:-----------------------:|:-----------------------:|:----------------------------------------------|:-----------------------------------------------|:------------------------------------------------------------------------|
|      <sub>1<sub/>       |      <sub>2<sub/>       |      <sub>1<sub/>       | <sub>[log vehicle message][101]<sub/>         | <sub>_DHR_f_veh_log_message_<sub/>             | <sub>Log message with given severity<sub/>                              |
|      <sub>1<sub/>       |      <sub>3<sub/>       |      <sub>2<sub/>       | <sub>[create new vehicle (P)][1021]<sub/>     | <sub>_DHR_f_veh_create_P_<sub/>                | <sub>Get a PROMISE for a new vehicle record<sub/>                       |
|      <sub>1<sub/>       |      <sub>4<sub/>       |      <sub>2<sub/>       | <sub>[create new vehicle (F)][1022]<sub/>     | <sub>_DHR_f_veh_create_F_<sub/>                | <sub>Retrieve FUTURE vehicle record<sub/>                               |
|      <sub>1<sub/>       |      <sub>2<sub/>       |      <sub>4<sub/>       | <sub>[delete vehicle][104]<sub/>              | <sub>_DHR_f_veh_delete_<sub/>                  | <sub>Mark vehicle record for scheduled removal<sub/>                    |
|      <sub>1<sub/>       |      <sub>2<sub/>       |      <sub>10<sub/>      | <sub>[sync vehicle record][110]<sub/>         | <sub>_DHR_f_veh_sync_record_<sub/>             | <sub>Update vehicle database record<sub/>                               |
|      <sub>1<sub/>       |      <sub>2<sub/>       |      <sub>11<sub/>      | <sub>[sync identity][111]<sub/>               | <sub>_DHR_f_veh_sync_identity_<sub/>           | <sub>Update STATIC properties<sub/>                                     |
|      <sub>1<sub/>       |      <sub>2<sub/>       |      <sub>12<sub/>      | <sub>[sync money][112]<sub/>                  | <sub>_DHR_f_veh_sync_money_<sub/>              | <sub>Update storage money<sub/>                                         |
|      <sub>1<sub/>       |      <sub>2<sub/>       |      <sub>13<sub/>      | <sub>[sync damage][113]<sub/>                 | <sub>_DHR_f_veh_sync_damage_<sub/>             | <sub>Update damage and hitpoints<sub/>                                  |
|      <sub>1<sub/>       |      <sub>2<sub/>       |      <sub>16<sub/>      | <sub>[sync key][116]<sub/>                    | <sub>_DHR_f_veh_sync_key_<sub/>                | <sub>Update vehicle key<sub/>                                           |
|      <sub>1<sub/>       |      <sub>2<sub/>       |      <sub>17<sub/>      | <sub>[sync worldspace][117]<sub/>             | <sub>_DHR_f_veh_sync_worldspace_<sub/>         | <sub>Update fuel, position and vectors<sub/>                            |
|      <sub>1<sub/>       |      <sub>2<sub/>       |      <sub>18<sub/>      | <sub>[sync colors][118]<sub/>                 | <sub>_DHR_f_veh_sync_colors_<sub/>             | <sub>Update colors<sub/>                                                |
|      <sub>1<sub/>       |      <sub>2<sub/>       |      <sub>19<sub/>      | <sub>[sync inventory][119]<sub/>              | <sub>_DHR_f_veh_sync_inventory_<sub/>          | <sub>Update inventory<sub/>                                             |
|      <sub>1<sub/>       |      <sub>2<sub/>       |      <sub>20<sub/>      | <sub>[sync props][120]<sub/>                  | <sub>_DHR_f_veh_sync_props_<sub/>              | <sub>Update DYNAMIC properties<sub/>                                    |
|      <sub>1<sub/>       |      <sub>3<sub/>       |      <sub>24<sub/>      | <sub>[garage info (P)][1241]<sub/>            | <sub>_DHR_f_veh_garage_info_P_<sub/>           | <sub>Get an garage info data PROMISE<sub/>                              |
|      <sub>1<sub/>       |      <sub>4<sub/>       |      <sub>24<sub/>      | <sub>[garage info (F)][1242]<sub/>            | <sub>_DHR_f_veh_garage_info_F_<sub/>           | <sub>Retrieve garage info data FUTURE result<sub/>                      |
|      <sub>1<sub/>       |      <sub>2<sub/>       |      <sub>25<sub/>      | <sub>[garage in][125]<sub/>                   | <sub>_DHR_f_veh_garage_in_<sub/>               | <sub>Park vehicle in the garage<sub/>                                   |
|      <sub>1<sub/>       |      <sub>3<sub/>       |      <sub>26<sub/>      | <sub>[garage out (P)][1261]<sub/>             | <sub>_DHR_f_veh_garage_out_P_<sub/>            | <sub>Get a pulling out of garage PROMISE<sub/>                          |
|      <sub>1<sub/>       |      <sub>4<sub/>       |      <sub>26<sub/>      | <sub>[garage out (F)][1262]<sub/>             | <sub>_DHR_f_veh_garage_out_F_<sub/>            | <sub>Retrieve pulled out of garage FUTURE result<sub/>                  |
|      <sub>1<sub/>       |      <sub>3<sub/>       |      <sub>27<sub/>      | <sub>[garage maintain (P)][1271]<sub/>        | <sub>_DHR_f_veh_garage_maintain_P_<sub/>       | <sub>Get a PROMISE for a garage maintanance<sub/>                       |
|      <sub>1<sub/>       |      <sub>4<sub/>       |      <sub>27<sub/>      | <sub>[garage maintain (F)][1272]<sub/>        | <sub>_DHR_f_veh_garage_maintain_F_<sub/>       | <sub>Retrieve garage maintanance FUTURE result<sub/>                    |
|      <sub>1<sub/>       |      <sub>3<sub/>       |      <sub>28<sub/>      | <sub>[*open mysql session (P)][1281]<sub/>    |                                                | <sub>Get an open MySQL session PROMISE<sub/>                            |
|      <sub>1<sub/>       |      <sub>4<sub/>       |      <sub>28<sub/>      | <sub>[*open mysql session (F)][1282]<sub/>    |                                                | <sub>Retrieve open MySQL session FUTURE result<sub/>                    |
|      <sub>1<sub/>       |      <sub>2<sub/>       |      <sub>29<sub/>      | <sub>[*cleanup mysql tw table][129]<sub/>     |                                                | <sub>Delete all records marked for scheduled removal (`vw_sid=0`)<sub/> |
|      <sub>1<sub/>       |      <sub>3<sub/>       |      <sub>30<sub/>      | <sub>[export mysql tw table (P)][1301]<sub/>  | <sub>_DHR_f_obj_mysql_export_tw_table_P_<sub/> | <sub>Get an export MySQL world table PROMISE<sub/>                      |
|      <sub>1<sub/>       |      <sub>4<sub/>       |      <sub>30<sub/>      | <sub>[export mysql tw table (F)][1302]<sub/>  | <sub>_DHR_f_obj_mysql_export_tw_table_F_<sub/> | <sub>Retrieve export MySQL world table FUTURE result<sub/>              |
|      <sub>1<sub/>       |      <sub>2<sub/>       |      <sub>31<sub/>      | <sub>[*cleanup mysql th table (P)][131]<sub/> |                                                | <sub>Delete all records marked for scheduled removal (`vh_sid=0`)<sub/> |

`* internal only`


[//]: # (Link references)

[1]: specification/executive_summary/DHR100_hive_system.txt

[2]: specification/executive_summary/DHR200_hive_request_packet.txt

[3]: specification/executive_summary/DHR300_hive_persistence_layer.txt

[4]: specification/executive_summary/DHR400_hive_response_packet.txt

[5]: specification/executive_summary/DHR500_hive_logging.txt


[100]: specification/COM_SUID/1_vehicle/readme.md

[101]: specification/COM_SUID/1_vehicle/COM_EXID/01_log_message/101_log_message_ssheet.txt

[1021]: specification/COM_SUID/1_vehicle/COM_EXID/02_create/102_create_P_ssheet.txt

[1022]: specification/COM_SUID/1_vehicle/COM_EXID/02_create/102_create_F_ssheet.txt

[104]: specification/COM_SUID/1_vehicle/COM_EXID/04_delete_one/104_delete_one_ssheet.txt

[110]: specification/COM_SUID/1_vehicle/COM_EXID/10_sync_vehicle_record/110_sync_vehicle_record_ssheet.txt

[111]: specification/COM_SUID/1_vehicle/COM_EXID/11_sync_vw_identity/111_sync_vw_identity_ssheet.txt

[112]: specification/COM_SUID/1_vehicle/COM_EXID/12_sync_vw_money/112_sync_vw_money_ssheet.txt

[113]: specification/COM_SUID/1_vehicle/COM_EXID/13_sync_vw_damage/113_sync_vw_damage_ssheet.txt

[116]: specification/COM_SUID/1_vehicle/COM_EXID/16_sync_vw_key/116_sync_vw_key_ssheet.txt

[117]: specification/COM_SUID/1_vehicle/COM_EXID/17_sync_vw_worldspace/117_sync_vw_worldspace_ssheet.txt

[118]: specification/COM_SUID/1_vehicle/COM_EXID/18_sync_vw_colors/118_sync_vw_colors_ssheet.txt

[119]: specification/COM_SUID/1_vehicle/COM_EXID/19_sync_vw_inventory/119_sync_vw_inventory_ssheet.txt

[120]: specification/COM_SUID/1_vehicle/COM_EXID/20_sync_vw_props/120_sync_vw_props_ssheet.txt

[1241]: specification/COM_SUID/1_vehicle/COM_EXID/24_garage_info/124_garage_info_P_ssheet.txt

[1242]: specification/COM_SUID/1_vehicle/COM_EXID/24_garage_info/124_garage_info_F_ssheet.txt

[125]: specification/COM_SUID/1_vehicle/COM_EXID/25_garage_in/125_garage_in_ssheet.txt

[1261]: specification/COM_SUID/1_vehicle/COM_EXID/26_garage_out/126_garage_out_P_ssheet.txt

[1262]: specification/COM_SUID/1_vehicle/COM_EXID/26_garage_out/126_garage_out_F_ssheet.txt

[1271]: specification/COM_SUID/1_vehicle/COM_EXID/27_garage_maintain/127_garage_maintain_P_ssheet.txt

[1272]: specification/COM_SUID/1_vehicle/COM_EXID/27_garage_maintain/127_garage_maintain_F_ssheet.txt

[1281]: specification/COM_SUID/1_vehicle/COM_EXID/28_mysql_open_session/128_mysql_open_session_P_ssheet.txt

[1282]: specification/COM_SUID/1_vehicle/COM_EXID/28_mysql_open_session/128_mysql_open_session_F_ssheet.txt

[129]: specification/COM_SUID/1_vehicle/COM_EXID/29_mysql_cleanup_tw/129_mysql_cleanup_tw_ssheet.txt

[1301]: specification/COM_SUID/1_vehicle/COM_EXID/30_mysql_export_tw/130_mysql_export_tw_P_ssheet.txt

[1302]: specification/COM_SUID/1_vehicle/COM_EXID/30_mysql_export_tw/130_mysql_export_tw_F_ssheet.txt

[131]: specification/COM_SUID/1_vehicle/COM_EXID/31_mysql_cleanup_th/131_mysql_cleanup_th_ssheet.txt


[200]: specification/COM_SUID/2_object/readme.md

[201]: specification/COM_SUID/2_object/COM_EXID/01_log_message/201_log_message_ssheet.txt

[2021]: specification/COM_SUID/2_object/COM_EXID/02_create/202_create_P_ssheet.txt

[2022]: specification/COM_SUID/2_object/COM_EXID/02_create/202_create_F_ssheet.txt

[204]: specification/COM_SUID/2_object/COM_EXID/04_delete_one/204_delete_one_ssheet.txt

[2051]: specification/COM_SUID/2_object/COM_EXID/05_delete_all/205_delete_all_P_ssheet.txt

[2052]: specification/COM_SUID/2_object/COM_EXID/05_delete_all/205_delete_all_F_ssheet.txt

[207]: specification/COM_SUID/2_object/COM_EXID/07_maintain_one/207_maintain_one_ssheet.txt

[2081]: specification/COM_SUID/2_object/COM_EXID/08_maintain_all/208_maintain_all_P_ssheet.txt

[2082]: specification/COM_SUID/2_object/COM_EXID/08_maintain_all/208_maintain_all_F_ssheet.txt

[210]: specification/COM_SUID/2_object/COM_EXID/10_sync_object_record/210_sync_object_record_ssheet.txt

[211]: specification/COM_SUID/2_object/COM_EXID/11_sync_ow_identity/211_sync_ow_identity_ssheet.txt

[212]: specification/COM_SUID/2_object/COM_EXID/12_sync_ow_money/212_sync_ow_money_ssheet.txt

[213]: specification/COM_SUID/2_object/COM_EXID/13_sync_ow_damage/213_sync_ow_damage_ssheet.txt

[214]: specification/COM_SUID/2_object/COM_EXID/14_sync_ow_owner_for_one/214_sync_ow_owner_for_one_ssheet.txt

[2151]: specification/COM_SUID/2_object/COM_EXID/15_sync_ow_owner_for_all/215_sync_ow_owner_for_all_P_ssheet.txt

[2152]: specification/COM_SUID/2_object/COM_EXID/15_sync_ow_owner_for_all/215_sync_ow_owner_for_all_F_ssheet.txt

[216]: specification/COM_SUID/2_object/COM_EXID/16_sync_ow_key/216_sync_ow_key_ssheet.txt

[217]: specification/COM_SUID/2_object/COM_EXID/17_sync_ow_worldspace/217_sync_ow_worldspace_ssheet.txt

[218]: specification/COM_SUID/2_object/COM_EXID/18_sync_ow_friends/218_sync_ow_friends_ssheet.txt

[219]: specification/COM_SUID/2_object/COM_EXID/19_sync_ow_inventory/219_sync_ow_inventory_ssheet.txt

[220]: specification/COM_SUID/2_object/COM_EXID/20_sync_ow_props/220_sync_ow_props_ssheet.txt

[2281]: specification/COM_SUID/2_object/COM_EXID/28_mysql_open_session/228_mysql_open_session_P_ssheet.txt

[2282]: specification/COM_SUID/2_object/COM_EXID/28_mysql_open_session/228_mysql_open_session_F_ssheet.txt

[229]: specification/COM_SUID/2_object/COM_EXID/29_mysql_cleanup_tw/229_mysql_cleanup_tw_ssheet.txt

[2301]: specification/COM_SUID/2_object/COM_EXID/30_mysql_export_tw/230_mysql_export_tw_P_ssheet.txt

[2302]: specification/COM_SUID/2_object/COM_EXID/30_mysql_export_tw/230_mysql_export_tw_F_ssheet.txt


[300]: specification/COM_SUID/3_player/readme.md

[301]: specification/COM_SUID/3_player/COM_EXID/01_log_message/301_log_message_ssheet.txt

[3021]: specification/COM_SUID/3_player/COM_EXID/02_on_player_login/302_on_player_login_P_ssheet.txt

[3022]: specification/COM_SUID/3_player/COM_EXID/02_on_player_login/302_on_player_login_F_ssheet.txt

[3031]: specification/COM_SUID/3_player/COM_EXID/03_on_player_setup/303_on_player_setup_ssheet_P.txt

[3032]: specification/COM_SUID/3_player/COM_EXID/03_on_player_setup/303_on_player_setup_ssheet_F.txt

[305]: specification/COM_SUID/3_player/COM_EXID/05_sync_character_record/305_sync_character_record_ssheet.txt

[306]: specification/COM_SUID/3_player/COM_EXID/06_sync_pw_logged/306_sync_pw_logged_ssheet.txt

[307]: specification/COM_SUID/3_player/COM_EXID/07_sync_pw_humanity/307_sync_pw_humanity_ssheet.txt

[308]: specification/COM_SUID/3_player/COM_EXID/08_sync_pw_cash/308_sync_pw_cash_ssheet.txt

[309]: specification/COM_SUID/3_player/COM_EXID/09_sync_pw_model/309_sync_pw_model_ssheet.txt

[310]: specification/COM_SUID/3_player/COM_EXID/10_sync_pw_worldspace/310_sync_pw_worldspace_ssheet.txt

[311]: specification/COM_SUID/3_player/COM_EXID/11_sync_pw_medical/311_sync_pw_medical_ssheet.txt

[312]: specification/COM_SUID/3_player/COM_EXID/12_sync_pw_gear/312_sync_pw_gear_ssheet.txt

[313]: specification/COM_SUID/3_player/COM_EXID/13_sync_pw_xp/313_sync_pw_xp_ssheet.txt

[314]: specification/COM_SUID/3_player/COM_EXID/14_sync_pw_death/314_sync_pw_death_ssheet.txt

[320]: specification/COM_SUID/3_player/COM_EXID/20_sync_player_record/320_sync_player_record_ssheet.txt

[321]: specification/COM_SUID/3_player/COM_EXID/21_sync_ph_name/321_sync_ph_name_ssheet.txt

[322]: specification/COM_SUID/3_player/COM_EXID/22_sync_ph_cash/322_sync_ph_cash_ssheet.txt

[323]: specification/COM_SUID/3_player/COM_EXID/23_sync_ph_bank/323_sync_ph_bank_ssheet.txt

[324]: specification/COM_SUID/3_player/COM_EXID/24_sync_ph_money/324_sync_ph_money_ssheet.txt

[325]: specification/COM_SUID/3_player/COM_EXID/25_sync_ph_group/325_sync_ph_group_ssheet.txt

[326]: specification/COM_SUID/3_player/COM_EXID/26_sync_ph_xp/326_sync_ph_xp_ssheet.txt

[3281]: specification/COM_SUID/3_player/COM_EXID/28_mysql_open_session/328_mysql_open_session_P_ssheet.txt

[3282]: specification/COM_SUID/3_player/COM_EXID/28_mysql_open_session/328_mysql_open_session_F_ssheet.txt

[329]: specification/COM_SUID/3_player/COM_EXID/29_mysql_cleanup_tw/329_mysql_cleanup_tw_ssheet.txt


[400]: specification/COM_SUID/4_server/readme.md

[401]: specification/COM_SUID/4_server/COM_EXID/01_log_message/401_log_message_ssheet.txt

[402]: specification/COM_SUID/4_server/COM_EXID/02_rcon_send_global_message/402_rcon_send_global_message_ssheet.txt

[403]: specification/COM_SUID/4_server/COM_EXID/03_rcon_send_private_message/403_rcon_send_private_message_ssheet.txt

[404]: specification/COM_SUID/4_server/COM_EXID/04_rcon_reload_scripts/404_rcon_reload_scripts_ssheet.txt

[405]: specification/COM_SUID/4_server/COM_EXID/05_rcon_reload_events/405_rcon_reload_events_ssheet.txt

[406]: specification/COM_SUID/4_server/COM_EXID/06_rcon_set_max_ping/406_rcon_set_max_ping_ssheet.txt

[407]: specification/COM_SUID/4_server/COM_EXID/07_rcon_lock_server/407_rcon_lock_server_ssheet.txt

[408]: specification/COM_SUID/4_server/COM_EXID/08_rcon_unlock_server/408_rcon_unlock_server_ssheet.txt

[4281]: specification/COM_SUID/4_server/COM_EXID/28_mysql_open_session/428_mysql_open_session_P_ssheet.txt

[4282]: specification/COM_SUID/4_server/COM_EXID/28_mysql_open_session/428_mysql_open_session_F_ssheet.txt


[500]: specification/COM_SUID/5_control/readme.md

[501]: specification/COM_SUID/5_control/COM_EXID/01_set_log_severity/501_set_log_severity_ssheet.txt

[502]: specification/COM_SUID/5_control/COM_EXID/02_set_log_severities/502_set_log_severities_ssheet.txt

[600]: specification/COM_SUID/6_controller/readme.md

[601]: specification/COM_SUID/6_controller/COM_EXID/01_start/601_start_ssheet.txt

[602]: specification/COM_SUID/6_controller/COM_EXID/02_stop/602_stop_ssheet.txt

[603]: specification/COM_SUID/6_controller/COM_EXID/03_restart/603_restart_ssheet.txt

[604]: specification/COM_SUID/6_controller/COM_EXID/04_revoke/604_revoke_ssheet.txt

[605]: specification/COM_SUID/6_controller/COM_EXID/05_shutdown/605_shutdown_ssheet.txt
