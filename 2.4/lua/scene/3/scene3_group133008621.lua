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
	{ config_id = 621001, gadget_id = 70310015, pos = { x = 999.906, y = 569.230, z = -844.721 }, rot = { x = 1.252, y = 5.970, z = 5.211 }, level = 30, state = GadgetState.GearStart, area_id = 10 },
	{ config_id = 621002, gadget_id = 70310015, pos = { x = 980.695, y = 610.786, z = -923.770 }, rot = { x = 353.662, y = 359.728, z = 0.646 }, level = 30, area_id = 10 },
	{ config_id = 621003, gadget_id = 70310015, pos = { x = 969.783, y = 617.789, z = -879.350 }, rot = { x = 353.662, y = 359.728, z = 0.646 }, level = 30, area_id = 10 },
	{ config_id = 621004, gadget_id = 70310015, pos = { x = 978.446, y = 586.953, z = -855.406 }, rot = { x = 7.111, y = 352.427, z = 351.745 }, level = 30, area_id = 10 },
	{ config_id = 621005, gadget_id = 70310015, pos = { x = 982.459, y = 603.081, z = -878.768 }, rot = { x = 357.756, y = 3.723, z = 350.140 }, level = 30, area_id = 10 },
	{ config_id = 621006, gadget_id = 70310015, pos = { x = 1013.731, y = 621.551, z = -926.489 }, rot = { x = 353.662, y = 359.728, z = 0.646 }, level = 30, area_id = 10 }
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
		gadgets = { 621001, 621002, 621003, 621004, 621005, 621006 },
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