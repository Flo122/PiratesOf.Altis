CREATE TABLE IF NOT EXISTS `resources` (
  `resource` varchar(12) NOT NULL,
  `price` int(5) NOT NULL,
  `selltimes` int(8) NOT NULL
);
 
INSERT INTO resources (resource, price)
VALUES 
('hopfenp', 3540), ('bronze', 13375), ('iron_r', 3017), ('glass', 3368), ('eisenp', 3153), ('holzp', 3248), ('copper_r', 3746), ('getreidep', 3210), ('oilp', 2571), ('salt_r', 4759), ('schmuck', 14825), ('schwefelp', 3222), ('silberp', 3966), ('uran5', 24144), ('traubenp', 4006), ('cement', 3342), ('tabakp', 4577), ('zinnp', 3274), ('zuckerp', 4565), ('heroinp', 4527), ('marijuana', 4365), ('kkugel', 13987), ('cocainep', 5348), ('pbrau', 24701), ('pkugel', 62727), ('zuckerip', 4922), ('uranip', 12598), ('spulver', 11408), ('getreideip', 4244), ('tabakip', 3977), ('turtle', 300), ('goldbar', 95000);