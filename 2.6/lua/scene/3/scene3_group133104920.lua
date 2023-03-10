-- 基础信息
local base_info = {
	group_id = 133104920
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
	{ config_id = 920001, gadget_id = 70710162, pos = { x = 56.244, y = 263.974, z = 373.892 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 9 },
	{ config_id = 920002, gadget_id = 70710100, pos = { x = 56.569, y = 263.974, z = 373.448 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 9 },
	{ config_id = 920003, gadget_id = 70710102, pos = { x = 56.005, y = 263.974, z = 373.395 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 9 },
	{ config_id = 920004, gadget_id = 70710174, pos = { x = 56.741, y = 263.974, z = 373.843 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 9 },
	{ config_id = 920005, gadget_id = 70710175, pos = { x = 56.619, y = 263.974, z = 374.022 }, rot = { x = 356.692, y = 205.536, z = 1.572 }, level = 1, area_id = 9 },
	{ config_id = 920006, gadget_id = 70710175, pos = { x = 55.507, y = 263.974, z = 373.710 }, rot = { x = 0.000, y = 104.146, z = 0.000 }, level = 1, area_id = 9 },
	{ config_id = 920007, gadget_id = 70710174, pos = { x = 55.677, y = 263.974, z = 373.879 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 9 }
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
		gadgets = { 920001, 920002, 920003, 920004, 920005, 920006, 920007 },
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