
update `creature_template` set `AIName`= 'SmartAI' where `entry`= 55283;

DELETE FROM `smart_scripts` WHERE `entryorguid`=55283 AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES 
(55283, 0, 0, 0, 19, 0, 100, 0, 29727, 0, 0, 0, 208, 29727, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 'hack fix');
0 comments on commit e709632
