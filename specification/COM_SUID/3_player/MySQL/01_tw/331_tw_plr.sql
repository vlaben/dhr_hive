-- ----------------------------------------------
-- per-world table for `tw_*_plr`
-- ----------------------------------------------


CREATE TABLE IF NOT EXISTS `tw_plr` -- DHR_f_plr_sync_pw_record
(
    `pw_cid`        INT           NOT NULL AUTO_INCREMENT,
    `ph_gid`        INT           NOT NULL DEFAULT 0,
    `pw_sid`        TINYINT       NOT NULL DEFAULT 2,
    `pw_slot`       TINYINT       NOT NULL DEFAULT 1,
    `pw_faction`    TINYINT       NOT NULL DEFAULT 1,                 -- DHR_f_plr_sync_pw_faction
    `pw_created`    DATETIME      NOT NULL DEFAULT CURRENT_TIMESTAMP,
    `pw_logged`     DATETIME      NOT NULL DEFAULT CURRENT_TIMESTAMP, -- DHR_f_plr_sync_pw_logged
    `pw_played`     INT           NOT NULL DEFAULT 0,                 -- DHR_f_plr_sync_pw_death
    `pw_infected`   TINYINT       NOT NULL DEFAULT 0,                 -- DHR_f_plr_sync_pw_death
    `pw_humanity`   INT           NOT NULL DEFAULT 0,                 -- DHR_f_plr_sync_pw_humanity   | th_plr counterpart: ph_humanity
    `pw_cash`       BIGINT        NOT NULL DEFAULT 0,                 -- DHR_f_plr_sync_pw_cash       | th_plr counterpart: ph_cash
    `pw_model`      VARCHAR(64)   NOT NULL DEFAULT 'Survivor2_DZ',    -- DHR_f_plr_sync_pw_model
    `pw_worldspace` VARCHAR(128)  NOT NULL DEFAULT '[]',              -- DHR_f_plr_sync_pw_worldspace
    `pw_state`      VARCHAR(256)  NOT NULL DEFAULT '[]',              -- DHR_f_plr_sync_pw_medical
    `pw_medical`    VARCHAR(256)  NOT NULL DEFAULT '[]',              -- DHR_f_plr_sync_pw_medical
    `pw_xp`         VARCHAR(1024) NOT NULL DEFAULT '[]',              -- DHR_f_plr_sync_pw_xp         | th_plr counterpart: ph_xp
    `pw_props`      VARCHAR(2048) NOT NULL DEFAULT '[]',              -- DHR_f_plr_sync_pw_props      | th_plr counterpart: ph_props
    `pw_inventory`  MEDIUMTEXT    NOT NULL DEFAULT (_utf8mb4'[]'),    -- DHR_f_plr_sync_pw_gear
    `pw_backpack`   MEDIUMTEXT    NOT NULL DEFAULT (_utf8mb4'[]'),    -- DHR_f_plr_sync_pw_gear
    PRIMARY KEY (`pw_cid`)                                            -- @TODO: add indexes
) ENGINE = InnoDB
  AUTO_INCREMENT = 1
  DEFAULT CHARSET = 'utf8mb4'
  COLLATE = 'utf8mb4_0900_ai_ci';
