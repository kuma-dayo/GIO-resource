-- Trigger变量
local defs = {
	inner_region = 577001,
	related_region = 577001,
	outer_region = 577001
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
}

-- 区域
regions = {
	{ config_id = 577001, shape = RegionShape.SPHERE, radius = 20, pos = { x = -3960.533, y = 200.419, z = -2903.026 }, area_id = 12 }
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
		gadgets = { },
		regions = { 577001 },
		triggers = { },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

require "V2_0/SetPerformanceOptimizationWithRegion_V2.0"