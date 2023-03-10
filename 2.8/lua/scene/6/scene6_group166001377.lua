-- 基础信息
local base_info = {
	group_id = 166001377
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
	{ config_id = 377001, gadget_id = 70290200, pos = { x = 1073.227, y = 826.512, z = 434.617 }, rot = { x = 342.766, y = 353.769, z = 17.564 }, level = 36, area_id = 300 },
	{ config_id = 377002, gadget_id = 70290308, pos = { x = 1044.528, y = 812.677, z = 380.495 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, area_id = 300 },
	{ config_id = 377003, gadget_id = 70290308, pos = { x = 1043.824, y = 812.662, z = 381.138 }, rot = { x = 0.000, y = 49.432, z = 0.000 }, level = 36, area_id = 300 },
	{ config_id = 377004, gadget_id = 70290308, pos = { x = 1044.129, y = 813.447, z = 380.778 }, rot = { x = 0.000, y = 48.881, z = 0.000 }, level = 36, area_id = 300 }
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
		gadgets = { 377001, 377002, 377003, 377004 },
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