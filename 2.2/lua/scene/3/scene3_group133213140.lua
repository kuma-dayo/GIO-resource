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
	{ config_id = 140002, npc_id = 3166, pos = { x = -3459.618, y = 201.216, z = -3044.860 }, rot = { x = 0.000, y = 347.530, z = 0.000 }, area_id = 12 },
	{ config_id = 140003, npc_id = 3165, pos = { x = -3601.220, y = 268.701, z = -3158.154 }, rot = { x = 0.000, y = 53.492, z = 0.000 }, area_id = 12 },
	{ config_id = 140004, npc_id = 3162, pos = { x = -3659.788, y = 221.073, z = -2991.632 }, rot = { x = 0.000, y = 7.529, z = 0.000 }, area_id = 12 }
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
		-- description = ,
		monsters = { },
		gadgets = { },
		regions = { },
		triggers = { },
		npcs = { 140002, 140003, 140004 },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================