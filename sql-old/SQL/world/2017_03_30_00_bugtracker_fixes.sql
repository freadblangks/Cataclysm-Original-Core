--  [Matis the Cruel] quest =9711 by gexir
-- http://www.wowhead.com/quest=9711/matis-the-cruel
-- id report=193 

UPDATE `quest_template` SET Method=2 , SpecialFlags=2 WHERE id =9711;

-- Conditions generated by SAI-Editor
DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId`=17 AND `SourceGroup`=0 AND `SourceEntry`=31333;
INSERT INTO `conditions` (`SourceTypeOrReferenceId`,`SourceGroup`,`SourceEntry`,`SourceId`,`ElseGroup`,`ConditionTypeOrReference`,`ConditionTarget`,`ConditionValue1`,`ConditionValue2`,`ConditionValue3`,`NegativeCondition`,`ErrorType`,`ErrorTextId`,`ScriptName`,`Comment`) VALUES
(17,0,31333,0,0,29,0,17664,40,0,0,0,0,"","");

-- Tracker of the Hand SAI
SET @ENTRY := 17853;
UPDATE `creature_template` SET `AIName`='SmartAI', faction_A=1, faction_H=1 WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,1,54,0,100,0,0,0,0,0,66,0,0,0,0,0,0,19,17664,40,0,0,0,0,0,"Tracker of the Hand - On Just Summoned - Face Matis the Cruel"),
(@ENTRY,0,1,2,61,0,100,0,0,0,0,0,1,0,0,0,0,0,0,1,0,0,0,0,0,0,0,"Tracker of the Hand - On Just Summoned - Say Line 1"),
(@ENTRY,0,2,3,61,0,100,0,0,0,0,0,8,2,0,0,0,0,0,1,0,0,0,0,0,0,0,"Tracker of the Hand - On Just Summoned - Set Aggresive"),
(@ENTRY,0,3,4,61,0,100,0,0,0,0,0,45,1,1,0,0,0,0,19,17664,40,0,0,0,0,0,"Tracker of the Hand - On Just Summoned - Set Data to Matis the Cruel"),
(@ENTRY,0,4,0,61,0,100,0,0,0,0,0,22,2,0,0,0,0,0,1,0,0,0,0,0,0,0,"Tracker of the Hand - On Just Summoned - Set Phase 2"),
(@ENTRY,0,5,0,38,0,100,0,1,1,0,0,45,2,2,0,0,0,0,19,17664,40,0,0,0,0,0,"Tracker of the Hand - On Data Set 1 1 (Phase 2) - Set Data 2 2 on Matis the Cruel"),
(@ENTRY,0,6,0,38,0,100,0,2,2,0,0,80,@ENTRY*100+00,2,0,0,0,0,1,0,0,0,0,0,0,0,"Tracker of the Hand - On Data Set 2 2 - Run Script"),
(@ENTRY,0,7,0,60,0,100,0,1000,1000,2000,2000,11,6660,0,0,0,0,0,19,17664,40,0,0,0,0,0,"Matis the Cruel - On Range - Cast Shoot"),
(@ENTRY,0,8,0,4,0,100,0,1000,1000,2000,2000,21,0,0,0,0,0,0,1,0,0,0,0,0,0,0,"Matis the Cruel - On aggro - Disable move");

-- Actionlist SAI
SET @ENTRY := 1785300;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=9;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,9,0,0,0,0,100,0,0,0,0,0,24,0,0,0,0,0,0,1,0,0,0,0,0,0,0,"Tracker of the Hand - Script - Evade"),
(@ENTRY,9,1,0,0,0,100,0,5000,5000,0,0,1,1,0,0,0,0,0,1,0,0,0,0,0,0,0,"Tracker of the Hand - Script - Say Line 2"),
(@ENTRY,9,2,0,0,0,100,0,10000,10000,0,0,41,0,0,0,0,0,0,1,0,0,0,0,0,0,0,"Tracker of the Hand - Script - Despawn");


-- Matis the Cruel SAI
SET @ENTRY := 17664;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,1,38,0,100,0,1,1,0,0,66,0,0,0,0,0,0,19,17853,40,0,0,0,0,0,"Matis the Cruel - On Data Set - Face Tracker of the Hand"),
(@ENTRY,0,1,2,61,0,100,0,0,0,0,0,1,0,0,0,0,0,0,1,0,0,0,0,0,0,0,"Matis the Cruel - On Data Set - Say Line 1"),
(@ENTRY,0,2,0,2,0,100,1,25,50,0,0,45,1,1,0,0,0,0,19,17853,40,0,0,0,0,0,"Matis the Cruel - On Between 25 - 50% HP - Set Data on Tracker of the Hand"),
(@ENTRY,0,3,4,38,0,100,0,2,2,0,0,90,7,0,0,0,0,0,1,0,0,0,0,0,0,0,"Matis the Cruel - On Data Set - Set Bytes 1"),
(@ENTRY,0,4,5,61,0,100,0,0,0,0,0,18,768,0,0,0,0,0,1,0,0,0,0,0,0,0,"Matis the Cruel - On Data Set - Disable Combat Movement"),
(@ENTRY,0,5,6,61,0,100,0,0,0,0,0,20,0,0,0,0,0,0,1,0,0,0,0,0,0,0,"Matis the Cruel - On Data Set - Disable Auto Attack"),
(@ENTRY,0,6,7,61,0,100,0,0,0,0,0,103,1,0,0,0,0,0,1,0,0,0,0,0,0,0,"Matis the Cruel - On Data Set - Disable Auto Attack"),
(@ENTRY,0,7,8,61,0,100,0,0,0,0,0,1,1,0,0,0,0,0,1,0,0,0,0,0,0,0,"Matis the Cruel - On Data Set - Say Line 2"),
(@ENTRY,0,8,9,61,0,100,0,0,0,0,0,15,9711,0,0,0,0,0,18,40,0,0,0,0,0,0,"Matis the Cruel - On Data Set - Cast Matis Captured DND"),
(@ENTRY,0,9,10,61,0,100,0,0,0,0,0,41,15000,0,0,0,0,0,1,0,0,0,0,0,0,0,"Matis the Cruel - On Data Set - Despawn After 15 Seconds"),
(@ENTRY,0,10,0,61,0,100,0,0,0,0,0,45,2,2,0,0,0,0,19,17853,40,0,0,0,0,0,"Matis the Cruel - On Data Set - Set Invincibility HP"),
(@ENTRY,0,11,0,11,0,100,0,0,0,0,0,91,7,0,0,0,0,0,1,0,0,0,0,0,0,0,"Matis the Cruel - On Spawn remove bytes 1"),
(@ENTRY,0,12,0,11,0,100,0,0,0,0,0,19,768,0,0,0,0,0,1,0,0,0,0,0,0,0,"Matis the Cruel - On Spawn remove unit Flags");


DELETE from `creature_equip_template` where entry=17853 and id=1;
INSERT INTO `creature_equip_template` (`Entry`, `ID`, `Itementry1`, `Itementry2`, `Itementry3`) VALUES
(17853, 1, 34682, 34682, 34269);


--  [The Restless Earth] quest=14491 by gexir
-- http://www.wowhead.com/quest=14491/the-restless-earth
-- Id report=499

UPDATE `quest_template` SET RequiredNpcOrGo1=36872 , RequiredNpcOrGoCount1=6 WHERE id =14491;

-- Agitated Earth Spirit SAI
SET @ENTRY := 36845;
UPDATE `creature_template` SET `AIName`="SmartAI"  , unit_flags=0 WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,8,0,100,0,69453,0,1000,2000,30,1,2,1,2,1,2,16,0,0,0,0,0,0,0,"Agitated Earth Spirit - On Spellhit '<Spell not found!>' - Set Random Phase(1, 2)"),
(@ENTRY,0,1,2,8,1,100,0,69453,0,1000,2000,2,35,0,0,0,0,0,1,0,0,0,0,0,0,0,"Agitated Earth Spirit - On Spellhit '<Spell not found!>' - Set Faction 35"),
(@ENTRY,0,2,3,61,1,100,0,69453,0,1000,2000,33,36872,0,0,0,0,0,7,0,0,0,0,0,0,0,"Agitated Earth Spirit - On Spellhit '<Spell not found!>' - Quest Credit 'The Restless Earth'"),
(@ENTRY,0,3,0,61,1,100,0,69453,0,1000,2000,41,2000,0,0,0,0,0,1,0,0,0,0,0,0,0,"Agitated Earth Spirit - On Spellhit '<Spell not found!>' - Quest Credit 'The Restless Earth'"),
(@ENTRY,0,4,5,8,2,100,0,69453,0,0,0,2,14,0,0,0,0,0,1,0,0,0,0,0,0,0,"Agitated Earth Spirit - On Spellhit '<Spell not found!>' - Set Faction 35"),
(@ENTRY,0,5,0,61,2,100,0,69453,0,0,0,1,0,0,0,0,0,0,1,0,0,0,0,0,0,0,"Agitated Earth Spirit - On Spellhit '<Spell not found!>' - Quest Credit 'The Restless Earth'");


-- Conditions generated by SAI-Editor
DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId`=17 AND `SourceGroup`=0 AND `SourceEntry`=69453;
INSERT INTO `conditions` (`SourceTypeOrReferenceId`,`SourceGroup`,`SourceEntry`,`SourceId`,`ElseGroup`,`ConditionTypeOrReference`,`ConditionTarget`,`ConditionValue1`,`ConditionValue2`,`ConditionValue3`,`NegativeCondition`,`ErrorType`,`ErrorTextId`,`ScriptName`,`Comment`) VALUES
(17,0,69453,0,0,23,0,404,0,0,0,0,0,"","");

