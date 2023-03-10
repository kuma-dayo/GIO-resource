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
	{ config_id = 617001, gadget_id = 70290010, pos = { x = 435.317, y = 200.416, z = 588.311 }, rot = { x = 7.362, y = 55.009, z = 0.000 }, level = 1, area_id = 6 },
	{ config_id = 617002, gadget_id = 70500000, pos = { x = 435.317, y = 200.429, z = 588.311 }, rot = { x = 353.284, y = 55.008, z = 0.000 }, level = 1, point_type = 3006, owner = 617001, area_id = 6 },
	{ config_id = 617003, gadget_id = 70290010, pos = { x = 443.379, y = 200.102, z = 591.244 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 6 },
	{ config_id = 617004, gadget_id = 70500000, pos = { x = 443.379, y = 200.137, z = 591.244 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, point_type = 3006, owner = 617003, area_id = 6 },
	{ config_id = 617005, gadget_id = 70290010, pos = { x = 434.224, y = 200.979, z = 601.953 }, rot = { x = 13.585, y = 149.055, z = 0.000 }, level = 1, area_id = 6 },
	{ config_id = 617006, gadget_id = 70500000, pos = { x = 434.210, y = 200.995, z = 601.977 }, rot = { x = 13.585, y = 149.055, z = 0.000 }, level = 1, point_type = 3006, owner = 617005, area_id = 6 },
	{ config_id = 617007, gadget_id = 70290010, pos = { x = 437.459, y = 201.064, z = 603.385 }, rot = { x = 350.496, y = 47.480, z = 349.944 }, level = 1, area_id = 6 },
	{ config_id = 617008, gadget_id = 70500000, pos = { x = 437.459, y = 201.184, z = 603.385 }, rot = { x = 350.500, y = 47.479, z = 349.942 }, level = 1, point_type = 3006, owner = 617007, area_id = 6 },
	{ config_id = 617009, gadget_id = 70290010, pos = { x = 438.439, y = 200.202, z = 594.826 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 6 },
	{ config_id = 617010, gadget_id = 70290010, pos = { x = 438.577, y = 200.268, z = 595.981 }, rot = { x = 0.000, y = 297.220, z = 0.000 }, level = 1, area_id = 6 },
	{ config_id = 617011, gadget_id = 70290010, pos = { x = 431.196, y = 200.499, z = 591.828 }, rot = { x = 3.372, y = 0.000, z = 0.000 }, level = 1, area_id = 6 },
	{ config_id = 617012, gadget_id = 70290010, pos = { x = 444.214, y = 200.055, z = 592.590 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 6 }
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
		gadgets = { 617001, 617002, 617003, 617004, 617005, 617006, 617007, 617008, 617009, 617010, 617011, 617012 },
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