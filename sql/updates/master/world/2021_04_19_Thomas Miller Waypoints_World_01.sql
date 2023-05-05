/*Fix Thomas Miller Waypoints*/
SET @GUID := 309850;
DELETE FROM `waypoint_data` WHERE id = @GUID;
INSERT INTO `waypoint_data` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`, `delay`, `move_flag`, `action`, `action_chance`, `wpguid`) VALUES 
(309850, 1, -8880.11, 566.85, 93.5413, 0, 0, 0, 0, 100, 0),
(309850, 2, -8835.48, 616.05, 93.4648, 0, 0, 0, 271, 100, 0),
(309850, 3, -8826.48, 617.939, 94.5474, 0, 60000, 0, 272, 100, 0),
(309850, 4, -8810.98, 602.79, 96.5224, 0, 0, 0, 0, 100, 0),
(309850, 5, -8808.6, 594.063, 97.1686, 0, 0, 0, 0, 100, 0),
(309850, 6, -8820.48, 574.017, 94.3815, 0, 0, 0, 0, 100, 0),
(309850, 7, -8836.96, 551.33, 96.1881, 0, 0, 0, 273, 100, 0),
(309850, 8, -8828.7, 549.945, 96.0016, 0, 6000, 0, 274, 100, 0),
(309850, 9, -8818.54, 561.501, 94.4894, 0, 0, 0, 0, 100, 0),
(309850, 10, -8810.57, 574.895, 95.1651, 0, 0, 0, 0, 100, 0),
(309850, 11, -8784.7, 597.191, 97.6343, 0, 0, 0, 0, 100, 0),
(309850, 12, -8766.48, 612.274, 97.9595, 0, 0, 0, 0, 100, 0),
(309850, 13, -8757.88, 627.71, 102.074, 0, 0, 0, 0, 100, 0),
(309850, 14, -8760.58, 647.571, 103.993, 0, 0, 0, 0, 100, 0),
(309850, 15, -8784.89, 678.879, 102.785, 0, 0, 0, 0, 100, 0),
(309850, 16, -8803.5, 684.834, 101.119, 0, 0, 0, 0, 100, 0),
(309850, 17, -8831.92, 674.652, 98.4328, 0, 0, 0, 0, 100, 0),
(309850, 18, -8852.67, 659.614, 97.0104, 0, 0, 0, 0, 100, 0),
(309850, 19, -8844.95, 638.042, 95.8141, 0, 0, 0, 0, 100, 0),
(309850, 20, -8836.51, 634.128, 94.7394, 0, 0, 0, 0, 100, 0),
(309850, 21, -8817.55, 639.872, 94.6043, 0, 0, 0, 0, 100, 0),
(309850, 22, -8812.72, 631.563, 94.4423, 0, 0, 0, 271, 100, 0),
(309850, 23, -8814.24, 626.435, 94.3168, 0, 60000, 0, 271, 100, 0),
(309850, 24, -8831.24, 619.095, 93.9468, 0, 0, 0, 0, 100, 0),
(309850, 25, -8872.22, 596.114, 92.9442, 0, 0, 0, 273, 100, 0),
(309850, 26, -8891.32, 578.162, 92.9976, 0, 60000, 0, 274, 100, 0);
