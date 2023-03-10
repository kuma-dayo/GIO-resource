-- 基础信息
local base_info = {
	group_id = 166001204
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
	{ config_id = 204001, gadget_id = 70290395, pos = { x = 139.000, y = 439.000, z = 637.000 }, rot = { x = 345.000, y = 85.000, z = 24.000 }, level = 32, isOneoff = true, area_id = 300 },
	{ config_id = 204002, gadget_id = 70290324, pos = { x = 150.663, y = 444.339, z = 624.154 }, rot = { x = 0.000, y = 53.944, z = 0.000 }, level = 36, area_id = 300 },
	{ config_id = 204003, gadget_id = 70290324, pos = { x = 141.111, y = 440.818, z = 630.531 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, area_id = 300 },
	{ config_id = 204004, gadget_id = 70290323, pos = { x = 142.994, y = 440.180, z = 632.659 }, rot = { x = 0.000, y = 259.582, z = 0.000 }, level = 36, area_id = 300 }
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
		gadgets = { 204001, 204002, 204003, 204004 },
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