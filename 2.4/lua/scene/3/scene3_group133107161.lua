--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 161001, monster_id = 28010301, pos = { x = -256.342, y = 181.811, z = 913.733 }, rot = { x = 0.000, y = 33.435, z = 0.000 }, level = 32, drop_tag = "采集动物", area_id = 8 },
	{ config_id = 161002, monster_id = 28010301, pos = { x = -266.377, y = 180.799, z = 869.350 }, rot = { x = 0.000, y = 85.100, z = 0.000 }, level = 32, drop_tag = "采集动物", area_id = 8 },
	{ config_id = 161003, monster_id = 28010301, pos = { x = -266.929, y = 180.923, z = 871.707 }, rot = { x = 0.000, y = 343.500, z = 0.000 }, level = 32, drop_tag = "采集动物", area_id = 8 }
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
		monsters = { 161001, 161002, 161003 },
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