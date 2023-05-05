DELETE FROM `smart_scripts` WHERE `entryorguid` IN (30024, 30025, 30026) AND `source_type` = 0;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES 
(30024, 0, 0, 0, 0, 0, 100, 0, 5000, 8000, 5000, 8000, 11, 55909, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, "Gargoral the Water Lord - In Combat - Cast 'Crashing Wave'"),
(30024, 0, 1, 2, 6, 0, 100, 1, 0, 0, 0, 0, 45, 13, 13, 0, 0, 0, 0, 19, 30007, 0, 0, 0, 0, 0, 0, "Gargoral the Water Lord - On Just Died - Set Data 13 13 (No Repeat)"),
(30024, 0, 2, 5, 61, 0, 100, 0, 0, 0, 0, 0, 15, 12934, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, "Gargoral the Water Lord - On Just Died - Quest Credit 'The Amphitheater of Anguish: From Beyond!'"),
(30024, 0, 3, 4, 7, 0, 100, 1, 0, 0, 0, 0, 45, 10, 10, 0, 0, 0, 0, 19, 30007, 0, 0, 0, 0, 0, 0, "Gargoral the Water Lord - On Evade - Set Data 10 10 (No Repeat)"),
(30024, 0, 4, 5, 61, 0, 100, 0, 0, 0, 0, 0, 41, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, "Gargoral the Water Lord - On Evade - Despawn Instant"),
(30024, 0, 5, 0, 61, 0, 100, 0, 0, 0, 0, 0, 45, 1, 1, 0, 0, 0, 0, 9, 30044, 0, 500, 0, 0, 0, 0, "Gargoral the Water Lord - On Evade - Set Data 1 1"),
(30024, 0, 6, 7, 11, 0, 100, 0, 0, 0, 0, 0, 1, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, "Gargoral the Water Lord - On Respawn - Say Text Line 1"),
(30024, 0, 7, 0, 61, 0, 100, 0, 0, 0, 0, 0, 19, 768, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, "Gargoral the Water Lord - On Respawn - Remove Flags Immune To Players & Immune To NPC's"),
(30024, 0, 8, 0, 2, 0, 100, 1, 0, 50, 0, 0, 1, 2, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, "Gargoral the Water Lord - Between 0-50% Health - Say Text Line 2"),
(30024, 0, 9, 10, 2, 0, 100, 0, 0, 50, 5000, 5000, 64, 1, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, "Gargoral the Water Lord - Between 0-50% Health - Store Targetlist"),
(30024, 0, 10, 11, 61, 0, 100, 0, 0, 0, 0, 0, 100, 1, 0, 0, 0, 0, 0, 9, 30044, 0, 500, 0, 0, 0, 0, "Gargoral the Water Lord - Between 0-50% Health - Send Target 1"),
(30024, 0, 11, 0, 61, 0, 100, 0, 0, 0, 0, 0, 45, 1, 2, 0, 0, 0, 0, 9, 30044, 0, 500, 0, 0, 0, 0, "Gargoral the Water Lord - Between 0-50% Health - Set Data 1 2"),

