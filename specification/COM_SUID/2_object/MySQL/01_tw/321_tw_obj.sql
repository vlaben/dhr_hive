-- ----------------------------------------------
-- per-world table for `tw_*_obj`
-- ----------------------------------------------


CREATE TABLE IF NOT EXISTS `tw_obj` -- DHR_f_obj_sync_ow_record
(
    `ow_oid`       INT           NOT NULL AUTO_INCREMENT,
    `ow_bid`       INT           NOT NULL DEFAULT 0,              -- DHR_f_obj_sync_ow_owner_for_all_P | DHR_f_obj_sync_ow_owner_for_all_F
    `ph_gid`       INT           NOT NULL DEFAULT 0,              -- DHR_f_obj_sync_ow_owner_for_one
    `ow_sid`       TINYINT       NOT NULL DEFAULT 1,
    `ow_identity`  INT           NOT NULL DEFAULT 0,              -- DHR_f_obj_sync_ow_identity
    `ow_created`   DATETIME      NOT NULL DEFAULT CURRENT_TIMESTAMP,
    `ow_updated`   DATETIME      NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
    `ow_bank`      BIGINT        NOT NULL DEFAULT 0,              -- DHR_f_obj_sync_ow_money
    `ow_damage`    DOUBLE        NOT NULL DEFAULT 0.0,            -- DHR_f_obj_sync_ow_damage
    `ow_key`       VARCHAR(32)   NOT NULL DEFAULT '0',            -- DHR_f_obj_sync_ow_key
    `ow_class`     VARCHAR(64)   NOT NULL DEFAULT 'Sign_sphere100cm_EP1',
    `ow_position`  VARCHAR(128)  NOT NULL DEFAULT '[]',           -- DHR_f_obj_sync_ow_worldspace
    `ow_vectors`   VARCHAR(128)  NOT NULL DEFAULT '[]',           -- DHR_f_obj_sync_ow_worldspace
    `ow_friends`   VARCHAR(2048) NOT NULL DEFAULT '[]',           -- DHR_f_obj_sync_ow_friends
    `ow_props`     VARCHAR(2048) NOT NULL DEFAULT '[]',           -- DHR_f_obj_sync_ow_props
    `ow_inventory` MEDIUMTEXT    NOT NULL DEFAULT (_utf8mb4'[]'), -- DHR_f_obj_sync_ow_inventory
    PRIMARY KEY (`ow_oid`)                                        -- @TODO: add indexes
) ENGINE = InnoDB
  AUTO_INCREMENT = 1
  DEFAULT CHARSET = 'utf8mb4'
  COLLATE = 'utf8mb4_0900_ai_ci';
