# DHR hive subsystem vehicle provider

<br/>

## logging

<br/>

| <sub>**COM_SUID**<sub/> | <sub>**COM_TYPE**<sub/> | <sub>**COM_EXID**<sub/> | <sub>**specification sheet**<sub/>    | <sub>**SQF library function**<sub/> | <sub>**short description**<sub/>           |
|:-----------------------:|:-----------------------:|:-----------------------:|:--------------------------------------|:------------------------------------|:-------------------------------------------|
|      <sub>1<sub/>       |      <sub>2<sub/>       |      <sub>1<sub/>       | <sub>[log vehicle message][101]<sub/> | <sub>_DHR_f_veh_log_message_<sub/>  | <sub>Log message with given severity<sub/> |

<br/>

## create

<br/>

| <sub>**COM_SUID**<sub/> | <sub>**COM_TYPE**<sub/> | <sub>**COM_EXID**<sub/> | <sub>**specification sheet**<sub/>        | <sub>**SQF library function**<sub/> | <sub>**short description**<sub/>                  |
|:-----------------------:|:-----------------------:|:-----------------------:|:------------------------------------------|:------------------------------------|:--------------------------------------------------|
|      <sub>1<sub/>       |      <sub>3<sub/>       |      <sub>2<sub/>       | <sub>[create new vehicle (P)][1021]<sub/> | <sub>_DHR_f_veh_create_P_<sub/>     | <sub>Get a PROMISE for a new vehicle record<sub/> |
|      <sub>1<sub/>       |      <sub>4<sub/>       |      <sub>2<sub/>       | <sub>[create new vehicle (F)][1022]<sub/> | <sub>_DHR_f_veh_create_F_<sub/>     | <sub>Retrieve FUTURE vehicle record<sub/>         |

<br/>

## delete

<br/>

| <sub>**COM_SUID**<sub/> | <sub>**COM_TYPE**<sub/> | <sub>**COM_EXID**<sub/> | <sub>**specification sheet**<sub/> | <sub>**SQF library function**<sub/> | <sub>**short description**<sub/>                     |
|:-----------------------:|:-----------------------:|:-----------------------:|:-----------------------------------|:------------------------------------|:-----------------------------------------------------|
|      <sub>1<sub/>       |      <sub>2<sub/>       |      <sub>4<sub/>       | <sub>[delete vehicle][104]<sub/>   | <sub>_DHR_f_veh_delete_<sub/>       | <sub>Mark vehicle record for scheduled removal<sub/> |

<br/>

## sync (per-world)

<br/>

| <sub>**COM_SUID**<sub/> | <sub>**COM_TYPE**<sub/> | <sub>**COM_EXID**<sub/> | <sub>**specification sheet**<sub/>    | <sub>**SQF library function**<sub/>    | <sub>**short description**<sub/>             |
|:-----------------------:|:-----------------------:|:-----------------------:|:--------------------------------------|:---------------------------------------|:---------------------------------------------|
|      <sub>1<sub/>       |      <sub>2<sub/>       |      <sub>10<sub/>      | <sub>[sync vehicle record][110]<sub/> | <sub>_DHR_f_veh_sync_record_<sub/>     | <sub>Update vehicle database record<sub/>    |
|      <sub>1<sub/>       |      <sub>2<sub/>       |      <sub>11<sub/>      | <sub>[sync identity][111]<sub/>       | <sub>_DHR_f_veh_sync_identity_<sub/>   | <sub>Update STATIC properties<sub/>          |
|      <sub>1<sub/>       |      <sub>2<sub/>       |      <sub>12<sub/>      | <sub>[sync money][112]<sub/>          | <sub>_DHR_f_veh_sync_money_<sub/>      | <sub>Update storage money<sub/>              |
|      <sub>1<sub/>       |      <sub>2<sub/>       |      <sub>13<sub/>      | <sub>[sync damage][113]<sub/>         | <sub>_DHR_f_veh_sync_damage_<sub/>     | <sub>Update damage and hitpoints<sub/>       |
|      <sub>1<sub/>       |      <sub>2<sub/>       |      <sub>16<sub/>      | <sub>[sync key][116]<sub/>            | <sub>_DHR_f_veh_sync_key_<sub/>        | <sub>Update vehicle key<sub/>                |
|      <sub>1<sub/>       |      <sub>2<sub/>       |      <sub>17<sub/>      | <sub>[sync worldspace][117]<sub/>     | <sub>_DHR_f_veh_sync_worldspace_<sub/> | <sub>Update fuel, position and vectors<sub/> |
|      <sub>1<sub/>       |      <sub>2<sub/>       |      <sub>18<sub/>      | <sub>[sync colors][118]<sub/>         | <sub>_DHR_f_veh_sync_colors_<sub/>     | <sub>Update colors<sub/>                     |
|      <sub>1<sub/>       |      <sub>2<sub/>       |      <sub>19<sub/>      | <sub>[sync inventory][119]<sub/>      | <sub>_DHR_f_veh_sync_inventory_<sub/>  | <sub>Update inventory<sub/>                  |
|      <sub>1<sub/>       |      <sub>2<sub/>       |      <sub>20<sub/>      | <sub>[sync props][120]<sub/>          | <sub>_DHR_f_veh_sync_props_<sub/>      | <sub>Update DYNAMIC properties<sub/>         |

