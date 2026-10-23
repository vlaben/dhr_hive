# DHR hive subsystem server provider

<br/>

## logging

<br/>

| <sub>**COM_SUID**<sub/> | <sub>**COM_TYPE**<sub/> | <sub>**COM_EXID**<sub/> | <sub>**specification sheet**<sub/>   | <sub>**SQF library function**<sub/> | <sub>**short description**<sub/>                      |
|:-----------------------:|:-----------------------:|:-----------------------:|:-------------------------------------|:------------------------------------|:------------------------------------------------------|
|      <sub>4<sub/>       |      <sub>2<sub/>       |      <sub>1<sub/>       | <sub>[log server message][401]<sub/> | <sub>_DHR_f_srv_log_message_<sub/>  | <sub>Log message with given severity<br>`(NEW)`<sub/> |

<br/>

## refactored legacy `CHILD:*` calls related to `server`

<br/>

| <sub>**COM_SUID**<sub/> | <sub>**COM_TYPE**<sub/> | <sub>**COM_EXID**<sub/> | <sub>**specification sheet**<sub/>      | <sub>**SQF library function**<sub/>   | <sub>**short description**<sub/>                                                                                                                                  |
|:-----------------------:|:-----------------------:|:-----------------------:|:----------------------------------------|:--------------------------------------|:------------------------------------------------------------------------------------------------------------------------------------------------------------------|
|      <sub>4<sub/>       |      <sub>2<sub/>       |      <sub>2<sub/>       | <sub>[CHILD:307 getDateTime][402]<sub/> | <sub>_DHR_f_ch307_get_datetime_<sub/> | <sub>Get `[2026,10,23,18,7] (year,month,day,hours,minutes)`<br>with a potential offset, depending on the values selected<br>in the configuration `([Time])`<sub/> |

<br/>

## BE Rcon

<br/>

| <sub>**COM_SUID**<sub/> | <sub>**COM_TYPE**<sub/> | <sub>**COM_EXID**<sub/> | <sub>**specification sheet**<sub/>          | <sub>**SQF library function**<sub/>              | <sub>**short description**<sub/>                                                     |
|:-----------------------:|:-----------------------:|:-----------------------:|:--------------------------------------------|:-------------------------------------------------|:-------------------------------------------------------------------------------------|
|      <sub>4<sub/>       |      <sub>2<sub/>       |      <sub>3<sub/>       | <sub>[rcon send global message][403]<sub/>  | <sub>_DHR_f_srv_rcon_send_global_message_<sub/>  | <sub>Send a GLOBAL Battleye message to all players<br>`(NEW)`<sub/>                  |
|      <sub>4<sub/>       |      <sub>2<sub/>       |      <sub>4<sub/>       | <sub>[rcon send private message][404]<sub/> | <sub>_DHR_f_srv_rcon_send_private_message_<sub/> | <sub>Send a PRIVATE Battleye message to a specific player<br>`(NEW)`<sub/>           |
|      <sub>4<sub/>       |      <sub>2<sub/>       |      <sub>5<sub/>       | <sub>[rcon reload scripts][405]<sub/>       | <sub>_DHR_f_srv_rcon_reload_scripts_<sub/>       | <sub>Reload the script execution filters specified in "scripts.txt"<br>`(NEW)`<sub/> |
|      <sub>4<sub/>       |      <sub>2<sub/>       |      <sub>6<sub/>       | <sub>[rcon reload events][406]<sub/>        | <sub>_DHR_f_srv_rcon_reload_events_<sub/>        | <sub>Reload all network filters such as "createVehicle.txt", ...<br>`(NEW)`<sub/>    |
|      <sub>4<sub/>       |      <sub>2<sub/>       |      <sub>7<sub/>       | <sub>[rcon set max ping][407]<sub/>         | <sub>_DHR_f_srv_rcon_set_max_ping_<sub/>         | <sub>Set the maximum acceptable ping for players (in ms)<br>`(NEW)`<sub/>            |
|      <sub>4<sub/>       |      <sub>2<sub/>       |      <sub>8<sub/>       | <sub>[rcon lock server][408]<sub/>          | <sub>_DHR_f_srv_rcon_lock_server_<sub/>          | <sub>Lock the Arma 2 OA server, prevent new clients from joining<br>`(NEW)`<sub/>    |
|      <sub>4<sub/>       |      <sub>2<sub/>       |      <sub>9<sub/>       | <sub>[rcon unlock server][409]<sub/>        | <sub>_DHR_f_srv_rcon_unlock_server_<sub/>        | <sub>Unlock the Arma 2 OA server, allow new clients to join<br>`(NEW)`<sub/>         |


[//]: # (Link references)

[401]: COM_EXID/01_log_message/401_log_message_ssheet.txt

[402]: COM_EXID/02_get_datetime/402_CH307_getDateTime_ssheet.txt

[403]: COM_EXID/03_rcon_send_global_message/403_rcon_send_global_message_ssheet.txt

[404]: COM_EXID/04_rcon_send_private_message/404_rcon_send_private_message_ssheet.txt

[405]: COM_EXID/05_rcon_reload_scripts/405_rcon_reload_scripts_ssheet.txt

[406]: COM_EXID/06_rcon_reload_events/406_rcon_reload_events_ssheet.txt

[407]: COM_EXID/07_rcon_set_max_ping/407_rcon_set_max_ping_ssheet.txt

[408]: COM_EXID/08_rcon_lock_server/408_rcon_lock_server_ssheet.txt

[409]: COM_EXID/09_rcon_unlock_server/409_rcon_unlock_server_ssheet.txt
