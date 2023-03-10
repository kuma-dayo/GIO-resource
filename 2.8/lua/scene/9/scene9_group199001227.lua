-- 基础信息
local base_info = {
	group_id = 199001227
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 227001, monster_id = 21010101, pos = { x = 682.835, y = 120.000, z = 294.441 }, rot = { x = 0.000, y = 326.850, z = 0.000 }, level = 20, drop_tag = "丘丘人", disableWander = true, pose_id = 9016, area_id = 402 },
	{ config_id = 227002, monster_id = 21020201, pos = { x = 675.010, y = 120.288, z = 296.653 }, rot = { x = 0.000, y = 241.984, z = 0.000 }, level = 20, drop_tag = "丘丘暴徒", disableWander = true, pose_id = 401, area_id = 402 },
	{ config_id = 227003, monster_id = 21010401, pos = { x = 621.367, y = 121.887, z = 337.554 }, rot = { x = 0.000, y = 239.591, z = 0.000 }, level = 20, drop_tag = "远程丘丘人", disableWander = true, area_id = 402 },
	{ config_id = 227006, monster_id = 21010101, pos = { x = 660.220, y = 122.258, z = 112.869 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, drop_tag = "丘丘人", disableWander = true, pose_id = 9015, area_id = 402 },
	{ config_id = 227011, monster_id = 21010401, pos = { x = 666.990, y = 128.651, z = 105.851 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, drop_tag = "远程丘丘人", disableWander = true, area_id = 402 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 227004, gadget_id = 70300089, pos = { x = 670.808, y = 120.260, z = 295.801 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 402 },
	{ config_id = 227005, gadget_id = 70300089, pos = { x = 617.827, y = 122.007, z = 335.316 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 402 },
	{ config_id = 227007, gadget_id = 70300085, pos = { x = 680.698, y = 120.375, z = 296.524 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 402 },
	{ config_id = 227008, gadget_id = 70300087, pos = { x = 680.698, y = 120.834, z = 296.524 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 402 },
	{ config_id = 227009, gadget_id = 70220066, pos = { x = 676.725, y = 120.514, z = 298.480 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 402 },
	{ config_id = 227010, gadget_id = 70220065, pos = { x = 685.960, y = 120.253, z = 296.362 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 402 }
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
		monsters = { 227001, 227002, 227003, 227006, 227011 },
		gadgets = { 227004, 227005, 227007, 227008, 227009, 227010 },
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