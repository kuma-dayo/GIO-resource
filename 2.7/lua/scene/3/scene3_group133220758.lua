-- 基础信息
local base_info = {
	group_id = 133220758
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
	{ config_id = 758001, gadget_id = 71700367, pos = { x = -2457.410, y = 446.590, z = -4403.374 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 11 },
	{ config_id = 758002, gadget_id = 71700367, pos = { x = -2457.774, y = 446.590, z = -4403.197 }, rot = { x = 0.000, y = 300.925, z = 0.000 }, level = 1, area_id = 11 },
	{ config_id = 758003, gadget_id = 71700367, pos = { x = -2457.590, y = 446.845, z = -4403.338 }, rot = { x = 0.000, y = 307.945, z = 0.000 }, level = 1, area_id = 11 },
	{ config_id = 758004, gadget_id = 71700368, pos = { x = -2485.067, y = 446.590, z = -4422.290 }, rot = { x = 0.000, y = 335.521, z = 0.000 }, level = 1, area_id = 11 },
	{ config_id = 758005, gadget_id = 71700368, pos = { x = -2485.059, y = 446.929, z = -4422.280 }, rot = { x = 0.000, y = 155.521, z = 180.000 }, level = 1, area_id = 11 },
	{ config_id = 758006, gadget_id = 71700368, pos = { x = -2485.313, y = 446.926, z = -4421.829 }, rot = { x = 0.300, y = 180.000, z = 180.000 }, level = 1, area_id = 11 },
	{ config_id = 758007, gadget_id = 71700368, pos = { x = -2485.329, y = 446.587, z = -4421.831 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 11 }
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
		gadgets = { 758001, 758002, 758003, 758004, 758005, 758006, 758007 },
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