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
	{ config_id = 24001, gadget_id = 70500000, pos = { x = -616.417, y = 146.647, z = 1598.665 }, rot = { x = 0.000, y = 302.523, z = 0.000 }, level = 32, point_type = 2004 },
	{ config_id = 24002, gadget_id = 70500000, pos = { x = -557.791, y = 147.954, z = 1608.254 }, rot = { x = 0.000, y = 334.730, z = 0.000 }, level = 32, point_type = 2001 }
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
		gadgets = { 24001, 24002 },
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