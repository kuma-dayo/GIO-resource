-- 基础信息
local base_info = {
	group_id = 133220742
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
	{ config_id = 742001, gadget_id = 70710637, pos = { x = -2357.719, y = 231.246, z = -4339.429 }, rot = { x = 15.763, y = 116.139, z = 351.613 }, level = 1, area_id = 11 },
	{ config_id = 742002, gadget_id = 70710637, pos = { x = -2306.956, y = 225.500, z = -4255.133 }, rot = { x = 359.678, y = 253.162, z = 358.815 }, level = 1, area_id = 11 },
	{ config_id = 742003, gadget_id = 70710636, pos = { x = -2357.792, y = 230.622, z = -4340.402 }, rot = { x = 18.393, y = 130.535, z = 353.407 }, level = 1, area_id = 11 },
	{ config_id = 742004, gadget_id = 70710636, pos = { x = -2307.836, y = 225.407, z = -4254.531 }, rot = { x = 4.826, y = 297.287, z = 333.811 }, level = 1, area_id = 11 }
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
		gadgets = { 742001, 742002, 742003, 742004 },
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