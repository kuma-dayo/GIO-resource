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
	{ config_id = 43001, gadget_id = 70220014, pos = { x = -908.169, y = 228.208, z = 667.381 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, area_id = 8 },
	{ config_id = 43002, gadget_id = 70220014, pos = { x = -906.693, y = 227.743, z = 665.437 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, area_id = 8 },
	{ config_id = 43003, gadget_id = 70220014, pos = { x = -906.638, y = 227.753, z = 668.106 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, area_id = 8 },
	{ config_id = 43004, gadget_id = 70220014, pos = { x = -909.685, y = 224.733, z = 696.355 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, area_id = 8 },
	{ config_id = 43005, gadget_id = 70220014, pos = { x = -908.538, y = 224.734, z = 695.977 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, area_id = 8 },
	{ config_id = 43006, gadget_id = 70220014, pos = { x = -907.604, y = 224.733, z = 697.900 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, area_id = 8 },
	{ config_id = 43007, gadget_id = 70211001, pos = { x = -909.940, y = 227.720, z = 673.087 }, rot = { x = 359.248, y = 151.938, z = 16.655 }, level = 26, drop_tag = "战斗低级璃月", isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 8 },
	{ config_id = 43008, gadget_id = 70211001, pos = { x = -920.009, y = 224.669, z = 707.899 }, rot = { x = 1.154, y = 168.063, z = 3.618 }, level = 26, drop_tag = "战斗低级璃月", isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 8 }
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
		gadgets = { 43001, 43002, 43003, 43004, 43005, 43006, 43007, 43008 },
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