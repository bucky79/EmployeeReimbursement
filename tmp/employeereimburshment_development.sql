/*
 Navicat MySQL Data Transfer

 Source Server         : localhost
 Source Server Type    : MySQL
 Source Server Version : 80407 (8.4.7)
 Source Host           : localhost:3306
 Source Schema         : employeereimburshment_development

 Target Server Type    : MySQL
 Target Server Version : 80407 (8.4.7)
 File Encoding         : 65001

 Date: 15/11/2025 02:48:12
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for ar_internal_metadata
-- ----------------------------
DROP TABLE IF EXISTS `ar_internal_metadata`;
CREATE TABLE `ar_internal_metadata` (
  `key` varchar(255) NOT NULL,
  `value` varchar(255) DEFAULT NULL,
  `created_at` datetime(6) NOT NULL,
  `updated_at` datetime(6) NOT NULL,
  PRIMARY KEY (`key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of ar_internal_metadata
-- ----------------------------
BEGIN;
INSERT INTO `ar_internal_metadata` (`key`, `value`, `created_at`, `updated_at`) VALUES ('environment', 'development', '2025-11-13 16:00:40.125161', '2025-11-13 16:00:40.125164');
COMMIT;

-- ----------------------------
-- Table structure for bills
-- ----------------------------
DROP TABLE IF EXISTS `bills`;
CREATE TABLE `bills` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `created_at` datetime(6) NOT NULL,
  `updated_at` datetime(6) NOT NULL,
  `amount` decimal(10,0) DEFAULT NULL,
  `item_type` varchar(255) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `user_id` int DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of bills
-- ----------------------------
BEGIN;
INSERT INTO `bills` (`id`, `created_at`, `updated_at`, `amount`, `item_type`, `status`, `user_id`) VALUES (1, '2025-11-13 19:48:29.936934', '2025-11-14 16:16:12.273562', 2300, 'Food', 'Approved', 1);
INSERT INTO `bills` (`id`, `created_at`, `updated_at`, `amount`, `item_type`, `status`, `user_id`) VALUES (2, '2025-11-13 19:53:10.015442', '2025-11-14 16:16:13.657647', 4500, 'Food', 'Approved', 1);
INSERT INTO `bills` (`id`, `created_at`, `updated_at`, `amount`, `item_type`, `status`, `user_id`) VALUES (3, '2025-11-13 19:53:14.658268', '2025-11-14 16:15:54.616853', 3200, 'Food', 'Approved', 1);
INSERT INTO `bills` (`id`, `created_at`, `updated_at`, `amount`, `item_type`, `status`, `user_id`) VALUES (4, '2025-11-13 19:53:20.294472', '2025-11-14 16:15:55.628595', 2222, 'Food', 'Approved', 1);
INSERT INTO `bills` (`id`, `created_at`, `updated_at`, `amount`, `item_type`, `status`, `user_id`) VALUES (5, '2025-11-13 19:53:27.297550', '2025-11-14 16:15:57.281084', 1000, 'Travel', 'Approved', 1);
INSERT INTO `bills` (`id`, `created_at`, `updated_at`, `amount`, `item_type`, `status`, `user_id`) VALUES (6, '2025-11-13 19:53:33.943096', '2025-11-14 16:15:58.647959', 1200, 'Others', 'Approved', 1);
INSERT INTO `bills` (`id`, `created_at`, `updated_at`, `amount`, `item_type`, `status`, `user_id`) VALUES (7, '2025-11-14 20:14:19.489733', '2025-11-14 20:14:19.489733', 0, 'Food', 'Pending', 9);
INSERT INTO `bills` (`id`, `created_at`, `updated_at`, `amount`, `item_type`, `status`, `user_id`) VALUES (8, '2025-11-14 20:22:07.667883', '2025-11-14 20:22:07.667883', 0, 'Food', 'Pending', 9);
INSERT INTO `bills` (`id`, `created_at`, `updated_at`, `amount`, `item_type`, `status`, `user_id`) VALUES (9, '2025-11-14 20:25:25.900690', '2025-11-14 20:25:25.900690', 123, 'Food', 'Pending', 9);
INSERT INTO `bills` (`id`, `created_at`, `updated_at`, `amount`, `item_type`, `status`, `user_id`) VALUES (10, '2025-11-14 20:25:58.894095', '2025-11-14 20:25:58.894095', 123, 'Food', 'Pending', 9);
COMMIT;

-- ----------------------------
-- Table structure for departments
-- ----------------------------
DROP TABLE IF EXISTS `departments`;
CREATE TABLE `departments` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `department_name` varchar(255) DEFAULT NULL,
  `created_at` datetime(6) NOT NULL,
  `updated_at` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of departments
-- ----------------------------
BEGIN;
INSERT INTO `departments` (`id`, `department_name`, `created_at`, `updated_at`) VALUES (1, 'Sales', '2025-11-14 20:27:36.000000', '2025-11-14 20:27:43.000000');
INSERT INTO `departments` (`id`, `department_name`, `created_at`, `updated_at`) VALUES (2, 'Engineering', '2025-11-14 20:28:25.000000', '2025-11-14 20:28:29.000000');
COMMIT;

-- ----------------------------
-- Table structure for employees
-- ----------------------------
DROP TABLE IF EXISTS `employees`;
CREATE TABLE `employees` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `first_name` varchar(255) DEFAULT NULL,
  `last_name` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `designation` varchar(255) DEFAULT NULL,
  `created_at` datetime(6) NOT NULL,
  `updated_at` datetime(6) NOT NULL,
  `department_id` int DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of employees
-- ----------------------------
BEGIN;
INSERT INTO `employees` (`id`, `first_name`, `last_name`, `email`, `designation`, `created_at`, `updated_at`, `department_id`) VALUES (1, 'John', 'Doe', 'john.doe@company.com', 'Senior Developer', '2025-11-13 22:00:19.000000', '2025-11-13 22:00:19.000000', 1);
INSERT INTO `employees` (`id`, `first_name`, `last_name`, `email`, `designation`, `created_at`, `updated_at`, `department_id`) VALUES (2, 'Smith', 'Smith', 'manager@company.com', 'Project Manager', '2025-11-13 22:00:19.000000', '2025-11-14 18:34:01.287814', 2);
INSERT INTO `employees` (`id`, `first_name`, `last_name`, `email`, `designation`, `created_at`, `updated_at`, `department_id`) VALUES (3, 'Mike', 'Johnson', 'mike.johnson@company.com', 'HR Manager', '2025-11-13 22:00:19.000000', '2025-11-13 22:00:19.000000', 1);
INSERT INTO `employees` (`id`, `first_name`, `last_name`, `email`, `designation`, `created_at`, `updated_at`, `department_id`) VALUES (4, 'Sarah', 'Williams', 'sarah.williams@company.com', 'Developer', '2025-11-13 22:00:19.000000', '2025-11-13 22:00:19.000000', 1);
INSERT INTO `employees` (`id`, `first_name`, `last_name`, `email`, `designation`, `created_at`, `updated_at`, `department_id`) VALUES (5, 'David', 'Brown', 'david.brown@company.com', 'QA Engineer', '2025-11-13 22:00:19.000000', '2025-11-13 22:00:19.000000', 1);
INSERT INTO `employees` (`id`, `first_name`, `last_name`, `email`, `designation`, `created_at`, `updated_at`, `department_id`) VALUES (6, 'Emily', 'Davis', 'emily.davis@company.com', 'Business Analyst', '2025-11-13 22:00:19.000000', '2025-11-13 22:00:19.000000', 1);
INSERT INTO `employees` (`id`, `first_name`, `last_name`, `email`, `designation`, `created_at`, `updated_at`, `department_id`) VALUES (7, 'Robert', 'Miller', 'robert.miller@company.com', 'Team Lead', '2025-11-13 22:00:19.000000', '2025-11-13 22:00:19.000000', 1);
INSERT INTO `employees` (`id`, `first_name`, `last_name`, `email`, `designation`, `created_at`, `updated_at`, `department_id`) VALUES (8, 'Lisa', 'Anderson', 'lisa.anderson@company.com', 'Finance Manager', '2025-11-13 22:00:19.000000', '2025-11-13 22:00:19.000000', 1);
INSERT INTO `employees` (`id`, `first_name`, `last_name`, `email`, `designation`, `created_at`, `updated_at`, `department_id`) VALUES (9, 'asdasdasdas', 'asdasdasd', 'asdas@gmail.com', 'asdasdad', '2025-11-14 19:23:25.463891', '2025-11-14 19:23:25.463891', 3);
INSERT INTO `employees` (`id`, `first_name`, `last_name`, `email`, `designation`, `created_at`, `updated_at`, `department_id`) VALUES (10, 'asdasd', 'sdasd', 'asd12@gmail.com', 'asdasd', '2025-11-14 19:24:39.802897', '2025-11-14 19:24:39.802897', 1);
INSERT INTO `employees` (`id`, `first_name`, `last_name`, `email`, `designation`, `created_at`, `updated_at`, `department_id`) VALUES (11, 'asdasdasasd', 'asssssssssssssss', 'asssssss@gmail.com', 'asdasdasd', '2025-11-14 19:26:02.352027', '2025-11-14 19:26:02.352027', 1);
INSERT INTO `employees` (`id`, `first_name`, `last_name`, `email`, `designation`, `created_at`, `updated_at`, `department_id`) VALUES (12, 'asdas', 'asdasda', 'as233@gmail.com', 'sddsddad', '2025-11-14 19:26:31.871879', '2025-11-14 19:26:31.871879', 1);
INSERT INTO `employees` (`id`, `first_name`, `last_name`, `email`, `designation`, `created_at`, `updated_at`, `department_id`) VALUES (13, 'aassd', 'asdasdsdasd', 'asdasdasd', 'asdasdasdasdas', '2025-11-14 19:31:50.575268', '2025-11-14 19:31:50.575268', 1);
INSERT INTO `employees` (`id`, `first_name`, `last_name`, `email`, `designation`, `created_at`, `updated_at`, `department_id`) VALUES (14, 'asdasdasdasd', 'asdasdasdsa', 'asdsad@gmail.com', 'asdasd', '2025-11-14 19:33:31.424791', '2025-11-14 19:33:31.424791', 1);
INSERT INTO `employees` (`id`, `first_name`, `last_name`, `email`, `designation`, `created_at`, `updated_at`, `department_id`) VALUES (15, 'asdasd', 'asdasd', '123asd@gmail.com', 'asdadass', '2025-11-14 19:35:40.995485', '2025-11-14 19:35:40.995485', 3);
INSERT INTO `employees` (`id`, `first_name`, `last_name`, `email`, `designation`, `created_at`, `updated_at`, `department_id`) VALUES (16, 'asdasd', 'asdasd', 'asd1@gmail.com', 'sdfad', '2025-11-14 19:42:21.468439', '2025-11-14 19:42:21.468439', 1);
INSERT INTO `employees` (`id`, `first_name`, `last_name`, `email`, `designation`, `created_at`, `updated_at`, `department_id`) VALUES (17, 'asd', 'asd', 'asd@gmail.com', 'asad', '2025-11-14 20:09:26.651726', '2025-11-14 20:09:26.651726', 1);
INSERT INTO `employees` (`id`, `first_name`, `last_name`, `email`, `designation`, `created_at`, `updated_at`, `department_id`) VALUES (18, '', '', 'asdasd', '', '2025-11-14 20:42:14.119613', '2025-11-14 20:42:14.119613', 1);
INSERT INTO `employees` (`id`, `first_name`, `last_name`, `email`, `designation`, `created_at`, `updated_at`, `department_id`) VALUES (19, '', '', '', '', '2025-11-14 20:49:12.960190', '2025-11-14 20:49:12.960190', 1);
INSERT INTO `employees` (`id`, `first_name`, `last_name`, `email`, `designation`, `created_at`, `updated_at`, `department_id`) VALUES (20, '', '', '', '', '2025-11-14 20:49:19.791371', '2025-11-14 20:49:19.791371', 1);
INSERT INTO `employees` (`id`, `first_name`, `last_name`, `email`, `designation`, `created_at`, `updated_at`, `department_id`) VALUES (21, '', '', '', '', '2025-11-14 20:49:54.076767', '2025-11-14 20:49:54.076767', 1);
INSERT INTO `employees` (`id`, `first_name`, `last_name`, `email`, `designation`, `created_at`, `updated_at`, `department_id`) VALUES (22, '', '', '', '', '2025-11-14 20:51:33.500222', '2025-11-14 20:51:33.500222', 1);
INSERT INTO `employees` (`id`, `first_name`, `last_name`, `email`, `designation`, `created_at`, `updated_at`, `department_id`) VALUES (23, '', '', '', '', '2025-11-14 20:51:51.196669', '2025-11-14 20:51:51.196669', 1);
INSERT INTO `employees` (`id`, `first_name`, `last_name`, `email`, `designation`, `created_at`, `updated_at`, `department_id`) VALUES (24, '', '', '', '', '2025-11-14 20:53:11.648905', '2025-11-14 20:53:11.648905', 1);
INSERT INTO `employees` (`id`, `first_name`, `last_name`, `email`, `designation`, `created_at`, `updated_at`, `department_id`) VALUES (25, '', '', '', '', '2025-11-14 20:53:14.622858', '2025-11-14 20:53:14.622858', 1);
INSERT INTO `employees` (`id`, `first_name`, `last_name`, `email`, `designation`, `created_at`, `updated_at`, `department_id`) VALUES (26, '', '', '', '', '2025-11-14 20:53:28.083664', '2025-11-14 20:53:28.083664', 1);
INSERT INTO `employees` (`id`, `first_name`, `last_name`, `email`, `designation`, `created_at`, `updated_at`, `department_id`) VALUES (27, '', '', '', '', '2025-11-14 20:53:40.802007', '2025-11-14 20:53:40.802007', 1);
INSERT INTO `employees` (`id`, `first_name`, `last_name`, `email`, `designation`, `created_at`, `updated_at`, `department_id`) VALUES (28, '', '', '', '', '2025-11-14 20:54:54.901713', '2025-11-14 20:54:54.901713', 1);
INSERT INTO `employees` (`id`, `first_name`, `last_name`, `email`, `designation`, `created_at`, `updated_at`, `department_id`) VALUES (29, 'asd', 'asd', 'as@sdfgmail.com', 'asdasdasda', '2025-11-14 20:56:41.426809', '2025-11-14 20:56:41.426809', 1);
COMMIT;

-- ----------------------------
-- Table structure for schema_migrations
-- ----------------------------
DROP TABLE IF EXISTS `schema_migrations`;
CREATE TABLE `schema_migrations` (
  `version` varchar(255) NOT NULL,
  PRIMARY KEY (`version`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of schema_migrations
-- ----------------------------
BEGIN;
INSERT INTO `schema_migrations` (`version`) VALUES ('20251113155216');
INSERT INTO `schema_migrations` (`version`) VALUES ('20251113155522');
INSERT INTO `schema_migrations` (`version`) VALUES ('20251113191115');
INSERT INTO `schema_migrations` (`version`) VALUES ('20251114142015');
INSERT INTO `schema_migrations` (`version`) VALUES ('20251114145326');
INSERT INTO `schema_migrations` (`version`) VALUES ('20251114145631');
COMMIT;

-- ----------------------------
-- Table structure for users
-- ----------------------------
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `password_digest` varchar(255) DEFAULT NULL,
  `role_type` varchar(255) DEFAULT NULL,
  `employee_id` int DEFAULT NULL,
  `active` tinyint(1) DEFAULT '1',
  `created_at` datetime(6) NOT NULL,
  `updated_at` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of users
-- ----------------------------
BEGIN;
INSERT INTO `users` (`id`, `name`, `email`, `password_digest`, `role_type`, `employee_id`, `active`, `created_at`, `updated_at`) VALUES (1, 'Admin User', 'admin@company.com', '$2a$12$AC3mKQi2CtvJ1OrIbzqoC.MS99SQLQfTrh8D0rqLVwClYVNUnzVta', 'admin', 1, 1, '2025-11-13 22:00:27.000000', '2025-11-13 16:38:31.865955');
INSERT INTO `users` (`id`, `name`, `email`, `password_digest`, `role_type`, `employee_id`, `active`, `created_at`, `updated_at`) VALUES (2, 'Jane Smith', 'manager@company.com', '$2a$12$K8qLz5gVnMBvqhqRvPYOCOGZvD5WLZl8tS.H0Yk.kJYxQXq0nUYFi', 'manager', 2, 0, '2025-11-13 22:00:27.000000', '2025-11-14 18:42:49.271971');
INSERT INTO `users` (`id`, `name`, `email`, `password_digest`, `role_type`, `employee_id`, `active`, `created_at`, `updated_at`) VALUES (3, 'Mike Johnson', 'mike.johnson@company.com', '$2a$12$K8qLz5gVnMBvqhqRvPYOCOGZvD5WLZl8tS.H0Yk.kJYxQXq0nUYFi', 'employee', 3, 1, '2025-11-13 22:00:27.000000', '2025-11-13 22:00:27.000000');
INSERT INTO `users` (`id`, `name`, `email`, `password_digest`, `role_type`, `employee_id`, `active`, `created_at`, `updated_at`) VALUES (4, 'Sarah Williams', 'sarah.williams@company.com', '$2a$12$K8qLz5gVnMBvqhqRvPYOCOGZvD5WLZl8tS.H0Yk.kJYxQXq0nUYFi', 'employee', 4, 1, '2025-11-13 22:00:27.000000', '2025-11-13 22:00:27.000000');
INSERT INTO `users` (`id`, `name`, `email`, `password_digest`, `role_type`, `employee_id`, `active`, `created_at`, `updated_at`) VALUES (5, 'David Brown', 'david.brown@company.com', '$2a$12$K8qLz5gVnMBvqhqRvPYOCOGZvD5WLZl8tS.H0Yk.kJYxQXq0nUYFi', 'employee', 5, 1, '2025-11-13 22:00:27.000000', '2025-11-13 22:00:27.000000');
INSERT INTO `users` (`id`, `name`, `email`, `password_digest`, `role_type`, `employee_id`, `active`, `created_at`, `updated_at`) VALUES (6, 'asdas asdasda', 'as233@gmail.com', '$2a$12$H9P0DrFp1iDMkYbP/5Mlb.CIhHt5TW/cZQgpV3abWGeHLuA7LHLES', 'employee', 12, 1, '2025-11-14 19:26:34.829239', '2025-11-14 19:26:34.829239');
INSERT INTO `users` (`id`, `name`, `email`, `password_digest`, `role_type`, `employee_id`, `active`, `created_at`, `updated_at`) VALUES (7, 'asdasd asdasd', '123asd@gmail.com', '$2a$12$c0L0O0Ve6SWLwq8GkUFrKeTq0R2jhbShS4M8W9RfRuGSSoersxi6u', 'employee', 15, 1, '2025-11-14 19:35:42.268991', '2025-11-14 19:35:42.268991');
INSERT INTO `users` (`id`, `name`, `email`, `password_digest`, `role_type`, `employee_id`, `active`, `created_at`, `updated_at`) VALUES (8, 'asdasd asdasd', 'asd1@gmail.com', '$2a$12$7R8YfPvVDorzVz4A5MuTFOym/WMARXC1mhO3mMLsNntG/LDhsgYRi', 'employee', 16, 1, '2025-11-14 19:42:22.718548', '2025-11-14 19:42:22.718548');
INSERT INTO `users` (`id`, `name`, `email`, `password_digest`, `role_type`, `employee_id`, `active`, `created_at`, `updated_at`) VALUES (9, 'asd asd', 'asd@gmail.com', '$2a$12$Fa/eoh8mOF5sA.tRUz7tk.Y8Z2YXb4ENlCxGNngpld627FBVMOrb.', 'employee', 17, 1, '2025-11-14 20:09:29.489705', '2025-11-14 20:09:29.489705');
INSERT INTO `users` (`id`, `name`, `email`, `password_digest`, `role_type`, `employee_id`, `active`, `created_at`, `updated_at`) VALUES (10, 'asd asd', 'as@sdfgmail.com', '$2a$12$B3Aa3M3b5FbkGaaszAXt3uEaadJboxccLBtmd.iPmBjhFoLK1/tqq', 'employee', 29, 1, '2025-11-14 20:56:41.653914', '2025-11-14 20:56:41.653914');
COMMIT;

SET FOREIGN_KEY_CHECKS = 1;
