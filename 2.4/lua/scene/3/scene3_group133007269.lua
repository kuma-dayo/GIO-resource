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
	{ config_id = 269001, gadget_id = 70220042, pos = { x = 2886.562, y = 208.311, z = 243.801 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 2, area_id = 4 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
}

-- 点位
points = {
	{ config_id = 269004, pos = { x = 2889.271, y = 208.317, z = 239.272 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, area_id = 4, tag = 2 },
	{ config_id = 269005, pos = { x = 2883.068, y = 208.388, z = 240.794 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, area_id = 4, tag = 2 },
	{ config_id = 269006, pos = { x = 2890.786, y = 208.311, z = 247.226 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, area_id = 4, tag = 2 },
	{ config_id = 269007, pos = { x = 2885.874, y = 208.259, z = 250.320 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, area_id = 4, tag = 2 },
	{ config_id = 269008, pos = { x = 2881.404, y = 208.233, z = 248.272 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, area_id = 4, tag = 2 }
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