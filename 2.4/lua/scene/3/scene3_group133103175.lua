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
	{ config_id = 175001, gadget_id = 70310006, pos = { x = 568.225, y = 244.233, z = 1588.001 }, rot = { x = 0.000, y = 71.984, z = 0.000 }, level = 24, area_id = 6 },
	{ config_id = 175003, gadget_id = 70220013, pos = { x = 567.080, y = 244.272, z = 1585.736 }, rot = { x = 0.000, y = 110.127, z = 0.000 }, level = 24, area_id = 6 }
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
		gadgets = { 175001, 175003 },
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