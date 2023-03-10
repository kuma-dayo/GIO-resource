-- 基础信息
local base_info = {
	group_id = 199002024
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
	{ config_id = 24001, gadget_id = 70500000, pos = { x = 411.101, y = 121.084, z = -603.507 }, rot = { x = 0.000, y = 320.695, z = 0.000 }, level = 1, point_type = 2004, area_id = 401 },
	{ config_id = 24002, gadget_id = 70500000, pos = { x = 330.276, y = 123.068, z = -713.653 }, rot = { x = 0.000, y = 105.430, z = 0.000 }, level = 1, point_type = 2001, area_id = 401 },
	{ config_id = 24003, gadget_id = 70500000, pos = { x = 424.019, y = 121.264, z = -749.363 }, rot = { x = 0.000, y = 121.573, z = 0.000 }, level = 1, point_type = 2004, area_id = 401 },
	{ config_id = 24004, gadget_id = 70500000, pos = { x = 457.555, y = 122.210, z = -746.933 }, rot = { x = 0.000, y = 220.874, z = 0.000 }, level = 1, point_type = 2004, area_id = 401 },
	{ config_id = 24005, gadget_id = 70500000, pos = { x = 375.500, y = 121.134, z = -623.151 }, rot = { x = 0.000, y = 324.281, z = 0.000 }, level = 1, point_type = 2001, area_id = 401 },
	{ config_id = 24006, gadget_id = 70500000, pos = { x = 552.185, y = 120.646, z = -678.354 }, rot = { x = 0.000, y = 135.141, z = 0.000 }, level = 1, point_type = 2004, area_id = 401 },
	{ config_id = 24007, gadget_id = 70500000, pos = { x = 423.112, y = 122.505, z = -621.155 }, rot = { x = 0.000, y = 64.403, z = 0.000 }, level = 1, point_type = 2004, area_id = 401 },
	{ config_id = 24008, gadget_id = 70500000, pos = { x = 435.934, y = 121.406, z = -755.666 }, rot = { x = 0.000, y = 190.331, z = 0.000 }, level = 1, point_type = 2004, area_id = 401 },
	{ config_id = 24009, gadget_id = 70500000, pos = { x = 329.074, y = 121.166, z = -728.859 }, rot = { x = 0.000, y = 248.864, z = 0.000 }, level = 1, point_type = 2001, area_id = 401 },
	{ config_id = 24010, gadget_id = 70500000, pos = { x = 448.875, y = 119.197, z = -711.430 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, point_type = 2033, area_id = 401 },
	{ config_id = 24011, gadget_id = 70500000, pos = { x = 445.304, y = 118.846, z = -708.956 }, rot = { x = 0.000, y = 123.845, z = 0.000 }, level = 1, point_type = 2033, area_id = 401 },
	{ config_id = 24012, gadget_id = 70290008, pos = { x = 432.069, y = 119.993, z = -624.659 }, rot = { x = 2.294, y = 62.262, z = 354.766 }, level = 1, area_id = 401 },
	{ config_id = 24013, gadget_id = 70500000, pos = { x = 432.069, y = 119.993, z = -624.659 }, rot = { x = 2.294, y = 62.256, z = 354.766 }, level = 1, point_type = 3008, owner = 24012, area_id = 401 },
	{ config_id = 24014, gadget_id = 70290008, pos = { x = 399.674, y = 120.134, z = -662.238 }, rot = { x = 0.000, y = 267.830, z = 0.000 }, level = 1, area_id = 401 },
	{ config_id = 24015, gadget_id = 70500000, pos = { x = 399.674, y = 120.134, z = -662.238 }, rot = { x = 0.000, y = 267.833, z = 0.000 }, level = 1, point_type = 3008, owner = 24014, area_id = 401 },
	{ config_id = 24018, gadget_id = 70290010, pos = { x = 449.931, y = 120.246, z = -774.008 }, rot = { x = 2.681, y = 0.063, z = 2.684 }, level = 1, area_id = 401 },
	{ config_id = 24019, gadget_id = 70500000, pos = { x = 449.931, y = 120.246, z = -774.008 }, rot = { x = 2.681, y = 0.063, z = 2.684 }, level = 1, point_type = 3006, owner = 24018, area_id = 401 },
	{ config_id = 24020, gadget_id = 70290010, pos = { x = 444.995, y = 120.044, z = -774.731 }, rot = { x = 0.000, y = 23.215, z = 0.000 }, level = 1, area_id = 401 },
	{ config_id = 24021, gadget_id = 70500000, pos = { x = 444.995, y = 120.044, z = -774.731 }, rot = { x = 0.000, y = 23.218, z = 0.000 }, level = 1, point_type = 3006, owner = 24020, area_id = 401 }
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
	gadgets = {
		{ config_id = 24016, gadget_id = 70290010, pos = { x = 443.726, y = 119.964, z = -779.320 }, rot = { x = 0.000, y = 312.984, z = 0.000 }, level = 1, area_id = 401 },
		{ config_id = 24017, gadget_id = 70500000, pos = { x = 443.726, y = 119.964, z = -779.320 }, rot = { x = 0.000, y = 312.985, z = 0.000 }, level = 1, point_type = 3006, owner = 24016, area_id = 401 }
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
		monsters = { },
		gadgets = { 24001, 24002, 24003, 24004, 24005, 24006, 24007, 24008, 24009, 24010, 24011, 24012, 24013, 24014, 24015, 24018, 24019, 24020, 24021 },
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