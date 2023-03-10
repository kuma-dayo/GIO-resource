-- 基础信息
local base_info = {
	group_id = 133004041
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
	{ config_id = 41001, gadget_id = 70500000, pos = { x = 2922.441, y = 273.705, z = -482.955 }, rot = { x = 0.000, y = 120.846, z = 0.000 }, level = 20, point_type = 2004, area_id = 4 },
	{ config_id = 41002, gadget_id = 70500000, pos = { x = 2953.718, y = 295.577, z = -257.921 }, rot = { x = 0.000, y = 126.928, z = 0.000 }, level = 20, point_type = 2001, area_id = 4 },
	{ config_id = 41003, gadget_id = 70500000, pos = { x = 3049.205, y = 276.924, z = -498.927 }, rot = { x = 0.000, y = 256.360, z = 0.000 }, level = 1, point_type = 2001, area_id = 4 },
	{ config_id = 41004, gadget_id = 70500000, pos = { x = 3066.647, y = 264.225, z = -310.576 }, rot = { x = 0.000, y = 257.767, z = 0.000 }, level = 1, point_type = 2001, area_id = 4 },
	{ config_id = 41005, gadget_id = 70500000, pos = { x = 2883.181, y = 311.259, z = -342.455 }, rot = { x = 0.000, y = 259.650, z = 0.000 }, level = 20, point_type = 2001, area_id = 4 },
	{ config_id = 41006, gadget_id = 70500000, pos = { x = 2830.485, y = 306.900, z = -372.143 }, rot = { x = 0.000, y = 59.611, z = 0.000 }, level = 20, point_type = 2007, area_id = 4 },
	{ config_id = 41007, gadget_id = 70500000, pos = { x = 2843.748, y = 305.367, z = -329.256 }, rot = { x = 0.000, y = 93.629, z = 0.000 }, level = 20, point_type = 2004, area_id = 4 },
	{ config_id = 41008, gadget_id = 70500000, pos = { x = 2984.584, y = 264.910, z = -267.017 }, rot = { x = 0.000, y = 200.954, z = 0.000 }, level = 20, point_type = 2004, area_id = 4 }
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
		gadgets = { 41001, 41002, 41003, 41004, 41005, 41006, 41007, 41008 },
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