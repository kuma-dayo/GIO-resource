-- 基础信息
local base_info = {
	group_id = 133301680
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
	{ config_id = 680001, gadget_id = 70220103, pos = { x = -731.475, y = 211.232, z = 3592.836 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 33, area_id = 22 },
	{ config_id = 680002, gadget_id = 70220103, pos = { x = -739.557, y = 219.875, z = 3627.222 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 33, area_id = 22 },
	{ config_id = 680003, gadget_id = 70220103, pos = { x = -798.255, y = 204.624, z = 3632.156 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 33, area_id = 23 },
	{ config_id = 680004, gadget_id = 70220103, pos = { x = -737.352, y = 220.138, z = 3657.537 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 33, area_id = 22 },
	{ config_id = 680005, gadget_id = 70220103, pos = { x = -825.156, y = 189.744, z = 3653.432 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 33, area_id = 23 },
	{ config_id = 680006, gadget_id = 70220103, pos = { x = -868.746, y = 181.963, z = 3673.265 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 33, area_id = 23 },
	{ config_id = 680007, gadget_id = 70220103, pos = { x = -934.732, y = 183.104, z = 3692.280 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 33, area_id = 23 },
	{ config_id = 680008, gadget_id = 70220103, pos = { x = -648.992, y = 237.132, z = 3219.884 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 33, area_id = 22 },
	{ config_id = 680009, gadget_id = 70220103, pos = { x = -863.822, y = 274.775, z = 3440.918 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 33, area_id = 23 },
	{ config_id = 680010, gadget_id = 70220103, pos = { x = -666.823, y = 243.910, z = 3244.954 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 33, area_id = 22 },
	{ config_id = 680011, gadget_id = 70220103, pos = { x = -827.369, y = 273.496, z = 3446.543 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 33, area_id = 23 },
	{ config_id = 680012, gadget_id = 70220103, pos = { x = -686.354, y = 259.814, z = 3242.500 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 33, area_id = 22 },
	{ config_id = 680013, gadget_id = 70220103, pos = { x = -681.359, y = 271.097, z = 3251.907 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 33, area_id = 22 },
	{ config_id = 680014, gadget_id = 70220103, pos = { x = -683.426, y = 272.821, z = 3265.810 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 33, area_id = 22 },
	{ config_id = 680015, gadget_id = 70220103, pos = { x = -709.621, y = 270.855, z = 3310.474 }, rot = { x = 347.866, y = 2.800, z = 334.103 }, level = 33, area_id = 23 },
	{ config_id = 680016, gadget_id = 70220103, pos = { x = -714.462, y = 264.490, z = 3369.705 }, rot = { x = 349.681, y = 358.912, z = 12.001 }, level = 33, area_id = 23 },
	{ config_id = 680017, gadget_id = 70220103, pos = { x = -752.662, y = 252.702, z = 3445.880 }, rot = { x = 349.681, y = 358.912, z = 12.001 }, level = 33, area_id = 23 },
	{ config_id = 680018, gadget_id = 70220103, pos = { x = -782.015, y = 267.895, z = 3440.752 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 33, area_id = 23 },
	{ config_id = 680019, gadget_id = 70220103, pos = { x = -739.801, y = 243.807, z = 3489.490 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 33, area_id = 23 },
	{ config_id = 680020, gadget_id = 70220103, pos = { x = -724.476, y = 240.680, z = 3527.441 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 33, area_id = 22 },
	{ config_id = 680021, gadget_id = 70220103, pos = { x = -695.565, y = 225.900, z = 3531.675 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 33, area_id = 22 }
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
		gadgets = { 680001, 680002, 680003, 680004, 680005, 680006, 680007, 680008, 680009, 680010, 680011, 680012, 680013, 680014, 680015, 680016, 680017, 680018, 680019, 680020, 680021 },
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