(30025, 0, 0, 0, 9, 0, 100, 0, 0, 5, 5000, 8000, 11, 55918, 2, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, "Erathius, King of Dirt - Within 0-5 Range - Cast 'Shockwave'"),
(30025, 0, 1, 2, 6, 0, 100, 1, 0, 0, 0, 0, 45, 13, 13, 0, 0, 0, 0, 19, 30007, 0, 0, 0, 0, 0, 0, "Erathius, King of Dirt - On Just Died - Set Data 13 13 (No Repeat)"),
(30025, 0, 2, 5, 61, 0, 100, 0, 0, 0, 0, 0, 15, 12934, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, "Erathius, King of Dirt - On Just Died - Quest Credit 'The Amphitheater of Anguish: From Beyond!'"),
(30025, 0, 3, 4, 7, 0, 100, 1, 0, 0, 0, 0, 45, 10, 10, 0, 0, 0, 0, 19, 30007, 0, 0, 0, 0, 0, 0, "Erathius, King of Dirt - On Evade - Set Data 10 10 (No Repeat)"),
(30025, 0, 4, 5, 61, 0, 100, 0, 0, 0, 0, 0, 41, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, "Erathius, King of Dirt - On Evade - Despawn Instant"),
(30025, 0, 5, 0, 61, 0, 100, 0, 0, 0, 0, 0, 45, 1, 1, 0, 0, 0, 0, 9, 30043, 0, 500, 0, 0, 0, 0, "Erathius, King of Dirt - On Evade - Set Data 1 1"),
(30025, 0, 6, 7, 11, 0, 100, 0, 0, 0, 0, 0, 1, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, "Erathius, King of Dirt - On Respawn - Say Text Line 1"),
(30025, 0, 7, 0, 61, 0, 100, 0, 0, 0, 0, 0, 19, 768, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, "Erathius, King of Dirt - On Respawn - Remove Flags Immune To Players & Immune To NPC's"),
(30025, 0, 8, 0, 2, 0, 100, 1, 0, 50, 0, 0, 1, 2, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, "Erathius, King of Dirt - Between 0-50% Health - Say Text Line 2"),
(30025, 0, 9, 10, 2, 0, 100, 0, 0, 50, 5000, 5000, 64, 1, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, "Erathius, King of Dirt - Between 0-50% Health - Store Targetlist"),
(30025, 0, 10, 11, 61, 0, 100, 0, 0, 0, 0, 0, 100, 1, 0, 0, 0, 0, 0, 9, 30043, 0, 500, 0, 0, 0, 0, "Erathius, King of Dirt - Between 0-50% Health - Send Target 1"),
(30025, 0, 11, 0, 61, 0, 100, 0, 0, 0, 0, 0, 45, 1, 2, 0, 0, 0, 0, 9, 30043, 0, 500, 0, 0, 0, 0, "Erathius, King of Dirt - Between 0-50% Health - Set Data 1 2"),

(30026, 0, 0, 0, 0, 0, 100, 0, 5000, 8000, 11000, 16000, 11, 55912, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, "Az'Barin, Prince of the Gust - In Combat - Cast 'Blast of Air'"),
(30026, 0, 1, 2, 6, 0, 100, 1, 0, 0, 0, 0, 45, 13, 13, 0, 0, 0, 0, 19, 30007, 0, 0, 0, 0, 0, 0, "Az'Barin, Prince of the Gust - On Just Died - Set Data 13 13 (No Repeat)"),
(30026, 0, 2, 5, 61, 0, 100, 0, 0, 0, 0, 0, 15, 12934, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, "Az'Barin, Prince of the Gust - On Just Died - Quest Credit 'The Amphitheater of Anguish: From Beyond!'"),
(30026, 0, 3, 4, 7, 0, 100, 1, 0, 0, 0, 0, 45, 10, 10, 0, 0, 0, 0, 19, 30007, 0, 0, 0, 0, 0, 0, "Az'Barin, Prince of the Gust - On Evade - Set Data 10 10 (No Repeat)"),
(30026, 0, 4, 5, 61, 0, 100, 0, 0, 0, 0, 0, 41, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, "Az'Barin, Prince of the Gust - On Evade - Despawn Instant"),
(30026, 0, 5, 0, 61, 0, 100, 0, 0, 0, 0, 0, 45, 1, 1, 0, 0, 0, 0, 9, 30045, 0, 500, 0, 0, 0, 0, "Az'Barin, Prince of the Gust - On Evade - Set Data 1 1"),
(30026, 0, 6, 7, 11, 0, 100, 0, 0, 0, 0, 0, 1, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, "Az'Barin, Prince of the Gust - On Respawn - Say Text Line 1"),
(30026, 0, 7, 0, 61, 0, 100, 0, 0, 0, 0, 0, 19, 768, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, "Az'Barin, Prince of the Gust - On Respawn - Remove Flags Immune To Players & Immune To NPC's"),
(30026, 0, 8, 0, 2, 0, 100, 1, 0, 50, 0, 0, 1, 2, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, "Az'Barin, Prince of the Gust - Between 0-50% Health - Say Text Line 2"),
(30026, 0, 9, 10, 2, 0, 100, 0, 0, 50, 5000, 5000, 64, 1, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, "Az'Barin, Prince of the Gust - Between 0-50% Health - Store Targetlist"),
(30026, 0, 10, 11, 61, 0, 100, 0, 0, 0, 0, 0, 100, 1, 0, 0, 0, 0, 0, 9, 30045, 0, 500, 0, 0, 0, 0, "Az'Barin, Prince of the Gust - Between 0-50% Health - Send Target 1"),
(30026, 0, 11, 0, 61, 0, 100, 0, 0, 0, 0, 0, 45, 1, 2, 0, 0, 0, 0, 9, 30045, 0, 500, 0, 0, 0, 0, "Az'Barin, Prince of the Gust - Between 0-50% Health - Set Data 1 2");
