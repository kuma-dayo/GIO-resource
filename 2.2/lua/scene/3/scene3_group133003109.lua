--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 521, monster_id = 21010201, pos = { x = 2144.363, y = 237.495, z = -1547.558 }, rot = { x = 0.000, y = 264.861, z = 0.000 }, level = 9, drop_tag = "丘丘人", disableWander = true, area_id = 1 },
	{ config_id = 532, monster_id = 21010201, pos = { x = 2147.185, y = 237.302, z = -1543.744 }, rot = { x = 0.000, y = 252.058, z = 0.000 }, level = 9, drop_tag = "丘丘人", disableWander = true, area_id = 1 }
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
		monsters = { 521, 532 },
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