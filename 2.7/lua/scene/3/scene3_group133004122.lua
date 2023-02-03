-- 基础信息
local base_info = {
	group_id = 133004122
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
	{ config_id = 513, gadget_id = 70220016, pos = { x = 2209.403, y = 211.628, z = -931.972 }, rot = { x = 84.545, y = 74.438, z = 240.237 }, level = 2, area_id = 1 },
	{ config_id = 514, gadget_id = 70220016, pos = { x = 2190.909, y = 210.728, z = -888.492 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 2, area_id = 1 },
	{ config_id = 515, gadget_id = 70220016, pos = { x = 2189.983, y = 210.727, z = -888.861 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 2, area_id = 1 },
	{ config_id = 516, gadget_id = 70220016, pos = { x = 2189.455, y = 210.732, z = -887.548 }, rot = { x = 0.000, y = 64.748, z = 0.000 }, level = 2, area_id = 1 },
	{ config_id = 517, gadget_id = 70220016, pos = { x = 2189.868, y = 210.748, z = -885.824 }, rot = { x = 356.201, y = 175.167, z = 358.509 }, level = 2, area_id = 1 },
	{ config_id = 518, gadget_id = 70220016, pos = { x = 2214.781, y = 211.743, z = -931.712 }, rot = { x = 74.855, y = 234.424, z = 269.045 }, level = 2, area_id = 1 },
	{ config_id = 519, gadget_id = 70220016, pos = { x = 2214.259, y = 210.922, z = -932.080 }, rot = { x = 74.855, y = 234.424, z = 269.045 }, level = 2, area_id = 1 },
	{ config_id = 520, gadget_id = 70220016, pos = { x = 2215.103, y = 210.911, z = -931.494 }, rot = { x = 74.855, y = 234.424, z = 269.045 }, level = 2, area_id = 1 },
	{ config_id = 521, gadget_id = 70220016, pos = { x = 2211.923, y = 211.569, z = -932.462 }, rot = { x = 84.546, y = 61.690, z = 240.237 }, level = 2, area_id = 1 },
	{ config_id = 613, gadget_id = 70310009, pos = { x = 2180.910, y = 235.816, z = -448.090 }, rot = { x = 5.213, y = 303.941, z = 357.058 }, level = 15, state = GadgetState.GearStart, area_id = 3 },
	{ config_id = 614, gadget_id = 70310009, pos = { x = 2282.040, y = 276.343, z = -175.260 }, rot = { x = 356.321, y = 79.594, z = 359.767 }, level = 15, state = GadgetState.GearStart, area_id = 3 }
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
		gadgets = { 513, 514, 515, 516, 517, 518, 519, 520, 521, 613, 614 },
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