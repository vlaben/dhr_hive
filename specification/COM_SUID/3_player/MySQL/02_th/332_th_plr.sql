-- ----------------------------------------------
-- cross-worlds table for `th_plr`
-- ----------------------------------------------

CREATE TABLE IF NOT EXISTS `hive_storage`.`th_plr` -- DHR_f_plr_sync_ph_record
(
    `ph_gid`      INT           NOT NULL AUTO_INCREMENT,
    `ph_uid`      VARCHAR(32)   NOT NULL DEFAULT '0',
    `ph_name`     VARCHAR(32)   NOT NULL DEFAULT 'no_name', -- DHR_f_plr_sync_ph_name
    `ph_humanity` INT           NOT NULL DEFAULT 0,         -- DHR_f_plr_sync_ph_humanity                      | tw_*_plr counterpart: pw_humanity
    `ph_cash`     BIGINT        NOT NULL DEFAULT 0,         -- DHR_f_plr_sync_ph_cash, DHR_f_plr_sync_ph_money | tw_*_plr counterpart: ph_cash
    `ph_bank`     BIGINT        NOT NULL DEFAULT 0,         -- DHR_f_plr_sync_ph_bank. DHR_f_plr_sync_ph_money
    `ph_xp`       VARCHAR(1024) NOT NULL DEFAULT '[]',      -- DHR_f_plr_sync_ph_xp                            | tw_*_plr counterpart: pw_xp
    `ph_group`    VARCHAR(2048) NOT NULL DEFAULT '[]',      -- DHR_f_plr_sync_ph_group
    `ph_props`    VARCHAR(2048) NOT NULL DEFAULT '[]',      -- DHR_f_plr_sync_ph_props                         | tw_*_plr counterpart: pw_props
    PRIMARY KEY (`ph_gid`)                                  -- @TODO: add indexes
) ENGINE = InnoDB
  AUTO_INCREMENT = 1
  DEFAULT CHARSET = utf8mb4
  COLLATE = utf8mb4_0900_ai_ci;
