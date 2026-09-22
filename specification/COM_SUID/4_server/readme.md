# DHR hive subsystem server provider

<br/>

## logging

<br/>

| <sub>**COM_SUID**<sub/> | <sub>**COM_TYPE**<sub/> | <sub>**COM_EXID**<sub/> | <sub>**specification sheet**<sub/>   | <sub>**SQF library function**<sub/> | <sub>**short description**<sub/>           |
|:-----------------------:|:-----------------------:|:-----------------------:|:-------------------------------------|:------------------------------------|:-------------------------------------------|
|      <sub>4<sub/>       |      <sub>2<sub/>       |      <sub>1<sub/>       | <sub>[log server message][401]<sub/> | <sub>_DHR_f_srv_log_message_<sub/>  | <sub>Log message with given severity<sub/> |

<br/>

## BE Rcon

<br/>


| <sub>**COM_SUID**<sub/> | <sub>**COM_TYPE**<sub/> | <sub>**COM_EXID**<sub/> | <sub>**specification sheet**<sub/>          | <sub>**SQF library function**<sub/>              | <sub>**short description**<sub/>                                          |
|:-----------------------:|:-----------------------:|:-----------------------:|:--------------------------------------------|:-------------------------------------------------|:--------------------------------------------------------------------------|
|      <sub>4<sub/>       |      <sub>2<sub/>       |      <sub>2<sub/>       | <sub>[rcon send global message][402]<sub/>  | <sub>_DHR_f_srv_rcon_send_global_message_<sub/>  | <sub>Send a GLOBAL Battleye message to all players<sub/>                  |
|      <sub>4<sub/>       |      <sub>2<sub/>       |      <sub>3<sub/>       | <sub>[rcon send private message][403]<sub/> | <sub>_DHR_f_srv_rcon_send_private_message_<sub/> | <sub>Send a PRIVATE Battleye message to a specific player<sub/>           |
|      <sub>4<sub/>       |      <sub>2<sub/>       |      <sub>4<sub/>       | <sub>[rcon reload scripts][404]<sub/>       | <sub>_DHR_f_srv_rcon_reload_scripts_<sub/>       | <sub>Reload the script execution filters specified in "scripts.txt"<sub/> |
|      <sub>4<sub/>       |      <sub>2<sub/>       |      <sub>5<sub/>       | <sub>[rcon reload events][405]<sub/>        | <sub>_DHR_f_srv_rcon_reload_events_<sub/>        | <sub>Reload all network filters such as "createVehicle.txt", ...<sub/>    |
|      <sub>4<sub/>       |      <sub>2<sub/>       |      <sub>6<sub/>       | <sub>[rcon set max ping][406]<sub/>         | <sub>_DHR_f_srv_rcon_set_max_ping_<sub/>         | <sub>Set the maximum acceptable ping for players (ms)<sub/>               |
|      <sub>4<sub/>       |      <sub>2<sub/>       |      <sub>7<sub/>       | <sub>[rcon lock server][407]<sub/>          | <sub>_DHR_f_srv_rcon_lock_server_<sub/>          | <sub>Lock the Arma 2 OA server, prevent new clients from joining<sub/>    |
|      <sub>4<sub/>       |      <sub>2<sub/>       |      <sub>8<sub/>       | <sub>[rcon unlock server][408]<sub/>        | <sub>_DHR_f_srv_rcon_unlock_server_<sub/>        | <sub>Unlock the Arma 2 OA server, allow new clients to join<sub/>         |

<br/>

## MySQL

<br/>

| <sub>**COM_SUID**<sub/> | <sub>**COM_TYPE**<sub/> | <sub>**COM_EXID**<sub/> | <sub>**specification sheet**<sub/>         | <sub>**SQF library function**<sub/> | <sub>**short description**<sub/>                     |
|:-----------------------:|:-----------------------:|:-----------------------:|:-------------------------------------------|:------------------------------------|:-----------------------------------------------------|
|      <sub>4<sub/>       |      <sub>3<sub/>       |      <sub>28<sub/>      | <sub>[*open mysql session (P)][4281]<sub/> |                                     | <sub>Get an open MySQL session PROMISE<sub/>         |
|      <sub>4<sub/>       |      <sub>4<sub/>       |      <sub>28<sub/>      | <sub>[*open mysql session (F)][4282]<sub/> |                                     | <sub>Retrieve open MySQL session FUTURE result<sub/> |

`* internal only`


[//]: # (Link references)

[401]: COM_EXID/01_log_message/401_log_message_ssheet.txt

[402]: COM_EXID/02_rcon_send_global_message/402_rcon_send_global_message_ssheet.txt

[403]: COM_EXID/03_rcon_send_private_message/403_rcon_send_private_message_ssheet.txt

[404]: COM_EXID/04_rcon_reload_scripts/404_rcon_reload_scripts_ssheet.txt

[405]: COM_EXID/05_rcon_reload_events/405_rcon_reload_events_ssheet.txt

[406]: COM_EXID/06_rcon_set_max_ping/406_rcon_set_max_ping_ssheet.txt

[407]: COM_EXID/07_rcon_lock_server/407_rcon_lock_server_ssheet.txt

[408]: COM_EXID/08_rcon_unlock_server/408_rcon_unlock_server_ssheet.txt

[4281]: COM_EXID/28_mysql_open_session/428_mysql_open_session_P_ssheet.txt

[4282]: COM_EXID/28_mysql_open_session/428_mysql_open_session_F_ssheet.txt
