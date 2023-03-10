-- 基础信息
local base_info = {
	group_id = 133213397
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
	{ config_id = 397001, gadget_id = 70220069, pos = { x = -3578.541, y = 200.691, z = -3376.947 }, rot = { x = 0.000, y = 256.581, z = 0.000 }, level = 27, area_id = 12 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
}

-- 点位
points = {
	{ config_id = 397002, pos = { x = -3573.026, y = 201.629, z = -3374.202 }, rot = { x = 0.000, y = 212.254, z = 0.000 }, area_id = 12, tag = 8 },
	{ config_id = 397003, pos = { x = -3573.125, y = 203.117, z = -3381.909 }, rot = { x = 0.000, y = 315.858, z = 0.000 }, area_id = 12, tag = 8 },
	{ config_id = 397004, pos = { x = -3576.523, y = 202.092, z = -3383.076 }, rot = { x = 0.000, y = 345.627, z = 0.000 }, area_id = 12, tag = 8 },
	{ config_id = 397005, pos = { x = -3571.288, y = 202.777, z = -3377.741 }, rot = { x = 0.000, y = 281.570, z = 0.000 }, area_id = 12, tag = 8 },
	{ config_id = 397006, pos = { x = -3581.691, y = 200.657, z = -3383.004 }, rot = { x = 0.000, y = 47.710, z = 0.000 }, area_id = 12, tag = 8 }
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

require "V2_0/TreasureMapEventV2"