DELETE FROM `creature_text` WHERE `entry`=36845 AND `groupid`=0 AND `id`=0;
INSERT INTO `creature_text` (`entry`, `groupid`, `id`, `text`, `type`, `language`, `probability`, `emote`, `duration`, `sound`, `comment`) VALUES (36845, 0, 0, 'The Spirit is displeased and attacks!', 41, 0, 100, 0, 0, 0, '');



--  [War Dance] quest =24540 by Gexir
-- http://www.wowhead.com/quest=24540/war-dance
-- id Report= 501

-- Orno Grimtotem SAI
SET @ENTRY := 36931;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,1,0,2,0,100,1,0,70,0,0,80,3693100,2,0,0,0,0,1,0,0,0,0,0,0,0,"Orno Grimtotem - Between 0-70% Health - Run Script (No Repeat)"),
(@ENTRY,0,2,0,38,0,100,0,2,2,0,0,1,3,0,0,0,0,0,1,0,0,0,0,0,0,0,"Orno Grimtotem - On Spell hit- Say line 4"),
(@ENTRY,0,3,0,6,0,100,0,0,0,0,0,33,36931,0,0,0,0,0,18,50,0,0,0,0,0,0,"Orno Grimtotem - On Die - Quest War dance credit"),
(@ENTRY,0,4,0,11,0,100,0,0,0,0,0,19,33555200,0,0,0,0,0,1,0,0,0,0,0,0,0,"Orno Grimtotem - Remove unit flag");

