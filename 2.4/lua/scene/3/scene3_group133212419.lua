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
	{ config_id = 419001, gadget_id = 70220069, pos = { x = -3427.545, y = 203.130, z = -2168.391 }, rot = { x = 0.000, y = 170.423, z = 0.000 }, level = 27, area_id = 13 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
}

-- 点位
points = {
	{ config_id = 419002, pos = { x = -3429.877, y = 202.791, z = -2162.703 }, rot = { x = 0.000, y = 126.096, z = 0.000 }, area_id = 13, tag = 8 },
	{ config_id = 419003, pos = { x = -3422.225, y = 201.655, z = -2163.328 }, rot = { x = 0.000, y = 229.700, z = 0.000 }, area_id = 13, tag = 8 },
	{ config_id = 419004, pos = { x = -3421.287, y = 201.806, z = -2166.837 }, rot = { x = 0.000, y = 259.469, z = 0.000 }, area_id = 13, tag = 8 },
	{ config_id = 419005, pos = { x = -3426.195, y = 202.162, z = -2161.213 }, rot = { x = 0.000, y = 195.412, z = 0.000 }, area_id = 13, tag = 8 },
	{ config_id = 419006, pos = { x = -3421.713, y = 201.894, z = -2171.941 }, rot = { x = 0.000, y = 321.552, z = 0.000 }, area_id = 13, tag = 8 }
}

-- 变量
variables = {
}

-- 怪物随机池
monster_pools = {
	{ pool_id = 1004, rand_weight = 100 },
	{ pool_id = 1005, rand_weight = 100 },
	{ pool_id = 1006, rand_weight = 100 },
	{ pool_id = 1007, rand_weight = 100 }
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