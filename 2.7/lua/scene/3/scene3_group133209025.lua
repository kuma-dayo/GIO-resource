-- 基础信息
local base_info = {
	group_id = 133209025
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
	{ config_id = 25001, gadget_id = 70710483, pos = { x = -2638.179, y = 203.041, z = -3839.978 }, rot = { x = 333.647, y = 0.000, z = 0.000 }, level = 1, area_id = 11 },
	{ config_id = 25002, gadget_id = 70710483, pos = { x = -2638.627, y = 203.036, z = -3839.781 }, rot = { x = 0.000, y = 243.914, z = 0.000 }, level = 1, area_id = 11 },
	{ config_id = 25003, gadget_id = 70710483, pos = { x = -2638.484, y = 202.961, z = -3840.218 }, rot = { x = 0.000, y = 83.092, z = 0.000 }, level = 1, area_id = 11 },
	{ config_id = 25004, gadget_id = 70710483, pos = { x = -2638.135, y = 203.108, z = -3839.820 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 11 }
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
		gadgets = { 25001, 25002, 25003, 25004 },
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