DELETE FROM `creature_equip_template` WHERE (`entry`=37058 AND `ID`=1);
INSERT INTO `creature_equip_template` (`entry`, `ID`, `Itementry1`, `Itementry2`, `Itementry3`) VALUES
(37058, 1, 58367, 0, 0); -- Baine Bloodhoof


DELETE FROM `creature_template_addon` WHERE `entry`=37058;
INSERT INTO `creature_template_addon` (`entry`, `path_id`, `mount`, `bytes1`, `bytes2`, `emote`, `auras`) VALUES
(37058, 0, 0, 0, 1, 27, ''); -- 37058 (Baine Bloodhoof)


-- Actionlist SAI 
SET @ENTRY := 3693100;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=9;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,9,0,0,0,0,100,0,0,0,0,0,18,33555200,0,0,0,0,0,1,0,0,0,0,0,0,0,"On Script - Set Flags Immune To Players & Immune To NPC's"),
(@ENTRY,9,1,0,0,0,100,0,500,500,0,0,19,33554432,0,0,0,0,0,1,0,0,0,0,0,0,0,"On Script - Set Flags Immune To Players & Immune To NPC's"),
(@ENTRY,9,2,0,0,0,100,0,0,0,0,0,24,0,0,0,0,0,0,1,0,0,0,0,0,0,0,"On Script - Set Flags Immune To Players & Immune To NPC's"),
(@ENTRY,9,3,0,0,0,100,0,500,500,0,0,5,27,0,0,0,0,0,1,0,0,0,0,0,0,0,"On Script - Set Flags Immune To Players & Immune To NPC's"),
(@ENTRY,9,4,0,0,0,100,0,0,0,0,0,11,69830,0,0,0,0,0,1,0,0,0,0,0,0,0,"On Script - Cast 'War Stomp'"),
(@ENTRY,9,5,0,0,0,100,0,500,500,0,0,1,0,0,0,0,0,0,1,0,0,0,0,0,0,0,"On Script - Say Line 0"),
(@ENTRY,9,6,0,0,0,100,0,1000,1000,0,0,12,37058,5,0,0,0,0,8,0,0,0,-617.59,203.93,53.13,5.26,"On Script - Summon Creature 'Baine Bloodhoof'"),
(@ENTRY,9,7,0,0,0,100,0,2000,2000,0,0,1,0,0,0,0,0,0,19,37058,50,0,0,0,0,0,"On Script - Say Line 0"),
(@ENTRY,9,8,0,0,0,100,0,2000,2000,0,0,66,0,0,0,0,0,0,19,37058,40,0,0,0,0,0,"On Script - Set Orientation Closest Creature 'Baine Bloodhoof'"),
(@ENTRY,9,9,0,0,0,100,0,0,0,0,0,1,1,0,0,0,0,0,1,0,0,0,0,0,0,0,"On Script - Say Line 1"),
(@ENTRY,9,10,0,0,0,100,0,500,500,0,0,86,69834,2,19,37058,30,0,19,37058,50,0,0,0,0,0,"On Script - Cast 'Grimtotem ambush'"),
(@ENTRY,9,11,0,0,0,100,0,0,0,0,0,86,69827,2,19,37058,30,0,19,37058,50,0,0,0,0,0,"On Script - Cast 'grimtotem ambush"),
(@ENTRY,9,12,0,0,0,100,0,2000,2000,0,0,1,2,0,0,0,0,0,1,0,0,0,0,0,0,0,"On Script - Say Line 2"),
(@ENTRY,9,13,0,0,0,100,0,3000,3000,0,0,1,1,0,0,0,0,0,19,37058,50,0,0,0,0,0,"On Script - Say Line 1"),
(@ENTRY,9,14,0,0,0,100,0,7000,7000,0,0,45,1,1,0,0,0,0,19,37058,50,0,0,0,0,0,"On Script - Set Data 1 1"),
(@ENTRY,9,15,0,0,0,100,0,2000,2000,0,0,19,512,0,0,0,0,0,1,0,0,0,0,0,0,0,"On Script - Remove immune to npc");



