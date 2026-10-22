-- DZE-107-specification/COM_SUID/3_player/MySQL/02_th/332_Player_DATA_ssheet.txt
-- ----------------------------------------------
-- Table structure for `Player_DATA`
-- ----------------------------------------------

CREATE TABLE IF NOT EXISTS `Player_DATA`
(
    `PlayerUID`      VARCHAR(32)   NOT NULL DEFAULT '0',
    `PlayerName`     VARCHAR(128)  NOT NULL DEFAULT 'invalid',
    `PlayerMorality` INT           NOT NULL DEFAULT 0,
    `PlayerSex`      TINYINT       NOT NULL DEFAULT 0,
    `playerGroup`    VARCHAR(2048) NOT NULL DEFAULT '[]',
    `PlayerCoins`    BIGINT        NOT NULL DEFAULT 0,
    `BankCoins`      BIGINT        NOT NULL DEFAULT 0,
    PRIMARY KEY (`PlayerUID`)
) ENGINE = InnoDB
  AUTO_INCREMENT = 1
  DEFAULT CHARSET = utf8mb4
  COLLATE = utf8mb4_0900_ai_ci;
