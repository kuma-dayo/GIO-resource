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
	{ config_id = 777001, gadget_id = 70220042, pos = { x = 2583.250, y = 215.253, z = -1402.140 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 2, area_id = 1 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
}

-- 点位
points = {
	{ config_id = 777004, pos = { x = 2585.949, y = 215.075, z = -1406.683 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, area_id = 1, tag = 2 },
	{ config_id = 777005, pos = { x = 2579.752, y = 214.814, z = -1405.162 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, area_id = 1, tag = 2 },
	{ config_id = 777006, pos = { x = 2587.473, y = 215.105, z = -1398.725 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, area_id = 1, tag = 2 },
	{ config_id = 777007, pos = { x = 2582.571, y = 216.157, z = -1395.611 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, area_id = 1, tag = 2 },
	{ config_id = 777008, pos = { x = 2578.101, y = 215.415, z = -1397.662 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, area_id = 1, tag = 2 }
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