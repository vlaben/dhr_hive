-- DZE-107-specification/COM_SUID/3_player/MySQL/01_tw/331_Character_DATA_ssheet.txt
-- ----------------------------------------------
-- Table structure for `Character_DATA`
-- ----------------------------------------------


CREATE TABLE IF NOT EXISTS `Character_DATA`
(
    `CharacterID`  INT          NOT NULL AUTO_INCREMENT,
    `PlayerUID`    VARCHAR(32)  NOT NULL DEFAULT '0',
    `InstanceID`   INT          NOT NULL DEFAULT 0,
    `Inventory`    MEDIUMTEXT   NOT NULL DEFAULT (_utf8mb4'[]'),
    `Datestamp`    DATETIME     NOT NULL DEFAULT CURRENT_TIMESTAMP,
    `LastLogin`    DATETIME     NOT NULL DEFAULT CURRENT_TIMESTAMP,
    `Backpack`     MEDIUMTEXT   NOT NULL DEFAULT (_utf8mb4'[]'),
    `Worldspace`   VARCHAR(128) NOT NULL DEFAULT '[]',
    `Medical`      VARCHAR(256) NOT NULL DEFAULT '[]',
    `Alive`        TINYINT      NOT NULL DEFAULT 1,
    `Generation`   INT          NOT NULL DEFAULT 1,
    `LastAte`      DATETIME     NOT NULL DEFAULT CURRENT_TIMESTAMP,
    `LastDrank`    DATETIME     NOT NULL DEFAULT CURRENT_TIMESTAMP,
    `KillsZ`       INT          NOT NULL DEFAULT 0,
    `HeadshotsZ`   INT          NOT NULL DEFAULT 0,
    `DistanceFoot` INT          NOT NULL DEFAULT 0,
    `Duration`     INT          NOT NULL DEFAULT 0,
    `CurrentState` VARCHAR(256) NOT NULL DEFAULT '[]',
    `KillsH`       INT          NOT NULL DEFAULT 0,
    `Model`        VARCHAR(64)  NOT NULL DEFAULT 'Survivor2_DZ',
    `KillsB`       INT          NOT NULL DEFAULT 0,
    `Humanity`     INT          NOT NULL DEFAULT 2500,
    `Infected`     TINYINT      NOT NULL DEFAULT 0,
    `Coins`        BIGINT       NOT NULL DEFAULT 0,
    PRIMARY KEY (`CharacterID`),
    INDEX `PlayerUID` (`PlayerUID`),
    INDEX `Alive` (`Alive`)
) ENGINE = InnoDB
  AUTO_INCREMENT = 1
  DEFAULT CHARSET = 'utf8mb4'
  COLLATE = 'utf8mb4_0900_ai_ci';
