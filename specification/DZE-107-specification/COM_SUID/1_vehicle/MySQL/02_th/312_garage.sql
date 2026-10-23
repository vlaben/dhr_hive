-- DZE-107-specification/COM_SUID/1_vehicle/MySQL/02_th/312_garage_ssheet.txt
-- ----------------------------------------------
-- Table structure for `garage`
-- ----------------------------------------------


CREATE TABLE IF NOT EXISTS `garage`
(
    `id`             INT          NOT NULL AUTO_INCREMENT,
    `PlayerUID`      VARCHAR(32)  NOT NULL DEFAULT '0',
    `Name`           VARCHAR(128) NOT NULL DEFAULT 'invalid',
    `DisplayName`    VARCHAR(128) NOT NULL DEFAULT 'Mountain Bike',
    `Classname`      VARCHAR(64)  NOT NULL DEFAULT 'MMT_Civ_DZE',
    `Datestamp`      DATETIME     NOT NULL DEFAULT CURRENT_TIMESTAMP, -- changed: see 312_garage_ssheet / Datestamp
    `DateStored`     VARCHAR(16)  NOT NULL DEFAULT 'old',
    `DateMaintained` DATETIME     NOT NULL DEFAULT CURRENT_TIMESTAMP, -- changed: see 312_garage_ssheet / DateMaintained
    `CharacterID`    VARCHAR(32)  NOT NULL DEFAULT '0',               -- changed: see 312_garage_ssheet / CharacterID
    `StorageCounts`  VARCHAR(64)  NOT NULL DEFAULT '[0,0,0]',
    `Inventory`      MEDIUMTEXT   NOT NULL DEFAULT (_utf8mb4'[]'),
    `Hitpoints`      MEDIUMTEXT   NOT NULL DEFAULT (_utf8mb4'[]'),
    `Fuel`           DOUBLE       NOT NULL DEFAULT 1.0,
    `Damage`         DOUBLE       NOT NULL DEFAULT 0.0,
    `Colour`         VARCHAR(64)  NOT NULL DEFAULT '0',
    `Colour2`        VARCHAR(64)  NOT NULL DEFAULT '0',
    `serverKey`      VARCHAR(16)  NOT NULL DEFAULT 'old',
    `ObjUID`         VARCHAR(32)  NOT NULL DEFAULT 'old',
    PRIMARY KEY (`id`)
) ENGINE = InnoDB
  AUTO_INCREMENT = 1
  DEFAULT CHARSET = 'utf8mb4'
  COLLATE = 'utf8mb4_0900_ai_ci';
