--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 913001, monster_id = 21010101, pos = { x = 1603.657, y = 289.449, z = 561.203 }, rot = { x = 0.000, y = 185.600, z = 0.000 }, level = 26, drop_id = 1000100, affix = { 1101 }, area_id = 5 },
	{ config_id = 913002, monster_id = 21010101, pos = { x = 1605.445, y = 289.195, z = 560.035 }, rot = { x = 0.000, y = 185.600, z = 0.000 }, level = 26, drop_id = 1000100, affix = { 1101 }, area_id = 5 },
	{ config_id = 913003, monster_id = 21010101, pos = { x = 1607.218, y = 289.854, z = 561.969 }, rot = { x = 0.000, y = 185.600, z = 0.000 }, level = 26, drop_id = 1000100, affix = { 1101 }, area_id = 5 }
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
		rand_weight = 100,
		ban_refresh = true
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 913001, 913002, 913003 },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100,
		ban_refresh = true
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================