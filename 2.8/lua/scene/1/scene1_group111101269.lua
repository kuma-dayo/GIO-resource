-- 基础信息
local base_info = {
	group_id = 111101269
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 269001, monster_id = 21010401, pos = { x = 2191.214, y = 250.600, z = -1668.636 }, rot = { x = 0.000, y = 343.792, z = 0.000 }, level = 1, drop_id = 1000100 },
	{ config_id = 269002, monster_id = 21010401, pos = { x = 2188.001, y = 250.407, z = -1669.615 }, rot = { x = 0.000, y = 344.211, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true },
	{ config_id = 269003, monster_id = 21010401, pos = { x = 2184.241, y = 250.345, z = -1671.354 }, rot = { x = 0.000, y = 352.956, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true }
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
		monsters = { 269001, 269002, 269003 },
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