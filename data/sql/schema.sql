DROP TABLE IF EXISTS `budgeter`;
DROP TABLE IF EXISTS `budget`;

CREATE TABLE `budgeter` (
  `id` varbinary(36) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description` text COLLATE utf8_unicode_ci,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

CREATE TABLE `budget` (
  `id` varbinary(36) NOT NULL,
  `budgeter_id` varbinary(36) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description` text COLLATE utf8_unicode_ci,
  PRIMARY KEY (`id`),
  CONSTRAINT `budget_budgeter_id_budgeter_id` FOREIGN KEY (`budgeter_id`) REFERENCES `budgeter` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;