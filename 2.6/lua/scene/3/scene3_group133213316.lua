-- 基础信息
local base_info = {
	group_id = 133213316
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
	{ config_id = 316001, gadget_id = 70500000, pos = { x = -3306.881, y = 226.411, z = -3262.372 }, rot = { x = 0.000, y = 169.394, z = 0.000 }, level = 27, point_type = 2004, area_id = 12 },
	{ config_id = 316002, gadget_id = 70500000, pos = { x = -3174.311, y = 202.070, z = -3236.564 }, rot = { x = 0.000, y = 296.785, z = 0.000 }, level = 27, point_type = 2001, area_id = 12 },
	{ config_id = 316003, gadget_id = 70500000, pos = { x = -3113.480, y = 200.805, z = -3265.155 }, rot = { x = 0.000, y = 124.017, z = 0.000 }, level = 27, point_type = 2004, area_id = 12 },
	{ config_id = 316004, gadget_id = 70500000, pos = { x = -3085.203, y = 201.830, z = -3154.193 }, rot = { x = 0.000, y = 130.336, z = 0.000 }, level = 27, point_type = 2001, area_id = 12 },
	{ config_id = 316005, gadget_id = 70500000, pos = { x = -3088.261, y = 202.327, z = -3204.766 }, rot = { x = 0.000, y = 133.027, z = 0.000 }, level = 27, point_type = 2004, area_id = 12 },
	{ config_id = 316006, gadget_id = 70290001, pos = { x = -3142.683, y = 201.572, z = -3241.239 }, rot = { x = 0.000, y = 124.017, z = 0.000 }, level = 27, area_id = 12 },
	{ config_id = 316007, gadget_id = 70500000, pos = { x = -3142.361, y = 202.141, z = -3241.478 }, rot = { x = 0.000, y = 124.017, z = 0.000 }, level = 27, point_type = 3002, owner = 316006, area_id = 12 },
	{ config_id = 316008, gadget_id = 70500000, pos = { x = -3142.975, y = 202.427, z = -3240.964 }, rot = { x = 0.000, y = 124.017, z = 0.000 }, level = 27, point_type = 3002, owner = 316006, area_id = 12 },
	{ config_id = 316009, gadget_id = 70500000, pos = { x = -3142.919, y = 202.839, z = -3241.404 }, rot = { x = 0.000, y = 124.017, z = 0.000 }, level = 27, point_type = 3002, owner = 316006, area_id = 12 },
	{ config_id = 316010, gadget_id = 70290001, pos = { x = -3319.942, y = 201.282, z = -3271.127 }, rot = { x = 0.000, y = 169.394, z = 0.000 }, level = 27, area_id = 12 },
	{ config_id = 316011, gadget_id = 70500000, pos = { x = -3319.885, y = 201.851, z = -3271.525 }, rot = { x = 0.000, y = 169.394, z = 0.000 }, level = 27, point_type = 3002, owner = 316010, area_id = 12 },
	{ config_id = 316012, gadget_id = 70500000, pos = { x = -3319.951, y = 202.137, z = -3270.726 }, rot = { x = 0.000, y = 169.394, z = 0.000 }, level = 27, point_type = 3002, owner = 316010, area_id = 12 },
	{ config_id = 316013, gadget_id = 70500000, pos = { x = -3320.225, y = 202.549, z = -3271.075 }, rot = { x = 0.000, y = 169.394, z = 0.000 }, level = 27, point_type = 3002, owner = 316010, area_id = 12 },
	{ config_id = 316014, gadget_id = 70290001, pos = { x = -3089.140, y = 200.507, z = -3253.524 }, rot = { x = 0.000, y = 130.336, z = 0.000 }, level = 27, area_id = 12 },
	{ config_id = 316015, gadget_id = 70500000, pos = { x = -3088.845, y = 201.076, z = -3253.796 }, rot = { x = 0.000, y = 130.336, z = 0.000 }, level = 27, point_type = 3002, owner = 316014, area_id = 12 },
	{ config_id = 316016, gadget_id = 70500000, pos = { x = -3089.400, y = 201.362, z = -3253.218 }, rot = { x = 0.000, y = 130.336, z = 0.000 }, level = 27, point_type = 3002, owner = 316014, area_id = 12 },
	{ config_id = 316017, gadget_id = 70500000, pos = { x = -3089.392, y = 201.774, z = -3253.662 }, rot = { x = 0.000, y = 130.336, z = 0.000 }, level = 27, point_type = 3002, owner = 316014, area_id = 12 },
	{ config_id = 316018, gadget_id = 70500000, pos = { x = -3285.594, y = 198.879, z = -3305.498 }, rot = { x = 0.000, y = 192.220, z = 0.000 }, level = 27, point_type = 2037, area_id = 12 },
	{ config_id = 316019, gadget_id = 70500000, pos = { x = -3279.188, y = 197.825, z = -3310.702 }, rot = { x = 0.000, y = 116.750, z = 0.000 }, level = 27, point_type = 2037, area_id = 12 },
	{ config_id = 316020, gadget_id = 70500000, pos = { x = -3293.253, y = 198.703, z = -3211.243 }, rot = { x = 0.000, y = 173.910, z = 0.000 }, level = 27, point_type = 2037, area_id = 12 },
	{ config_id = 316021, gadget_id = 70500000, pos = { x = -3124.083, y = 201.184, z = -3257.101 }, rot = { x = 0.000, y = 185.090, z = 0.000 }, level = 27, point_type = 2038, area_id = 12 },
	{ config_id = 316022, gadget_id = 70500000, pos = { x = -3174.980, y = 200.666, z = -3252.536 }, rot = { x = 0.000, y = 191.530, z = 0.000 }, level = 27, point_type = 2038, area_id = 12 },
	{ config_id = 316023, gadget_id = 70500000, pos = { x = -3204.840, y = 200.633, z = -3297.773 }, rot = { x = 0.000, y = 183.700, z = 0.000 }, level = 27, point_type = 2038, area_id = 12 },
	{ config_id = 316024, gadget_id = 70500000, pos = { x = -3222.739, y = 200.589, z = -3301.438 }, rot = { x = 0.000, y = 92.490, z = 0.000 }, level = 27, point_type = 2038, area_id = 12 },
	{ config_id = 316025, gadget_id = 70500000, pos = { x = -3303.371, y = 202.968, z = -3268.046 }, rot = { x = 0.000, y = 225.746, z = 0.000 }, level = 27, point_type = 1008, area_id = 12 },
	{ config_id = 316026, gadget_id = 70500000, pos = { x = -3300.236, y = 203.430, z = -3265.682 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, point_type = 1008, area_id = 12 },
	{ config_id = 316029, gadget_id = 70290010, pos = { x = -3164.367, y = 205.200, z = -3233.195 }, rot = { x = 11.908, y = 2.787, z = 25.734 }, level = 27, area_id = 12 },
	{ config_id = 316030, gadget_id = 70500000, pos = { x = -3164.367, y = 205.200, z = -3233.195 }, rot = { x = 11.906, y = 2.786, z = 25.733 }, level = 27, point_type = 3006, owner = 316029, area_id = 12 },
	{ config_id = 316031, gadget_id = 70290010, pos = { x = -3160.849, y = 205.324, z = -3226.434 }, rot = { x = 349.539, y = 62.355, z = 19.664 }, level = 27, area_id = 12 },
	{ config_id = 316032, gadget_id = 70500000, pos = { x = -3160.849, y = 205.324, z = -3226.434 }, rot = { x = 349.539, y = 62.351, z = 19.666 }, level = 27, point_type = 3006, owner = 316031, area_id = 12 }
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
		{ config_id = 316027, gadget_id = 70500000, pos = { x = -3164.496, y = 205.327, z = -3233.115 }, rot = { x = 1.703, y = 0.119, z = 7.990 }, level = 27, point_type = 3006, area_id = 12 },
		{ config_id = 316028, gadget_id = 70500000, pos = { x = -3166.993, y = 204.868, z = -3241.255 }, rot = { x = 1.703, y = 0.119, z = 7.990 }, level = 27, point_type = 3006, area_id = 12 }
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
		gadgets = { 316001, 316002, 316003, 316004, 316005, 316006, 316007, 316008, 316009, 316010, 316011, 316012, 316013, 316014, 316015, 316016, 316017, 316018, 316019, 316020, 316021, 316022, 316023, 316024, 316025, 316026, 316029, 316030, 316031, 316032 },
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