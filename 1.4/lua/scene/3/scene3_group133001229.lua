--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 990, monster_id = 23030101, pos = { x = 1426.702, y = 312.321, z = -1217.910 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 12, drop_tag = "召唤师", area_id = 2 },
	{ config_id = 229001, monster_id = 28030101, pos = { x = 1382.076, y = 322.924, z = -1188.996 }, rot = { x = 0.000, y = 306.678, z = 0.000 }, level = 35, drop_tag = "鸟类", pose_id = 2, area_id = 10 },
	{ config_id = 229002, monster_id = 28030101, pos = { x = 1382.195, y = 322.819, z = -1189.926 }, rot = { x = 0.000, y = 262.558, z = 0.000 }, level = 35, drop_tag = "鸟类", pose_id = 2, area_id = 10 },
	{ config_id = 229003, monster_id = 28030101, pos = { x = 1392.090, y = 321.333, z = -1194.145 }, rot = { x = 0.000, y = 70.142, z = 0.000 }, level = 35, drop_tag = "鸟类", pose_id = 2, area_id = 10 }
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
		monsters = { 990, 229001, 229002, 229003 },
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