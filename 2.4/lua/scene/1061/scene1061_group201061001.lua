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
	{ config_id = 1001, gadget_id = 70500000, pos = { x = 14.348, y = 0.584, z = 0.854 }, rot = { x = 0.000, y = 277.260, z = 0.000 }, level = 1, point_type = 9247, isOneoff = true, room = 1 },
	{ config_id = 1002, gadget_id = 70500000, pos = { x = 14.339, y = 0.886, z = -0.458 }, rot = { x = 0.000, y = 273.700, z = 0.000 }, level = 1, point_type = 9257, isOneoff = true, room = 1 },
	{ config_id = 1003, gadget_id = 70500000, pos = { x = 14.400, y = 0.886, z = 2.726 }, rot = { x = 0.000, y = 273.700, z = 0.000 }, level = 1, point_type = 9265, isOneoff = true, room = 1 }
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
		gadgets = { 1001, 1002, 1003 },
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