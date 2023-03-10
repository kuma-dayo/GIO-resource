-- 基础信息
local base_info = {
	group_id = 133102136
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 136001, monster_id = 28040103, pos = { x = 1869.755, y = 205.348, z = 775.887 }, rot = { x = 0.000, y = 275.318, z = 0.000 }, level = 18, drop_tag = "水族", area_id = 5 },
	{ config_id = 136002, monster_id = 28040102, pos = { x = 1880.486, y = 205.348, z = 777.038 }, rot = { x = 0.000, y = 171.956, z = 0.000 }, level = 18, drop_tag = "水族", area_id = 5 },
	{ config_id = 136003, monster_id = 28040102, pos = { x = 1867.334, y = 205.348, z = 774.433 }, rot = { x = 0.000, y = 171.956, z = 0.000 }, level = 18, drop_tag = "水族", area_id = 5 },
	{ config_id = 136004, monster_id = 28010301, pos = { x = 1865.826, y = 205.977, z = 816.467 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 18, drop_tag = "采集动物", area_id = 5 }
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
		monsters = { 136001, 136002, 136003, 136004 },
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