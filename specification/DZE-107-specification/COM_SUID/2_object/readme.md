# DHR hive subsystem object provider

<br/>

## logging

<br/>

| <sub>**COM_SUID**<sub/> | <sub>**COM_TYPE**<sub/> | <sub>**COM_EXID**<sub/> | <sub>**specification sheet**<sub/>   | <sub>**SQF library function**<sub/> | <sub>**short description**<sub/>                      |
|:-----------------------:|:-----------------------:|:-----------------------:|:-------------------------------------|:------------------------------------|:------------------------------------------------------|
|      <sub>2<sub/>       |      <sub>2<sub/>       |      <sub>1<sub/>       | <sub>[log object message][201]<sub/> | <sub>_DHR_f_obj_log_message_<sub/>  | <sub>Log message with given severity<br>`(NEW)`<sub/> |

<br/>

## refactored legacy `CHILD:*` calls related to `object`

<br/>

| <sub>**COM_SUID**<sub/> | <sub>**COM_TYPE**<sub/> | <sub>**COM_EXID**<sub/> | <sub>**specification sheet**<sub/>                | <sub>**SQF library function**<sub/>       | <sub>**short description**<sub/>                            |
|:-----------------------:|:-----------------------:|:-----------------------:|:--------------------------------------------------|:------------------------------------------|:------------------------------------------------------------|
|      <sub>2<sub/>       |      <sub>3<sub/>       |      <sub>2<sub/>       | <sub>[CHILD:308 objectPublish (P)][2021]<sub/>    | <sub>_DHR_f_ch308_publish_object_P_<sub/> | <sub>Get a PROMISE for a new object record<br>`(NEW)`<sub/> |
|      <sub>2<sub/>       |      <sub>4<sub/>       |      <sub>2<sub/>       | <sub>[CHILD:308 objectPublish (F)][2022]<sub/>    | <sub>_DHR_f_ch308_publish_object_F_<sub/> | <sub>Retrieve FUTURE object record<br>`(NEW)`<sub/>         |
|      <sub>2<sub/>       |      <sub>2<sub/>       |      <sub>4<sub/>       | <sub>[CHILD:304 objectDelete][204]<sub/>          | <sub>_DHR_f_ch304_delete_object_<sub/>    | <sub>Delete object record<sub/>                             |
|      <sub>2<sub/>       |      <sub>2<sub/>       |      <sub>7<sub/>       | <sub>[CHILD:396 datestampObjectUpdate][207]<sub/> | <sub>_DHR_f_ch396_maintain_object_<sub/>  | <sub>Maintain object record<sub/>                           |
|      <sub>2<sub/>       |      <sub>2<sub/>       |      <sub>13<sub/>      | <sub>[CHILD:306 vehicleDamaged][213]<sub/>        | <sub>_DHR_f_ch306_update_damage_<sub/>    | <sub>Update hitpoints and damage<sub/>                      |
|      <sub>2<sub/>       |      <sub>2<sub/>       |      <sub>17<sub/>      | <sub>[CHILD:305 vehicleMoved][217]<sub/>          | <sub>_DHR_f_ch305_update_movement_<sub/>  | <sub>Update worldspace and fuel<sub/>                       |
|      <sub>2<sub/>       |      <sub>2<sub/>       |      <sub>19<sub/>      | <sub>[CHILD:303 objectInventory][219]<sub/>       | <sub>_DHR_f_ch303_update_inventory_<sub/> | <sub>Update inventory and storage (bank) money<sub/>        |

<br/>

## MySQL

<br/>

| <sub>**MySQL table**<sub/> | <sub>**specification sheet**<sub/>             | <sub>**DDL**<sub/>                      |
|:---------------------------|:-----------------------------------------------|:----------------------------------------|
| <sub>**Object_DATA**<sub/> | <sub>[321_Object_DATA_ssheet.txt][32101]<sub/> | <sub>[321_Object_DATA.sql][32102]<sub/> |

<br/>

