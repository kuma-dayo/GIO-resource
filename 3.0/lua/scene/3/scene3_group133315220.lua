-- 基础信息
local base_info = {
	group_id = 133315220
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 220001, monster_id = 28040101, pos = { x = 202.293, y = 246.500, z = 3009.045 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, drop_tag = "水族", area_id = 20 },
	{ config_id = 220002, monster_id = 28040101, pos = { x = 146.287, y = 246.500, z = 3000.384 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, drop_tag = "水族", area_id = 20 },
	{ config_id = 220003, monster_id = 28040103, pos = { x = 108.193, y = 246.500, z = 2960.598 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, drop_tag = "水族", area_id = 20 },
	{ config_id = 220004, monster_id = 28040103, pos = { x = 71.972, y = 246.500, z = 2942.500 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, drop_tag = "水族", area_id = 20 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 220005, gadget_id = 70540041, pos = { x = 209.513, y = 251.118, z = 2981.052 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 20 },
	{ config_id = 220006, gadget_id = 70500000, pos = { x = 209.781, y = 252.100, z = 2981.281 }, rot = { x = 346.837, y = 4.866, z = 14.014 }, level = 27, point_type = 2051, owner = 220005, area_id = 20 },
	{ config_id = 220007, gadget_id = 70500000, pos = { x = 209.593, y = 251.989, z = 2981.071 }, rot = { x = 344.037, y = 7.209, z = 349.121 }, level = 27, point_type = 2051, owner = 220005, area_id = 20 },
	{ config_id = 220008, gadget_id = 70500000, pos = { x = 209.812, y = 251.741, z = 2980.902 }, rot = { x = 10.767, y = 8.154, z = 14.727 }, level = 27, point_type = 2051, owner = 220005, area_id = 20 },
	{ config_id = 220009, gadget_id = 70500000, pos = { x = 209.232, y = 251.644, z = 2980.987 }, rot = { x = 359.538, y = 0.302, z = 342.000 }, level = 27, point_type = 2051, owner = 220005, area_id = 20 },
	{ config_id = 220010, gadget_id = 70500000, pos = { x = 192.427, y = 253.902, z = 2952.071 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, point_type = 1001, area_id = 20 },
	{ config_id = 220011, gadget_id = 70500000, pos = { x = 187.809, y = 252.904, z = 2951.736 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, point_type = 1002, area_id = 20 },
	{ config_id = 220012, gadget_id = 70500000, pos = { x = 196.823, y = 253.446, z = 2957.547 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, point_type = 1002, area_id = 20 },
	{ config_id = 220013, gadget_id = 70500000, pos = { x = 193.310, y = 255.124, z = 2950.367 }, rot = { x = 0.000, y = 258.515, z = 0.000 }, level = 27, point_type = 1001, area_id = 20 },
	{ config_id = 220014, gadget_id = 70500000, pos = { x = 192.571, y = 253.278, z = 2955.635 }, rot = { x = 0.000, y = 277.254, z = 0.000 }, level = 27, point_type = 1003, area_id = 20 }
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
		monsters = { 220001, 220002, 220003, 220004 },
		gadgets = { 220005, 220006, 220007, 220008, 220009, 220010, 220011, 220012, 220013, 220014 },
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