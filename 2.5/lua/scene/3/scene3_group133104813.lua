-- 基础信息
local base_info = {
	group_id = 133104813
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
	{ config_id = 813002, npc_id = 30130, pos = { x = 929.237, y = 258.973, z = 358.752 }, rot = { x = 0.000, y = 81.601, z = 0.000 }, area_id = 5 }
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
		npcs = { 813002 },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================