| <sub>**COM_SUID**<sub/> | <sub>**COM_TYPE**<sub/> | <sub>**COM_EXID**<sub/> | <sub>**specification sheet**<sub/>                          | <sub>**SQF library function**<sub/>         | <sub>**short description**<sub/>                                                                   |
|:-----------------------:|:-----------------------:|:-----------------------:|:------------------------------------------------------------|:--------------------------------------------|:---------------------------------------------------------------------------------------------------|
|      <sub>2<sub/>       |      <sub>3<sub/>       |      <sub>28<sub/>      | <sub>[*open mysql session (P)][2281]<sub/>                  |                                             | <sub>Get an open MySQL session PROMISE<sub/>                                                       |
|      <sub>2<sub/>       |      <sub>4<sub/>       |      <sub>28<sub/>      | <sub>[*open mysql session (F)][2282]<sub/>                  |                                             | <sub>Retrieve open MySQL session FUTURE result<sub/>                                               |
|      <sub>2<sub/>       |      <sub>3<sub/>       |      <sub>30<sub/>      | <sub>[CHILD:302 streamObjects<br>(all obj) (P)][2301]<sub/> | <sub>_DHR_f_ch302_mysql_export_obj_P_<sub/> | <sub>Get an export MySQL object table<br>`(all obj; ObjectUID == 1)` PROMISE `(NEW)`<sub/>         |
|      <sub>2<sub/>       |      <sub>4<sub/>       |      <sub>30<sub/>      | <sub>[CHILD:302 streamObjects<br>(all obj) (F)][2302]<sub/> | <sub>_DHR_f_ch302_mysql_export_obj_F_<sub/> | <sub>Retrieve export MySQL object table<br>`(all obj; ObjectUID == 1)` FUTURE result `(NEW)`<sub/> |
|      <sub>2<sub/>       |      <sub>3<sub/>       |      <sub>31<sub/>      | <sub>[CHILD:302 streamObjects<br>(all veh) (P)][2311]<sub/> | <sub>_DHR_f_ch302_mysql_export_veh_P_<sub/> | <sub>Get an export MySQL object table<br>`(all veh; ObjectUID == 2)` PROMISE `(NEW)`<sub/>         |
|      <sub>2<sub/>       |      <sub>4<sub/>       |      <sub>31<sub/>      | <sub>[CHILD:302 streamObjects<br>(all veh) (F)][2312]<sub/> | <sub>_DHR_f_ch302_mysql_export_veh_F_<sub/> | <sub>Retrieve export MySQL object table<br>`(all veh; ObjectUID == 2)` FUTURE result `(NEW)`<sub/> |

`* internal only`


[//]: # (Link references)

[201]: COM_EXID/01_log_message/201_log_message_ssheet.txt

[2021]: COM_EXID/02_create_one/202_CH308_createObject_P_ssheet.txt

[2022]: COM_EXID/02_create_one/202_CH308_createObject_F_ssheet.txt

[204]: COM_EXID/04_delete_one/204_CH304_objectDelete_ssheet.txt

[207]: COM_EXID/07_maintain_one/207_CH396_datestampObjectUpdate_ssheet.txt

[213]: COM_EXID/13_sync_ow_damage/213_CH306_vehicleDamaged_ssheet.txt

[217]: COM_EXID/17_sync_ow_worldspace/217_CH305_vehicleMoved_ssheet.txt

[219]: COM_EXID/19_sync_ow_inventory/219_CH303_objectInventory_ssheet.txt

[2281]: COM_EXID/28_mysql_open_session/228_mysql_open_session_P_ssheet.txt

[2282]: COM_EXID/28_mysql_open_session/228_mysql_open_session_F_ssheet.txt

[2301]: COM_EXID/30_mysql_export_obj/230_CH302_streamObjects_obj_P_ssheet.txt

[2302]: COM_EXID/30_mysql_export_obj/230_CH302_streamObjects_obj_F_ssheet.txt

[2311]: COM_EXID/31_mysql_export_veh/231_CH302_streamObjects_veh_P_ssheet.txt

[2312]: COM_EXID/31_mysql_export_veh/231_CH302_streamObjects_veh_F_ssheet.txt

[32101]: MySQL/01_tw/321_Object_DATA_ssheet.txt

[32102]: MySQL/01_tw/321_Object_DATA.sql
