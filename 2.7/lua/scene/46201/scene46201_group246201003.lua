-- 基础信息
local base_info = {
	group_id = 246201003
}

-- Trigger变量
local defs = {
	center_point = 3008,
	air_wall = 3009,
	bridge = 3015
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
	-- 平台C空气墙
	{ config_id = 3009, gadget_id = 70800170, pos = { x = 12.140, y = 49.229, z = 127.680 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, state = GadgetState.ChestOpened },
	{ config_id = 3015, gadget_id = 70800168, pos = { x = 11.980, y = 43.920, z = 101.330 }, rot = { x = -0.001, y = 0.000, z = 0.000 }, level = 1 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
}

-- 点位
points = {
	{ config_id = 3001, pos = { x = 13.534, y = 49.178, z = 127.086 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, tag = 2 },
	{ config_id = 3002, pos = { x = 12.630, y = 49.114, z = 131.198 }, rot = { x = 0.000, y = 124.900, z = 0.000 }, tag = 2 },
	{ config_id = 3003, pos = { x = 12.547, y = 49.140, z = 123.016 }, rot = { x = 0.000, y = 43.500, z = 0.000 }, tag = 2 },
	{ config_id = 3004, pos = { x = 7.104, y = 49.078, z = 122.189 }, rot = { x = 0.000, y = 42.400, z = 0.000 }, tag = 2 },
	{ config_id = 3005, pos = { x = 5.843, y = 49.141, z = 127.323 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, tag = 2 },
	{ config_id = 3006, pos = { x = 7.319, y = 49.143, z = 132.108 }, rot = { x = 0.000, y = 111.411, z = 0.000 }, tag = 2 },
	{ config_id = 3007, pos = { x = 12.920, y = 49.187, z = 118.562 }, rot = { x = 357.786, y = 36.114, z = 359.278 }, tag = 2 },
	{ config_id = 3008, pos = { x = 16.461, y = 49.198, z = 127.182 }, rot = { x = 0.000, y = 0.000, z = 0.000 } },
	{ config_id = 3010, pos = { x = 12.448, y = 49.073, z = 135.484 }, rot = { x = 0.000, y = 129.116, z = 0.000 }, tag = 2 },
	{ config_id = 3011, pos = { x = 18.254, y = 49.126, z = 121.389 }, rot = { x = 0.000, y = 311.300, z = 0.000 }, tag = 2 },
	{ config_id = 3012, pos = { x = 18.355, y = 49.124, z = 132.703 }, rot = { x = 0.000, y = 227.640, z = 0.000 }, tag = 2 },
	{ config_id = 3013, pos = { x = 20.933, y = 49.126, z = 125.421 }, rot = { x = 0.000, y = 270.000, z = 0.000 }, tag = 2 },
	{ config_id = 3014, pos = { x = 20.443, y = 48.484, z = 129.490 }, rot = { x = 0.000, y = 270.000, z = 0.000 }, tag = 2 },
	-- 传送点
	{ config_id = 3016, pos = { x = 14.141, y = 49.224, z = 125.151 }, rot = { x = 0.000, y = 0.000, z = 0.000 } }
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
		gadgets = { 3009, 3015 },
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

require "V2_7/Rogue_Cell"
require "V2_7/Rogue_Terrain_1"