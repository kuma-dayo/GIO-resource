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
	{ config_id = 34001, gadget_id = 70500000, pos = { x = 711.303, y = 238.051, z = -700.860 }, rot = { x = 0.000, y = 143.884, z = 0.000 }, level = 30, point_type = 2031, area_id = 10 },
	{ config_id = 34002, gadget_id = 70500000, pos = { x = 654.926, y = 200.400, z = -764.400 }, rot = { x = 0.000, y = 288.968, z = 0.000 }, level = 30, point_type = 2031, area_id = 10 }
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
		gadgets = { 34001, 34002 },
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