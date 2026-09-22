# DHR hive subsystem object provider

<br/>

## logging

<br/>

| <sub>**COM_SUID**<sub/> | <sub>**COM_TYPE**<sub/> | <sub>**COM_EXID**<sub/> | <sub>**specification sheet**<sub/>   | <sub>**SQF library function**<sub/> | <sub>**short description**<sub/>           |
|:-----------------------:|:-----------------------:|:-----------------------:|:-------------------------------------|:------------------------------------|:-------------------------------------------|
|      <sub>2<sub/>       |      <sub>2<sub/>       |      <sub>1<sub/>       | <sub>[log object message][201]<sub/> | <sub>_DHR_f_obj_log_message_<sub/>  | <sub>Log message with given severity<sub/> |

<br/>

## create

<br/>

| <sub>**COM_SUID**<sub/> | <sub>**COM_TYPE**<sub/> | <sub>**COM_EXID**<sub/> | <sub>**specification sheet**<sub/>       | <sub>**SQF library function**<sub/> | <sub>**short description**<sub/>                 |
|:-----------------------:|:-----------------------:|:-----------------------:|:-----------------------------------------|:------------------------------------|:-------------------------------------------------|
|      <sub>2<sub/>       |      <sub>3<sub/>       |      <sub>2<sub/>       | <sub>[create new object (P)][2021]<sub/> | <sub>_DHR_f_obj_create_P_<sub/>     | <sub>Get a PROMISE for a new object record<sub/> |
|      <sub>2<sub/>       |      <sub>4<sub/>       |      <sub>2<sub/>       | <sub>[create new object (F)][2022]<sub/> | <sub>_DHR_f_obj_create_F_<sub/>     | <sub>Retrieve FUTURE object record<sub/>         |

<br/>

## delete

<br/>

| <sub>**COM_SUID**<sub/> | <sub>**COM_TYPE**<sub/> | <sub>**COM_EXID**<sub/> | <sub>**specification sheet**<sub/>        | <sub>**SQF library function**<sub/> | <sub>**short description**<sub/>                                |
|:-----------------------:|:-----------------------:|:-----------------------:|:------------------------------------------|:------------------------------------|:----------------------------------------------------------------|
|      <sub>2<sub/>       |      <sub>2<sub/>       |      <sub>4<sub/>       | <sub>[delete object][204]<sub/>           | <sub>_DHR_f_obj_delete_one_<sub/>   | <sub>Mark object record for scheduled removal<sub/>             |
|      <sub>2<sub/>       |      <sub>3<sub/>       |      <sub>5<sub/>       | <sub>[delete player base (P)][2051]<sub/> | <sub>_DHR_f_obj_delete_all_P_<sub/> | <sub>Get a PROMISE for a player base scheduled removal<sub/>    |
|      <sub>2<sub/>       |      <sub>4<sub/>       |      <sub>5<sub/>       | <sub>[delete player base (F)][2052]<sub/> | <sub>_DHR_f_obj_delete_all_F_<sub/> | <sub>Retrieve player base scheduled removal FUTURE result<sub/> |

<br/>

## maintain

<br/>

| <sub>**COM_SUID**<sub/> | <sub>**COM_TYPE**<sub/> | <sub>**COM_EXID**<sub/> | <sub>**specification sheet**<sub/>          | <sub>**SQF library function**<sub/>   | <sub>**short description**<sub/>                          |
|:-----------------------:|:-----------------------:|:-----------------------:|:--------------------------------------------|:--------------------------------------|:----------------------------------------------------------|
|      <sub>2<sub/>       |      <sub>2<sub/>       |      <sub>7<sub/>       | <sub>[maintain object][207]<sub/>           | <sub>_DHR_f_obj_maintain_one_<sub/>   | <sub>Maintain object record<sub/>                         |
|      <sub>2<sub/>       |      <sub>3<sub/>       |      <sub>8<sub/>       | <sub>[maintain player base (P)][2081]<sub/> | <sub>_DHR_f_obj_maintain_all_P_<sub/> | <sub>Get a PROMISE for a player base maintanance<sub/>    |
|      <sub>2<sub/>       |      <sub>4<sub/>       |      <sub>8<sub/>       | <sub>[maintain player base (F)][2082]<sub/> | <sub>_DHR_f_obj_maintain_all_F_<sub/> | <sub>Retrieve player base maintanance FUTURE result<sub/> |

