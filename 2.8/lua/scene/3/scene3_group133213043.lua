-- 基础信息
local base_info = {
	group_id = 133213043
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
	{ config_id = 43001, gadget_id = 70900393, pos = { x = -3539.675, y = 200.336, z = -3438.234 }, rot = { x = 359.106, y = 359.979, z = 2.684 }, level = 27, area_id = 12 },
	{ config_id = 43002, gadget_id = 70900393, pos = { x = -3561.615, y = 200.397, z = -3452.246 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 12 },
	{ config_id = 43003, gadget_id = 70900393, pos = { x = -3565.204, y = 200.201, z = -3435.000 }, rot = { x = 0.000, y = 65.042, z = 0.000 }, level = 27, area_id = 12 },
	{ config_id = 43004, gadget_id = 70900393, pos = { x = -3568.523, y = 199.947, z = -3428.117 }, rot = { x = 0.000, y = 65.042, z = 0.000 }, level = 27, area_id = 12 },
	{ config_id = 43005, gadget_id = 70900393, pos = { x = -3583.016, y = 200.098, z = -3414.613 }, rot = { x = 0.000, y = 68.335, z = 0.000 }, level = 27, area_id = 12 },
	{ config_id = 43006, gadget_id = 70900393, pos = { x = -3603.542, y = 200.849, z = -3344.508 }, rot = { x = 0.000, y = 68.335, z = 0.000 }, level = 27, area_id = 12 },
	{ config_id = 43007, gadget_id = 70900393, pos = { x = -3618.692, y = 200.735, z = -3351.114 }, rot = { x = 0.000, y = 113.322, z = 0.000 }, level = 27, area_id = 12 },
	{ config_id = 43008, gadget_id = 70310010, pos = { x = -3561.854, y = 200.211, z = -3448.511 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 12 },
	{ config_id = 43009, gadget_id = 70900393, pos = { x = -3573.623, y = 200.027, z = -3421.424 }, rot = { x = 0.000, y = 32.683, z = 0.000 }, level = 27, area_id = 12 },
	{ config_id = 43010, gadget_id = 70900393, pos = { x = -3539.141, y = 233.147, z = -3402.509 }, rot = { x = 1.585, y = 32.716, z = 2.380 }, level = 27, area_id = 12 },
	{ config_id = 43011, gadget_id = 70310009, pos = { x = -3576.594, y = 200.203, z = -3432.745 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 12 }
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
		gadgets = { 43001, 43002, 43003, 43004, 43005, 43006, 43007, 43008, 43009, 43010, 43011 },
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