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
	{ config_id = 161001, gadget_id = 70300086, pos = { x = 800.577, y = 209.577, z = 280.580 }, rot = { x = 0.000, y = 0.000, z = 341.580 }, level = 1, area_id = 102 },
	{ config_id = 161002, gadget_id = 70300086, pos = { x = 795.673, y = 207.895, z = 277.429 }, rot = { x = 352.539, y = 1.984, z = 319.406 }, level = 1, area_id = 102 },
	{ config_id = 161003, gadget_id = 70220011, pos = { x = 804.329, y = 217.545, z = 291.965 }, rot = { x = 0.000, y = 131.681, z = 0.000 }, level = 1, area_id = 102 },
	{ config_id = 161004, gadget_id = 70300086, pos = { x = 798.929, y = 208.389, z = 278.963 }, rot = { x = 352.324, y = 195.056, z = 33.744 }, level = 20, area_id = 102 }
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
		gadgets = { 161001, 161002, 161003, 161004 },
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