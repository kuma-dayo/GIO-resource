--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 181001, monster_id = 20011401, pos = { x = 808.924, y = 215.204, z = -80.255 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 25, drop_tag = "史莱姆", area_id = 9 },
	{ config_id = 181002, monster_id = 20011401, pos = { x = 813.662, y = 217.342, z = -84.198 }, rot = { x = 0.000, y = 196.966, z = 0.000 }, level = 25, drop_tag = "史莱姆", area_id = 9 }
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
		monsters = { 181001, 181002 },
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