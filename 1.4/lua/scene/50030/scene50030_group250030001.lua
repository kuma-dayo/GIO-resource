-- Trigger变量
local defs = {
	group_id = 250030001,
	gear_list = {70360001,70360002,70900365,70900366,70900367,70900368,70900369},
	option_list = {41,42,43,44,45},
	option_points = {15,20,25,30,35},
	monster_points = 10,
	max_points = 100,
	fundation_id = 70350145,
	challange_group_id = 250030011
}

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
	{ config_id = 1002, gadget_id = 70350145, pos = { x = 11.483, y = 0.540, z = -20.168 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 1 },
	{ config_id = 1003, gadget_id = 70350145, pos = { x = 38.468, y = 0.502, z = -13.364 }, rot = { x = 0.000, y = 180.000, z = 0.000 }, level = 1 },
	{ config_id = 1004, gadget_id = 70350145, pos = { x = 11.278, y = 0.508, z = -13.596 }, rot = { x = 0.000, y = 180.000, z = 0.000 }, level = 1 },
	{ config_id = 1005, gadget_id = 70350145, pos = { x = 25.177, y = 0.503, z = -13.411 }, rot = { x = 0.000, y = 180.000, z = 0.000 }, level = 1 },
	{ config_id = 1006, gadget_id = 70350145, pos = { x = 38.360, y = 0.504, z = -20.303 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 1 },
	{ config_id = 1007, gadget_id = 70350145, pos = { x = 32.344, y = 0.540, z = -20.493 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 1008, gadget_id = 70350145, pos = { x = 25.054, y = 0.504, z = -20.561 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 1 },
	{ config_id = 1009, gadget_id = 70350145, pos = { x = 18.620, y = 0.515, z = -13.562 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 1010, gadget_id = 70350145, pos = { x = 18.931, y = 0.540, z = -20.612 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 1011, gadget_id = 70350145, pos = { x = 32.230, y = 0.506, z = -13.315 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
}

-- 点位
points = {
	{ config_id = 1001, pos = { x = 11.483, y = 0.540, z = -20.168 }, rot = { x = 0.000, y = 90.000, z = 0.000 } },
	{ config_id = 1014, pos = { x = 38.468, y = 0.502, z = -13.364 }, rot = { x = 0.000, y = 180.000, z = 0.000 } },
	{ config_id = 1015, pos = { x = 11.278, y = 0.508, z = -13.596 }, rot = { x = 0.000, y = 180.000, z = 0.000 } },
	{ config_id = 1016, pos = { x = 25.177, y = 0.503, z = -13.411 }, rot = { x = 0.000, y = 180.000, z = 0.000 } },
	{ config_id = 1017, pos = { x = 38.360, y = 0.504, z = -20.303 }, rot = { x = 0.000, y = 90.000, z = 0.000 } },
	{ config_id = 1018, pos = { x = 32.344, y = 0.540, z = -20.493 }, rot = { x = 0.000, y = 90.000, z = 0.000 } },
	{ config_id = 1019, pos = { x = 25.054, y = 0.504, z = -20.561 }, rot = { x = 0.000, y = 90.000, z = 0.000 } },
	{ config_id = 1020, pos = { x = 18.620, y = 0.515, z = -13.562 }, rot = { x = 0.000, y = 180.000, z = 0.000 } },
	{ config_id = 1021, pos = { x = 18.931, y = 0.540, z = -20.612 }, rot = { x = 0.000, y = 90.000, z = 0.000 } },
	{ config_id = 1022, pos = { x = 32.230, y = 0.506, z = -13.315 }, rot = { x = 0.000, y = 180.000, z = 0.000 } }
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
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

require "TowerDefense_Gear"