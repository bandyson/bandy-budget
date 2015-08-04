DELETE FROM `budget`;
DELETE FROM `budgeter`;
DELETE FROM `frequency`;

INSERT INTO `frequency` (`id`, `description`) VALUES ('b9a32540-3a8d-11e5-a776-0a550ac269f1', 'Daily');
INSERT INTO `frequency` (`id`, `description`) VALUES ('f8571e9d-3a8d-11e5-a776-0a550ac269f1', 'Weekly');
INSERT INTO `frequency` (`id`, `description`) VALUES ('ff599eb7-3a8d-11e5-a776-0a550ac269f1', 'Fortnightly');
INSERT INTO `frequency` (`id`, `description`) VALUES ('044757fd-3a8e-11e5-a776-0a550ac269f1', 'Monthly');
INSERT INTO `frequency` (`id`, `description`) VALUES ('0a339768-3a8e-11e5-a776-0a550ac269f1', 'Quarterly');
INSERT INTO `frequency` (`id`, `description`) VALUES ('10bcf3f0-3a8e-11e5-a776-0a550ac269f1', 'Annually');

INSERT INTO `budgeter` (`id`, `name`) VALUES ('7783b53e-3a8c-11e5-a776-0a550ac269f1', 'milmi');
INSERT INTO `budgeter` (`id`, `name`) VALUES ('9e59c27f-3a8c-11e5-a776-0a550ac269f1', 'andbe');

INSERT INTO `budget` (`id`, `budgeter_id`, `name`, `description`) VALUES ('ec5331f9-3a8c-11e5-a776-0a550ac269f1', '7783b53e-3a8c-11e5-a776-0a550ac269f1', 'household', 'budget for the whole household');
INSERT INTO `budget` (`id`, `budgeter_id`, `name`, `description`) VALUES ('18fe3396-3a8d-11e5-a776-0a550ac269f1', '7783b53e-3a8c-11e5-a776-0a550ac269f1', 'personal', 'budget of just personal expenses');

