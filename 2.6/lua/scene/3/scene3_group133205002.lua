-- 基础信息
local base_info = {
	group_id = 133205002
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
	{ config_id = 2001, npc_id = 1273, pos = { x = -2425.569, y = 257.425, z = -3902.722 }, rot = { x = 0.000, y = 281.369, z = 0.000 }, area_id = 11 },
	{ config_id = 2002, npc_id = 1274, pos = { x = -3532.207, y = 236.365, z = -3239.161 }, rot = { x = 0.000, y = 91.497, z = 0.000 }, area_id = 12 },
	{ config_id = 2003, npc_id = 1275, pos = { x = -3700.999, y = 243.892, z = -2215.695 }, rot = { x = 0.000, y = 339.781, z = 0.000 }, area_id = 13 }
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
		npcs = { 2001, 2002, 2003 },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================