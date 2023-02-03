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
	{ config_id = 372001, gadget_id = 70220020, pos = { x = 1833.543, y = 242.347, z = -509.976 }, rot = { x = 6.153, y = 248.427, z = 353.768 }, level = 10, area_id = 3 },
	{ config_id = 372002, gadget_id = 70220020, pos = { x = 1808.839, y = 243.882, z = -535.311 }, rot = { x = 0.000, y = 63.400, z = 0.000 }, level = 10, area_id = 3 },
	{ config_id = 372003, gadget_id = 70220020, pos = { x = 1815.430, y = 242.526, z = -512.250 }, rot = { x = 0.000, y = 323.330, z = 0.000 }, level = 10, area_id = 3 },
	{ config_id = 372004, gadget_id = 70220020, pos = { x = 1823.712, y = 241.988, z = -506.960 }, rot = { x = 0.000, y = 335.363, z = 0.000 }, level = 1, area_id = 3 },
	{ config_id = 372005, gadget_id = 70290009, pos = { x = 1813.001, y = 243.270, z = -529.981 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 3 },
	{ config_id = 372006, gadget_id = 70500000, pos = { x = 1813.001, y = 243.270, z = -529.981 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, point_type = 3005, owner = 372005, area_id = 3 },
	{ config_id = 372007, gadget_id = 70290009, pos = { x = 1821.554, y = 242.481, z = -515.933 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 3 },
	{ config_id = 372008, gadget_id = 70500000, pos = { x = 1821.554, y = 242.481, z = -515.933 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, point_type = 3005, owner = 372007, area_id = 3 },
	{ config_id = 372009, gadget_id = 70290009, pos = { x = 1824.941, y = 243.031, z = -534.702 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 3 },
	{ config_id = 372010, gadget_id = 70500000, pos = { x = 1824.941, y = 243.031, z = -534.702 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, point_type = 3005, owner = 372009, area_id = 3 },
	{ config_id = 372011, gadget_id = 70220020, pos = { x = 1818.458, y = 242.890, z = -538.197 }, rot = { x = 0.000, y = 23.300, z = 0.000 }, level = 10, area_id = 3 },
	{ config_id = 372012, gadget_id = 70220020, pos = { x = 1831.370, y = 243.172, z = -531.033 }, rot = { x = 0.000, y = 295.200, z = 0.000 }, level = 10, area_id = 3 },
	{ config_id = 372013, gadget_id = 70220020, pos = { x = 1830.441, y = 242.257, z = -519.774 }, rot = { x = 0.000, y = 229.100, z = 0.000 }, level = 10, area_id = 3 }
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
		gadgets = { 372001, 372002, 372003, 372004, 372005, 372006, 372007, 372008, 372009, 372010, 372011, 372012, 372013 },
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