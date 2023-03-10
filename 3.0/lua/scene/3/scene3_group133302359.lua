-- 基础信息
local base_info = {
	group_id = 133302359
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
	{ config_id = 359001, gadget_id = 70500000, pos = { x = -107.420, y = 253.643, z = 2711.871 }, rot = { x = 0.000, y = 291.201, z = 0.000 }, level = 27, point_type = 2052, area_id = 20 },
	{ config_id = 359002, gadget_id = 70500000, pos = { x = -73.755, y = 242.183, z = 2697.148 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, point_type = 3006, area_id = 20 },
	{ config_id = 359003, gadget_id = 70540041, pos = { x = -76.259, y = 273.260, z = 2721.616 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 20 },
	{ config_id = 359004, gadget_id = 70500000, pos = { x = -75.991, y = 274.242, z = 2721.845 }, rot = { x = 346.837, y = 4.866, z = 14.014 }, level = 27, point_type = 2051, owner = 359003, area_id = 20 },
	{ config_id = 359005, gadget_id = 70500000, pos = { x = -76.179, y = 274.131, z = 2721.635 }, rot = { x = 344.037, y = 7.209, z = 349.121 }, level = 27, point_type = 2051, owner = 359003, area_id = 20 },
	{ config_id = 359006, gadget_id = 70500000, pos = { x = -75.960, y = 273.883, z = 2721.466 }, rot = { x = 10.767, y = 8.154, z = 14.727 }, level = 27, point_type = 2051, owner = 359003, area_id = 20 },
	{ config_id = 359007, gadget_id = 70500000, pos = { x = -76.540, y = 273.786, z = 2721.551 }, rot = { x = 359.538, y = 0.302, z = 342.000 }, level = 27, point_type = 2051, owner = 359003, area_id = 20 },
	{ config_id = 359008, gadget_id = 70500000, pos = { x = -47.336, y = 204.006, z = 2641.282 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, point_type = 3006, area_id = 20 },
	{ config_id = 359009, gadget_id = 70500000, pos = { x = -147.795, y = 201.070, z = 2675.753 }, rot = { x = 0.000, y = 327.805, z = 0.000 }, level = 27, point_type = 3006, area_id = 20 }
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
		monsters = { },
		gadgets = { 359001, 359002, 359003, 359004, 359005, 359006, 359007, 359008, 359009 },
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