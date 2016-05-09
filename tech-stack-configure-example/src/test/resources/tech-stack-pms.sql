SET FOREIGN_KEY_CHECKS=0;

DROP TABLE IF EXISTS `PMS_ACTION`;
CREATE TABLE `PMS_ACTION` (
  `ID` bigint(20) NOT NULL auto_increment,
  `VERSION` int(11) NOT NULL default '0',
  `CREATE_TIME` datetime NOT NULL,
  `ACTION_NAME` varchar(90) NOT NULL,
  `ACTION` varchar(100) NOT NULL,
  `REMARK` varchar(300) NOT NULL,
  `MENU_ID` bigint(20) NOT NULL,
  `MENU_NAME` varchar(300) NOT NULL,
  PRIMARY KEY  (`ID`),
  UNIQUE KEY `A_KEY_2` (`ACTION`),
  KEY `FK_fnfwlmfbbnvfaeyj0ycmao0p3` (`MENU_ID`),
  CONSTRAINT `FK_fnfwlmfbbnvfaeyj0ycmao0p3` FOREIGN KEY (`MENU_ID`) REFERENCES `pms_menu` (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=36 DEFAULT CHARSET=utf8;

INSERT INTO `PMS_ACTION` VALUES ('1', '0', '2014-12-10 14:26:35', '角色管理-查看', 'pms:role:view', '角色管理-查看', '4', '角色管理');
INSERT INTO `PMS_ACTION` VALUES ('2', '0', '2014-12-10 16:34:53', '角色管理-新增', 'pms:role:add', '角色管理-新增', '4', '角色管理');
INSERT INTO `PMS_ACTION` VALUES ('3', '0', '2014-12-10 16:35:45', '角色管理-修改', 'pms:role:edit', '角色管理-修改', '4', '角色管理');
INSERT INTO `PMS_ACTION` VALUES ('4', '0', '2014-12-10 16:36:06', '角色管理-删除', 'pms:role:delete', '角色管理-删除', '4', '角色管理');
INSERT INTO `PMS_ACTION` VALUES ('5', '0', '2014-12-10 16:36:43', '菜单管理-查看', 'pms:menu:view', '菜单管理-查看', '2', '菜单管理');
INSERT INTO `PMS_ACTION` VALUES ('6', '0', '2014-12-10 16:37:22', '菜单管理-新增', 'pms:menu:add', '菜单管理-新增', '2', '菜单管理');
INSERT INTO `PMS_ACTION` VALUES ('7', '0', '2014-12-10 16:38:01', '菜单管理-修改', 'pms:menu:edit', '菜单管理-修改', '2', '菜单管理');
INSERT INTO `PMS_ACTION` VALUES ('8', '0', '2014-12-10 16:38:38', '菜单管理-删除', 'pms:menu:delete', '菜单管理-删除', '2', '菜单管理');
INSERT INTO `PMS_ACTION` VALUES ('9', '0', '2014-12-10 16:39:51', '权限管理-查看', 'pms:action:view', '权限管理-查看', '3', '权限管理');
INSERT INTO `PMS_ACTION` VALUES ('10', '0', '2014-12-10 16:40:18', '权限管理-新增', 'pms:action:add', '权限管理-新增', '3', '权限管理');
INSERT INTO `PMS_ACTION` VALUES ('11', '0', '2014-12-10 16:40:44', '权限管理-修改', 'pms:action:edit', '权限管理-修改', '3', '权限管理');
INSERT INTO `PMS_ACTION` VALUES ('12', '0', '2014-12-10 16:41:15', '权限管理-删除', 'pms:action:delete', '权限管理-删除', '3', '权限管理');
INSERT INTO `PMS_ACTION` VALUES ('13', '0', '2014-12-10 16:41:44', '用户管理-查看', 'pms:user:view', '用户管理-查看', '5', '用户管理');
INSERT INTO `PMS_ACTION` VALUES ('14', '0', '2014-12-10 16:42:05', '用户管理-新增', 'pms:user:add', '用户管理-新增', '5', '用户管理');
INSERT INTO `PMS_ACTION` VALUES ('15', '0', '2014-12-10 16:42:39', '用户管理-修改', 'pms:user:edit', '用户管理-修改', '5', '用户管理');
INSERT INTO `PMS_ACTION` VALUES ('16', '0', '2014-12-10 16:43:02', '用户管理-删除', 'pms:user:delete', '用户管理-删除', '5', '用户管理');


DROP TABLE IF EXISTS `PMS_MENU`;
CREATE TABLE `PMS_MENU` (
  `ID` bigint(20) NOT NULL auto_increment,
  `VERSION` int(11) NOT NULL default '0',
  `CREATE_TIME` datetime NOT NULL,
  `NAME` varchar(90) default NULL,
  `URL` varchar(150) default NULL,
  `MENU_NUMBER` varchar(20) default NULL,
  `IS_LEAF` smallint(6) default NULL,
  `PARENT_ID` bigint(20) default '0',
  PRIMARY KEY  (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8;

INSERT INTO `PMS_MENU` VALUES ('1', '1', '2013-11-13 13:17:43', '权限管理', '##', '001', '0', '0');
INSERT INTO `PMS_MENU` VALUES ('2', '1', '2013-11-13 13:17:43', '菜单管理', 'pmsMenu_pmsMenuList.action', '00101', '1', '1');
INSERT INTO `PMS_MENU` VALUES ('3', '1', '2013-11-13 13:17:43', '权限点管理', 'pmsPermission_pmsActionList.action', '00102', '1', '1');
INSERT INTO `PMS_MENU` VALUES ('4', '0', '2013-11-13 13:17:43', '角色管理', 'pmsRole_pmsRoleList.action', '00103', '1', '1');
INSERT INTO `PMS_MENU` VALUES ('5', '6', '2013-11-13 13:17:43', '用户管理', 'pmsUser_pmsUserList.action', '00104', '1', '1');


DROP TABLE IF EXISTS `PMS_USER_PROFILE`;
CREATE TABLE `PMS_USER_PROFILE` (
  `ID` bigint(20) NOT NULL auto_increment,
  `VERSION` int(11) NOT NULL default '0',
  `CREATE_TIME` datetime NOT NULL,
  `USER_NAME` varchar(50) default NULL,
  `REMARK` varchar(300) default NULL,
  `USER_TYPE` int(11) default NULL,
  PRIMARY KEY  (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `PMS_USER_LOCALAUTH`;
CREATE TABLE `PMS_USER_LOCALAUTH` (
  `ID` bigint(20) NOT NULL auto_increment,
  `VERSION` int(11) NOT NULL default '0',
  `CREATE_TIME` datetime NOT NULL,
  `USER_ID` bigint(20) NOT NULL
  `LOGIN_NAME` varchar(50) NOT NULL,
  `LOGIN_PWD` varchar(256) NOT NULL,
  PRIMARY KEY  (`ID`),
  UNIQUE KEY `A_KEY_2` (`LOGIN_NAME`)
  KEY `FK_fnfwlmfbbnvfaeyj7ycmao0p3` (`USER_ID`),
  CONSTRAINT `FK_fnfwlmfbbnvfaeyj7ycmao0p3` FOREIGN KEY (`USER_ID`) REFERENCES `PMS_USER_PROFILE` (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `PMS_USER_OAUTH`;
CREATE TABLE `PMS_USER_OAUTH` (
  `ID` bigint(20) NOT NULL auto_increment,
  `VERSION` int(11) NOT NULL default '0',
  `CREATE_TIME` datetime NOT NULL,
  `USER_ID` bigint(20) NOT NULL
  `OAUTH_NAME` varchar(50) NOT NULL,
  `OAUTH_ID` varchar(256) NOT NULL,
  `OAUTH_ACCESS_TOKEN` varchar(256) NOT NULL,
  `OAUTH_EXPIRES` varchar(256) NOT NULL,
  PRIMARY KEY  (`ID`),
  KEY `FK_fnfwlmfbbnvfaeyj7ycmao0p4` (`USER_ID`),
  CONSTRAINT `FK_fnfwlmfbbnvfaeyj7ycmao0p4` FOREIGN KEY (`USER_ID`) REFERENCES `PMS_USER_PROFILE` (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `PMS_ROLE`;
CREATE TABLE `PMS_ROLE` (
  `ID` bigint(20) NOT NULL auto_increment,
  `VERSION` int(11) NOT NULL default '0',
  `CREATE_TIME` datetime NOT NULL,
  `ROLE_NAME` varchar(90) NOT NULL,
  `REMARK` varchar(300) default NULL,
  PRIMARY KEY  (`ID`),
  UNIQUE KEY `A_KEY_2` (`ROLE_NAME`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

INSERT INTO `PMS_ROLE` VALUES ('4', '0', '2014-12-05 10:46:59', '学生用户', '学生用户');
INSERT INTO `PMS_ROLE` VALUES ('5', '0', '2014-12-16 14:10:55', '超级管理员', '超级管理员');
INSERT INTO `PMS_ROLE` VALUES ('6', '0', '2014-12-11 14:11:56', '管理员', '管理员');

DROP TABLE IF EXISTS `PMS_ROLE_ACTION`;
CREATE TABLE `PMS_ROLE_ACTION` (
  `ID` bigint(20) NOT NULL auto_increment,
  `VERSION` int(11) NOT NULL,
  `CREATE_TIME` datetime NOT NULL,
  `ROLE_ID` bigint(20) NOT NULL,
  `ACTION_ID` bigint(20) NOT NULL,
  PRIMARY KEY  (`ID`),
  UNIQUE KEY `A_KEY_2` (`ROLE_ID`,`ACTION_ID`),
  KEY `FK_f7q111b5nyd2isikcysew6fsl` (`ACTION_ID`),
  CONSTRAINT `FK_5o7w777bo7cddg1xjngklx8l` FOREIGN KEY (`ROLE_ID`) REFERENCES `pms_role` (`ID`),
  CONSTRAINT `FK_f7q111b5nyd2isikcysew6fsl` FOREIGN KEY (`ACTION_ID`) REFERENCES `pms_action` (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=95 DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `PMS_ROLE_MENU`;
CREATE TABLE `PMS_ROLE_MENU` (
  `ID` bigint(20) NOT NULL auto_increment,
  `VERSION` int(11) NOT NULL,
  `CREATE_TIME` datetime NOT NULL,
  `ROLE_ID` bigint(20) NOT NULL,
  `MENU_ID` bigint(20) NOT NULL,
  PRIMARY KEY  (`ID`),
  UNIQUE KEY `A_KEY_2` (`ROLE_ID`,`MENU_ID`),
  KEY `FK_qnnrd09ek4t1tnyr2i9flir87` (`MENU_ID`),
  CONSTRAINT `FK_qnnrd09ek4t1tnyr2i9flir87` FOREIGN KEY (`MENU_ID`) REFERENCES `pms_menu` (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=120 DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `PMS_ROLE_USER`;
CREATE TABLE `PMS_ROLE_USER` (
  `ID` bigint(20) NOT NULL auto_increment,
  `VERSION` int(11) NOT NULL,
  `CREATE_TIME` datetime NOT NULL,
  `ROLE_ID` bigint(20) NOT NULL,
  `USER_ID` bigint(20) NOT NULL,
  PRIMARY KEY  (`ID`),
  UNIQUE KEY `A_KEY_2` (`ROLE_ID`,`USER_ID`),
  KEY `FK_a1ew4k81wfsiga923tsxvpn8d` (`USER_ID`),
  CONSTRAINT `FK_a1ew4k81wfsiga923tsxvpn8d` FOREIGN KEY (`USER_ID`) REFERENCES `pms_user` (`ID`),
  CONSTRAINT `FK_j4unnlvs76kve0qoplrr88fhw` FOREIGN KEY (`ROLE_ID`) REFERENCES `pms_role` (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8;
