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
	{ config_id = 608001, gadget_id = 70500000, pos = { x = 1756.133, y = 257.837, z = 515.665 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 18, point_type = 9041, isOneoff = true, area_id = 5 },
	{ config_id = 608002, gadget_id = 70710136, pos = { x = 1746.039, y = 257.703, z = 520.106 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 18, area_id = 5 },
	{ config_id = 608003, gadget_id = 70500000, pos = { x = 1746.033, y = 257.774, z = 520.122 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 18, point_type = 9088, isOneoff = true, area_id = 5 },
	{ config_id = 608004, gadget_id = 70710136, pos = { x = 1703.560, y = 247.714, z = 625.062 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 18, area_id = 5 },
	{ config_id = 608005, gadget_id = 70500000, pos = { x = 1703.676, y = 247.811, z = 625.039 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 18, point_type = 9097, isOneoff = true, area_id = 5 },
	{ config_id = 608006, gadget_id = 70710136, pos = { x = 1683.290, y = 248.873, z = 618.444 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 18, area_id = 5 },
	{ config_id = 608007, gadget_id = 70500000, pos = { x = 1683.295, y = 248.944, z = 618.449 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 18, point_type = 9202, isOneoff = true, area_id = 5 }
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
		gadgets = { 608001, 608002, 608003, 608004, 608005, 608006, 608007 },
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