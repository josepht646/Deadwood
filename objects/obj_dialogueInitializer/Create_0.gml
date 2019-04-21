/// @description Insert description here
// You can write your code in this editor

//stage 0: player starts the tutorial
#macro stage_Tutorial 0
//stage 1: player arrives in town
#macro stage_TownArrival 1
//stage 2: player has unlocked, but not completed, level 1
#macro stage_PreLevel1 2
//stage 3: player has completed level 1
#macro stage_PostLevel1 3
//stage 4: player has unlocked, but not completed, level 2
#macro stage_PreLevel2 4
//stage 5: player has completed level 2
#macro stage_PostLevel2 5
//stage 6: player has unlocked, but not completed, the boss level
#macro stage_PreBoss 6
//stage 7: player has completed the boss level
#macro stage_PostBoss 7
//stage 8: player has been thanked by the elder
#macro stage_endgame 8

//sidequest:
//stage 0: player has not started side quest
#macro sidestage_NotStarted 0
//stage 1: player has started side quest
#macro sidestage_Started 1
//stage 2: player has completed side quest
#macro sidestage_Completed 2
//stage 3: player has been thanked by the cat owner
#macro sidestage_thanked 3

global.mainQuestStage = stage_Tutorial;
global.sideQuestStage = sidestage_NotStarted;

villagersSpokenTo = ds_list_create();