<br/>

## virtual garage (cross-worlds)

<br/>

| <sub>**COM_SUID**<sub/> | <sub>**COM_TYPE**<sub/> | <sub>**COM_EXID**<sub/> | <sub>**specification sheet**<sub/>     | <sub>**SQF library function**<sub/>      | <sub>**short description**<sub/>                       |
|:-----------------------:|:-----------------------:|:-----------------------:|:---------------------------------------|:-----------------------------------------|:-------------------------------------------------------|
|      <sub>1<sub/>       |      <sub>3<sub/>       |      <sub>24<sub/>      | <sub>[garage info (P)][1241]<sub/>     | <sub>_DHR_f_veh_garage_info_P_<sub/>     | <sub>Get an garage info data PROMISE<sub/>             |
|      <sub>1<sub/>       |      <sub>4<sub/>       |      <sub>24<sub/>      | <sub>[garage info (F)][1242]<sub/>     | <sub>_DHR_f_veh_garage_info_F_<sub/>     | <sub>Retrieve garage info data FUTURE result<sub/>     |
|      <sub>1<sub/>       |      <sub>2<sub/>       |      <sub>25<sub/>      | <sub>[garage in][125]<sub/>            | <sub>_DHR_f_veh_garage_in_<sub/>         | <sub>Park vehicle in the garage<sub/>                  |
|      <sub>1<sub/>       |      <sub>3<sub/>       |      <sub>26<sub/>      | <sub>[garage out (P)][1261]<sub/>      | <sub>_DHR_f_veh_garage_out_P_<sub/>      | <sub>Get a pulling out of garage PROMISE<sub/>         |
|      <sub>1<sub/>       |      <sub>4<sub/>       |      <sub>26<sub/>      | <sub>[garage out (F)][1262]<sub/>      | <sub>_DHR_f_veh_garage_out_F_<sub/>      | <sub>Retrieve pulled out of garage FUTURE result<sub/> |
|      <sub>1<sub/>       |      <sub>3<sub/>       |      <sub>27<sub/>      | <sub>[garage maintain (P)][1271]<sub/> | <sub>_DHR_f_veh_garage_maintain_P_<sub/> | <sub>Get a PROMISE for a garage maintanance<sub/>      |
|      <sub>1<sub/>       |      <sub>4<sub/>       |      <sub>27<sub/>      | <sub>[garage maintain (F)][1272]<sub/> | <sub>_DHR_f_veh_garage_maintain_F_<sub/> | <sub>Retrieve garage maintanance FUTURE result<sub/>   |

<br/>

## MySQL

<br/>

