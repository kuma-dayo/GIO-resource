-- 基础信息
local base_info = {
	group_id = 133105028
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
	{ config_id = 28001, gadget_id = 70500000, pos = { x = 874.525, y = 323.662, z = -533.055 }, rot = { x = 0.000, y = 251.090, z = 0.000 }, level = 30, point_type = 2007, area_id = 10 },
	{ config_id = 28002, gadget_id = 70500000, pos = { x = 903.300, y = 336.735, z = -622.914 }, rot = { x = 339.640, y = 157.335, z = 20.978 }, level = 30, point_type = 2007, area_id = 10 },
	{ config_id = 28003, gadget_id = 70500000, pos = { x = 1003.373, y = 343.993, z = -586.319 }, rot = { x = 0.000, y = 255.511, z = 0.000 }, level = 30, point_type = 2031, area_id = 10 },
	{ config_id = 28004, gadget_id = 70500000, pos = { x = 910.563, y = 376.917, z = -697.767 }, rot = { x = 0.000, y = 117.221, z = 0.000 }, level = 30, point_type = 2031, area_id = 10 },
	{ config_id = 28005, gadget_id = 70500000, pos = { x = 926.373, y = 366.676, z = -685.226 }, rot = { x = 0.000, y = 0.714, z = 0.000 }, level = 30, point_type = 2031, area_id = 10 },
	{ config_id = 28006, gadget_id = 70500000, pos = { x = 892.601, y = 429.359, z = -758.471 }, rot = { x = 0.000, y = 163.440, z = 0.000 }, level = 30, point_type = 2031, area_id = 10 },
	{ config_id = 28007, gadget_id = 70500000, pos = { x = 775.738, y = 306.669, z = -650.217 }, rot = { x = 0.000, y = 338.618, z = 0.000 }, level = 30, point_type = 2031, area_id = 10 },
	{ config_id = 28008, gadget_id = 70500000, pos = { x = 854.953, y = 332.680, z = -660.058 }, rot = { x = 32.206, y = 292.840, z = 359.709 }, level = 30, point_type = 2007, area_id = 10 },
	{ config_id = 28009, gadget_id = 70500000, pos = { x = 987.120, y = 342.569, z = -564.664 }, rot = { x = 0.000, y = 136.141, z = 0.000 }, level = 30, point_type = 2031, area_id = 10 },
	{ config_id = 28010, gadget_id = 70500000, pos = { x = 960.187, y = 389.587, z = -712.618 }, rot = { x = 0.000, y = 131.383, z = 0.000 }, level = 30, point_type = 2007, area_id = 10 },
	{ config_id = 28011, gadget_id = 70500000, pos = { x = 930.501, y = 341.101, z = -621.574 }, rot = { x = 0.000, y = 107.329, z = 0.000 }, level = 30, point_type = 2007, area_id = 10 },
	{ config_id = 28012, gadget_id = 70500000, pos = { x = 896.627, y = 324.582, z = -574.750 }, rot = { x = 325.313, y = 126.679, z = 5.783 }, level = 30, point_type = 2007, area_id = 10 },
	{ config_id = 28013, gadget_id = 70500000, pos = { x = 1012.172, y = 349.943, z = -650.800 }, rot = { x = 0.000, y = 258.836, z = 0.000 }, level = 30, point_type = 2031, area_id = 10 }
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
		gadgets = { 28001, 28002, 28003, 28004, 28005, 28006, 28007, 28008, 28009, 28010, 28011, 28012, 28013 },
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