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
	{ config_id = 126001, gadget_id = 70500000, pos = { x = -246.655, y = 198.216, z = 1576.554 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, point_type = 3006, area_id = 200 },
	{ config_id = 126002, gadget_id = 70500000, pos = { x = -266.151, y = 195.965, z = 1585.770 }, rot = { x = 0.000, y = 324.405, z = 0.000 }, level = 36, point_type = 3006, area_id = 200 },
	{ config_id = 126003, gadget_id = 70500000, pos = { x = -270.411, y = 196.084, z = 1562.941 }, rot = { x = 0.000, y = 315.848, z = 0.000 }, level = 36, point_type = 3006, area_id = 200 },
	{ config_id = 126004, gadget_id = 70500000, pos = { x = -353.293, y = 208.482, z = 1608.965 }, rot = { x = 0.000, y = 322.136, z = 0.000 }, level = 36, point_type = 3006, area_id = 200 },
	{ config_id = 126005, gadget_id = 70500000, pos = { x = -349.868, y = 208.398, z = 1610.587 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, point_type = 3006, area_id = 200 },
	{ config_id = 126006, gadget_id = 70500000, pos = { x = -341.375, y = 208.230, z = 1622.412 }, rot = { x = 0.000, y = 345.828, z = 0.000 }, level = 36, point_type = 3006, area_id = 200 }
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
		gadgets = { 126001, 126002, 126003, 126004, 126005, 126006 },
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