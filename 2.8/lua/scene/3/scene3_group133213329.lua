-- 基础信息
local base_info = {
	group_id = 133213329
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
	{ config_id = 329001, gadget_id = 70500000, pos = { x = -4084.214, y = 204.736, z = -3471.322 }, rot = { x = 0.000, y = 207.460, z = 0.000 }, level = 27, point_type = 2004, area_id = 12 },
	{ config_id = 329002, gadget_id = 70500000, pos = { x = -4095.396, y = 201.814, z = -3479.030 }, rot = { x = 347.766, y = 0.036, z = 359.666 }, level = 27, point_type = 1008, area_id = 12 },
	{ config_id = 329003, gadget_id = 70500000, pos = { x = -4084.564, y = 202.198, z = -3463.750 }, rot = { x = 353.400, y = 359.742, z = 4.477 }, level = 27, point_type = 1008, area_id = 12 },
	{ config_id = 329004, gadget_id = 70500000, pos = { x = -4083.976, y = 203.578, z = -3467.830 }, rot = { x = 349.700, y = 0.487, z = 354.599 }, level = 27, point_type = 1002, area_id = 12 },
	{ config_id = 329005, gadget_id = 70500000, pos = { x = -4089.235, y = 204.078, z = -3468.039 }, rot = { x = 345.555, y = 0.808, z = 353.631 }, level = 27, point_type = 1008, area_id = 12 },
	{ config_id = 329006, gadget_id = 70500000, pos = { x = -4083.402, y = 203.722, z = -3476.567 }, rot = { x = 352.557, y = 0.907, z = 346.128 }, level = 27, point_type = 1008, area_id = 12 },
	{ config_id = 329007, gadget_id = 70500000, pos = { x = -4079.339, y = 203.297, z = -3480.232 }, rot = { x = 3.696, y = 359.737, z = 351.874 }, level = 27, point_type = 1008, area_id = 12 },
	{ config_id = 329008, gadget_id = 70500000, pos = { x = -4086.070, y = 202.793, z = -3486.202 }, rot = { x = 355.210, y = 0.094, z = 357.763 }, level = 27, point_type = 1008, area_id = 12 },
	{ config_id = 329009, gadget_id = 70500000, pos = { x = -4076.578, y = 201.811, z = -3488.520 }, rot = { x = 356.585, y = 0.191, z = 353.586 }, level = 27, point_type = 1008, area_id = 12 },
	{ config_id = 329010, gadget_id = 70500000, pos = { x = -4085.948, y = 204.689, z = -3479.015 }, rot = { x = 351.711, y = 0.397, z = 354.523 }, level = 27, point_type = 1002, area_id = 12 }
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
		gadgets = { 329001, 329002, 329003, 329004, 329005, 329006, 329007, 329008, 329009, 329010 },
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