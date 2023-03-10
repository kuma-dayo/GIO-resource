-- Trigger变量
local defs = {
	group_id = 245004017,
	gear_group_id = 245004001,
	init_building_points = 750,
	route_guide_timer = 5,
	max_escapable_monsters = 20,
	speed_down_gadget = 17040
}

-- DEFS_MISCS
local delay=30

--怪物group的ID
monster_group=245004018
tide_defs_01 ={
        [1] = {guide_routes={1,2}},
        [2] = {guide_routes={1,2}},
        [3] = {guide_routes={1,2}},
        [4] = {guide_routes={1,2}},
        [5] = {guide_routes={1,2}},
}

local challenge_programme={
  [1]=tide_defs_01,
  [2]=tide_defs_01,
  --[3]=tide_defs_01,
  --[4]=tide_defs_01,
  --[5]=tide_defs_01,
  --[6]=tide_defs_01,
}

routes_start_point={
        [1]={start_point={x=106.2,y=-9.669998,z=-55.05},points={1,2,3,4,5,6,7,8,9,10}},
        [2]={start_point={x=106.67,y=-9.638792,z=20.3},points={1,2,3,4,5,6,7,8,9,10}},
       --[3]={start_point={x=136,y=-13.40398,z=-19.5514},points={1,2,3,4,5,6,7,8,9,10}},
}

