-- 基础信息
local base_info = {
	group_id = 133213044
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
	{ config_id = 44001, gadget_id = 70900393, pos = { x = -3630.349, y = 201.132, z = -3304.303 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 12 },
	{ config_id = 44002, gadget_id = 70900393, pos = { x = -3623.167, y = 201.251, z = -3301.331 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 12 }
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
		gadgets = { 44001, 44002 },
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