--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 12001, monster_id = 20011201, pos = { x = 453.173, y = -28.484, z = 262.842 }, rot = { x = 0.000, y = 29.768, z = 0.000 }, level = 1, disableWander = true },
	{ config_id = 12002, monster_id = 20011201, pos = { x = 457.965, y = -28.484, z = 262.499 }, rot = { x = 0.000, y = 310.652, z = 0.000 }, level = 1, disableWander = true },
	{ config_id = 12003, monster_id = 20011201, pos = { x = 457.931, y = -28.433, z = 268.973 }, rot = { x = 0.000, y = 240.051, z = 0.000 }, level = 1, disableWander = true },
	{ config_id = 12004, monster_id = 20011201, pos = { x = 453.003, y = -28.433, z = 269.417 }, rot = { x = 0.000, y = 139.972, z = 0.000 }, level = 1, disableWander = true }
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
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = suite_2,
		monsters = { 12001, 12002, 12003, 12004 },
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