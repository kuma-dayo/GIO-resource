-- 基础信息
local base_info = {
	group_id = 166001635
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
	{ config_id = 635001, gadget_id = 70500000, pos = { x = 269.362, y = 318.860, z = 335.835 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, point_type = 1010, area_id = 300 },
	{ config_id = 635002, gadget_id = 70500000, pos = { x = 271.750, y = 318.614, z = 338.893 }, rot = { x = 0.000, y = 237.528, z = 0.000 }, level = 36, point_type = 1010, area_id = 300 },
	{ config_id = 635003, gadget_id = 70500000, pos = { x = 66.017, y = 310.941, z = 435.442 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, point_type = 1009, area_id = 300 },
	{ config_id = 635004, gadget_id = 70500000, pos = { x = 69.122, y = 310.983, z = 431.337 }, rot = { x = 0.000, y = 310.007, z = 0.000 }, level = 36, point_type = 1009, area_id = 300 },
	{ config_id = 635005, gadget_id = 70500000, pos = { x = 70.547, y = 309.984, z = 433.050 }, rot = { x = 0.000, y = 60.688, z = 0.000 }, level = 36, point_type = 1009, area_id = 300 },
	{ config_id = 635006, gadget_id = 70500000, pos = { x = 87.568, y = 301.879, z = 451.324 }, rot = { x = 2.984, y = 324.941, z = 24.312 }, level = 36, point_type = 1002, area_id = 300 },
	{ config_id = 635007, gadget_id = 70500000, pos = { x = 82.007, y = 302.715, z = 450.664 }, rot = { x = 0.000, y = 70.034, z = 0.000 }, level = 36, point_type = 1002, area_id = 300 },
	{ config_id = 635008, gadget_id = 70500000, pos = { x = 82.515, y = 303.994, z = 455.446 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, point_type = 1002, area_id = 300 }
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
		gadgets = { 635001, 635002, 635003, 635004, 635005, 635006, 635007, 635008 },
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