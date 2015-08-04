DELETE FROM `budget`;
DELETE FROM `budgeter`;

INSERT INTO `budgeter` (`id`, `name`) VALUES ('7783b53e-3a8c-11e5-a776-0a550ac269f1', 'milmi');
INSERT INTO `budgeter` (`id`, `name`) VALUES ('9e59c27f-3a8c-11e5-a776-0a550ac269f1', 'andbe');

INSERT INTO `budget` (`id`, `budgeter_id`, `name`, `description`) VALUES ('ec5331f9-3a8c-11e5-a776-0a550ac269f1', '7783b53e-3a8c-11e5-a776-0a550ac269f1', 'household', 'budget for the whole household');
INSERT INTO `budget` (`id`, `budgeter_id`, `name`, `description`) VALUES ('18fe3396-3a8d-11e5-a776-0a550ac269f1', '7783b53e-3a8c-11e5-a776-0a550ac269f1', 'personal', 'budget of just personal expenses');