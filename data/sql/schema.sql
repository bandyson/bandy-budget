DROP TABLE IF EXISTS `bill`;
DROP TABLE IF EXISTS `income`;
DROP TABLE IF EXISTS `budget`;
DROP TABLE IF EXISTS `budgeter`;
DROP TABLE IF EXISTS `frequency`;

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

CREATE TABLE `frequency` (
  `id` varbinary(36) NOT NULL,
  `description` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  -- TODO: multipliers?
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

CREATE TABLE `income` (
  `id` varbinary(36) NOT NULL,
  `budget_id` varbinary(36) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description` text COLLATE utf8_unicode_ci,
  `amount` decimal(15,2) NOT NULL,
  `frequency_id` varbinary(36) NOT NULL,
  `primary` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`),
  CONSTRAINT `income_budget_id_budget_id` FOREIGN KEY (`budget_id`) REFERENCES `budget` (`id`),
  CONSTRAINT `income_frequency_id_frequency_id` FOREIGN KEY (`frequency_id`) REFERENCES `frequency` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

CREATE TABLE `bill` (
  `id` varbinary(36) NOT NULL,
  `budget_id` varbinary(36) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description` text COLLATE utf8_unicode_ci,
  `amount` decimal(15,2) NOT NULL,
  `frequency_id` varbinary(36) NOT NULL,
  PRIMARY KEY (`id`),
  CONSTRAINT `bill_budget_id_budget_id` FOREIGN KEY (`budget_id`) REFERENCES `budget` (`id`),
  CONSTRAINT `bill_frequency_id_frequency_id` FOREIGN KEY (`frequency_id`) REFERENCES `frequency` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
