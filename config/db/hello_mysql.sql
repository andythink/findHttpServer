
-- ----------------------------
-- Table structure for `server_name_ip`
-- ----------------------------
DROP TABLE IF EXISTS `server_name_ip`;
CREATE TABLE `server_name_ip` (
  `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `NAME_ID` bigint(20) unsigned NOT NULL,
  `IP_ADRESS` varchar(15) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `NAME_ID` (`NAME_ID`),
  CONSTRAINT `NAME_ID` FOREIGN KEY (`NAME_ID`) REFERENCES `server_name_num` (`ID`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB  DEFAULT CHARSET=utf8;



-- ----------------------------
-- Table structure for `server_name_num`
-- ----------------------------
DROP TABLE IF EXISTS `server_name_num`;
CREATE TABLE `server_name_num` (
  `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `NAME` varchar(50) CHARACTER SET latin1 DEFAULT NULL,
  `NUM` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
