-- 基础信息
local base_info = {
	group_id = 246203004
}

-- Trigger变量
local defs = {
	center_point = 4007,
	Portal_Eff = 4009,
	Portal_Trigger = 4010,
	Streaming_Gadget = 4011,
	Region = 4012,
	air_wall = 4013,
	clock = 4020,
	pointer = 4021,
	pointarray = 4
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
	{ config_id = 4009, gadget_id = 70800140, pos = { x = 359.537, y = 200.357, z = 72.220 }, rot = { x = 0.000, y = 267.361, z = 0.000 }, level = 1 },
	{ config_id = 4010, gadget_id = 70800172, pos = { x = 360.430, y = 200.357, z = 72.210 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 4011, gadget_id = 70800138, pos = { x = 363.187, y = 199.496, z = 81.837 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 4013, gadget_id = 70800195, pos = { x = 331.862, y = 200.012, z = 75.650 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 4020, gadget_id = 70800163, pos = { x = 550.900, y = 279.000, z = 102.000 }, rot = { x = 0.000, y = 269.100, z = 0.000 }, level = 1 },
	{ config_id = 4021, gadget_id = 70800164, pos = { x = 534.067, y = 279.000, z = 102.000 }, rot = { x = 0.000, y = 269.100, z = 97.509 }, level = 1, is_use_point_array = true }
}

-- 区域
regions = {
	{ config_id = 4012, shape = RegionShape.SPHERE, radius = 100, pos = { x = 335.162, y = 200.012, z = 67.842 } }
}

-- 触发器
triggers = {
}

-- 点位
points = {
	{ config_id = 4001, pos = { x = 331.865, y = 200.012, z = 75.664 }, rot = { x = 0.000, y = 265.478, z = 0.000 }, tag = 2 },
	{ config_id = 4002, pos = { x = 332.376, y = 200.012, z = 70.683 }, rot = { x = 0.000, y = 265.478, z = 0.000 }, tag = 2 },
	{ config_id = 4003, pos = { x = 331.528, y = 200.012, z = 80.755 }, rot = { x = 0.000, y = 265.478, z = 0.000 }, tag = 2 },
	{ config_id = 4004, pos = { x = 322.741, y = 200.012, z = 75.459 }, rot = { x = 0.000, y = 90.695, z = 0.000 }, tag = 2 },
	{ config_id = 4005, pos = { x = 322.760, y = 200.012, z = 80.465 }, rot = { x = 0.000, y = 90.695, z = 0.000 }, tag = 2 },
	{ config_id = 4006, pos = { x = 322.675, y = 200.012, z = 70.367 }, rot = { x = 0.000, y = 90.695, z = 0.000 }, tag = 2 },
	{ config_id = 4007, pos = { x = 329.075, y = 200.012, z = 75.650 }, rot = { x = 0.000, y = 270.000, z = 0.000 } },
	{ config_id = 4008, pos = { x = 324.226, y = 200.012, z = 75.352 }, rot = { x = 0.000, y = 90.000, z = 0.000 } },
	{ config_id = 4014, pos = { x = 337.661, y = 200.012, z = 75.791 }, rot = { x = 0.000, y = 265.478, z = 0.000 }, tag = 2 },
	{ config_id = 4015, pos = { x = 338.173, y = 200.012, z = 70.810 }, rot = { x = 0.000, y = 265.478, z = 0.000 }, tag = 2 },
	{ config_id = 4016, pos = { x = 337.324, y = 200.012, z = 80.881 }, rot = { x = 0.000, y = 265.478, z = 0.000 }, tag = 2 },
	{ config_id = 4017, pos = { x = 320.319, y = 200.012, z = 75.405 }, rot = { x = 0.000, y = 90.695, z = 0.000 }, tag = 2 },
	{ config_id = 4018, pos = { x = 320.338, y = 200.012, z = 80.410 }, rot = { x = 0.000, y = 90.695, z = 0.000 }, tag = 2 },
	{ config_id = 4019, pos = { x = 320.253, y = 200.012, z = 70.313 }, rot = { x = 0.000, y = 90.695, z = 0.000 }, tag = 2 }
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
		gadgets = { 4009 },
		regions = { 4012 },
		triggers = { },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

require "V2_7/Rogue_Cell"
require "V2_7/Rogue_Terrain_3"