--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 70, monster_id = 20011401, pos = { x = 2878.125, y = 220.493, z = 354.964 }, rot = { x = 0.000, y = 53.412, z = 0.000 }, level = 30, drop_tag = "史莱姆", area_id = 4 },
	{ config_id = 71, monster_id = 20011401, pos = { x = 2876.734, y = 220.397, z = 359.415 }, rot = { x = 0.000, y = 181.666, z = 0.000 }, level = 30, drop_tag = "史莱姆", area_id = 4 }
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
		monsters = { 70, 71 },
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