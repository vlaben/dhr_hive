-- DZE-107-specification/COM_SUID/3_player/MySQL/02_th/333_Player_LOGIN_ssheet.txt
-- ----------------------------------------------
-- Table structure for `Player_LOGIN`
-- ----------------------------------------------

CREATE TABLE IF NOT EXISTS `Player_LOGIN`
(
    `LoginID`     INT         NOT NULL AUTO_INCREMENT,
    `PlayerUID`   VARCHAR(32) NOT NULL DEFAULT '0',
    `CharacterID` INT         NOT NULL DEFAULT 0,
    `Datestamp`   DATETIME    NOT NULL DEFAULT CURRENT_TIMESTAMP,
    `Action`      INT         NOT NULL DEFAULT 0,
    PRIMARY KEY (`LoginID`)
) ENGINE = InnoDB
  AUTO_INCREMENT = 1
  DEFAULT CHARSET = utf8mb4
  COLLATE = utf8mb4_0900_ai_ci;
