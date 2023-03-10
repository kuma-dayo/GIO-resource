-- 基础信息
local base_info = {
	group_id = 133106015
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 15001, monster_id = 28040102, pos = { x = -817.115, y = 155.200, z = 1329.846 }, rot = { x = 0.000, y = 167.375, z = 0.000 }, level = 32, drop_tag = "水族", area_id = 8 },
	{ config_id = 15002, monster_id = 28040103, pos = { x = -818.869, y = 155.200, z = 1329.678 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, drop_tag = "水族", area_id = 8 },
	{ config_id = 15003, monster_id = 28010301, pos = { x = -901.755, y = 155.473, z = 1351.018 }, rot = { x = 0.000, y = 37.180, z = 0.000 }, level = 32, drop_tag = "采集动物", area_id = 8 },
	{ config_id = 15004, monster_id = 28010301, pos = { x = -903.726, y = 155.228, z = 1341.891 }, rot = { x = 0.000, y = 67.700, z = 0.000 }, level = 32, drop_tag = "采集动物", area_id = 8 }
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
		monsters = { 15001, 15002, 15003, 15004 },
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