-- Baine Bloodhoof SAI
SET @ENTRY := 37058;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
UPDATE `creature_template` SET faction_A=35 , faction_H=35 , minlevel=83 , maxlevel=83 , type_flags=4 WHERE entry =@Entry;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,1,54,0,100,1,0,0,0,0,11,69756,0,0,0,0,0,1,0,0,0,0,0,0,0,"Baine Bloodhoof - On Just Summoned - Cast 'War Harness' (No Repeat)"),
(@ENTRY,0,1,0,61,0,100,1,0,0,0,0,53,1,37058,0,0,0,0,1,0,0,0,0,0,0,0,"Baine Bloodhoof - On Just Summoned - Cast 'War Harness' (No Repeat)"),
(@ENTRY,0,2,3,38,0,100,0,1,1,0,0,11,69847,0,0,0,0,0,1,0,0,0,0,0,0,0,"Baine Bloodhoof - On Data Set 1 1 - Cast 'War Stomp'"),
(@ENTRY,0,3,4,61,0,100,0,1,1,0,0,1,2,0,0,0,0,0,1,0,0,0,0,0,0,0,"Baine Bloodhoof - On Data Set 1 1 - Say Line 2"),
(@ENTRY,0,4,0,61,0,100,0,1,1,0,0,80,@ENTRY*100+00,0,0,0,0,0,1,0,0,0,0,0,0,0,"Baine Bloodhoof - On Data Set 1 1 - Run Script"),
(@ENTRY,0,5,6,58,0,100,0,1,37058,0,0,66,0,0,0,0,0,0,19,36931,40,0,0,0,0,0,"Baine Bloodhoof - On Waypoint Finished - Set Orientation Closest Creature 'Baine Bloodhoof'"),
(@ENTRY,0,6,0,61,0,100,0,0,0,0,0,5,27,0,0,0,0,0,1,0,0,0,0,0,0,0,"Baine Bloodhoof - MISSING LINK - Play Emote 27");





-- Actionlist SAI
SET @ENTRY := 3705800;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=9;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,9,0,0,0,0,100,0,2000,2000,0,0,11,69879,0,0,0,0,0,19,36931,40,0,0,0,0,0,"On Script - Cast 'Charge'"),
(@ENTRY,9,1,0,0,0,100,0,2000,2000,0,0,45,2,2,0,0,0,0,19,36931,40,0,0,0,0,0,"On Script - Cast 'Charge'"),
(@ENTRY,9,2,0,0,0,100,0,3000,3000,0,0,1,3,0,0,0,0,0,1,0,0,0,0,0,0,0,"On Script - Say Line 3"),
(@ENTRY,9,3,0,0,0,100,0,1000,1000,0,0,11,70298,0,0,0,0,0,19,36931,40,0,0,0,0,0,"On Script - Cast 'Cosmetic - Combat Attack 1H (Impact)'"),
(@ENTRY,9,4,0,0,0,100,0,5000,5000,0,0,1,4,0,0,0,0,0,1,0,0,0,0,0,0,0,"On Script - Say Line 4"),
(@ENTRY,9,5,0,0,0,100,0,3000,3000,0,0,1,5,0,0,0,0,0,1,0,0,0,0,0,0,0,"On Script - Say Line 5"),
(@ENTRY,9,6,0,0,0,100,0,4000,4000,0,0,41,0,0,0,0,0,0,1,0,0,0,0,0,0,0,"On Script - Despawn instant");



-- Waypoints
SET @ENTRY :=37058;
DELETE FROM `waypoints` WHERE `entry`=@entry;
INSERT INTO `waypoints` (`entry`,`pointid`,`position_x`,`position_y`,`position_z`,`point_comment`) VALUES
(@entry,1,-601.96,194.81,53.10,'Baine Bloodhoof');

UPDATE `creature_template` SET faction_A=14 , faction_H=14 , minlevel=10 , maxlevel=10 , unit_flags=256  WHERE entry =37062;



-- Conditions generated by SAI-Editor
DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId`=13 AND `SourceGroup`=1 AND `SourceEntry`=69847;
INSERT INTO `conditions` (`SourceTypeOrReferenceId`,`SourceGroup`,`SourceEntry`,`SourceId`,`ElseGroup`,`ConditionTypeOrReference`,`ConditionTarget`,`ConditionValue1`,`ConditionValue2`,`ConditionValue3`,`NegativeCondition`,`ErrorType`,`ErrorTextId`,`ScriptName`,`Comment`) VALUES
(13,1,69847,0,0,31,0,3,36931,0,0,0,0,"",""),
(13,1,69847,0,1,31,0,3,37062,0,0,0,0,"","");



-- Grimtotem Ambusher SAI
SET @ENTRY := 37062;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,60,0,100,0,1000,1000,1000,1000,11,69873,0,0,0,0,0,19,37058,40,0,0,0,0,0,"Grimtotem Ambusher - On Update - Cast '<Spell not found!>'"),
(@ENTRY,0,1,0,8,0,100,0,69847,0,0,0,22,1,0,0,0,0,0,1,0,0,0,0,0,0,0,"Grimtotem Ambusher - On Spellhit 'Warstomp' - Despawn In 1000 ms"),
(@ENTRY,0,2,0,60,1,100,1,1500,1500,0,0,37,0,0,0,0,0,0,1,0,0,0,0,0,0,0,"Grimtotem Ambusher - On Spellhit 'Warstomp' - Despawn In 1000 ms");


-- Conditions generated by SAI-Editor
DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId`=13 AND `SourceGroup`=1 AND `SourceEntry`=70298;
INSERT INTO `conditions` (`SourceTypeOrReferenceId`,`SourceGroup`,`SourceEntry`,`SourceId`,`ElseGroup`,`ConditionTypeOrReference`,`ConditionTarget`,`ConditionValue1`,`ConditionValue2`,`ConditionValue3`,`NegativeCondition`,`ErrorType`,`ErrorTextId`,`ScriptName`,`Comment`) VALUES
(13,1,70298,0,0,31,0,3,36931,0,0,0,0,"","");


