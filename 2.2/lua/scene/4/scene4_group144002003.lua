--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 3001, monster_id = 21010701, pos = { x = 372.221, y = 121.052, z = -478.575 }, rot = { x = 0.000, y = 327.011, z = 0.000 }, level = 20, drop_tag = "丘丘人", disableWander = true, area_id = 101 },
	{ config_id = 3004, monster_id = 21010701, pos = { x = 368.567, y = 120.894, z = -472.034 }, rot = { x = 0.000, y = 240.822, z = 0.000 }, level = 20, drop_tag = "丘丘人", disableWander = true, area_id = 101 }
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
		monsters = { 3001, 3004 },
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