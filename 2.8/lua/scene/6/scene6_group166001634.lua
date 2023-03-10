-- 基础信息
local base_info = {
	group_id = 166001634
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
	{ config_id = 634001, gadget_id = 70500000, pos = { x = 450.282, y = 408.385, z = 406.708 }, rot = { x = 0.000, y = 62.462, z = 0.000 }, level = 36, point_type = 1002, area_id = 300 },
	{ config_id = 634002, gadget_id = 70500000, pos = { x = 446.117, y = 406.334, z = 413.129 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, point_type = 1002, area_id = 300 },
	{ config_id = 634003, gadget_id = 70500000, pos = { x = 451.521, y = 407.055, z = 416.655 }, rot = { x = 0.000, y = 80.537, z = 0.000 }, level = 36, point_type = 1002, area_id = 300 },
	{ config_id = 634004, gadget_id = 70500000, pos = { x = 449.223, y = 406.458, z = 415.973 }, rot = { x = 0.000, y = 226.718, z = 0.000 }, level = 36, point_type = 1002, area_id = 300 },
	{ config_id = 634005, gadget_id = 70500000, pos = { x = 351.881, y = 400.085, z = 584.461 }, rot = { x = 0.000, y = 344.655, z = 0.000 }, level = 36, point_type = 1010, area_id = 300 },
	{ config_id = 634006, gadget_id = 70500000, pos = { x = 349.876, y = 401.084, z = 585.563 }, rot = { x = 13.819, y = 77.214, z = 342.322 }, level = 36, point_type = 1010, area_id = 300 },
	{ config_id = 634007, gadget_id = 70500000, pos = { x = 349.757, y = 400.105, z = 580.482 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, point_type = 1003, area_id = 300 },
	{ config_id = 634008, gadget_id = 70500000, pos = { x = 587.589, y = 404.144, z = 534.772 }, rot = { x = 19.574, y = 337.069, z = 20.962 }, level = 36, point_type = 1009, area_id = 300 },
	{ config_id = 634009, gadget_id = 70500000, pos = { x = 365.500, y = 404.964, z = 519.370 }, rot = { x = 15.027, y = 357.694, z = 342.645 }, level = 36, point_type = 1001, area_id = 300 },
	{ config_id = 634010, gadget_id = 70500000, pos = { x = 364.654, y = 408.251, z = 511.560 }, rot = { x = 7.678, y = 358.883, z = 343.464 }, level = 36, point_type = 1001, area_id = 300 },
	{ config_id = 634011, gadget_id = 70500000, pos = { x = 377.808, y = 404.014, z = 509.220 }, rot = { x = 350.898, y = 180.692, z = 17.855 }, level = 36, point_type = 1001, area_id = 300 },
	{ config_id = 634012, gadget_id = 70500000, pos = { x = 373.719, y = 401.531, z = 516.779 }, rot = { x = 27.112, y = 356.777, z = 14.397 }, level = 36, point_type = 1001, area_id = 300 },
	{ config_id = 634013, gadget_id = 70500000, pos = { x = 563.357, y = 402.203, z = 506.740 }, rot = { x = 356.842, y = 47.199, z = 356.594 }, level = 36, point_type = 1010, area_id = 300 },
	{ config_id = 634014, gadget_id = 70500000, pos = { x = 564.513, y = 401.304, z = 517.713 }, rot = { x = 7.514, y = 201.287, z = 313.441 }, level = 36, point_type = 1010, area_id = 300 },
	{ config_id = 634015, gadget_id = 70500000, pos = { x = 567.458, y = 403.384, z = 511.464 }, rot = { x = 0.000, y = 305.241, z = 0.000 }, level = 36, point_type = 1010, area_id = 300 },
	{ config_id = 634016, gadget_id = 70500000, pos = { x = 551.881, y = 399.731, z = 510.098 }, rot = { x = 26.305, y = 3.890, z = 16.536 }, level = 36, point_type = 1010, area_id = 300 }
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
		gadgets = { 634001, 634002, 634003, 634004, 634005, 634006, 634007, 634008, 634009, 634010, 634011, 634012, 634013, 634014, 634015, 634016 },
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