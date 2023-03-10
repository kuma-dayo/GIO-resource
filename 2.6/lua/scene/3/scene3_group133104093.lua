-- 基础信息
local base_info = {
	group_id = 133104093
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
	{ config_id = 93001, gadget_id = 70220042, pos = { x = 429.039, y = 181.310, z = 808.874 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 2, area_id = 6 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
}

-- 点位
points = {
	{ config_id = 93004, pos = { x = 431.750, y = 180.973, z = 804.346 }, rot = { x = 0.000, y = 315.673, z = 0.000 }, area_id = 6, tag = 4 },
	{ config_id = 93005, pos = { x = 424.044, y = 180.591, z = 806.131 }, rot = { x = 0.000, y = 59.277, z = 0.000 }, area_id = 6, tag = 4 },
	{ config_id = 93006, pos = { x = 433.273, y = 182.996, z = 812.302 }, rot = { x = 0.000, y = 232.097, z = 0.000 }, area_id = 6, tag = 4 },
	{ config_id = 93007, pos = { x = 428.351, y = 181.478, z = 815.394 }, rot = { x = 0.000, y = 186.155, z = 0.000 }, area_id = 6, tag = 4 },
	{ config_id = 93008, pos = { x = 423.882, y = 180.735, z = 813.346 }, rot = { x = 0.000, y = 151.129, z = 0.000 }, area_id = 6, tag = 4 }
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