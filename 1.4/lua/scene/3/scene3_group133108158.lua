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
	{ config_id = 158001, gadget_id = 70220042, pos = { x = -334.336, y = 200.411, z = -636.727 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 2, area_id = 7 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
}

-- 点位
points = {
	{ config_id = 158004, pos = { x = -331.627, y = 200.165, z = -641.255 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, area_id = 7, tag = 4 },
	{ config_id = 158005, pos = { x = -337.830, y = 200.516, z = -639.733 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, area_id = 7, tag = 4 },
	{ config_id = 158006, pos = { x = -330.111, y = 200.197, z = -633.302 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, area_id = 7, tag = 4 },
	{ config_id = 158007, pos = { x = -335.024, y = 201.017, z = -630.207 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, area_id = 7, tag = 4 },
	{ config_id = 158008, pos = { x = -339.493, y = 201.779, z = -632.256 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, area_id = 7, tag = 4 }
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