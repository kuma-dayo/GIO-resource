--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 200001, monster_id = 28030402, pos = { x = 1009.670, y = 252.263, z = -170.746 }, rot = { x = 0.000, y = 81.946, z = 0.000 }, level = 25, drop_tag = "鸟类", area_id = 9 },
	{ config_id = 200003, monster_id = 28030402, pos = { x = 1011.773, y = 252.222, z = -170.621 }, rot = { x = 0.000, y = 71.170, z = 0.000 }, level = 25, drop_tag = "鸟类", area_id = 9 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
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
		monsters = { 200001, 200003 },
		gadgets = { },
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