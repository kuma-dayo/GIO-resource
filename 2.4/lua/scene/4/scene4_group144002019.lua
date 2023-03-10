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
	{ config_id = 19001, gadget_id = 70500000, pos = { x = 411.101, y = 121.117, z = -603.507 }, rot = { x = 0.000, y = 320.695, z = 0.000 }, level = 1, point_type = 2004, area_id = 101 },
	{ config_id = 19002, gadget_id = 70500000, pos = { x = 330.276, y = 123.066, z = -713.652 }, rot = { x = 0.000, y = 105.430, z = 0.000 }, level = 1, point_type = 2001, area_id = 101 },
	{ config_id = 19003, gadget_id = 70500000, pos = { x = 424.019, y = 121.308, z = -749.363 }, rot = { x = 0.000, y = 121.573, z = 0.000 }, level = 1, point_type = 2004, area_id = 101 },
	{ config_id = 19005, gadget_id = 70500000, pos = { x = 461.487, y = 122.388, z = -738.257 }, rot = { x = 0.000, y = 220.874, z = 0.000 }, level = 1, point_type = 2004, area_id = 101 },
	{ config_id = 19006, gadget_id = 70500000, pos = { x = 375.500, y = 121.171, z = -623.151 }, rot = { x = 0.000, y = 324.281, z = 0.000 }, level = 1, point_type = 2001, area_id = 101 },
	{ config_id = 19007, gadget_id = 70500000, pos = { x = 552.185, y = 120.647, z = -678.354 }, rot = { x = 0.000, y = 135.141, z = 0.000 }, level = 1, point_type = 2004, area_id = 101 },
	{ config_id = 19008, gadget_id = 70500000, pos = { x = 423.112, y = 122.527, z = -621.155 }, rot = { x = 0.000, y = 64.403, z = 0.000 }, level = 1, point_type = 2004, area_id = 101 },
	{ config_id = 19009, gadget_id = 70500000, pos = { x = 435.934, y = 121.419, z = -755.666 }, rot = { x = 0.000, y = 190.331, z = 0.000 }, level = 1, point_type = 2004, area_id = 101 },
	{ config_id = 19010, gadget_id = 70500000, pos = { x = 329.074, y = 121.239, z = -728.859 }, rot = { x = 0.000, y = 248.864, z = 0.000 }, level = 1, point_type = 2001, area_id = 101 },
	{ config_id = 19011, gadget_id = 70500000, pos = { x = 474.592, y = 119.789, z = -715.649 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, point_type = 2033, area_id = 101 },
	{ config_id = 19012, gadget_id = 70500000, pos = { x = 444.921, y = 118.980, z = -709.446 }, rot = { x = 0.000, y = 123.845, z = 0.000 }, level = 1, point_type = 2033, area_id = 101 },
	{ config_id = 19013, gadget_id = 70290008, pos = { x = 432.080, y = 119.964, z = -624.668 }, rot = { x = 2.294, y = 62.262, z = 354.766 }, level = 1, area_id = 101 },
	{ config_id = 19014, gadget_id = 70500000, pos = { x = 432.080, y = 119.964, z = -624.668 }, rot = { x = 2.294, y = 62.256, z = 354.766 }, level = 1, point_type = 3008, owner = 19013, area_id = 101 },
	{ config_id = 19015, gadget_id = 70290008, pos = { x = 399.674, y = 120.028, z = -662.238 }, rot = { x = 0.000, y = 267.830, z = 0.000 }, level = 1, area_id = 101 },
	{ config_id = 19016, gadget_id = 70500000, pos = { x = 399.674, y = 120.028, z = -662.238 }, rot = { x = 0.000, y = 267.833, z = 0.000 }, level = 1, point_type = 3008, owner = 19015, area_id = 101 },
	{ config_id = 19017, gadget_id = 70290010, pos = { x = 444.265, y = 119.753, z = -775.266 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 101 },
	{ config_id = 19018, gadget_id = 70500000, pos = { x = 444.265, y = 119.753, z = -775.266 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, point_type = 3006, owner = 19017, area_id = 101 },
	{ config_id = 19019, gadget_id = 70290010, pos = { x = 449.897, y = 120.175, z = -773.974 }, rot = { x = 2.681, y = 0.063, z = 2.684 }, level = 1, area_id = 101 },
	{ config_id = 19020, gadget_id = 70500000, pos = { x = 449.897, y = 120.175, z = -773.974 }, rot = { x = 2.681, y = 0.063, z = 2.684 }, level = 1, point_type = 3006, owner = 19019, area_id = 101 },
	{ config_id = 19021, gadget_id = 70290010, pos = { x = 442.953, y = 119.895, z = -768.544 }, rot = { x = 0.000, y = 306.752, z = 0.000 }, level = 1, area_id = 101 },
	{ config_id = 19022, gadget_id = 70500000, pos = { x = 442.953, y = 119.895, z = -768.544 }, rot = { x = 0.000, y = 306.755, z = 0.000 }, level = 1, point_type = 3006, owner = 19021, area_id = 101 }
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
		gadgets = { 19001, 19002, 19003, 19005, 19006, 19007, 19008, 19009, 19010, 19011, 19012, 19013, 19014, 19015, 19016, 19017, 19018, 19019, 19020, 19021, 19022 },
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