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
	{ config_id = 601001, gadget_id = 70360152, pos = { x = 1806.832, y = 194.762, z = -1551.250 }, rot = { x = 0.000, y = 263.000, z = 0.000 }, level = 1, draft_id = 2001, area_id = 2 },
	{ config_id = 601002, gadget_id = 70360147, pos = { x = 1813.319, y = 473.803, z = -1548.857 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 2 }
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
		gadgets = { 601001, 601002 },
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