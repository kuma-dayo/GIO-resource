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
	{ config_id = 224001, gadget_id = 70220042, pos = { x = 1536.205, y = 218.616, z = 1190.497 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 2, area_id = 5 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
}

-- 点位
points = {
	{ config_id = 224004, pos = { x = 1538.915, y = 218.077, z = 1185.970 }, rot = { x = 0.000, y = 315.673, z = 0.000 }, area_id = 5, tag = 4 },
	{ config_id = 224005, pos = { x = 1532.712, y = 217.582, z = 1187.491 }, rot = { x = 0.000, y = 59.277, z = 0.000 }, area_id = 5, tag = 4 },
	{ config_id = 224006, pos = { x = 1540.430, y = 219.752, z = 1193.923 }, rot = { x = 0.000, y = 232.097, z = 0.000 }, area_id = 5, tag = 4 },
	{ config_id = 224007, pos = { x = 1535.517, y = 219.560, z = 1197.017 }, rot = { x = 0.000, y = 186.155, z = 0.000 }, area_id = 5, tag = 4 },
	{ config_id = 224008, pos = { x = 1531.047, y = 218.755, z = 1194.969 }, rot = { x = 0.000, y = 151.129, z = 0.000 }, area_id = 5, tag = 4 }
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