-- creature Texts
DELETE FROM `creature_text` WHERE `entry`=36931 AND `groupid`=0 AND `id`=0;
INSERT INTO `creature_text` (`entry`, `groupid`, `id`, `text`, `type`, `language`, `probability`, `emote`, `duration`, `sound`, `comment`) VALUES (36931, 0, 0, 'I\'ve had enough of this!', 12, 0, 100, 0, 0, 0, '');
DELETE FROM `creature_text` WHERE `entry`=36931 AND `groupid`=1 AND `id`=0;
INSERT INTO `creature_text` (`entry`, `groupid`, `id`, `text`, `type`, `language`, `probability`, `emote`, `duration`, `sound`, `comment`) VALUES (36931, 1, 0, 'Baine! You\'ve shown yourself! GET HIM!', 12, 0, 100, 0, 0, 0, '');
DELETE FROM `creature_text` WHERE `entry`=36931 AND `groupid`=2 AND `id`=0;
INSERT INTO `creature_text` (`entry`, `groupid`, `id`, `text`, `type`, `language`, `probability`, `emote`, `duration`, `sound`, `comment`) VALUES (36931, 2, 0, 'You will die in shame like your pathetic father.', 12, 0, 100, 0, 0, 0, '');
DELETE FROM `creature_text` WHERE `entry`=36931 AND `groupid`=3 AND `id`=0;
INSERT INTO `creature_text` (`entry`, `groupid`, `id`, `text`, `type`, `language`, `probability`, `emote`, `duration`, `sound`, `comment`) VALUES (36931, 3, 0, 'This isn\'t over, Baine...', 12, 0, 100, 0, 0, 0, '');
DELETE FROM `creature_text` WHERE `entry`=37058 AND `groupid`=0 AND `id`=0;
INSERT INTO `creature_text` (`entry`, `groupid`, `id`, `text`, `type`, `language`, `probability`, `emote`, `duration`, `sound`, `comment`) VALUES (37058, 0, 0, 'So have I, Grimtotem.', 12, 0, 100, 0, 0, 21166, '');
DELETE FROM `creature_text` WHERE `entry`=37058 AND `groupid`=1 AND `id`=0;
INSERT INTO `creature_text` (`entry`, `groupid`, `id`, `text`, `type`, `language`, `probability`, `emote`, `duration`, `sound`, `comment`) VALUES (37058, 1, 0, 'It took a coward\'s poison and the fury of Hellscream to bring my father down.', 12, 0, 100, 0, 0, 21161, '');
DELETE FROM `creature_text` WHERE `entry`=37058 AND `groupid`=2 AND `id`=0;
INSERT INTO `creature_text` (`entry`, `groupid`, `id`, `text`, `type`, `language`, `probability`, `emote`, `duration`, `sound`, `comment`) VALUES (37058, 2, 0, 'WHAT CHANCE HAVE YOU?', 12, 0, 100, 0, 0, 21162, '');
DELETE FROM `creature_text` WHERE `entry`=37058 AND `groupid`=3 AND `id`=0;
INSERT INTO `creature_text` (`entry`, `groupid`, `id`, `text`, `type`, `language`, `probability`, `emote`, `duration`, `sound`, `comment`) VALUES (37058, 3, 0, 'It is for you.', 12, 0, 100, 0, 0, 21163, '');
DELETE FROM `creature_text` WHERE `entry`=37058 AND `groupid`=4 AND `id`=0;
INSERT INTO `creature_text` (`entry`, `groupid`, `id`, `text`, `type`, `language`, `probability`, `emote`, `duration`, `sound`, `comment`) VALUES (37058, 4, 0, 'We\'re done here. Mulgore will no longer suffer the hatred of the Grimtotem.', 12, 0, 100, 0, 0, 0, '');
DELETE FROM `creature_text` WHERE `entry`=37058 AND `groupid`=5 AND `id`=0;
INSERT INTO `creature_text` (`entry`, `groupid`, `id`, `text`, `type`, `language`, `probability`, `emote`, `duration`, `sound`, `comment`) VALUES (37058, 5, 0, 'I will meet you again in Thunder Bluff.', 12, 0, 100, 0, 0, 0, '');


