-- 基础信息
local base_info = {
	group_id = 133005010
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
	{ config_id = 10001, gadget_id = 70220042, pos = { x = 1426.003, y = 332.205, z = -2072.449 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 2, area_id = 2 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
}

-- 点位
points = {
	{ config_id = 10004, pos = { x = 1428.712, y = 332.248, z = -2076.978 }, rot = { x = 0.000, y = 315.673, z = 0.000 }, area_id = 2, tag = 2 },
	{ config_id = 10005, pos = { x = 1422.510, y = 332.424, z = -2075.455 }, rot = { x = 0.000, y = 59.277, z = 0.000 }, area_id = 2, tag = 2 },
	{ config_id = 10006, pos = { x = 1430.228, y = 331.854, z = -2069.026 }, rot = { x = 0.000, y = 232.097, z = 0.000 }, area_id = 2, tag = 2 },
	{ config_id = 10007, pos = { x = 1425.316, y = 331.798, z = -2065.929 }, rot = { x = 0.000, y = 186.155, z = 0.000 }, area_id = 2, tag = 2 },
	{ config_id = 10008, pos = { x = 1420.846, y = 332.076, z = -2067.977 }, rot = { x = 0.000, y = 151.129, z = 0.000 }, area_id = 2, tag = 2 }
}

-- 变量
variables = {
}

-- 怪物随机池
monster_pools = {
	{ pool_id = 1004, rand_weight = 100 },
	{ pool_id = 1005, rand_weight = 100 },
	{ pool_id = 1006, rand_weight = 100 },
	{ pool_id = 1007, rand_weight = 100 }
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
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

require "TreasureMapEvent"