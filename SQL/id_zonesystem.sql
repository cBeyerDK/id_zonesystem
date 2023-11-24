CREATE TABLE IF NOT EXISTS `id_zones` (
  `name` varchar(255) COLLATE utf8mb4_bin NOT NULL,
  `owner` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `gangs` longtext COLLATE utf8mb4_bin DEFAULT NULL,
  PRIMARY KEY (`name`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;