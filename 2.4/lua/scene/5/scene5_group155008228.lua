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
	{ config_id = 228001, gadget_id = 70500000, pos = { x = -328.299, y = 216.706, z = 405.876 }, rot = { x = 11.200, y = 84.753, z = 40.614 }, level = 36, point_type = 1002, area_id = 200 },
	{ config_id = 228002, gadget_id = 70500000, pos = { x = -325.272, y = 216.677, z = 405.044 }, rot = { x = 61.757, y = 343.416, z = 34.625 }, level = 36, point_type = 1002, area_id = 200 },
	{ config_id = 228003, gadget_id = 70500000, pos = { x = -327.308, y = 216.327, z = 405.421 }, rot = { x = 49.845, y = 28.399, z = 6.241 }, level = 36, point_type = 1002, area_id = 200 },
	{ config_id = 228004, gadget_id = 70500000, pos = { x = -143.632, y = 170.859, z = 332.536 }, rot = { x = 353.953, y = 0.000, z = 0.000 }, level = 36, point_type = 1002, area_id = 200 },
	{ config_id = 228005, gadget_id = 70500000, pos = { x = -144.276, y = 170.567, z = 331.880 }, rot = { x = 0.000, y = 295.878, z = 0.000 }, level = 36, point_type = 1002, area_id = 200 },
	{ config_id = 228006, gadget_id = 70500000, pos = { x = -142.618, y = 170.771, z = 332.179 }, rot = { x = 0.000, y = 73.214, z = 14.389 }, level = 36, point_type = 1002, area_id = 200 }
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
		gadgets = { 228001, 228002, 228003, 228004, 228005, 228006 },
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