-- 基础信息
local base_info = {
	group_id = 166001343
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
	{ config_id = 343001, gadget_id = 70210101, pos = { x = 978.257, y = 951.550, z = 526.381 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 26, drop_tag = "搜刮点解谜遗物璃月", persistent = true, area_id = 300 },
	{ config_id = 343002, gadget_id = 70210101, pos = { x = 983.395, y = 950.589, z = 519.734 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 26, drop_tag = "搜刮点解谜破损璃月", persistent = true, area_id = 300 },
	{ config_id = 343003, gadget_id = 70210101, pos = { x = 978.489, y = 951.447, z = 527.430 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 26, drop_tag = "搜刮点解谜破损璃月", persistent = true, area_id = 300 },
	{ config_id = 343004, gadget_id = 70210101, pos = { x = 932.488, y = 965.668, z = 539.881 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 26, drop_tag = "搜刮点解谜破损璃月", persistent = true, area_id = 300 },
	{ config_id = 343005, gadget_id = 70210101, pos = { x = 973.868, y = 923.268, z = 517.972 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 26, drop_tag = "搜刮点解谜破损璃月", persistent = true, area_id = 300 },
	{ config_id = 343006, gadget_id = 70500000, pos = { x = 983.401, y = 923.641, z = 505.291 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, point_type = 3011, isOneoff = true, area_id = 300 }
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
		gadgets = { 343001, 343002, 343003, 343004, 343005, 343006 },
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