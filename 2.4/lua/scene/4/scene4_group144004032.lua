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
	{ config_id = 32001, gadget_id = 70500000, pos = { x = -724.104, y = 199.534, z = -36.956 }, rot = { x = 44.628, y = 52.744, z = 353.905 }, level = 1, point_type = 1002, area_id = 103 },
	{ config_id = 32002, gadget_id = 70500000, pos = { x = -726.168, y = 199.325, z = -40.272 }, rot = { x = 0.000, y = 225.665, z = 0.000 }, level = 1, point_type = 1002, area_id = 103 },
	{ config_id = 32003, gadget_id = 70500000, pos = { x = -720.685, y = 197.955, z = -43.655 }, rot = { x = 0.000, y = 209.264, z = 0.000 }, level = 1, point_type = 1002, area_id = 103 },
	{ config_id = 32004, gadget_id = 70500000, pos = { x = -724.164, y = 197.969, z = -42.666 }, rot = { x = 0.000, y = 76.106, z = 0.000 }, level = 1, point_type = 1002, area_id = 103 }
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
		gadgets = { 32001, 32002, 32003, 32004 },
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