-- Trigger变量
local defs = {
	gadget_id_1 = 43,
	gadget_id_2 = 6,
	gadget_id_3 = 5,
	gadget_id_4 = 1,
	gadget_id_5 = 4,
	gadget_id_6 = 26
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
	{ config_id = 4, gadget_id = 70380001, pos = { x = 13.118, y = 1.198, z = -10.109 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, route_id = 20007014 },
	{ config_id = 5, gadget_id = 70710010, pos = { x = 5.000, y = 23.000, z = 20.000 }, rot = { x = 0.000, y = 270.000, z = 0.000 }, level = 1, route_id = 3 }
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
		gadgets = { 4, 5 },
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