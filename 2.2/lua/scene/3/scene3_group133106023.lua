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
	{ config_id = 23001, gadget_id = 70500000, pos = { x = -912.047, y = 218.892, z = 1603.382 }, rot = { x = 0.000, y = 129.966, z = 0.000 }, level = 32, point_type = 2004 },
	{ config_id = 23002, gadget_id = 70500000, pos = { x = -1019.523, y = 229.739, z = 1607.093 }, rot = { x = 0.000, y = 307.474, z = 0.000 }, level = 32, point_type = 2004 },
	{ config_id = 23003, gadget_id = 70500000, pos = { x = -857.650, y = 205.668, z = 1582.024 }, rot = { x = 0.000, y = 353.102, z = 0.000 }, level = 32, point_type = 2004 }
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
		gadgets = { 23001, 23002, 23003 },
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