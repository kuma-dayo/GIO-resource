-- 基础信息
local base_info = {
	group_id = 133213459
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
	{ config_id = 459001, gadget_id = 70380286, pos = { x = -3686.448, y = 200.000, z = -3018.042 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 12 },
	{ config_id = 459002, gadget_id = 70380286, pos = { x = -3672.634, y = 200.000, z = -2980.817 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 12 }
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
		gadgets = { 459001, 459002 },
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