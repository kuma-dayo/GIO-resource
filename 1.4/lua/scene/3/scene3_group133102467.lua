--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 467001, monster_id = 26060201, pos = { x = 1383.563, y = 205.945, z = 621.771 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 18, drop_tag = "雷萤", area_id = 5 },
	{ config_id = 467002, monster_id = 26060201, pos = { x = 1378.342, y = 205.945, z = 621.490 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 18, drop_tag = "雷萤", area_id = 5 },
	{ config_id = 467003, monster_id = 26060201, pos = { x = 1378.072, y = 205.945, z = 615.717 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 18, drop_tag = "雷萤", area_id = 5 },
	{ config_id = 467004, monster_id = 26060201, pos = { x = 1382.806, y = 205.945, z = 614.429 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 18, drop_tag = "雷萤", area_id = 5 }
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
		monsters = { 467001, 467002, 467003, 467004 },
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