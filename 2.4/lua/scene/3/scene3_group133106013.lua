--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 13001, monster_id = 28040101, pos = { x = -445.591, y = 180.950, z = 1114.578 }, rot = { x = 351.717, y = 163.472, z = 50.396 }, level = 32, drop_tag = "水族", area_id = 8 },
	{ config_id = 13002, monster_id = 28040103, pos = { x = -502.730, y = 180.950, z = 1186.895 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, drop_tag = "水族", area_id = 8 },
	{ config_id = 13003, monster_id = 28010301, pos = { x = -429.984, y = 182.462, z = 1159.658 }, rot = { x = 0.000, y = 33.435, z = 0.000 }, level = 32, drop_tag = "采集动物", area_id = 8 },
	{ config_id = 13004, monster_id = 28010301, pos = { x = -442.045, y = 181.197, z = 1177.420 }, rot = { x = 0.000, y = 323.800, z = 0.000 }, level = 32, drop_tag = "采集动物", area_id = 8 },
	{ config_id = 13005, monster_id = 28010301, pos = { x = -441.733, y = 181.899, z = 1191.892 }, rot = { x = 0.000, y = 356.700, z = 0.000 }, level = 32, drop_tag = "采集动物", area_id = 8 },
	{ config_id = 13006, monster_id = 28010301, pos = { x = -469.635, y = 182.188, z = 1220.429 }, rot = { x = 0.000, y = 69.200, z = 0.000 }, level = 32, drop_tag = "采集动物", area_id = 8 }
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
		monsters = { 13001, 13002, 13003, 13004, 13005, 13006 },
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