<br/>

## sync (per-world)

<br/>

| <sub>**COM_SUID**<sub/> | <sub>**COM_TYPE**<sub/> | <sub>**COM_EXID**<sub/> | <sub>**specification sheet**<sub/>            | <sub>**SQF library function**<sub/>            | <sub>**short description**<sub/>                               |
|:-----------------------:|:-----------------------:|:-----------------------:|:----------------------------------------------|:-----------------------------------------------|:---------------------------------------------------------------|
|      <sub>2<sub/>       |      <sub>2<sub/>       |      <sub>10<sub/>      | <sub>[sync object record][210]<sub/>          | <sub>_DHR_f_obj_sync_record_<sub/>             | <sub>Update object database record<sub/>                       |
|      <sub>2<sub/>       |      <sub>2<sub/>       |      <sub>11<sub/>      | <sub>[sync identity][211]<sub/>               | <sub>_DHR_f_obj_sync_ow_identity_<sub/>        | <sub>Update STATIC properties<sub/>                            |
|      <sub>2<sub/>       |      <sub>2<sub/>       |      <sub>12<sub/>      | <sub>[sync money][212]<sub/>                  | <sub>_DHR_f_obj_sync_ow_money_<sub/>           | <sub>Update storage money<sub/>                                |
|      <sub>2<sub/>       |      <sub>2<sub/>       |      <sub>13<sub/>      | <sub>[sync damage][213]<sub/>                 | <sub>_DHR_f_obj_sync_ow_damage_<sub/>          | <sub>Update damage<sub/>                                       |
|      <sub>2<sub/>       |      <sub>2<sub/>       |      <sub>14<sub/>      | <sub>[sync owner][214]<sub/>                  | <sub>_DHR_f_obj_sync_ow_owner_for_one_<sub/>   | <sub>Update owner for a single object<sub/>                    |
|      <sub>2<sub/>       |      <sub>3<sub/>       |      <sub>15<sub/>      | <sub>[sync player base owner (P)][2151]<sub/> | <sub>_DHR_f_obj_sync_ow_owner_for_all_P_<sub/> | <sub>Get a PROMISE for a player base ownership change<sub/>    |
|      <sub>2<sub/>       |      <sub>4<sub/>       |      <sub>15<sub/>      | <sub>[sync player base owner (F)][2152]<sub/> | <sub>_DHR_f_obj_sync_ow_owner_for_all_F_<sub/> | <sub>Retrieve player base ownership change FUTURE result<sub/> |
|      <sub>2<sub/>       |      <sub>2<sub/>       |      <sub>16<sub/>      | <sub>[sync key][216]<sub/>                    | <sub>_DHR_f_obj_sync_ow_key_<sub/>             | <sub>Update combination key<sub/>                              |
|      <sub>2<sub/>       |      <sub>2<sub/>       |      <sub>17<sub/>      | <sub>[sync worldspace][217]<sub/>             | <sub>_DHR_f_obj_sync_ow_worldspace_<sub/>      | <sub>Update position and vectors<sub/>                         |
|      <sub>2<sub/>       |      <sub>2<sub/>       |      <sub>18<sub/>      | <sub>[sync friends][218]<sub/>                | <sub>_DHR_f_obj_sync_ow_friends_<sub/>         | <sub>Update friends<sub/>                                      |
|      <sub>2<sub/>       |      <sub>2<sub/>       |      <sub>19<sub/>      | <sub>[sync inventory][219]<sub/>              | <sub>_DHR_f_obj_sync_ow_inventory_<sub/>       | <sub>Update inventory<sub/>                                    |
|      <sub>2<sub/>       |      <sub>2<sub/>       |      <sub>20<sub/>      | <sub>[sync props][220]<sub/>                  | <sub>_DHR_f_obj_sync_ow_props_<sub/>           | <sub>Update DYNAMIC properties<sub/>                           |

<br/>

## MySQL

<br/>

