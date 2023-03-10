-- 基础信息
local base_info = {
	group_id = 133005002
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
	{ config_id = 2001, gadget_id = 70220042, pos = { x = 1366.014, y = 331.153, z = -2035.303 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 2, area_id = 2 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
}

-- 点位
points = {
	{ config_id = 2004, pos = { x = 1368.723, y = 331.610, z = -2039.830 }, rot = { x = 0.000, y = 315.673, z = 0.000 }, area_id = 2, tag = 2 },
	{ config_id = 2005, pos = { x = 1362.521, y = 331.139, z = -2038.311 }, rot = { x = 0.000, y = 59.277, z = 0.000 }, area_id = 2, tag = 2 },
	{ config_id = 2006, pos = { x = 1370.241, y = 330.790, z = -2031.873 }, rot = { x = 0.000, y = 232.097, z = 0.000 }, area_id = 2, tag = 2 },
	{ config_id = 2007, pos = { x = 1365.326, y = 330.919, z = -2028.785 }, rot = { x = 0.000, y = 186.155, z = 0.000 }, area_id = 2, tag = 2 },
	{ config_id = 2008, pos = { x = 1360.859, y = 330.751, z = -2030.822 }, rot = { x = 0.000, y = 151.129, z = 0.000 }, area_id = 2, tag = 2 }
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