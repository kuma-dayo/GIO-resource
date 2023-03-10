-- 基础信息
local base_info = {
	group_id = 133315036
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
	{ config_id = 36002, gadget_id = 70310006, pos = { x = 293.741, y = 235.389, z = 2324.249 }, rot = { x = 358.304, y = 76.119, z = 4.471 }, level = 27, state = GadgetState.GearStart, area_id = 20 }
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

-- 废弃数据
garbages = {
	gadgets = {
		{ config_id = 36001, gadget_id = 70300105, pos = { x = 288.872, y = 229.001, z = 2325.672 }, rot = { x = 350.647, y = 49.427, z = 359.847 }, level = 27, area_id = 20 },
		{ config_id = 36003, gadget_id = 70710397, pos = { x = 287.273, y = 236.132, z = 2324.237 }, rot = { x = 355.828, y = 149.806, z = 359.827 }, level = 27, area_id = 20 },
		{ config_id = 36004, gadget_id = 71700432, pos = { x = 287.883, y = 235.931, z = 2328.030 }, rot = { x = 7.589, y = 69.435, z = 0.681 }, level = 27, area_id = 20 },
		{ config_id = 36006, gadget_id = 70710352, pos = { x = 291.343, y = 235.752, z = 2326.383 }, rot = { x = 0.000, y = 259.892, z = 0.000 }, level = 27, area_id = 20 },
		{ config_id = 36009, gadget_id = 71700431, pos = { x = 293.641, y = 232.967, z = 2326.526 }, rot = { x = 0.000, y = 40.195, z = 0.000 }, level = 27, area_id = 20 }
	}
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
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 36002 },
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