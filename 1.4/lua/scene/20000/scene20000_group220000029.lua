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
	{ config_id = 69, gadget_id = 70510003, pos = { x = 135.136, y = 3.412, z = -114.147 }, rot = { x = 0.000, y = 178.201, z = 0.000 }, level = 1 },
	{ config_id = 71, gadget_id = 70510001, pos = { x = 152.893, y = 13.228, z = -125.687 }, rot = { x = 0.000, y = 84.175, z = 0.000 }, level = 1 },
	{ config_id = 72, gadget_id = 70510004, pos = { x = 114.037, y = 0.500, z = -110.477 }, rot = { x = 0.000, y = 101.644, z = 0.000 }, level = 1 }
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
	rand_suite = true
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
		gadgets = { 69, 71, 72 },
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