| <sub>**COM_SUID**<sub/> | <sub>**COM_TYPE**<sub/> | <sub>**COM_EXID**<sub/> | <sub>**specification sheet**<sub/>           | <sub>**SQF library function**<sub/>            | <sub>**short description**<sub/>                                        |
|:-----------------------:|:-----------------------:|:-----------------------:|:---------------------------------------------|:-----------------------------------------------|:------------------------------------------------------------------------|
|      <sub>2<sub/>       |      <sub>3<sub/>       |      <sub>28<sub/>      | <sub>[*open mysql session (P)][2281]<sub/>   |                                                | <sub>Get an open MySQL session PROMISE<sub/>                            |
|      <sub>2<sub/>       |      <sub>4<sub/>       |      <sub>28<sub/>      | <sub>[*open mysql session (F)][2282]<sub/>   |                                                | <sub>Retrieve open MySQL session FUTURE result<sub/>                    |
|      <sub>2<sub/>       |      <sub>2<sub/>       |      <sub>29<sub/>      | <sub>[*cleanup mysql tw table][229]<sub/>    |                                                | <sub>Delete all records marked for scheduled removal (`ow_sid=0`)<sub/> |
|      <sub>2<sub/>       |      <sub>3<sub/>       |      <sub>30<sub/>      | <sub>[export mysql tw table (P)][2301]<sub/> | <sub>_DHR_f_obj_mysql_export_tw_table_P_<sub/> | <sub>Get an export MySQL world table PROMISE<sub/>                      |
|      <sub>2<sub/>       |      <sub>4<sub/>       |      <sub>30<sub/>      | <sub>[export mysql tw table (F)][2302]<sub/> | <sub>_DHR_f_obj_mysql_export_tw_table_F_<sub/> | <sub>Retrieve export MySQL world table FUTURE result<sub/>              |

`* internal only`


[//]: # (Link references)

[201]: COM_EXID/01_log_message/201_log_message_ssheet.txt

[2021]: COM_EXID/02_create/202_create_P_ssheet.txt

[2022]: COM_EXID/02_create/202_create_F_ssheet.txt

[204]: COM_EXID/04_delete_one/204_delete_one_ssheet.txt

[2051]: COM_EXID/05_delete_all/205_delete_all_P_ssheet.txt

[2052]: COM_EXID/05_delete_all/205_delete_all_F_ssheet.txt

[207]: COM_EXID/07_maintain_one/207_maintain_one_ssheet.txt

[2081]: COM_EXID/08_maintain_all/208_maintain_all_P_ssheet.txt

[2082]: COM_EXID/08_maintain_all/208_maintain_all_F_ssheet.txt

[210]: COM_EXID/10_sync_object_record/210_sync_object_record_ssheet.txt

[211]: COM_EXID/11_sync_ow_identity/211_sync_ow_identity_ssheet.txt

[212]: COM_EXID/12_sync_ow_money/212_sync_ow_money_ssheet.txt

[213]: COM_EXID/13_sync_ow_damage/213_sync_ow_damage_ssheet.txt

[214]: COM_EXID/14_sync_ow_owner_for_one/214_sync_ow_owner_for_one_ssheet.txt

[2151]: COM_EXID/15_sync_ow_owner_for_all/215_sync_ow_owner_for_all_P_ssheet.txt

[2152]: COM_EXID/15_sync_ow_owner_for_all/215_sync_ow_owner_for_all_F_ssheet.txt

[216]: COM_EXID/16_sync_ow_key/216_sync_ow_key_ssheet.txt

[217]: COM_EXID/17_sync_ow_worldspace/217_sync_ow_worldspace_ssheet.txt

[218]: COM_EXID/18_sync_ow_friends/218_sync_ow_friends_ssheet.txt

[219]: COM_EXID/19_sync_ow_inventory/219_sync_ow_inventory_ssheet.txt

[220]: COM_EXID/20_sync_ow_props/220_sync_ow_props_ssheet.txt

[2281]: COM_EXID/28_mysql_open_session/228_mysql_open_session_P_ssheet.txt

[2282]: COM_EXID/28_mysql_open_session/228_mysql_open_session_F_ssheet.txt

[229]: COM_EXID/29_mysql_cleanup_tw/229_mysql_cleanup_tw_ssheet.txt

[2301]: COM_EXID/30_mysql_export_tw/230_mysql_export_tw_P_ssheet.txt

[2302]: COM_EXID/30_mysql_export_tw/230_mysql_export_tw_F_ssheet.txt
