--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 506001, monster_id = 28030402, pos = { x = 941.606, y = 248.226, z = 777.492 }, rot = { x = 0.000, y = 20.858, z = 0.000 }, level = 19, drop_tag = "鸟类", pose_id = 2, area_id = 6 },
	{ config_id = 506002, monster_id = 28030402, pos = { x = 961.150, y = 243.083, z = 770.363 }, rot = { x = 0.000, y = 149.403, z = 0.000 }, level = 19, drop_tag = "鸟类", pose_id = 2, area_id = 6 },
	{ config_id = 506003, monster_id = 28030401, pos = { x = 953.841, y = 232.773, z = 791.976 }, rot = { x = 0.000, y = 149.756, z = 0.000 }, level = 19, drop_tag = "鸟类", pose_id = 901, area_id = 6 }
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
		monsters = { 506001, 506002, 506003 },
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