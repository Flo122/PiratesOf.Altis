CREATE TABLE IF NOT EXISTS `resources` (
  `resource` varchar(12) NOT NULL,
  `price` int(5) NOT NULL,
  `selltimes` int(8) NOT NULL
);
 
INSERT INTO resources (resource, price)
VALUES ('oilp', 6000), ('iron_r', 4000), ('diamondc', 4500), ('copper_r', 3000), ('salt_r', 2500), ('glass', 2500), ('cement', 4250), ('turtle', 12000), ('marijuana', 4500), ('cocainep', 6500), ('heroinp', 6000), ('goldbar', 95000);