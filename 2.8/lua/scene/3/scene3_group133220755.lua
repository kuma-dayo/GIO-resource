-- 基础信息
local base_info = {
	group_id = 133220755
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
	{ config_id = 755001, gadget_id = 70710705, pos = { x = -2798.235, y = 205.762, z = -4156.345 }, rot = { x = 1.806, y = 87.039, z = 354.622 }, level = 1, area_id = 11 },
	{ config_id = 755002, gadget_id = 71700047, pos = { x = -2798.893, y = 206.203, z = -4152.488 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 11 }
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
		gadgets = { 755001, 755002 },
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