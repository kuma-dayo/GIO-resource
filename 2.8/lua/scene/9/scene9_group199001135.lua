-- 基础信息
local base_info = {
	group_id = 199001135
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
}

-- 装置
gadgets = {
	{ config_id = 135001, gadget_id = 70211001, pos = { x = 216.239, y = 197.259, z = 165.114 }, rot = { x = 7.975, y = 4.505, z = 359.763 }, level = 16, drop_tag = "战斗低级群岛", isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 402 }
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
		gadgets = { 135001 },
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