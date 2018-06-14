CREATE DATABASE yii2_advanced;
USE yii2_advanced;
SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for auth_assignment
-- ----------------------------
DROP TABLE IF EXISTS `auth_assignment`;
CREATE TABLE `auth_assignment` (
  `item_name` varchar(64) NOT NULL,
  `user_id` varchar(64) NOT NULL,
  `created_at` int(11) DEFAULT NULL,
  PRIMARY KEY (`item_name`,`user_id`),
  KEY `auth_assignment_user_id_idx` (`user_id`),
  CONSTRAINT `auth_assignment_ibfk_1` FOREIGN KEY (`item_name`) REFERENCES `auth_item` (`name`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of auth_assignment
-- ----------------------------
INSERT INTO `auth_assignment` VALUES ('管理员', '1', '1527581436');

-- ----------------------------
-- Table structure for auth_item
-- ----------------------------
DROP TABLE IF EXISTS `auth_item`;
CREATE TABLE `auth_item` (
  `name` varchar(64) NOT NULL,
  `type` smallint(6) NOT NULL,
  `description` text,
  `rule_name` varchar(64) DEFAULT NULL,
  `data` blob,
  `created_at` int(11) DEFAULT NULL,
  `updated_at` int(11) DEFAULT NULL,
  PRIMARY KEY (`name`),
  KEY `rule_name` (`rule_name`),
  KEY `type` (`type`),
  CONSTRAINT `auth_item_ibfk_1` FOREIGN KEY (`rule_name`) REFERENCES `auth_rule` (`name`) ON DELETE SET NULL ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of auth_item
-- ----------------------------
INSERT INTO `auth_item` VALUES ('/*', '2', null, null, null, '1528878080', '1528878080');
INSERT INTO `auth_item` VALUES ('/admin/*', '2', null, null, null, '1528878080', '1528878080');
INSERT INTO `auth_item` VALUES ('/admin/assignment/*', '2', null, null, null, '1528878080', '1528878080');
INSERT INTO `auth_item` VALUES ('/admin/assignment/assign', '2', null, null, null, '1528878080', '1528878080');
INSERT INTO `auth_item` VALUES ('/admin/assignment/index', '2', null, null, null, '1528878080', '1528878080');
INSERT INTO `auth_item` VALUES ('/admin/assignment/revoke', '2', null, null, null, '1528878080', '1528878080');
INSERT INTO `auth_item` VALUES ('/admin/assignment/view', '2', null, null, null, '1528878080', '1528878080');
INSERT INTO `auth_item` VALUES ('/admin/default/*', '2', null, null, null, '1528878080', '1528878080');
INSERT INTO `auth_item` VALUES ('/admin/default/index', '2', null, null, null, '1528878080', '1528878080');
INSERT INTO `auth_item` VALUES ('/admin/menu/*', '2', null, null, null, '1528878080', '1528878080');
INSERT INTO `auth_item` VALUES ('/admin/menu/create', '2', null, null, null, '1528878080', '1528878080');
INSERT INTO `auth_item` VALUES ('/admin/menu/delete', '2', null, null, null, '1528878080', '1528878080');
INSERT INTO `auth_item` VALUES ('/admin/menu/index', '2', null, null, null, '1528878080', '1528878080');
INSERT INTO `auth_item` VALUES ('/admin/menu/update', '2', null, null, null, '1528878080', '1528878080');
INSERT INTO `auth_item` VALUES ('/admin/menu/view', '2', null, null, null, '1528878080', '1528878080');
INSERT INTO `auth_item` VALUES ('/admin/permission/*', '2', null, null, null, '1528878080', '1528878080');
INSERT INTO `auth_item` VALUES ('/admin/permission/assign', '2', null, null, null, '1528878080', '1528878080');
INSERT INTO `auth_item` VALUES ('/admin/permission/create', '2', null, null, null, '1528878080', '1528878080');
INSERT INTO `auth_item` VALUES ('/admin/permission/delete', '2', null, null, null, '1528878080', '1528878080');
INSERT INTO `auth_item` VALUES ('/admin/permission/index', '2', null, null, null, '1528878080', '1528878080');
INSERT INTO `auth_item` VALUES ('/admin/permission/remove', '2', null, null, null, '1528878080', '1528878080');
INSERT INTO `auth_item` VALUES ('/admin/permission/update', '2', null, null, null, '1528878080', '1528878080');
INSERT INTO `auth_item` VALUES ('/admin/permission/view', '2', null, null, null, '1528878080', '1528878080');
INSERT INTO `auth_item` VALUES ('/admin/role/*', '2', null, null, null, '1528878080', '1528878080');
INSERT INTO `auth_item` VALUES ('/admin/role/assign', '2', null, null, null, '1528878080', '1528878080');
INSERT INTO `auth_item` VALUES ('/admin/role/create', '2', null, null, null, '1528878080', '1528878080');
INSERT INTO `auth_item` VALUES ('/admin/role/delete', '2', null, null, null, '1528878080', '1528878080');
INSERT INTO `auth_item` VALUES ('/admin/role/index', '2', null, null, null, '1528878080', '1528878080');
INSERT INTO `auth_item` VALUES ('/admin/role/remove', '2', null, null, null, '1528878080', '1528878080');
INSERT INTO `auth_item` VALUES ('/admin/role/update', '2', null, null, null, '1528878080', '1528878080');
INSERT INTO `auth_item` VALUES ('/admin/role/view', '2', null, null, null, '1528878080', '1528878080');
INSERT INTO `auth_item` VALUES ('/admin/route/*', '2', null, null, null, '1528878080', '1528878080');
INSERT INTO `auth_item` VALUES ('/admin/route/assign', '2', null, null, null, '1528878080', '1528878080');
INSERT INTO `auth_item` VALUES ('/admin/route/create', '2', null, null, null, '1528878080', '1528878080');
INSERT INTO `auth_item` VALUES ('/admin/route/index', '2', null, null, null, '1528878080', '1528878080');
INSERT INTO `auth_item` VALUES ('/admin/route/refresh', '2', null, null, null, '1528878080', '1528878080');
INSERT INTO `auth_item` VALUES ('/admin/route/remove', '2', null, null, null, '1528878080', '1528878080');
INSERT INTO `auth_item` VALUES ('/admin/rule/*', '2', null, null, null, '1528878080', '1528878080');
INSERT INTO `auth_item` VALUES ('/admin/rule/create', '2', null, null, null, '1528878080', '1528878080');
INSERT INTO `auth_item` VALUES ('/admin/rule/delete', '2', null, null, null, '1528878080', '1528878080');
INSERT INTO `auth_item` VALUES ('/admin/rule/index', '2', null, null, null, '1528878080', '1528878080');
INSERT INTO `auth_item` VALUES ('/admin/rule/update', '2', null, null, null, '1528878080', '1528878080');
INSERT INTO `auth_item` VALUES ('/admin/rule/view', '2', null, null, null, '1528878080', '1528878080');
INSERT INTO `auth_item` VALUES ('/admin/user/*', '2', null, null, null, '1528878080', '1528878080');
INSERT INTO `auth_item` VALUES ('/admin/user/activate', '2', null, null, null, '1528878080', '1528878080');
INSERT INTO `auth_item` VALUES ('/admin/user/change-password', '2', null, null, null, '1528878080', '1528878080');
INSERT INTO `auth_item` VALUES ('/admin/user/delete', '2', null, null, null, '1528878080', '1528878080');
INSERT INTO `auth_item` VALUES ('/admin/user/index', '2', null, null, null, '1528878080', '1528878080');
INSERT INTO `auth_item` VALUES ('/admin/user/login', '2', null, null, null, '1528878080', '1528878080');
INSERT INTO `auth_item` VALUES ('/admin/user/logout', '2', null, null, null, '1528878080', '1528878080');
INSERT INTO `auth_item` VALUES ('/admin/user/request-password-reset', '2', null, null, null, '1528878080', '1528878080');
INSERT INTO `auth_item` VALUES ('/admin/user/reset-password', '2', null, null, null, '1528878080', '1528878080');
INSERT INTO `auth_item` VALUES ('/admin/user/signup', '2', null, null, null, '1528878080', '1528878080');
INSERT INTO `auth_item` VALUES ('/admin/user/view', '2', null, null, null, '1528878080', '1528878080');
INSERT INTO `auth_item` VALUES ('/debug/*', '2', null, null, null, '1528878080', '1528878080');
INSERT INTO `auth_item` VALUES ('/debug/default/*', '2', null, null, null, '1528878080', '1528878080');
INSERT INTO `auth_item` VALUES ('/debug/default/db-explain', '2', null, null, null, '1528878080', '1528878080');
INSERT INTO `auth_item` VALUES ('/debug/default/download-mail', '2', null, null, null, '1528878080', '1528878080');
INSERT INTO `auth_item` VALUES ('/debug/default/index', '2', null, null, null, '1528878080', '1528878080');
INSERT INTO `auth_item` VALUES ('/debug/default/toolbar', '2', null, null, null, '1528878080', '1528878080');
INSERT INTO `auth_item` VALUES ('/debug/default/view', '2', null, null, null, '1528878080', '1528878080');
INSERT INTO `auth_item` VALUES ('/debug/user/*', '2', null, null, null, '1528878080', '1528878080');
INSERT INTO `auth_item` VALUES ('/debug/user/reset-identity', '2', null, null, null, '1528878080', '1528878080');
INSERT INTO `auth_item` VALUES ('/debug/user/set-identity', '2', null, null, null, '1528878080', '1528878080');
INSERT INTO `auth_item` VALUES ('/gii/*', '2', null, null, null, '1528878080', '1528878080');
INSERT INTO `auth_item` VALUES ('/gii/default/*', '2', null, null, null, '1528878080', '1528878080');
INSERT INTO `auth_item` VALUES ('/gii/default/action', '2', null, null, null, '1528878080', '1528878080');
INSERT INTO `auth_item` VALUES ('/gii/default/diff', '2', null, null, null, '1528878080', '1528878080');
INSERT INTO `auth_item` VALUES ('/gii/default/index', '2', null, null, null, '1528878080', '1528878080');
INSERT INTO `auth_item` VALUES ('/gii/default/preview', '2', null, null, null, '1528878080', '1528878080');
INSERT INTO `auth_item` VALUES ('/gii/default/view', '2', null, null, null, '1528878080', '1528878080');
INSERT INTO `auth_item` VALUES ('/site/*', '2', null, null, null, '1528878080', '1528878080');
INSERT INTO `auth_item` VALUES ('/site/error', '2', null, null, null, '1528878080', '1528878080');
INSERT INTO `auth_item` VALUES ('/site/index', '2', null, null, null, '1528878080', '1528878080');
INSERT INTO `auth_item` VALUES ('/site/login', '2', null, null, null, '1528878080', '1528878080');
INSERT INTO `auth_item` VALUES ('/site/logout', '2', null, null, null, '1528878080', '1528878080');
INSERT INTO `auth_item` VALUES ('管理员', '1', '系统管理员拥有系统的一切权限', null, null, '1527581316', '1527581316');
INSERT INTO `auth_item` VALUES ('管理权限', '2', '用于管理员的最大管理的控制权限', null, null, '1527581236', '1527581396');

-- ----------------------------
-- Table structure for auth_item_child
-- ----------------------------
DROP TABLE IF EXISTS `auth_item_child`;
CREATE TABLE `auth_item_child` (
  `parent` varchar(64) NOT NULL,
  `child` varchar(64) NOT NULL,
  PRIMARY KEY (`parent`,`child`),
  KEY `child` (`child`),
  CONSTRAINT `auth_item_child_ibfk_1` FOREIGN KEY (`parent`) REFERENCES `auth_item` (`name`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `auth_item_child_ibfk_2` FOREIGN KEY (`child`) REFERENCES `auth_item` (`name`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of auth_item_child
-- ----------------------------
INSERT INTO `auth_item_child` VALUES ('管理员', '管理权限');
INSERT INTO `auth_item_child` VALUES ('管理权限', '/*');
INSERT INTO `auth_item_child` VALUES ('管理权限', '/admin/*');
INSERT INTO `auth_item_child` VALUES ('管理权限', '/admin/assignment/*');
INSERT INTO `auth_item_child` VALUES ('管理权限', '/admin/assignment/assign');
INSERT INTO `auth_item_child` VALUES ('管理权限', '/admin/assignment/index');
INSERT INTO `auth_item_child` VALUES ('管理权限', '/admin/assignment/revoke');
INSERT INTO `auth_item_child` VALUES ('管理权限', '/admin/assignment/view');
INSERT INTO `auth_item_child` VALUES ('管理权限', '/admin/default/*');
INSERT INTO `auth_item_child` VALUES ('管理权限', '/admin/default/index');
INSERT INTO `auth_item_child` VALUES ('管理权限', '/admin/menu/*');
INSERT INTO `auth_item_child` VALUES ('管理权限', '/admin/menu/create');
INSERT INTO `auth_item_child` VALUES ('管理权限', '/admin/menu/delete');
INSERT INTO `auth_item_child` VALUES ('管理权限', '/admin/menu/index');
INSERT INTO `auth_item_child` VALUES ('管理权限', '/admin/menu/update');
INSERT INTO `auth_item_child` VALUES ('管理权限', '/admin/menu/view');
INSERT INTO `auth_item_child` VALUES ('管理权限', '/admin/permission/*');
INSERT INTO `auth_item_child` VALUES ('管理权限', '/admin/permission/assign');
INSERT INTO `auth_item_child` VALUES ('管理权限', '/admin/permission/create');
INSERT INTO `auth_item_child` VALUES ('管理权限', '/admin/permission/delete');
INSERT INTO `auth_item_child` VALUES ('管理权限', '/admin/permission/index');
INSERT INTO `auth_item_child` VALUES ('管理权限', '/admin/permission/remove');
INSERT INTO `auth_item_child` VALUES ('管理权限', '/admin/permission/update');
INSERT INTO `auth_item_child` VALUES ('管理权限', '/admin/permission/view');
INSERT INTO `auth_item_child` VALUES ('管理权限', '/admin/role/*');
INSERT INTO `auth_item_child` VALUES ('管理权限', '/admin/role/assign');
INSERT INTO `auth_item_child` VALUES ('管理权限', '/admin/role/create');
INSERT INTO `auth_item_child` VALUES ('管理权限', '/admin/role/delete');
INSERT INTO `auth_item_child` VALUES ('管理权限', '/admin/role/index');
INSERT INTO `auth_item_child` VALUES ('管理权限', '/admin/role/remove');
INSERT INTO `auth_item_child` VALUES ('管理权限', '/admin/role/update');
INSERT INTO `auth_item_child` VALUES ('管理权限', '/admin/role/view');
INSERT INTO `auth_item_child` VALUES ('管理权限', '/admin/route/*');
INSERT INTO `auth_item_child` VALUES ('管理权限', '/admin/route/assign');
INSERT INTO `auth_item_child` VALUES ('管理权限', '/admin/route/create');
INSERT INTO `auth_item_child` VALUES ('管理权限', '/admin/route/index');
INSERT INTO `auth_item_child` VALUES ('管理权限', '/admin/route/refresh');
INSERT INTO `auth_item_child` VALUES ('管理权限', '/admin/route/remove');
INSERT INTO `auth_item_child` VALUES ('管理权限', '/admin/rule/*');
INSERT INTO `auth_item_child` VALUES ('管理权限', '/admin/rule/create');
INSERT INTO `auth_item_child` VALUES ('管理权限', '/admin/rule/delete');
INSERT INTO `auth_item_child` VALUES ('管理权限', '/admin/rule/index');
INSERT INTO `auth_item_child` VALUES ('管理权限', '/admin/rule/update');
INSERT INTO `auth_item_child` VALUES ('管理权限', '/admin/rule/view');
INSERT INTO `auth_item_child` VALUES ('管理权限', '/admin/user/*');
INSERT INTO `auth_item_child` VALUES ('管理权限', '/admin/user/activate');
INSERT INTO `auth_item_child` VALUES ('管理权限', '/admin/user/change-password');
INSERT INTO `auth_item_child` VALUES ('管理权限', '/admin/user/delete');
INSERT INTO `auth_item_child` VALUES ('管理权限', '/admin/user/index');
INSERT INTO `auth_item_child` VALUES ('管理权限', '/admin/user/login');
INSERT INTO `auth_item_child` VALUES ('管理权限', '/admin/user/logout');
INSERT INTO `auth_item_child` VALUES ('管理权限', '/admin/user/request-password-reset');
INSERT INTO `auth_item_child` VALUES ('管理权限', '/admin/user/reset-password');
INSERT INTO `auth_item_child` VALUES ('管理权限', '/admin/user/signup');
INSERT INTO `auth_item_child` VALUES ('管理权限', '/admin/user/view');
INSERT INTO `auth_item_child` VALUES ('管理权限', '/debug/*');
INSERT INTO `auth_item_child` VALUES ('管理权限', '/debug/default/*');
INSERT INTO `auth_item_child` VALUES ('管理权限', '/debug/default/db-explain');
INSERT INTO `auth_item_child` VALUES ('管理权限', '/debug/default/download-mail');
INSERT INTO `auth_item_child` VALUES ('管理权限', '/debug/default/index');
INSERT INTO `auth_item_child` VALUES ('管理权限', '/debug/default/toolbar');
INSERT INTO `auth_item_child` VALUES ('管理权限', '/debug/default/view');
INSERT INTO `auth_item_child` VALUES ('管理权限', '/debug/user/*');
INSERT INTO `auth_item_child` VALUES ('管理权限', '/debug/user/reset-identity');
INSERT INTO `auth_item_child` VALUES ('管理权限', '/debug/user/set-identity');
INSERT INTO `auth_item_child` VALUES ('管理权限', '/gii/*');
INSERT INTO `auth_item_child` VALUES ('管理权限', '/gii/default/*');
INSERT INTO `auth_item_child` VALUES ('管理权限', '/gii/default/action');
INSERT INTO `auth_item_child` VALUES ('管理权限', '/gii/default/diff');
INSERT INTO `auth_item_child` VALUES ('管理权限', '/gii/default/index');
INSERT INTO `auth_item_child` VALUES ('管理权限', '/gii/default/preview');
INSERT INTO `auth_item_child` VALUES ('管理权限', '/gii/default/view');
INSERT INTO `auth_item_child` VALUES ('管理权限', '/site/*');
INSERT INTO `auth_item_child` VALUES ('管理权限', '/site/error');
INSERT INTO `auth_item_child` VALUES ('管理权限', '/site/index');
INSERT INTO `auth_item_child` VALUES ('管理权限', '/site/login');
INSERT INTO `auth_item_child` VALUES ('管理权限', '/site/logout');

-- ----------------------------
-- Table structure for auth_rule
-- ----------------------------
DROP TABLE IF EXISTS `auth_rule`;
CREATE TABLE `auth_rule` (
  `name` varchar(64) NOT NULL,
  `data` blob,
  `created_at` int(11) DEFAULT NULL,
  `updated_at` int(11) DEFAULT NULL,
  PRIMARY KEY (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of auth_rule
-- ----------------------------

-- ----------------------------
-- Table structure for menu
-- ----------------------------
DROP TABLE IF EXISTS `menu`;
CREATE TABLE `menu` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(128) NOT NULL,
  `parent` int(11) DEFAULT NULL,
  `route` varchar(256) DEFAULT NULL,
  `order` int(11) DEFAULT NULL,
  `data` text,
  PRIMARY KEY (`id`),
  KEY `parent` (`parent`),
  CONSTRAINT `menu_ibfk_1` FOREIGN KEY (`parent`) REFERENCES `menu` (`id`) ON DELETE SET NULL ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of menu
-- ----------------------------
INSERT INTO `menu` VALUES ('2', '系统管理', null, '/admin/menu/index', '100', '{\"icon\": \"television\", \"visible\": true}');
INSERT INTO `menu` VALUES ('3', '角色列表', '2', '/admin/role/index', '101', '{\"icon\": \"user\", \"visible\": true}');
INSERT INTO `menu` VALUES ('4', '权限列表', '2', '/admin/permission/index', '102', '{\"icon\": \"id-card\", \"visible\": true}');
INSERT INTO `menu` VALUES ('5', '路由列表', '2', '/admin/route/index', '103', '{\"icon\": \"feed\", \"visible\": true}');
INSERT INTO `menu` VALUES ('6', '规则管理', '2', '/admin/rule/index', '104', '{\"icon\": \"street-view\", \"visible\": true}');
INSERT INTO `menu` VALUES ('7', '分配用户到角色', '2', '/admin/assignment/index', '105', '{\"icon\": \"tags\", \"visible\": true}');
INSERT INTO `menu` VALUES ('8', '菜单列表', '2', '/admin/menu/index', '106', '{\"icon\": \"tasks\", \"visible\": true}');
INSERT INTO `menu` VALUES ('9', '用户列表', '2', '/admin/user/index', '107', '{\"icon\": \"user-circle-o\", \"visible\": true}');

-- ----------------------------
-- Table structure for migration
-- ----------------------------
DROP TABLE IF EXISTS `migration`;
CREATE TABLE `migration` (
  `version` varchar(180) NOT NULL,
  `apply_time` int(11) DEFAULT NULL,
  PRIMARY KEY (`version`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of migration
-- ----------------------------
INSERT INTO `migration` VALUES ('m000000_000000_base', '1527578355');
INSERT INTO `migration` VALUES ('m130524_201442_init', '1527578357');

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '自增ID',
  `username` varchar(255) COLLATE utf8_unicode_ci NOT NULL COMMENT '用户名',
  `auth_key` varchar(32) COLLATE utf8_unicode_ci NOT NULL COMMENT '自动登陆key',
  `password_hash` varchar(255) COLLATE utf8_unicode_ci NOT NULL COMMENT '加密密码',
  `password_reset_token` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '重置密码token',
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL COMMENT '邮箱',
  `role` smallint(6) NOT NULL DEFAULT '10' COMMENT '角色等级',
  `status` smallint(6) NOT NULL DEFAULT '10' COMMENT '用户状态',
  `created_at` int(11) NOT NULL COMMENT '创建时间',
  `updated_at` int(11) NOT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`),
  UNIQUE KEY `email` (`email`),
  UNIQUE KEY `password_reset_token` (`password_reset_token`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES ('1', 'admin', 'Z6IWVaZeOLwUPMYi3cNdUJc_u1cSyJoI', '$2y$13$lR6YsegUPCq9RRxagPysQ.xFijc.oyb79ZMafrg0ljuwjkY5n2ZVe', null, '1513049385@qq.com', '10', '10', '1527578418', '1527578418');
SET FOREIGN_KEY_CHECKS=1;
