-- 基础信息
local base_info = {
	group_id = 166001178
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
	{ config_id = 178001, npc_id = 2161, pos = { x = 998.756, y = 748.525, z = 262.204 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, area_id = 300 },
	{ config_id = 178002, npc_id = 2162, pos = { x = 774.239, y = 706.884, z = 215.739 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, area_id = 300 }
}

-- 装置
gadgets = {
	{ config_id = 178003, gadget_id = 70300110, pos = { x = 998.783, y = 748.459, z = 262.286 }, rot = { x = 0.000, y = 312.240, z = 0.000 }, level = 32, area_id = 300 },
	{ config_id = 178004, gadget_id = 70300110, pos = { x = 774.208, y = 706.903, z = 215.748 }, rot = { x = 0.000, y = 312.240, z = 0.000 }, level = 32, area_id = 300 }
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
		gadgets = { 178003, 178004 },
		regions = { },
		triggers = { },
		npcs = { 178001, 178002 },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================