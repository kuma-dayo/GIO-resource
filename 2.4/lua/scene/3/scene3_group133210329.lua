--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 329001, monster_id = 28010204, pos = { x = -3468.624, y = 204.177, z = -828.941 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, drop_tag = "采集动物", area_id = 17 },
	{ config_id = 329002, monster_id = 28010204, pos = { x = -3456.865, y = 199.998, z = -858.949 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, drop_tag = "采集动物", area_id = 17 },
	{ config_id = 329003, monster_id = 28010204, pos = { x = -3457.159, y = 205.729, z = -870.144 }, rot = { x = 0.000, y = 101.016, z = 0.000 }, level = 30, drop_tag = "采集动物", disableWander = true, area_id = 17 },
	{ config_id = 329004, monster_id = 28010206, pos = { x = -3451.485, y = 206.571, z = -870.315 }, rot = { x = 0.000, y = 162.020, z = 0.000 }, level = 30, drop_tag = "采集动物", disableWander = true, area_id = 17 },
	{ config_id = 329005, monster_id = 28010204, pos = { x = -3451.541, y = 206.489, z = -870.802 }, rot = { x = 0.000, y = 25.452, z = 0.000 }, level = 30, drop_tag = "采集动物", disableWander = true, area_id = 17 }
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
		monsters = { 329001, 329002, 329003, 329004, 329005 },
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