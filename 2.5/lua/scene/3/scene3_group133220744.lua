-- 基础信息
local base_info = {
	group_id = 133220744
}

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
	{ config_id = 744001, npc_id = 12493, pos = { x = -2467.817, y = 203.979, z = -4153.832 }, rot = { x = 0.000, y = 188.281, z = 0.000 }, area_id = 11 },
	{ config_id = 744002, npc_id = 12493, pos = { x = -2465.069, y = 203.996, z = -4155.652 }, rot = { x = 0.000, y = 225.164, z = 0.000 }, area_id = 11 },
	{ config_id = 744003, npc_id = 12378, pos = { x = -2465.979, y = 201.919, z = -4156.902 }, rot = { x = 0.000, y = 238.842, z = 0.000 }, area_id = 11 }
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
		npcs = { 744001, 744003 },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================