guide_point_pool={17007,17008,17009,17010,17011,17012,17013,17014,17015,17016,17017,17018,17019,17020,17021,17022,17023,17024,17025,17026,17027,17028,17029,17030,17031,17032,17033,17034,17035,17036,17037,17038}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	[17001] = { config_id = 17001, gadget_id = 70290050, pos = { x = 105.884, y = -6.419, z = -56.548 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	[17002] = { config_id = 17002, gadget_id = 70290051, pos = { x = 136.122, y = -9.497, z = -24.954 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	[17003] = { config_id = 17003, gadget_id = 70290050, pos = { x = 106.494, y = -5.585, z = 20.340 }, rot = { x = 0.000, y = 180.000, z = 0.000 }, level = 1 },
	[17006] = { config_id = 17006, gadget_id = 70290051, pos = { x = 76.633, y = -9.249, z = -4.112 }, rot = { x = 0.000, y = 180.000, z = 0.000 }, level = 1 },
	[17007] = { config_id = 17007, gadget_id = 70350159, pos = { x = 111.070, y = -9.642, z = -56.368 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, is_use_point_array = true },
	[17008] = { config_id = 17008, gadget_id = 70350159, pos = { x = 111.070, y = -9.642, z = -56.368 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, is_use_point_array = true },
	[17009] = { config_id = 17009, gadget_id = 70350159, pos = { x = 111.070, y = -9.642, z = -56.368 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, is_use_point_array = true },
	[17010] = { config_id = 17010, gadget_id = 70350159, pos = { x = 111.070, y = -9.642, z = -56.368 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, is_use_point_array = true },
	[17011] = { config_id = 17011, gadget_id = 70350159, pos = { x = 111.070, y = -9.642, z = -56.368 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, is_use_point_array = true },
	[17012] = { config_id = 17012, gadget_id = 70350159, pos = { x = 111.070, y = -9.642, z = -56.368 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, is_use_point_array = true },
	[17013] = { config_id = 17013, gadget_id = 70350159, pos = { x = 111.070, y = -9.642, z = -56.368 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, is_use_point_array = true },
	[17014] = { config_id = 17014, gadget_id = 70350159, pos = { x = 111.070, y = -9.642, z = -56.368 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, is_use_point_array = true },
	[17015] = { config_id = 17015, gadget_id = 70350159, pos = { x = 111.070, y = -9.642, z = -56.368 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, is_use_point_array = true },
	[17016] = { config_id = 17016, gadget_id = 70350159, pos = { x = 111.070, y = -9.642, z = -56.368 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, is_use_point_array = true },
	[17017] = { config_id = 17017, gadget_id = 70350159, pos = { x = 111.070, y = -9.642, z = -56.368 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, is_use_point_array = true },
	[17018] = { config_id = 17018, gadget_id = 70350159, pos = { x = 111.070, y = -9.642, z = -56.368 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, is_use_point_array = true },
	[17019] = { config_id = 17019, gadget_id = 70350159, pos = { x = 111.070, y = -9.642, z = -56.368 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, is_use_point_array = true },
	[17020] = { config_id = 17020, gadget_id = 70350159, pos = { x = 111.070, y = -9.642, z = -56.368 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, is_use_point_array = true },
	[17021] = { config_id = 17021, gadget_id = 70350159, pos = { x = 111.070, y = -9.642, z = -56.368 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, is_use_point_array = true },
	[17022] = { config_id = 17022, gadget_id = 70350159, pos = { x = 111.070, y = -9.642, z = -56.368 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, is_use_point_array = true },
	[17023] = { config_id = 17023, gadget_id = 70350159, pos = { x = 111.070, y = -9.642, z = -56.368 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, is_use_point_array = true },
	[17024] = { config_id = 17024, gadget_id = 70350159, pos = { x = 111.070, y = -9.642, z = -56.368 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, is_use_point_array = true },
	[17025] = { config_id = 17025, gadget_id = 70350159, pos = { x = 111.070, y = -9.642, z = -56.368 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, is_use_point_array = true },
	[17026] = { config_id = 17026, gadget_id = 70350159, pos = { x = 111.070, y = -9.642, z = -56.368 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, is_use_point_array = true },
	[17027] = { config_id = 17027, gadget_id = 70350159, pos = { x = 111.070, y = -9.642, z = -56.368 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, is_use_point_array = true },
	[17028] = { config_id = 17028, gadget_id = 70350159, pos = { x = 111.070, y = -9.642, z = -56.368 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, is_use_point_array = true },
	[17029] = { config_id = 17029, gadget_id = 70350159, pos = { x = 111.070, y = -9.642, z = -56.368 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, is_use_point_array = true },
	[17030] = { config_id = 17030, gadget_id = 70350159, pos = { x = 111.070, y = -9.642, z = -56.368 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, is_use_point_array = true },
	[17031] = { config_id = 17031, gadget_id = 70350159, pos = { x = 111.070, y = -9.642, z = -56.368 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, is_use_point_array = true },
	[17032] = { config_id = 17032, gadget_id = 70350159, pos = { x = 111.070, y = -9.642, z = -56.368 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, is_use_point_array = true },
	[17033] = { config_id = 17033, gadget_id = 70350159, pos = { x = 111.070, y = -9.642, z = -56.368 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, is_use_point_array = true },
	[17034] = { config_id = 17034, gadget_id = 70350159, pos = { x = 111.070, y = -9.642, z = -56.368 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, is_use_point_array = true },
	[17035] = { config_id = 17035, gadget_id = 70350159, pos = { x = 111.070, y = -9.642, z = -56.368 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, is_use_point_array = true },
	[17036] = { config_id = 17036, gadget_id = 70350159, pos = { x = 111.070, y = -9.642, z = -56.368 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, is_use_point_array = true },
	[17037] = { config_id = 17037, gadget_id = 70350159, pos = { x = 111.070, y = -9.642, z = -56.368 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, is_use_point_array = true },
	[17038] = { config_id = 17038, gadget_id = 70350159, pos = { x = 111.070, y = -9.642, z = -56.368 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, is_use_point_array = true },
	[17039] = { config_id = 17039, gadget_id = 70350176, pos = { x = 106.076, y = -9.631, z = -54.773 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	[17040] = { config_id = 17040, gadget_id = 70350166, pos = { x = 106.363, y = -9.632, z = -10.300 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	[17041] = { config_id = 17041, gadget_id = 70350176, pos = { x = 105.991, y = -9.634, z = 18.952 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	[17042] = { config_id = 17042, gadget_id = 70350176, pos = { x = 136.590, y = -13.399, z = -22.732 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	[17043] = { config_id = 17043, gadget_id = 70350176, pos = { x = 76.397, y = -13.373, z = -5.810 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	[17044] = { config_id = 17044, gadget_id = 70290167, pos = { x = 136.122, y = -13.401, z = -25.752 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	[17045] = { config_id = 17045, gadget_id = 70290167, pos = { x = 76.633, y = -13.376, z = -3.487 }, rot = { x = 0.000, y = 180.000, z = 0.000 }, level = 1 }
}

-- 区域
regions = {
	[17004] = { config_id = 17004, shape = RegionShape.SPHERE, radius = 5, pos = { x = 106.000, y = -7.080, z = 17.992 } }
}

-- 触发器
triggers = {
	{ config_id = 1017004, name = "ENTER_REGION_17004", event = EventType.EVENT_ENTER_REGION, source = "2", condition = "", action = "action_EVENT_ENTER_REGION_17004" }
}

-- 点位
points = {
	{ config_id = 17005, pos = { x = 107.296, y = -9.636, z = -0.803 }, rot = { x = 0.000, y = 0.000, z = 0.000 } }
}

-- 变量
variables = {
}

--================================================================
-- 
-- 初始化配置
-- 
--================================================================

-- 初始化时创建
init_config = {
	suite = 1,
	end_suite = 0,
	rand_suite = false
}

--================================================================
-- 
-- 小组配置
-- 
--================================================================

suites = {
	{
		-- suite_id = 1,
		-- description = ,
		monsters = { },
		gadgets = { 17001, 17002, 17003, 17006, 17039, 17040, 17041, 17042, 17043, 17044, 17045 },
		regions = { 17004 },
		triggers = { "ENTER_REGION_17004" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发操作
function action_EVENT_ENTER_REGION_17004(context, evt)
	ScriptLib.RemoveEntityByConfigId(context, 0, EntityType.MONSTER, evt.param3)
	return 0
end

require "V2_0/TowerDefense_Challenge_V2.0"