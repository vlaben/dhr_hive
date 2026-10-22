-- ----------------------------------------------
-- cross-worlds table `th_obj`
-- ----------------------------------------------


CREATE TABLE IF NOT EXISTS `hive_storage`.`th_obj`
(
    `oh_tid`      INT           NOT NULL AUTO_INCREMENT, -- territory ID for client local marker
    `oh_wid`      INT           NOT NULL DEFAULT 0,      -- world_id / dayz instance
    `ph_gid`      INT           NOT NULL DEFAULT 0,      -- territory owner
    `oh_sid`      TINYINT       NOT NULL DEFAULT 1,      -- territory status ID
    `oh_created`  DATETIME      NOT NULL DEFAULT CURRENT_TIMESTAMP,
    `oh_expire`   DATETIME      NOT NULL DEFAULT (DATE_ADD(CURRENT_TIMESTAMP, INTERVAL 100 YEAR)),
    `oh_position` VARCHAR(128)  NOT NULL DEFAULT '[]',
    `oh_props`    VARCHAR(2048) NOT NULL DEFAULT '[]',   -- territory modding support |
    PRIMARY KEY (`oh_tid`)                               -- @TODO: add and debug indexes
) ENGINE = InnoDB
  AUTO_INCREMENT = 1
  DEFAULT CHARSET = 'utf8mb4'
  COLLATE = 'utf8mb4_0900_ai_ci';
