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
	{ config_id = 220005, gadget_id = 70500000, pos = { x = 130.366, y = 196.741, z = -335.574 }, rot = { x = 347.100, y = 121.342, z = 3.884 }, level = 36, point_type = 1008, area_id = 200 },
	{ config_id = 220006, gadget_id = 70500000, pos = { x = 133.272, y = 195.386, z = -330.345 }, rot = { x = 13.589, y = 334.308, z = 1.046 }, level = 36, point_type = 1008, area_id = 200 }
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
		gadgets = { 220005, 220006 },
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