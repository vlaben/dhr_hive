-- DZE-107-specification/COM_SUID/2_object/MySQL/01_tw/321_Object_DATA_ssheet.txt
-- ----------------------------------------------
-- Table structure for `Object_DATA`
-- ----------------------------------------------


CREATE TABLE IF NOT EXISTS `Object_DATA`
(
    `ObjectID`     INT          NOT NULL AUTO_INCREMENT,
    `ObjectUID`    INT          NOT NULL DEFAULT 0,                                             -- changed: see 321_Object_DATA_ssheet / ObjectUID
    `Instance`     INT          NOT NULL DEFAULT 0,
    `Classname`    VARCHAR(64)  NOT NULL DEFAULT 'Sign_sphere100cm_EP1',
    `Datestamp`    DATETIME     NOT NULL DEFAULT CURRENT_TIMESTAMP,
    `LastUpdated`  DATETIME     NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP, -- changed: see 321_Object_DATA_ssheet / LastUpdated
    `CharacterID`  VARCHAR(32)  NOT NULL DEFAULT '0',                                           -- changed: see 321_Object_DATA_ssheet / CharacterID
    `Worldspace`   VARCHAR(128) NOT NULL DEFAULT '[]',
    `Inventory`    MEDIUMTEXT   NOT NULL DEFAULT (_utf8mb4'[]'),
    `Hitpoints`    MEDIUMTEXT   NOT NULL DEFAULT (_utf8mb4'[]'),
    `Fuel`         DOUBLE       NOT NULL DEFAULT 1.0,
    `Damage`       DOUBLE       NOT NULL DEFAULT 0.0,
    `StorageCoins` BIGINT       NOT NULL DEFAULT 0,
    PRIMARY KEY (`ObjectID`),
    INDEX `ObjectUID` (`ObjectUID`),
    INDEX `Instance` (`Instance`)
) ENGINE = InnoDB
  AUTO_INCREMENT = 1
  DEFAULT CHARSET = 'utf8mb4'
  COLLATE = 'utf8mb4_0900_ai_ci';
