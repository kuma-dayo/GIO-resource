-- 基础信息
local base_info = {
	group_id = 201068002
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
	{ config_id = 2001, npc_id = 30114, pos = { x = 0.438, y = 0.000, z = 8.257 }, rot = { x = 0.000, y = 180.000, z = 0.000 }, room = 1 }
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
		-- description = 剧情模式完成前 空suite,
		monsters = { },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = 剧情模式完成后 显示查尔斯,
		monsters = { },
		gadgets = { },
		regions = { },
		triggers = { },
		npcs = { 2001 },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================