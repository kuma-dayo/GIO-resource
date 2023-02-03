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
	{ config_id = 2001, gadget_id = 70500000, pos = { x = -6.839, y = 1.209, z = 5.069 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, point_type = 9052, isOneoff = true, room = 1 },
	{ config_id = 2002, gadget_id = 70500000, pos = { x = 12.045, y = 0.308, z = -3.762 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, point_type = 9053, isOneoff = true, room = 1 },
	{ config_id = 2003, gadget_id = 70500000, pos = { x = 12.770, y = 0.439, z = -0.995 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, point_type = 9054, isOneoff = true, room = 1 },
	{ config_id = 2004, gadget_id = 70500000, pos = { x = 3.082, y = 1.222, z = -20.209 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, point_type = 9074, room = 1 },
	{ config_id = 2005, gadget_id = 70500000, pos = { x = 6.730, y = 0.993, z = 4.267 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, point_type = 9092, room = 1 },
	{ config_id = 2006, gadget_id = 70500000, pos = { x = 12.079, y = 0.969, z = -9.940 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, point_type = 9094, room = 1 },
	{ config_id = 2007, gadget_id = 70500000, pos = { x = 13.085, y = 1.147, z = -8.081 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, point_type = 9205, room = 1 },
	{ config_id = 2008, gadget_id = 70500000, pos = { x = 9.924, y = 1.103, z = 6.533 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, point_type = 9212, room = 1 }
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
		gadgets = { 2001, 2002, 2003, 2004, 2005, 2006, 2007, 2008 },
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