--  [War Dance] quest =24540 by Gexir
-- http://www.wowhead.com/quest=24540/war-dance
-- id Report= 501

-- Orno Grimtotem SAI
SET @ENTRY := 36931;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,1,0,2,0,100,1,0,70,0,0,80,3693100,2,0,0,0,0,1,0,0,0,0,0,0,0,"Orno Grimtotem - Between 0-70% Health - Run Script (No Repeat)"),
(@ENTRY,0,2,0,38,0,100,0,2,2,0,0,1,3,0,0,0,0,0,1,0,0,0,0,0,0,0,"Orno Grimtotem - On Spell hit- Say line 4"),
(@ENTRY,0,3,0,6,0,100,0,0,0,0,0,33,36931,0,0,0,0,0,18,50,0,0,0,0,0,0,"Orno Grimtotem - On Die - Quest War dance credit"),
(@ENTRY,0,4,0,11,0,100,0,0,0,0,0,19,33555200,0,0,0,0,0,1,0,0,0,0,0,0,0,"Orno Grimtotem - Remove unit flag");

DELETE FROM `creature_equip_template` WHERE (`entry`=37058 AND `ID`=1);
INSERT INTO `creature_equip_template` (`entry`, `ID`, `Itementry1`, `Itementry2`, `Itementry3`) VALUES
(37058, 1, 58367, 0, 0); -- Baine Bloodhoof


DELETE FROM `creature_template_addon` WHERE `entry`=37058;
INSERT INTO `creature_template_addon` (`entry`, `path_id`, `mount`, `bytes1`, `bytes2`, `emote`, `auras`) VALUES
(37058, 0, 0, 0, 1, 27, ''); -- 37058 (Baine Bloodhoof)


-- Actionlist SAI 
SET @ENTRY := 3693100;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=9;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,9,0,0,0,0,100,0,0,0,0,0,18,33555200,0,0,0,0,0,1,0,0,0,0,0,0,0,"On Script - Set Flags Immune To Players & Immune To NPC's"),
(@ENTRY,9,1,0,0,0,100,0,500,500,0,0,19,33554432,0,0,0,0,0,1,0,0,0,0,0,0,0,"On Script - Set Flags Immune To Players & Immune To NPC's"),
(@ENTRY,9,2,0,0,0,100,0,0,0,0,0,24,0,0,0,0,0,0,1,0,0,0,0,0,0,0,"On Script - Set Flags Immune To Players & Immune To NPC's"),
(@ENTRY,9,3,0,0,0,100,0,500,500,0,0,5,27,0,0,0,0,0,1,0,0,0,0,0,0,0,"On Script - Set Flags Immune To Players & Immune To NPC's"),
(@ENTRY,9,4,0,0,0,100,0,0,0,0,0,11,69830,0,0,0,0,0,1,0,0,0,0,0,0,0,"On Script - Cast 'War Stomp'"),
(@ENTRY,9,5,0,0,0,100,0,500,500,0,0,1,0,0,0,0,0,0,1,0,0,0,0,0,0,0,"On Script - Say Line 0"),
(@ENTRY,9,6,0,0,0,100,0,1000,1000,0,0,12,37058,5,0,0,0,0,8,0,0,0,-617.59,203.93,53.13,5.26,"On Script - Summon Creature 'Baine Bloodhoof'"),
(@ENTRY,9,7,0,0,0,100,0,2000,2000,0,0,1,0,0,0,0,0,0,19,37058,50,0,0,0,0,0,"On Script - Say Line 0"),
(@ENTRY,9,8,0,0,0,100,0,2000,2000,0,0,66,0,0,0,0,0,0,19,37058,40,0,0,0,0,0,"On Script - Set Orientation Closest Creature 'Baine Bloodhoof'"),
(@ENTRY,9,9,0,0,0,100,0,0,0,0,0,1,1,0,0,0,0,0,1,0,0,0,0,0,0,0,"On Script - Say Line 1"),
(@ENTRY,9,10,0,0,0,100,0,500,500,0,0,86,69834,2,19,37058,30,0,19,37058,50,0,0,0,0,0,"On Script - Cast 'Grimtotem ambush'"),
(@ENTRY,9,11,0,0,0,100,0,0,0,0,0,86,69827,2,19,37058,30,0,19,37058,50,0,0,0,0,0,"On Script - Cast 'grimtotem ambush"),
(@ENTRY,9,12,0,0,0,100,0,2000,2000,0,0,1,2,0,0,0,0,0,1,0,0,0,0,0,0,0,"On Script - Say Line 2"),
(@ENTRY,9,13,0,0,0,100,0,3000,3000,0,0,1,1,0,0,0,0,0,19,37058,50,0,0,0,0,0,"On Script - Say Line 1"),
(@ENTRY,9,14,0,0,0,100,0,7000,7000,0,0,45,1,1,0,0,0,0,19,37058,50,0,0,0,0,0,"On Script - Set Data 1 1"),
(@ENTRY,9,15,0,0,0,100,0,2000,2000,0,0,19,512,0,0,0,0,0,1,0,0,0,0,0,0,0,"On Script - Remove immune to npc");



