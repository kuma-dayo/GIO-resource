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
	{ config_id = 2885, gadget_id = 70310006, pos = { x = 1615.785, y = 246.055, z = -1585.568 }, rot = { x = 0.000, y = 18.942, z = 0.000 }, level = 15, state = GadgetState.GearStart, area_id = 2 },
	{ config_id = 2886, gadget_id = 70310001, pos = { x = 1559.250, y = 244.579, z = -1568.880 }, rot = { x = 0.000, y = 240.806, z = 0.000 }, level = 15, area_id = 2 }
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
		gadgets = { 2885, 2886 },
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