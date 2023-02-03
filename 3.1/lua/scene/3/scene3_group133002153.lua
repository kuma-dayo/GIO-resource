-- 基础信息
local base_info = {
	group_id = 133002153
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
	{ config_id = 153001, gadget_id = 70800270, pos = { x = 2003.403, y = 207.754, z = -897.055 }, rot = { x = 0.000, y = 86.510, z = 0.000 }, level = 1, area_id = 3 },
	{ config_id = 153002, gadget_id = 70800271, pos = { x = 2003.398, y = 207.739, z = -897.057 }, rot = { x = 359.592, y = 84.044, z = 0.700 }, level = 1, area_id = 3 }
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
		gadgets = { 153001 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 153002 },
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