-- Baine Bloodhoof SAI
SET @ENTRY := 37058;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
UPDATE `creature_template` SET faction_A=35 , faction_H=35 , minlevel=83 , maxlevel=83 , type_flags=4 WHERE entry =@Entry;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,1,54,0,100,1,0,0,0,0,11,69756,0,0,0,0,0,1,0,0,0,0,0,0,0,"Baine Bloodhoof - On Just Summoned - Cast 'War Harness' (No Repeat)"),
(@ENTRY,0,1,0,61,0,100,1,0,0,0,0,53,1,37058,0,0,0,0,1,0,0,0,0,0,0,0,"Baine Bloodhoof - On Just Summoned - Cast 'War Harness' (No Repeat)"),
(@ENTRY,0,2,3,38,0,100,0,1,1,0,0,11,69847,0,0,0,0,0,1,0,0,0,0,0,0,0,"Baine Bloodhoof - On Data Set 1 1 - Cast 'War Stomp'"),
(@ENTRY,0,3,4,61,0,100,0,1,1,0,0,1,2,0,0,0,0,0,1,0,0,0,0,0,0,0,"Baine Bloodhoof - On Data Set 1 1 - Say Line 2"),
(@ENTRY,0,4,0,61,0,100,0,1,1,0,0,80,@ENTRY*100+00,0,0,0,0,0,1,0,0,0,0,0,0,0,"Baine Bloodhoof - On Data Set 1 1 - Run Script"),
(@ENTRY,0,5,6,58,0,100,0,1,37058,0,0,66,0,0,0,0,0,0,19,36931,40,0,0,0,0,0,"Baine Bloodhoof - On Waypoint Finished - Set Orientation Closest Creature 'Baine Bloodhoof'"),
(@ENTRY,0,6,0,61,0,100,0,0,0,0,0,5,27,0,0,0,0,0,1,0,0,0,0,0,0,0,"Baine Bloodhoof - MISSING LINK - Play Emote 27");





-- Actionlist SAI
SET @ENTRY := 3705800;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=9;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,9,0,0,0,0,100,0,2000,2000,0,0,11,69879,0,0,0,0,0,19,36931,40,0,0,0,0,0,"On Script - Cast 'Charge'"),
(@ENTRY,9,1,0,0,0,100,0,2000,2000,0,0,45,2,2,0,0,0,0,19,36931,40,0,0,0,0,0,"On Script - Cast 'Charge'"),
(@ENTRY,9,2,0,0,0,100,0,3000,3000,0,0,1,3,0,0,0,0,0,1,0,0,0,0,0,0,0,"On Script - Say Line 3"),
(@ENTRY,9,3,0,0,0,100,0,1000,1000,0,0,11,70298,0,0,0,0,0,19,36931,40,0,0,0,0,0,"On Script - Cast 'Cosmetic - Combat Attack 1H (Impact)'"),
(@ENTRY,9,4,0,0,0,100,0,5000,5000,0,0,1,4,0,0,0,0,0,1,0,0,0,0,0,0,0,"On Script - Say Line 4"),
(@ENTRY,9,5,0,0,0,100,0,3000,3000,0,0,1,5,0,0,0,0,0,1,0,0,0,0,0,0,0,"On Script - Say Line 5"),
(@ENTRY,9,6,0,0,0,100,0,4000,4000,0,0,41,0,0,0,0,0,0,1,0,0,0,0,0,0,0,"On Script - Despawn instant");



-- Waypoints
SET @ENTRY :=37058;
DELETE FROM `waypoints` WHERE `entry`=@entry;
INSERT INTO `waypoints` (`entry`,`pointid`,`position_x`,`position_y`,`position_z`,`point_comment`) VALUES
(@entry,1,-601.96,194.81,53.10,'Baine Bloodhoof');

UPDATE `creature_template` SET faction_A=14 , faction_H=14 , minlevel=10 , maxlevel=10 , unit_flags=256  WHERE entry =37062;



-- Conditions generated by SAI-Editor
DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId`=13 AND `SourceGroup`=1 AND `SourceEntry`=69847;
INSERT INTO `conditions` (`SourceTypeOrReferenceId`,`SourceGroup`,`SourceEntry`,`SourceId`,`ElseGroup`,`ConditionTypeOrReference`,`ConditionTarget`,`ConditionValue1`,`ConditionValue2`,`ConditionValue3`,`NegativeCondition`,`ErrorType`,`ErrorTextId`,`ScriptName`,`Comment`) VALUES
(13,1,69847,0,0,31,0,3,36931,0,0,0,0,"",""),
(13,1,69847,0,1,31,0,3,37062,0,0,0,0,"","");



-- Grimtotem Ambusher SAI
SET @ENTRY := 37062;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,60,0,100,0,1000,1000,1000,1000,11,69873,0,0,0,0,0,19,37058,40,0,0,0,0,0,"Grimtotem Ambusher - On Update - Cast '<Spell not found!>'"),
(@ENTRY,0,1,0,8,0,100,0,69847,0,0,0,22,1,0,0,0,0,0,1,0,0,0,0,0,0,0,"Grimtotem Ambusher - On Spellhit 'Warstomp' - Despawn In 1000 ms"),
(@ENTRY,0,2,0,60,1,100,1,1500,1500,0,0,37,0,0,0,0,0,0,1,0,0,0,0,0,0,0,"Grimtotem Ambusher - On Spellhit 'Warstomp' - Despawn In 1000 ms");


-- Conditions generated by SAI-Editor
DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId`=13 AND `SourceGroup`=1 AND `SourceEntry`=70298;
INSERT INTO `conditions` (`SourceTypeOrReferenceId`,`SourceGroup`,`SourceEntry`,`SourceId`,`ElseGroup`,`ConditionTypeOrReference`,`ConditionTarget`,`ConditionValue1`,`ConditionValue2`,`ConditionValue3`,`NegativeCondition`,`ErrorType`,`ErrorTextId`,`ScriptName`,`Comment`) VALUES
(13,1,70298,0,0,31,0,3,36931,0,0,0,0,"","");


