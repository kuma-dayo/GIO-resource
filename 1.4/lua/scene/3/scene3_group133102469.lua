--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 469001, monster_id = 21011201, pos = { x = 1442.428, y = 200.249, z = 148.282 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 16, drop_tag = "丘丘人", disableWander = true, area_id = 5 },
	{ config_id = 469002, monster_id = 21011201, pos = { x = 1448.336, y = 200.500, z = 157.963 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 16, drop_tag = "丘丘人", disableWander = true, area_id = 5 }
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
		monsters = { 469001, 469002 },
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