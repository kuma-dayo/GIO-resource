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
	{ config_id = 345001, npc_id = 1269, pos = { x = 2244.384, y = 211.098, z = -928.675 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, area_id = 1 },
	{ config_id = 345002, npc_id = 1270, pos = { x = 2246.952, y = 211.098, z = -930.124 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, area_id = 1 },
	{ config_id = 345003, npc_id = 1271, pos = { x = 2247.548, y = 211.098, z = -930.440 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, area_id = 1 }
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
		npcs = { 345001, 345002, 345003 },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================