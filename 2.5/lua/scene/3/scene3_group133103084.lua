-- 基础信息
local base_info = {
	group_id = 133103084
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
	{ config_id = 264, gadget_id = 70310001, pos = { x = 802.824, y = 264.453, z = 1061.487 }, rot = { x = 1.656, y = 0.504, z = 14.885 }, level = 24, state = GadgetState.GearStart, area_id = 6 },
	{ config_id = 266, gadget_id = 70220014, pos = { x = 800.749, y = 263.870, z = 1059.727 }, rot = { x = 346.394, y = 173.446, z = 333.498 }, level = 24, area_id = 6 }
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
		gadgets = { 264, 266 },
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