| <sub>**COM_SUID**<sub/> | <sub>**COM_TYPE**<sub/> | <sub>**COM_EXID**<sub/> | <sub>**specification sheet**<sub/>            | <sub>**SQF library function**<sub/>            | <sub>**short description**<sub/>                                        |
|:-----------------------:|:-----------------------:|:-----------------------:|:----------------------------------------------|:-----------------------------------------------|:------------------------------------------------------------------------|
|      <sub>1<sub/>       |      <sub>3<sub/>       |      <sub>28<sub/>      | <sub>[*open mysql session (P)][1281]<sub/>    |                                                | <sub>Get an open MySQL session PROMISE<sub/>                            |
|      <sub>1<sub/>       |      <sub>4<sub/>       |      <sub>28<sub/>      | <sub>[*open mysql session (F)][1282]<sub/>    |                                                | <sub>Retrieve open MySQL session FUTURE result<sub/>                    |
|      <sub>1<sub/>       |      <sub>2<sub/>       |      <sub>29<sub/>      | <sub>[*cleanup mysql tw table][129]<sub/>     |                                                | <sub>Delete all records marked for scheduled removal (`vw_sid=0`)<sub/> |
|      <sub>1<sub/>       |      <sub>3<sub/>       |      <sub>30<sub/>      | <sub>[export mysql tw table (P)][1301]<sub/>  | <sub>_DHR_f_obj_mysql_export_tw_table_P_<sub/> | <sub>Get an export MySQL world table PROMISE<sub/>                      |
|      <sub>1<sub/>       |      <sub>4<sub/>       |      <sub>30<sub/>      | <sub>[export mysql tw table (F)][1302]<sub/>  | <sub>_DHR_f_obj_mysql_export_tw_table_F_<sub/> | <sub>Retrieve export MySQL world table FUTURE result<sub/>              |
|      <sub>1<sub/>       |      <sub>2<sub/>       |      <sub>31<sub/>      | <sub>[*cleanup mysql th table (P)][131]<sub/> |                                                | <sub>Delete all records marked for scheduled removal (`vh_sid=0`)<sub/> |

`* internal only`


[//]: # (Link references)

[101]: COM_EXID/01_log_message/101_log_message_ssheet.txt

[1021]: COM_EXID/02_create/102_create_P_ssheet.txt

[1022]: COM_EXID/02_create/102_create_F_ssheet.txt

[104]: COM_EXID/04_delete_one/104_delete_one_ssheet.txt

[110]: COM_EXID/10_sync_vehicle_record/110_sync_vehicle_record_ssheet.txt

[111]: COM_EXID/11_sync_vw_identity/111_sync_vw_identity_ssheet.txt

[112]: COM_EXID/12_sync_vw_money/112_sync_vw_money_ssheet.txt

[113]: COM_EXID/13_sync_vw_damage/113_sync_vw_damage_ssheet.txt

[116]: COM_EXID/16_sync_vw_key/116_sync_vw_key_ssheet.txt

[117]: COM_EXID/17_sync_vw_worldspace/117_sync_vw_worldspace_ssheet.txt

[118]: COM_EXID/18_sync_vw_colors/118_sync_vw_colors_ssheet.txt

[119]: COM_EXID/19_sync_vw_inventory/119_sync_vw_inventory_ssheet.txt

[120]: COM_EXID/20_sync_vw_props/120_sync_vw_props_ssheet.txt

[1241]: COM_EXID/24_garage_info/124_garage_info_P_ssheet.txt

[1242]: COM_EXID/24_garage_info/124_garage_info_F_ssheet.txt

[125]: COM_EXID/25_garage_in/125_garage_in_ssheet.txt

[1261]: COM_EXID/26_garage_out/126_garage_out_P_ssheet.txt

[1262]: COM_EXID/26_garage_out/126_garage_out_F_ssheet.txt

[1271]: COM_EXID/27_garage_maintain/127_garage_maintain_P_ssheet.txt

[1272]: COM_EXID/27_garage_maintain/127_garage_maintain_F_ssheet.txt

[1281]: COM_EXID/28_mysql_open_session/128_mysql_open_session_P_ssheet.txt

[1282]: COM_EXID/28_mysql_open_session/128_mysql_open_session_F_ssheet.txt

[129]: COM_EXID/29_mysql_cleanup_tw/129_mysql_cleanup_tw_ssheet.txt

[1301]: COM_EXID/30_mysql_export_tw/130_mysql_export_tw_P_ssheet.txt

[1302]: COM_EXID/30_mysql_export_tw/130_mysql_export_tw_F_ssheet.txt

[131]: COM_EXID/31_mysql_cleanup_th/131_mysql_cleanup_th_ssheet.txt
