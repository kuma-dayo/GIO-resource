-- 基础信息
local base_info = {
	group_id = 133105007
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
	{ config_id = 7001, gadget_id = 70220020, pos = { x = 876.623, y = 317.811, z = -495.513 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 10 },
	{ config_id = 7002, gadget_id = 70300075, pos = { x = 876.080, y = 318.544, z = -500.496 }, rot = { x = 0.000, y = 274.949, z = 0.000 }, level = 1, area_id = 10 },
	{ config_id = 7003, gadget_id = 70310015, pos = { x = 881.397, y = 320.271, z = -508.675 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, state = GadgetState.GearStart, area_id = 10 }
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
		gadgets = { 7001, 7002, 7003 },
		regions = { },
		triggers = { },
		rand_weight = 100,
		ban_refresh = true
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================