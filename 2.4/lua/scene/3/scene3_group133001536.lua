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
	{ config_id = 536001, gadget_id = 70220042, pos = { x = 2043.883, y = 223.512, z = -1570.361 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 2, area_id = 1 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
}

-- 点位
points = {
	{ config_id = 536004, pos = { x = 2046.592, y = 223.972, z = -1574.889 }, rot = { x = 0.000, y = 315.673, z = 0.000 }, area_id = 1, tag = 2 },
	{ config_id = 536005, pos = { x = 2040.389, y = 223.243, z = -1573.367 }, rot = { x = 0.000, y = 59.277, z = 0.000 }, area_id = 1, tag = 2 },
	{ config_id = 536006, pos = { x = 2048.107, y = 224.149, z = -1566.936 }, rot = { x = 0.000, y = 232.097, z = 0.000 }, area_id = 1, tag = 2 },
	{ config_id = 536007, pos = { x = 2043.194, y = 223.832, z = -1563.840 }, rot = { x = 0.000, y = 186.155, z = 0.000 }, area_id = 1, tag = 2 },
	{ config_id = 536008, pos = { x = 2038.724, y = 223.069, z = -1565.888 }, rot = { x = 0.000, y = 151.129, z = 0.000 }, area_id = 1, tag = 2 }
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