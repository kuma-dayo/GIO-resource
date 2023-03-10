-- 基础信息
local base_info = {
	group_id = 133303540
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
	{ config_id = 540001, gadget_id = 70500000, pos = { x = -1798.098, y = 146.260, z = 3504.151 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, point_type = 2057, area_id = 23 },
	{ config_id = 540002, gadget_id = 70500000, pos = { x = -1801.976, y = 145.932, z = 3505.285 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, point_type = 2057, area_id = 23 },
	{ config_id = 540003, gadget_id = 70500000, pos = { x = -1815.425, y = 144.165, z = 3550.990 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, point_type = 2057, area_id = 23 },
	{ config_id = 540004, gadget_id = 70500000, pos = { x = -1812.378, y = 144.340, z = 3549.180 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, point_type = 2057, area_id = 23 },
	{ config_id = 540005, gadget_id = 70500000, pos = { x = -1822.210, y = 118.360, z = 3532.510 }, rot = { x = 0.000, y = 93.756, z = 0.000 }, level = 30, point_type = 2057, area_id = 23 },
	{ config_id = 540006, gadget_id = 70500000, pos = { x = -1822.262, y = 124.948, z = 3548.543 }, rot = { x = 0.000, y = 67.581, z = 0.000 }, level = 30, point_type = 2057, area_id = 23 },
	{ config_id = 540007, gadget_id = 70500000, pos = { x = -1812.525, y = 127.141, z = 3560.377 }, rot = { x = 0.000, y = 67.539, z = 0.000 }, level = 30, point_type = 2057, area_id = 23 },
	{ config_id = 540008, gadget_id = 70500000, pos = { x = -1808.040, y = 127.827, z = 3561.952 }, rot = { x = 0.000, y = 134.614, z = 0.000 }, level = 30, point_type = 2057, area_id = 23 },
	{ config_id = 540009, gadget_id = 70500000, pos = { x = -1771.883, y = 132.761, z = 3489.991 }, rot = { x = 0.000, y = 268.404, z = 0.000 }, level = 30, point_type = 2057, area_id = 23 },
	{ config_id = 540010, gadget_id = 70500000, pos = { x = -1770.285, y = 131.026, z = 3485.950 }, rot = { x = 0.000, y = 25.454, z = 0.000 }, level = 30, point_type = 2057, area_id = 23 },
	{ config_id = 540011, gadget_id = 70500000, pos = { x = -1831.812, y = 108.348, z = 3459.903 }, rot = { x = 0.000, y = 335.253, z = 0.000 }, level = 30, point_type = 2057, area_id = 23 },
	{ config_id = 540012, gadget_id = 70500000, pos = { x = -1846.170, y = 93.975, z = 3446.928 }, rot = { x = 0.000, y = 271.694, z = 0.000 }, level = 30, point_type = 2057, area_id = 23 },
	{ config_id = 540013, gadget_id = 70500000, pos = { x = -1852.669, y = 93.267, z = 3447.296 }, rot = { x = 0.000, y = 333.631, z = 0.000 }, level = 30, point_type = 2057, area_id = 23 }
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
		gadgets = { 540001, 540002, 540003, 540004, 540005, 540006, 540007, 540008, 540009, 540010, 540011, 540012, 540013 },
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