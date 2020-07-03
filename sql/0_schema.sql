drop database test_warhammer;
CREATE DATABASE test_warhammer CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

USE test_warhammer;

CREATE TABLE SKILL (
                       ID                   INTEGER AUTO_INCREMENT
                           PRIMARY KEY,
                       NAME                 VARCHAR(255) NOT NULL,
                       DESCRIPTION          TEXT,
                       ISADVANCED           TINYINT,
                       RELATEDTALENTSSTRING VARCHAR(255),
                       CHARACTERISTIC       VARCHAR(255)
)
;

CREATE UNIQUE INDEX SKILL_NAME_IDX
    ON SKILL (NAME)
;

CREATE TABLE WEAPON (
                        ID             INTEGER AUTO_INCREMENT
                            PRIMARY KEY,
                        NAME           VARCHAR(255) NOT NULL,
                        WEIGHT           INTEGER,
                        CATEGORY       VARCHAR(100),
                        DAMAGE         INTEGER,
                        RANGE_OF_WEAPON INTEGER,
                        RELOADTIME     INTEGER,
                        WEAPONFEATURES VARCHAR(255)
)
;

CREATE UNIQUE INDEX WEAPON_NAME_IDX
    ON WEAPON (NAME)
;

CREATE TABLE EQUIPMENT (
                           ID               INTEGER AUTO_INCREMENT
                               PRIMARY KEY,
                           ITEM             VARCHAR(255),
                           EQUIPLOAD        VARCHAR(255),
                           EQUIPDESCRIPTION VARCHAR(255),
                           PERSON_ID        INTEGER
)
;

CREATE TABLE TALENT (
                        ID          INTEGER AUTO_INCREMENT
                            PRIMARY KEY,
                        NAME        VARCHAR(255),
                        DESCRIPTION TEXT
)
;

CREATE TABLE CAREER (
                        ID             INTEGER AUTO_INCREMENT
                            PRIMARY KEY,
                        NAME           VARCHAR(255),
                        DESCRIPTION    TEXT,
                        WEAPONSKILL    INTEGER,
                        BALLISTICSKILL INTEGER,
                        STRENGTH       INTEGER,
                        TOUGHNESS      INTEGER,
                        AGILITY        INTEGER,
                        INTELLIGENCE   INTEGER,
                        WILLPOWER      INTEGER,
                        FELLOWSHIP     INTEGER,
                        ATTACK         INTEGER,
                        WOUNDS         INTEGER,
                        STRENGTHBONUS  INTEGER,
                        TOUGHNESSBONUS INTEGER,
                        MOVEMENT       INTEGER,
                        MAGIC          INTEGER,
                        INSANITYPOINTS INTEGER,
                        FATEPOINTS     INTEGER,
                        AVAIBLESKILLS  TEXT,
                        AVAIBLETALENTS TEXT,
                        EQUIPMENTS     TEXT,
                        ISADVANCED     TINYINT
)
;

CREATE TABLE CAREEREXIT (
                            ID            INTEGER AUTO_INCREMENT
                                PRIMARY KEY,
                            CAREER_ID     INTEGER,
                            CAREEREXIT_ID INTEGER
)
;


source 10_skill.sql;