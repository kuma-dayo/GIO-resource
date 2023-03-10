-- 基础信息
local base_info = {
	group_id = 220000018
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
	{ config_id = 59, gadget_id = 70380002, pos = { x = 63.374, y = 0.500, z = -44.197 }, rot = { x = 0.000, y = 280.668, z = 0.000 }, level = 1, route_id = 2 },
	{ config_id = 60, gadget_id = 70380002, pos = { x = 74.942, y = 0.500, z = -46.514 }, rot = { x = 0.000, y = 283.577, z = 0.000 }, level = 1, route_id = 4 },
	{ config_id = 61, gadget_id = 70380002, pos = { x = 67.649, y = 0.500, z = -34.422 }, rot = { x = 0.000, y = 316.142, z = 0.000 }, level = 1, route_id = 3 }
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
	suite = 2,
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
		-- description = suite_1,
		monsters = { },
		gadgets = { 59, 60, 61 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = suite_2,
		monsters = { },
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