-- 基础信息
local base_info = {
	group_id = 133004241
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
	{ config_id = 1375, gadget_id = 70310001, pos = { x = 2663.515, y = 220.841, z = -476.626 }, rot = { x = 0.000, y = 282.938, z = 0.000 }, level = 20, state = GadgetState.GearStart, area_id = 4 },
	{ config_id = 1376, gadget_id = 70310001, pos = { x = 2669.434, y = 222.564, z = -476.775 }, rot = { x = 0.000, y = 264.306, z = 0.000 }, level = 20, state = GadgetState.GearStart, area_id = 4 },
	{ config_id = 1378, gadget_id = 70310001, pos = { x = 2679.480, y = 240.849, z = -440.898 }, rot = { x = 0.000, y = 346.810, z = 0.000 }, level = 20, state = GadgetState.GearStart, area_id = 4 }
}

-- 区域
regions = {
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
	rand_suite = true
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
		gadgets = { 1375, 1376, 1378 },
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