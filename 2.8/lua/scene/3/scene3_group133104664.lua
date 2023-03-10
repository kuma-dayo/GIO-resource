-- 基础信息
local base_info = {
	group_id = 133104664
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
	{ config_id = 664001, gadget_id = 70710136, pos = { x = 900.112, y = 260.792, z = 347.226 }, rot = { x = 0.000, y = 34.140, z = 0.000 }, level = 16, area_id = 5 },
	{ config_id = 664002, gadget_id = 70500000, pos = { x = 900.185, y = 260.837, z = 347.203 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 16, point_type = 9080, area_id = 5 },
	{ config_id = 664003, gadget_id = 70500000, pos = { x = 904.538, y = 260.463, z = 341.145 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 16, point_type = 9091, area_id = 5 },
	{ config_id = 664004, gadget_id = 70710136, pos = { x = 904.520, y = 260.463, z = 341.255 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 16, area_id = 5 },
	{ config_id = 664005, gadget_id = 70710136, pos = { x = 900.927, y = 259.848, z = 349.658 }, rot = { x = 0.000, y = 103.490, z = 0.000 }, level = 16, area_id = 5 },
	{ config_id = 664006, gadget_id = 70500000, pos = { x = 901.280, y = 260.057, z = 349.624 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 16, point_type = 9201, area_id = 5 },
	{ config_id = 664007, gadget_id = 70710136, pos = { x = 906.566, y = 266.194, z = 339.013 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 16, area_id = 5 },
	{ config_id = 664008, gadget_id = 70500000, pos = { x = 906.499, y = 266.265, z = 339.133 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 16, point_type = 9099, area_id = 5 }
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
		gadgets = { 664001, 664002, 664003, 664004, 664005, 664006, 664007, 664008 },
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