--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 29, monster_id = 21010201, pos = { x = 137.383, y = 0.500, z = 180.744 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, disableWander = true },
	{ config_id = 30, monster_id = 21010201, pos = { x = 137.434, y = 0.500, z = 186.342 }, rot = { x = 0.000, y = 204.375, z = 0.000 }, level = 1, disableWander = true },
	{ config_id = 31, monster_id = 21010301, pos = { x = 133.594, y = 0.500, z = 183.176 }, rot = { x = 0.000, y = 81.204, z = 0.000 }, level = 1, disableWander = true }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
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
		-- description = suite_1,
		monsters = { 29, 30, 31 },
		gadgets = { },
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