-- creature Texts
DELETE FROM `creature_text` WHERE `entry`=36931 AND `groupid`=0 AND `id`=0;
INSERT INTO `creature_text` (`entry`, `groupid`, `id`, `text`, `type`, `language`, `probability`, `emote`, `duration`, `sound`, `comment`) VALUES (36931, 0, 0, 'I\'ve had enough of this!', 12, 0, 100, 0, 0, 0, '');
DELETE FROM `creature_text` WHERE `entry`=36931 AND `groupid`=1 AND `id`=0;
INSERT INTO `creature_text` (`entry`, `groupid`, `id`, `text`, `type`, `language`, `probability`, `emote`, `duration`, `sound`, `comment`) VALUES (36931, 1, 0, 'Baine! You\'ve shown yourself! GET HIM!', 12, 0, 100, 0, 0, 0, '');
DELETE FROM `creature_text` WHERE `entry`=36931 AND `groupid`=2 AND `id`=0;
INSERT INTO `creature_text` (`entry`, `groupid`, `id`, `text`, `type`, `language`, `probability`, `emote`, `duration`, `sound`, `comment`) VALUES (36931, 2, 0, 'You will die in shame like your pathetic father.', 12, 0, 100, 0, 0, 0, '');
DELETE FROM `creature_text` WHERE `entry`=36931 AND `groupid`=3 AND `id`=0;
INSERT INTO `creature_text` (`entry`, `groupid`, `id`, `text`, `type`, `language`, `probability`, `emote`, `duration`, `sound`, `comment`) VALUES (36931, 3, 0, 'This isn\'t over, Baine...', 12, 0, 100, 0, 0, 0, '');
DELETE FROM `creature_text` WHERE `entry`=37058 AND `groupid`=0 AND `id`=0;
INSERT INTO `creature_text` (`entry`, `groupid`, `id`, `text`, `type`, `language`, `probability`, `emote`, `duration`, `sound`, `comment`) VALUES (37058, 0, 0, 'So have I, Grimtotem.', 12, 0, 100, 0, 0, 21166, '');
DELETE FROM `creature_text` WHERE `entry`=37058 AND `groupid`=1 AND `id`=0;
INSERT INTO `creature_text` (`entry`, `groupid`, `id`, `text`, `type`, `language`, `probability`, `emote`, `duration`, `sound`, `comment`) VALUES (37058, 1, 0, 'It took a coward\'s poison and the fury of Hellscream to bring my father down.', 12, 0, 100, 0, 0, 21161, '');
DELETE FROM `creature_text` WHERE `entry`=37058 AND `groupid`=2 AND `id`=0;
INSERT INTO `creature_text` (`entry`, `groupid`, `id`, `text`, `type`, `language`, `probability`, `emote`, `duration`, `sound`, `comment`) VALUES (37058, 2, 0, 'WHAT CHANCE HAVE YOU?', 12, 0, 100, 0, 0, 21162, '');
DELETE FROM `creature_text` WHERE `entry`=37058 AND `groupid`=3 AND `id`=0;
INSERT INTO `creature_text` (`entry`, `groupid`, `id`, `text`, `type`, `language`, `probability`, `emote`, `duration`, `sound`, `comment`) VALUES (37058, 3, 0, 'It is for you.', 12, 0, 100, 0, 0, 21163, '');
DELETE FROM `creature_text` WHERE `entry`=37058 AND `groupid`=4 AND `id`=0;
INSERT INTO `creature_text` (`entry`, `groupid`, `id`, `text`, `type`, `language`, `probability`, `emote`, `duration`, `sound`, `comment`) VALUES (37058, 4, 0, 'We\'re done here. Mulgore will no longer suffer the hatred of the Grimtotem.', 12, 0, 100, 0, 0, 0, '');
DELETE FROM `creature_text` WHERE `entry`=37058 AND `groupid`=5 AND `id`=0;
INSERT INTO `creature_text` (`entry`, `groupid`, `id`, `text`, `type`, `language`, `probability`, `emote`, `duration`, `sound`, `comment`) VALUES (37058, 5, 0, 'I will meet you again in Thunder Bluff.', 12, 0, 100, 0, 0, 0, '');