--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 480001, monster_id = 20010301, pos = { x = -69.179, y = 261.994, z = 709.147 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 24, drop_tag = "史莱姆", area_id = 8 },
	{ config_id = 480002, monster_id = 20010301, pos = { x = -63.694, y = 261.994, z = 707.663 }, rot = { x = 0.000, y = 29.780, z = 0.000 }, level = 24, drop_tag = "史莱姆", area_id = 8 },
	{ config_id = 480003, monster_id = 20010301, pos = { x = -66.992, y = 261.994, z = 713.510 }, rot = { x = 0.000, y = 165.797, z = 0.000 }, level = 24, drop_tag = "史莱姆", area_id = 8 }
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
		monsters = { 480001, 480002, 480003 },
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