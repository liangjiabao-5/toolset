/*
 Navicat Premium Data Transfer

 Source Server         : local
 Source Server Type    : MySQL
 Source Server Version : 80033
 Source Host           : localhost:3306
 Source Schema         : toolset

 Target Server Type    : MySQL
 Target Server Version : 80033
 File Encoding         : 65001

 Date: 18/05/2023 16:41:31
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for script
-- ----------------------------
DROP TABLE IF EXISTS `script`;
CREATE TABLE `script`  (
  `id` int(0) NOT NULL AUTO_INCREMENT,
  `script_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '脚本名',
  `vuln_id` int(0) NOT NULL COMMENT '漏洞主键',
  `depend_version` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '依赖版本',
  `file_type` int(0) NOT NULL COMMENT '单个脚本还是压缩包：1zip，2jar,3py',
  `main_file` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '主文件名',
  `path` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '路径',
  `type` int(0) NOT NULL COMMENT '脚本类型：1为验证脚本，2为利用脚本',
  `command` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '命令',
  `operator` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '操作人',
  `user_id` int(0) NULL DEFAULT NULL COMMENT '用户Id',
  `create_time` datetime(0) NOT NULL COMMENT '创建时间',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '更新时间',
  `is_delete` tinyint(1) NULL DEFAULT NULL COMMENT '是否删除',
  `remark` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 26 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of script
-- ----------------------------
INSERT INTO `script`(`id`, `script_name`, `vuln_id`, `depend_version`, `file_type`, `main_file`, `path`, `type`, `command`, `operator`, `user_id`, `create_time`, `update_time`, `is_delete`, `remark`) VALUES (27, 'CVE-2017-12615_POC', 52, 'python3', 3, 'CVE-2017-12615_POC.py', '/MiddleWare/Tomcat/Tomcat Arbitrary File Upload/', 1, '', 'lll', 1, '2023-06-15 13:48:15', NULL, 0, NULL);
INSERT INTO `script`(`id`, `script_name`, `vuln_id`, `depend_version`, `file_type`, `main_file`, `path`, `type`, `command`, `operator`, `user_id`, `create_time`, `update_time`, `is_delete`, `remark`) VALUES (28, 'sqlmap-master', 26, 'python3', 1, 'sqlmap.py', '/WEB/WEB/sql Injection/sqlmap-master/', 1, '', 'lll', 1, '2023-06-15 14:10:18', NULL, 0, NULL);
INSERT INTO `script`(`id`, `script_name`, `vuln_id`, `depend_version`, `file_type`, `main_file`, `path`, `type`, `command`, `operator`, `user_id`, `create_time`, `update_time`, `is_delete`, `remark`) VALUES (29, 'CVE-2019-7238', 44, 'python3', 3, 'CVE-2019-7238.py', '/WEB/Nexus/Nexus Repository Manager RCE CVE-2020-7238/', 1, '', 'lll', 1, '2023-06-15 14:14:25', NULL, 0, NULL);
INSERT INTO `script`(`id`, `script_name`, `vuln_id`, `depend_version`, `file_type`, `main_file`, `path`, `type`, `command`, `operator`, `user_id`, `create_time`, `update_time`, `is_delete`, `remark`) VALUES (30, 'cve-2020-10199_poc', 57, 'python3', 3, 'cve-2020-10199_poc.py', '/WEB/Nexus/Nexus Repository Manager RCE CVE-2020-10199/', 1, '', 'lll', 1, '2023-06-15 14:18:02', NULL, 0, NULL);
INSERT INTO `script`(`id`, `script_name`, `vuln_id`, `depend_version`, `file_type`, `main_file`, `path`, `type`, `command`, `operator`, `user_id`, `create_time`, `update_time`, `is_delete`, `remark`) VALUES (31, 'CVE-2017-12149_POC', 54, 'python2', 3, 'CVE-2017-12149_POC.py', '/MiddleWare/JBoss/JBoss 5.x/6.x unserialize/', 1, '', 'lll', 1, '2023-06-15 14:21:11', NULL, 0, NULL);
INSERT INTO `script`(`id`, `script_name`, `vuln_id`, `depend_version`, `file_type`, `main_file`, `path`, `type`, `command`, `operator`, `user_id`, `create_time`, `update_time`, `is_delete`, `remark`) VALUES (32, 'weblogicScanner-master', 31, 'python3', 1, 'ws.py', '/MiddleWare/WEBLOGIC/weblogic unserialize/weblogicScanner-master/', 1, '', 'lll', 1, '2023-06-16 10:15:38', NULL, 0, NULL);
INSERT INTO `script`(`id`, `script_name`, `vuln_id`, `depend_version`, `file_type`, `main_file`, `path`, `type`, `command`, `operator`, `user_id`, `create_time`, `update_time`, `is_delete`, `remark`) VALUES (10, 'analyseParam', 32, 'python3', 1, 'analyseParam.py', '/IotSpecial/analyseParam/', 1, '', 'lll', 1, '2023-04-26 08:49:42', NULL, 0, NULL);
INSERT INTO `script`(`id`, `script_name`, `vuln_id`, `depend_version`, `file_type`, `main_file`, `path`, `type`, `command`, `operator`, `user_id`, `create_time`, `update_time`, `is_delete`, `remark`) VALUES (16, 'sendHttp.py', 34, 'python3', 3, 'sendHttp.py', '/IotScan/', 1, '', 'lll', 1, '2023-05-08 07:42:52', NULL, 0, NULL);
-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user`  (
  `id` int(0) NOT NULL AUTO_INCREMENT,
  `username` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '用户名',
  `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '密码',
  `create_time` datetime(0) NOT NULL COMMENT '创建时间',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '更新时间',
  `is_delete` tinyint(1) NOT NULL DEFAULT 0 COMMENT '是否删除,0未删除，1删除',
  `remark` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '用户表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES (1, 'lll', '123456', '2023-04-20 10:35:19', NULL, 0, NULL);
INSERT INTO `user` VALUES (2, 'xiaotong', '123456', '2023-04-21 16:02:09', NULL, 0, NULL);
INSERT INTO `user` VALUES (3, 'admin', 'admin', '2023-06-28 15:43:51', NULL, 0, NULL);

-- ----------------------------
-- Table structure for vulnerability
-- ----------------------------
DROP TABLE IF EXISTS `vulnerability`;
CREATE TABLE `vulnerability`  (
  `id` int(0) NOT NULL AUTO_INCREMENT,
  `vuln_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '漏洞名',
  `english_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '漏洞英文名',
  `pid` int(0) NULL DEFAULT NULL COMMENT '父节点：-1没有父节点',
  `type` int(0) NOT NULL COMMENT '类型:1应用类型 2添加类型',
  `info` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '漏洞信息',
  `repair_mod` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '修复方式',
  `create_time` datetime(0) NOT NULL COMMENT '创建时间',
  `operator` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '操作人',
  `user_id` int(0) NULL DEFAULT NULL COMMENT '用户id',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '更新时间',
  `is_delete` tinyint(1) NOT NULL DEFAULT 0 COMMENT '是否删除0未删除，1删除',
  `remark` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 57 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of vulnerability
-- ----------------------------
INSERT INTO `vulnerability` VALUES (1, 'IOT', 'IOT', -1, 1, NULL, NULL, '2023-04-23 11:09:48', NULL, NULL, NULL, 0, NULL);
INSERT INTO `vulnerability` VALUES (2, 'WEB', 'WEB', -1, 1, NULL, NULL, '2023-04-23 11:10:10', NULL, NULL, NULL, 0, NULL);
INSERT INTO `vulnerability` VALUES (3, '数据库', 'DB', -1, 1, NULL, NULL, '2023-04-23 11:10:23', NULL, NULL, NULL, 0, NULL);
INSERT INTO `vulnerability` VALUES (4, 'CMS', 'CMS', 2, 1, NULL, NULL, '2023-04-23 11:10:34', NULL, NULL, NULL, 0, NULL);
INSERT INTO `vulnerability` VALUES (5, '中间件', 'MiddleWare', -1, 1, NULL, NULL, '2023-04-23 11:10:46', NULL, NULL, NULL, 0, NULL);
INSERT INTO `vulnerability` VALUES (6, 'Nginx', 'Nginx', 5, 1, NULL, NULL, '2023-04-23 11:19:45', NULL, NULL, NULL, 0, NULL);
INSERT INTO `vulnerability` VALUES (7, 'Tomcat', 'Tomcat', 5, 1, NULL, NULL, '2023-04-23 11:20:07', NULL, NULL, NULL, 0, NULL);
INSERT INTO `vulnerability` VALUES (8, 'tomcattest', 'tomcattest', 7, 2, NULL, NULL, '2023-04-24 11:35:05', NULL, NULL, NULL, 0, NULL);
INSERT INTO `vulnerability` VALUES (9, 'Siemens', 'Siemens', 1, 1, NULL, NULL, '2023-04-25 14:08:38', NULL, NULL, NULL, 0, NULL);
INSERT INTO `vulnerability` VALUES (10, 'Hikvision Camera', 'Hikvision Camera', 1, 1, NULL, NULL, '2023-04-25 14:08:52', NULL, NULL, NULL, 0, NULL);
INSERT INTO `vulnerability` VALUES (11, 'Advantech WebAccess', 'Advantech WebAccess', 1, 1, NULL, NULL, '2023-04-25 14:09:09', NULL, NULL, NULL, 0, NULL);
INSERT INTO `vulnerability` VALUES (12, 'Zabbix', 'Zabbix', 2, 1, NULL, NULL, '2023-04-25 14:09:50', NULL, NULL, NULL, 0, NULL);
INSERT INTO `vulnerability` VALUES (13, 'PhpMyAdmin', 'PhpMyAdmin', 2, 1, NULL, NULL, '2023-04-25 14:10:10', NULL, NULL, NULL, 0, NULL);
INSERT INTO `vulnerability` VALUES (15, 'Jenkins', 'Jenkins', 2, 1, NULL, NULL, '2023-04-25 14:10:49', NULL, NULL, NULL, 0, NULL);
INSERT INTO `vulnerability` VALUES (16, 'Redis', 'Redis', 3, 1, NULL, NULL, '2023-04-25 14:11:13', NULL, NULL, NULL, 0, NULL);
INSERT INTO `vulnerability` VALUES (17, 'Mysql', 'Mysql', 3, 1, NULL, NULL, '2023-04-25 14:11:26', NULL, NULL, NULL, 0, NULL);
INSERT INTO `vulnerability` VALUES (18, 'Oracle', 'Oracle', 3, 1, NULL, NULL, '2023-04-25 14:11:40', NULL, NULL, NULL, 0, NULL);
INSERT INTO `vulnerability` VALUES (23, 'JBoss', 'JBoss', 5, 1, NULL, NULL, '2023-04-25 14:14:04', NULL, NULL, NULL, 0, NULL);
INSERT INTO `vulnerability` VALUES (24, 'testtest', 'testtest', 7, 2, NULL, NULL, '2023-04-25 15:09:24', NULL, NULL, NULL, 0, NULL);
INSERT INTO `vulnerability` VALUES (25, 'WEB专项', 'WEB', 2, 1, NULL, NULL, '2023-04-25 16:20:04', NULL, NULL, NULL, 0, NULL);
INSERT INTO `vulnerability` VALUES (26, 'SQL注入', 'sql Injection', 25, 2, NULL, NULL, '2023-04-25 17:16:45', NULL, NULL, NULL, 0, NULL);
INSERT INTO `vulnerability` VALUES (27, 'XSS', 'XSS', 25, 2, NULL, NULL, '2023-04-25 17:21:51', NULL, NULL, NULL, 0, NULL);
INSERT INTO `vulnerability` VALUES (28, 'CSRF', 'CSRF', 25, 2, NULL, NULL, '2023-04-25 17:22:17', NULL, NULL, NULL, 0, NULL);
INSERT INTO `vulnerability` VALUES (29, 'SSRF', 'SSRF', 25, 2, NULL, NULL, '2023-04-25 17:22:17', NULL, NULL, NULL, 0, NULL);
INSERT INTO `vulnerability` VALUES (30, 'WEBLOGIC', 'WEBLOGIC', 5, 1, NULL, NULL, '2023-04-26 13:23:20', NULL, NULL, NULL, 0, NULL);
INSERT INTO `vulnerability` VALUES (31, 'weblogic 反序列化', 'weblogic unserialize', 30, 2, NULL, NULL, '2023-04-26 13:24:45', NULL, NULL, NULL, 0, NULL);
INSERT INTO `vulnerability` VALUES (32, '工控篡改', 'IotSpecial', -1, 2, '工控专项中的', NULL, '2023-04-26 14:52:57', NULL, NULL, NULL, 0, NULL);
INSERT INTO `vulnerability` VALUES (33, 'URL', 'URL', 25, 2, NULL, NULL, '2023-04-26 20:10:00', NULL, NULL, '2023-05-06 03:39:58', 0, NULL);
INSERT INTO `vulnerability` VALUES (34, '工控扫描', 'IotScan', -1, 2, '工控专项中的', '', '2023-05-06 05:29:45', 'lll', 1, '2023-05-06 05:31:24', 0, NULL);
INSERT INTO `vulnerability` VALUES (35, '系统服务', 'system server', -1, 1, '', '', '2023-05-06 05:31:35', 'lll', 1, '2023-05-06 05:33:33', 0, NULL);
INSERT INTO `vulnerability` VALUES (36, 'SMB', 'SMB', 35, 1, '', '', '2023-05-06 07:12:15', 'lll', 1, '2023-05-06 07:12:21', 0, NULL);
INSERT INTO `vulnerability` VALUES (38, 'Microsoft Windows SMBv3远程代码执行漏洞', 'Microsoft Windows SMBv3 RCE', 36, 2, '', '', '2023-05-09 06:49:01', 'lll', 1, NULL, 0, NULL);
INSERT INTO `vulnerability` VALUES (39, '开发框架', 'framework', -1, 1, NULL, NULL, '2023-05-09 14:59:49', NULL, NULL, NULL, 0, NULL);
INSERT INTO `vulnerability` VALUES (41, 'Struts2', 'Struts2', 39, 1, NULL, NULL, '2023-05-09 15:12:10', NULL, NULL, NULL, 0, NULL);
INSERT INTO `vulnerability` VALUES (42, 'Struts2 S2-048远程代码执行', 'Struts2 S2-048 RCE', 41, 2, NULL, NULL, '2023-05-09 15:01:19', NULL, NULL, NULL, 0, NULL);
INSERT INTO `vulnerability` VALUES (44, 'Nexus Repository Manager远程代码执行漏洞 CVE-2020-7238', 'Nexus Repository Manager RCE CVE-2020-7238', 46, 2, NULL, NULL, '2023-05-09 15:02:51', NULL, NULL, NULL, 0, NULL);
INSERT INTO `vulnerability` VALUES (46, 'Nexus', 'Nexus', 2, 1, NULL, NULL, '2023-05-09 15:04:35', NULL, NULL, NULL, 0, NULL);
INSERT INTO `vulnerability` VALUES (50, 'Nexus Repository Manger extdirect 后台远程命令执行漏洞', 'Nexus Repository Manger extdirect background RCE', 46, 2, NULL, NULL, '2023-05-09 15:17:08', NULL, NULL, NULL, 0, NULL);
INSERT INTO `vulnerability` VALUES (52, 'Tomcat任意文件上传', 'Tomcat Arbitrary File Upload', 7, 2, NULL, NULL, '2023-05-09 15:18:55', NULL, NULL, NULL, 0, NULL);
INSERT INTO `vulnerability` VALUES (54, 'JBoss 5.x/6.x反序列化', 'JBoss 5.x/6.x unserialize', 23, 2, NULL, NULL, '2023-05-09 15:20:19', NULL, NULL, NULL, 0, NULL);
INSERT INTO `vulnerability` VALUES (56, 'Metinfo 5.0.4 sql注入', 'Metinfo 5.0.4 sql Injection', 4, 2, NULL, NULL, '2023-05-09 15:20:50', NULL, NULL, NULL, 0, NULL);
INSERT INTO `vulnerability` VALUES (57, 'Nexus Repository Manager远程代码执行漏洞 CVE-2020-10199', 'Nexus Repository Manager RCE CVE-2020-10199', 46, 2, NULL, NULL, '2023-05-09 15:47:45', NULL, NULL, NULL, 0, NULL);

SET FOREIGN_KEY_CHECKS = 1;
