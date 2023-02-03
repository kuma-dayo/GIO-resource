-- 基础信息
local base_info = {
	group_id = 133220226
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 226001, gadget_id = 70220069, pos = { x = -2737.362, y = 231.658, z = -4433.205 }, rot = { x = 0.000, y = 300.244, z = 0.000 }, level = 27, area_id = 11 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
}

-- 点位
points = {
	{ config_id = 226002, pos = { x = -2730.508, y = 231.791, z = -4436.452 }, rot = { x = 0.000, y = 255.917, z = 0.000 }, area_id = 11, tag = 8 },
	{ config_id = 226003, pos = { x = -2735.890, y = 230.225, z = -4441.930 }, rot = { x = 0.000, y = 359.521, z = 0.000 }, area_id = 11, tag = 8 },
	{ config_id = 226004, pos = { x = -2740.076, y = 230.140, z = -4438.402 }, rot = { x = 0.000, y = 29.290, z = 0.000 }, area_id = 11, tag = 8 },
	{ config_id = 226005, pos = { x = -2731.731, y = 231.085, z = -4440.239 }, rot = { x = 0.000, y = 325.233, z = 0.000 }, area_id = 11, tag = 8 },
	{ config_id = 226006, pos = { x = -2742.827, y = 230.455, z = -4436.798 }, rot = { x = 0.000, y = 91.373, z = 0.000 }, area_id = 11, tag = 8 }
}

-- 变量
variables = {
}

-- 怪物随机池
monster_pools = {
	{ pool_id = 1008, rand_weight = 100 },
	{ pool_id = 1009, rand_weight = 100 }
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
		monsters = { },
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

require "V2_0/TreasureMapEventV2"