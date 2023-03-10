--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 192001, monster_id = 28040102, pos = { x = -142.182, y = 187.950, z = 404.120 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, drop_tag = "水族", area_id = 200 },
	{ config_id = 192002, monster_id = 28040101, pos = { x = -139.296, y = 187.950, z = 401.426 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, drop_tag = "水族", area_id = 200 },
	{ config_id = 192003, monster_id = 28040101, pos = { x = -141.439, y = 187.950, z = 401.595 }, rot = { x = 0.000, y = 309.787, z = 0.000 }, level = 36, drop_tag = "水族", area_id = 200 },
	{ config_id = 192004, monster_id = 28040102, pos = { x = -211.775, y = 174.000, z = 433.358 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, drop_tag = "水族", area_id = 200 },
	{ config_id = 192005, monster_id = 28040101, pos = { x = -208.889, y = 174.000, z = 430.665 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, drop_tag = "水族", area_id = 200 },
	{ config_id = 192006, monster_id = 28040101, pos = { x = -211.032, y = 174.000, z = 430.834 }, rot = { x = 0.000, y = 309.787, z = 0.000 }, level = 36, drop_tag = "水族", area_id = 200 },
	{ config_id = 192007, monster_id = 28010203, pos = { x = -157.682, y = 177.646, z = 503.864 }, rot = { x = 0.000, y = 267.065, z = 0.000 }, level = 36, drop_tag = "采集动物", area_id = 200 },
	{ config_id = 192008, monster_id = 28010202, pos = { x = -133.784, y = 192.290, z = 383.298 }, rot = { x = 0.000, y = 43.939, z = 0.000 }, level = 36, drop_tag = "采集动物", area_id = 200 },
	{ config_id = 192009, monster_id = 28010201, pos = { x = -117.160, y = 214.611, z = 458.881 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, drop_tag = "采集动物", area_id = 200 }
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
		monsters = { 192001, 192002, 192003, 192004, 192005, 192006, 192007, 192008, 192009 },
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