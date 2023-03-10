-- 基础信息
local base_info = {
	group_id = 243001013
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
	{ config_id = 13008, gadget_id = 70900205, pos = { x = 40.000, y = 39.602, z = -30.000 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 }
}

-- 区域
regions = {
	{ config_id = 13001, shape = RegionShape.CUBIC, size = { x = 40.000, y = 20.000, z = 35.000 }, pos = { x = 17.670, y = 48.262, z = -3.621 } },
	{ config_id = 13002, shape = RegionShape.CUBIC, size = { x = 35.000, y = 20.000, z = 35.000 }, pos = { x = -37.093, y = 48.262, z = -28.510 } },
	{ config_id = 13003, shape = RegionShape.CUBIC, size = { x = 40.000, y = 20.000, z = 27.000 }, pos = { x = 0.730, y = 48.727, z = -50.034 } },
	{ config_id = 13004, shape = RegionShape.CUBIC, size = { x = 40.000, y = 20.000, z = 27.000 }, pos = { x = -2.804, y = 48.727, z = -77.409 } },
	{ config_id = 13005, shape = RegionShape.CUBIC, size = { x = 35.000, y = 20.000, z = 38.000 }, pos = { x = 74.383, y = 48.727, z = -74.626 } },
	{ config_id = 13006, shape = RegionShape.CUBIC, size = { x = 35.000, y = 20.000, z = 32.000 }, pos = { x = 66.642, y = 48.727, z = -31.111 } },
	{ config_id = 13007, shape = RegionShape.CUBIC, size = { x = 40.000, y = 20.000, z = 35.000 }, pos = { x = 102.321, y = 48.727, z = 3.177 } }
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
		monsters = { },
		gadgets = { 13008 },
		regions = { 13001, 13002, 13003, 13004, 13005, 13006, 13007 },
		triggers = { },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

require "V1_5/Challenge_SetEyePoint"