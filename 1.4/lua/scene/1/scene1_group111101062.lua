--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 62001, monster_id = 25010301, pos = { x = 2464.628, y = 205.639, z = -1171.603 }, rot = { x = 0.000, y = 216.095, z = 0.000 }, level = 40, drop_tag = "盗宝团", disableWander = true },
	{ config_id = 62002, monster_id = 25010501, pos = { x = 2450.931, y = 205.395, z = -1187.202 }, rot = { x = 0.095, y = 67.236, z = 0.000 }, level = 40, drop_tag = "盗宝团", disableWander = true },
	{ config_id = 62003, monster_id = 25070101, pos = { x = 2457.703, y = 199.279, z = -1179.842 }, rot = { x = 0.000, y = 99.149, z = 0.000 }, level = 40, drop_tag = "盗宝团" }
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
		monsters = { 62001, 62002, 62003 },
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