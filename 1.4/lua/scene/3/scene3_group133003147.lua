--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 584, monster_id = 21010301, pos = { x = 2235.566, y = 231.858, z = -1263.523 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 12, drop_tag = "丘丘人", area_id = 1 },
	{ config_id = 585, monster_id = 21010201, pos = { x = 2234.427, y = 231.762, z = -1260.463 }, rot = { x = 0.000, y = 175.753, z = 0.000 }, level = 12, drop_tag = "丘丘人", area_id = 1 }
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
		monsters = { 584, 585 },
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