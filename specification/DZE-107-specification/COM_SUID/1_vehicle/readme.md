# DHR hive subsystem vehicle provider

<br/>

## logging

<br/>

| <sub>**COM_SUID**<sub/> | <sub>**COM_TYPE**<sub/> | <sub>**COM_EXID**<sub/> | <sub>**specification sheet**<sub/>    | <sub>**SQF library function**<sub/> | <sub>**short description**<sub/>                      |
|:-----------------------:|:-----------------------:|:-----------------------:|:--------------------------------------|:------------------------------------|:------------------------------------------------------|
|      <sub>1<sub/>       |      <sub>2<sub/>       |      <sub>1<sub/>       | <sub>[log vehicle message][101]<sub/> | <sub>_DHR_f_veh_log_message_<sub/>  | <sub>Log message with given severity<br>`(NEW)`<sub/> |

<br/>

## refactored legacy `CHILD:*` calls related to `vehicle`

<br/>

| <sub>**COM_SUID**<sub/> | <sub>**COM_TYPE**<sub/> | <sub>**COM_EXID**<sub/> | <sub>**specification sheet**<sub/>             | <sub>**SQF library function**<sub/>    | <sub>**short description**<sub/>                                  |
|:-----------------------:|:-----------------------:|:-----------------------:|:-----------------------------------------------|:---------------------------------------|:------------------------------------------------------------------|
|      <sub>1<sub/>       |      <sub>3<sub/>       |      <sub>24<sub/>      | <sub>[CHILD:800 VGQueryVeh (P)][1241]<sub/>    | <sub>_DHR_f_ch800_vg_query_P_<sub/>    | <sub>Get an garage info data PROMISE<br>`(NEW)`<sub/>             |
|      <sub>1<sub/>       |      <sub>4<sub/>       |      <sub>24<sub/>      | <sub>[CHILD:800 VGQueryVeh (F)][1242]<sub/>    | <sub>_DHR_f_ch800_vg_query_F_<sub/>    | <sub>Retrieve garage info data FUTURE result<br>`(NEW)`<sub/>     |
|      <sub>1<sub/>       |      <sub>2<sub/>       |      <sub>25<sub/>      | <sub>[CHILD:802 VGStoreVeh][125]<sub/>         | <sub>_DHR_f_ch802_vg_store_<sub/>      | <sub>Park vehicle in the garage<sub/>                             |
|      <sub>1<sub/>       |      <sub>3<sub/>       |      <sub>26<sub/>      | <sub>[CHILD:801 VGSpawnVeh (P)][1261]<sub/>    | <sub>_DHR_f_ch801_vg_spawn_P_<sub/>    | <sub>Get a pulling out of garage PROMISE<br>`(NEW)`<sub/>         |
|      <sub>1<sub/>       |      <sub>4<sub/>       |      <sub>26<sub/>      | <sub>[CHILD:801 VGSpawnVeh (F)][1262]<sub/>    | <sub>_DHR_f_ch801_vg_spawn_F_<sub/>    | <sub>Retrieve pulled out of garage FUTURE result<br>`(NEW)`<sub/> |
|      <sub>1<sub/>       |      <sub>3<sub/>       |      <sub>27<sub/>      | <sub>[CHILD:803 VGMaintainVeh (P)][1271]<sub/> | <sub>_DHR_f_ch803_vg_maintain_P_<sub/> | <sub>Get a PROMISE for a garage maintanance<br>`(NEW)`<sub/>      |
|      <sub>1<sub/>       |      <sub>4<sub/>       |      <sub>27<sub/>      | <sub>[CHILD:803 VGMaintainVeh (F)][1272]<sub/> | <sub>_DHR_f_ch803_vg_maintain_F_<sub/> | <sub>Retrieve garage maintanance FUTURE result<br>`(NEW)`<sub/>   |

<br/>

## MySQL

<br/>

| <sub>**MySQL table**<sub/> | <sub>**specification sheet**<sub/>        | <sub>**DDL**<sub/>                 |
|:---------------------------|:------------------------------------------|:-----------------------------------|
| <sub>**garage**<sub/>      | <sub>[312_garage_ssheet.txt][31201]<sub/> | <sub>[312_garage.sql][31202]<sub/> |

<br/>

| <sub>**COM_SUID**<sub/> | <sub>**COM_TYPE**<sub/> | <sub>**COM_EXID**<sub/> | <sub>**specification sheet**<sub/>         | <sub>**SQF library function**<sub/> | <sub>**short description**<sub/>                     |
|:-----------------------:|:-----------------------:|:-----------------------:|:-------------------------------------------|:------------------------------------|:-----------------------------------------------------|
|      <sub>1<sub/>       |      <sub>3<sub/>       |      <sub>28<sub/>      | <sub>[*open mysql session (P)][1281]<sub/> |                                     | <sub>Get an open MySQL session PROMISE<sub/>         |
|      <sub>1<sub/>       |      <sub>4<sub/>       |      <sub>28<sub/>      | <sub>[*open mysql session (F)][1282]<sub/> |                                     | <sub>Retrieve open MySQL session FUTURE result<sub/> |

`* internal only`


[//]: # (Link references)

[1]: ../../../naming_convention/DZE100_hive_world_naming_convention.txt

[101]: COM_EXID/01_log_message/101_log_message_ssheet.txt

[1241]: COM_EXID/24_garage_info/124_CH800_VGQueryVeh_P_ssheet.txt

[1242]: COM_EXID/24_garage_info/124_CH800_VGQueryVeh_F_ssheet.txt

[125]: COM_EXID/25_garage_in/125_CH802_UpdateVGStoreVeh_ssheet.txt

[1261]: COM_EXID/26_garage_out/126_CH801_VGSpawnVeh_P_ssheet.txt

[1262]: COM_EXID/26_garage_out/126_CH801_VGSpawnVeh_F_ssheet.txt

[1271]: COM_EXID/27_garage_maintain/127_CH803_VGMaintainVeh_P_ssheet.txt

[1272]: COM_EXID/27_garage_maintain/127_CH803_VGMaintainVeh_F_ssheet.txt

[1281]: COM_EXID/28_mysql_open_session/128_mysql_open_session_P_ssheet.txt

[1282]: COM_EXID/28_mysql_open_session/128_mysql_open_session_F_ssheet.txt

[31201]: MySQL/02_th/312_garage_ssheet.txt

[31202]: MySQL/02_th/312_garage.sql
