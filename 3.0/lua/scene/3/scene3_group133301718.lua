-- 基础信息
local base_info = {
	group_id = 133301718
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
	{ config_id = 718001, gadget_id = 70330220, pos = { x = -838.143, y = 189.020, z = 3335.622 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 23 },
	{ config_id = 718002, gadget_id = 70330220, pos = { x = -828.889, y = 187.888, z = 3329.019 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 23 },
	{ config_id = 718003, gadget_id = 70330220, pos = { x = -872.624, y = 191.857, z = 3313.650 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 23 },
	{ config_id = 718004, gadget_id = 70330220, pos = { x = -858.909, y = 190.336, z = 3320.590 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 23 },
	{ config_id = 718005, gadget_id = 70330220, pos = { x = -817.361, y = 187.064, z = 3313.804 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 23 },
	{ config_id = 718006, gadget_id = 70500000, pos = { x = -817.022, y = 187.327, z = 3326.878 }, rot = { x = 17.109, y = 356.336, z = 335.992 }, level = 30, point_type = 7014, area_id = 23 },
	{ config_id = 718007, gadget_id = 70500000, pos = { x = -827.858, y = 188.098, z = 3329.320 }, rot = { x = 0.000, y = 0.000, z = 359.105 }, level = 30, point_type = 7014, area_id = 23 },
	{ config_id = 718008, gadget_id = 70500000, pos = { x = -845.212, y = 190.409, z = 3335.724 }, rot = { x = 342.716, y = 0.815, z = 354.644 }, level = 30, point_type = 7014, area_id = 23 },
	{ config_id = 718009, gadget_id = 70500000, pos = { x = -874.476, y = 192.197, z = 3313.365 }, rot = { x = 14.862, y = 359.650, z = 357.316 }, level = 30, point_type = 7014, area_id = 23 },
	{ config_id = 718010, gadget_id = 70500000, pos = { x = -855.099, y = 190.258, z = 3331.906 }, rot = { x = 346.846, y = 0.515, z = 355.533 }, level = 30, point_type = 7014, area_id = 23 },
	{ config_id = 718011, gadget_id = 70500000, pos = { x = -807.646, y = 188.394, z = 3320.018 }, rot = { x = 24.849, y = 8.050, z = 20.964 }, level = 30, point_type = 2046, area_id = 23 }
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
		gadgets = { 718001, 718002, 718003, 718004, 718005, 718006, 718007, 718008, 718009, 718010, 718011 },
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