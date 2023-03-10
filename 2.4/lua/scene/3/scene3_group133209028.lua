--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 28001, monster_id = 28040101, pos = { x = -2617.021, y = 200.002, z = -4093.818 }, rot = { x = 8.671, y = 358.846, z = 6.748 }, level = 27, drop_tag = "水族", area_id = 11 },
	{ config_id = 28003, monster_id = 28040103, pos = { x = -2719.002, y = 200.000, z = -3927.278 }, rot = { x = 0.000, y = 33.374, z = 0.000 }, level = 27, drop_tag = "水族", area_id = 11 },
	{ config_id = 28004, monster_id = 28010104, pos = { x = -2603.451, y = 200.342, z = -3923.920 }, rot = { x = 0.000, y = 78.478, z = 0.000 }, level = 27, drop_tag = "采集动物", isOneoff = true, area_id = 11 },
	{ config_id = 28005, monster_id = 28010104, pos = { x = -2586.347, y = 200.598, z = -3917.215 }, rot = { x = 0.000, y = 272.313, z = 0.000 }, level = 27, drop_tag = "采集动物", isOneoff = true, area_id = 11 },
	{ config_id = 28006, monster_id = 28010104, pos = { x = -2610.952, y = 200.288, z = -3994.742 }, rot = { x = 0.000, y = 272.313, z = 0.000 }, level = 27, drop_tag = "采集动物", isOneoff = true, area_id = 11 }
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

-- 废弃数据
garbages = {
	monsters = {
		{ config_id = 28002, monster_id = 28040103, pos = { x = -2742.344, y = 201.720, z = -4028.378 }, rot = { x = 0.000, y = 33.374, z = 0.000 }, level = 27, drop_tag = "水族", area_id = 11 }
	}
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
		monsters = { 28001, 28003, 28004, 28005, 28006 },
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