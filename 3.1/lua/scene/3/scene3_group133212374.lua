-- 基础信息
local base_info = {
	group_id = 133212374
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 374001, monster_id = 25080301, pos = { x = -3889.266, y = 240.084, z = -2540.628 }, rot = { x = 0.000, y = 178.861, z = 0.000 }, level = 27, drop_tag = "浪人武士", disableWander = true, affix = { 1101 }, pose_id = 1004, area_id = 13 },
	{ config_id = 374002, monster_id = 25080101, pos = { x = -3885.703, y = 238.562, z = -2542.213 }, rot = { x = 0.000, y = 241.955, z = 0.000 }, level = 27, drop_tag = "浪人武士", disableWander = true, affix = { 1101 }, pose_id = 1003, area_id = 13 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 374003, gadget_id = 70310004, pos = { x = -3888.263, y = 239.612, z = -2542.670 }, rot = { x = 355.508, y = 6.396, z = 349.812 }, level = 27, state = GadgetState.GearStart, area_id = 13 },
	{ config_id = 374004, gadget_id = 70500000, pos = { x = -3825.883, y = 225.256, z = -2556.032 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, point_type = 2001, area_id = 13 },
	{ config_id = 374005, gadget_id = 70500000, pos = { x = -3791.554, y = 215.891, z = -2575.619 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, point_type = 2001, area_id = 13 },
	{ config_id = 374006, gadget_id = 70500000, pos = { x = -3879.031, y = 237.461, z = -2539.812 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, point_type = 2001, area_id = 13 },
	{ config_id = 374007, gadget_id = 70500000, pos = { x = -3898.349, y = 249.859, z = -2517.577 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, point_type = 2001, area_id = 13 },
	{ config_id = 374008, gadget_id = 70500000, pos = { x = -3865.744, y = 251.491, z = -2493.436 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, point_type = 2001, area_id = 13 },
	{ config_id = 374009, gadget_id = 70500000, pos = { x = -3812.316, y = 252.938, z = -2460.421 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, point_type = 2001, area_id = 13 },
	{ config_id = 374010, gadget_id = 70500000, pos = { x = -3806.418, y = 226.955, z = -2529.201 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, point_type = 2001, area_id = 13 },
	{ config_id = 374011, gadget_id = 70500000, pos = { x = -3829.427, y = 235.194, z = -2515.226 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, point_type = 2001, area_id = 13 },
	{ config_id = 374012, gadget_id = 70500000, pos = { x = -3981.205, y = 276.006, z = -2461.025 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, point_type = 2001, area_id = 13 },
	{ config_id = 374013, gadget_id = 70500000, pos = { x = -3959.035, y = 269.742, z = -2477.543 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, point_type = 2001, area_id = 13 },
	{ config_id = 374014, gadget_id = 70500000, pos = { x = -3937.143, y = 262.178, z = -2498.235 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, point_type = 2001, area_id = 13 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
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
		monsters = { 374001, 374002 },
		gadgets = { 374003, 374004, 374005, 374006, 374007, 374008, 374009, 374010, 374011, 374012, 374013, 374014 },
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