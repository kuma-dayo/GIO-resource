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
	{ config_id = 232001, gadget_id = 70710623, pos = { x = -572.596, y = 239.190, z = 321.588 }, rot = { x = 0.000, y = 99.720, z = 0.000 }, level = 1, area_id = 7 },
	{ config_id = 232002, gadget_id = 70710623, pos = { x = -571.888, y = 239.247, z = 322.672 }, rot = { x = 0.000, y = 106.090, z = 0.000 }, level = 1, area_id = 7 },
	{ config_id = 232003, gadget_id = 70710623, pos = { x = -572.290, y = 239.190, z = 320.947 }, rot = { x = 0.000, y = 95.800, z = 0.000 }, level = 1, area_id = 7 },
	{ config_id = 232004, gadget_id = 70710624, pos = { x = -571.150, y = 239.303, z = 322.453 }, rot = { x = 0.000, y = 334.670, z = 0.000 }, level = 1, area_id = 7 },
	{ config_id = 232005, gadget_id = 70710625, pos = { x = -572.295, y = 239.190, z = 321.961 }, rot = { x = 0.000, y = 65.880, z = 0.000 }, level = 1, area_id = 7 },
	{ config_id = 232006, gadget_id = 70710626, pos = { x = -571.771, y = 239.259, z = 320.324 }, rot = { x = 333.800, y = 57.700, z = 0.000 }, level = 1, area_id = 7 }
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
		gadgets = { 232001, 232002, 232003, 232004, 232005, 232006 },
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