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
	{ config_id = 30001, gadget_id = 70500000, pos = { x = 2863.995, y = 260.291, z = -1809.180 }, rot = { x = 0.000, y = 320.835, z = 0.000 }, level = 15, point_type = 2007, area_id = 1 },
	{ config_id = 30002, gadget_id = 70500000, pos = { x = 2928.336, y = 240.693, z = -1827.258 }, rot = { x = 0.000, y = 59.898, z = 0.000 }, level = 15, point_type = 2007, area_id = 1 },
	{ config_id = 30003, gadget_id = 70500000, pos = { x = 2870.008, y = 256.673, z = -1827.146 }, rot = { x = 0.000, y = 149.702, z = 0.000 }, level = 15, point_type = 2007, area_id = 1 },
	{ config_id = 30004, gadget_id = 70500000, pos = { x = 2854.710, y = 259.360, z = -1867.845 }, rot = { x = 0.000, y = 13.328, z = 0.000 }, level = 15, point_type = 2004, area_id = 1 },
	{ config_id = 30005, gadget_id = 70500000, pos = { x = 2913.717, y = 247.732, z = -1855.868 }, rot = { x = 0.000, y = 40.248, z = 0.000 }, level = 15, point_type = 2004, area_id = 1 },
	{ config_id = 30006, gadget_id = 70500000, pos = { x = 2913.567, y = 235.619, z = -1793.755 }, rot = { x = 0.000, y = 32.205, z = 0.000 }, level = 15, point_type = 2004, area_id = 1 },
	{ config_id = 30007, gadget_id = 70290001, pos = { x = 2841.489, y = 262.653, z = -1874.734 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 15, area_id = 1 },
	{ config_id = 30008, gadget_id = 70500000, pos = { x = 2841.506, y = 263.222, z = -1874.333 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 15, point_type = 3002, owner = 30007, area_id = 1 },
	{ config_id = 30009, gadget_id = 70500000, pos = { x = 2841.424, y = 263.508, z = -1875.130 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 15, point_type = 3002, owner = 30007, area_id = 1 },
	{ config_id = 30010, gadget_id = 70500000, pos = { x = 2841.757, y = 263.920, z = -1874.837 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 15, point_type = 3002, owner = 30007, area_id = 1 },
	{ config_id = 30011, gadget_id = 70500000, pos = { x = 2869.740, y = 258.222, z = -1819.255 }, rot = { x = 0.000, y = 81.545, z = 0.000 }, level = 15, point_type = 2004, area_id = 1 },
	{ config_id = 30012, gadget_id = 70500000, pos = { x = 2912.141, y = 247.498, z = -1854.020 }, rot = { x = 0.000, y = 271.102, z = 0.000 }, level = 15, point_type = 2004, area_id = 1 },
	{ config_id = 30013, gadget_id = 70500000, pos = { x = 2886.933, y = 259.005, z = -1794.496 }, rot = { x = 0.000, y = 287.048, z = 0.000 }, level = 15, point_type = 2009, area_id = 1 },
	{ config_id = 30014, gadget_id = 70500000, pos = { x = 2936.877, y = 237.330, z = -1800.937 }, rot = { x = 0.000, y = 263.565, z = 0.000 }, level = 15, point_type = 2009, area_id = 1 }
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
		gadgets = { 30001, 30002, 30003, 30004, 30005, 30006, 30007, 30008, 30009, 30010, 30011, 30012, 30013, 30014 },
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