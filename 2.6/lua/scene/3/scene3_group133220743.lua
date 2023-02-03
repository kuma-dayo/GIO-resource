-- 基础信息
local base_info = {
	group_id = 133220743
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
	{ config_id = 743001, gadget_id = 70710637, pos = { x = -2473.251, y = 204.274, z = -4169.504 }, rot = { x = 10.513, y = 39.084, z = 0.720 }, level = 1, area_id = 11 },
	{ config_id = 743002, gadget_id = 70710636, pos = { x = -2473.116, y = 204.515, z = -4169.593 }, rot = { x = 4.369, y = 44.884, z = 341.891 }, level = 1, area_id = 11 }
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
		gadgets = { 743001, 743002 },
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