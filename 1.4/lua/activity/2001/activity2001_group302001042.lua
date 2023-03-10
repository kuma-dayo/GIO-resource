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
	{ config_id = 42001, npc_id = 30032, pos = { x = 928.776, y = 209.815, z = 277.476 }, rot = { x = 3.470, y = 269.850, z = 0.000 }, area_id = 5 },
	{ config_id = 42002, npc_id = 30033, pos = { x = 881.051, y = 209.863, z = 264.823 }, rot = { x = 0.000, y = 20.590, z = 0.000 }, area_id = 5 },
	{ config_id = 42003, npc_id = 30034, pos = { x = 872.465, y = 209.579, z = 283.168 }, rot = { x = 0.000, y = 121.690, z = 0.000 }, area_id = 5 },
	{ config_id = 42004, npc_id = 30020, pos = { x = 927.275, y = 208.066, z = 282.566 }, rot = { x = 0.000, y = 264.100, z = 0.000 }, area_id = 5 },
	{ config_id = 42005, npc_id = 30021, pos = { x = 885.593, y = 208.655, z = 266.445 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, area_id = 5 },
	{ config_id = 42006, npc_id = 30022, pos = { x = 878.668, y = 208.276, z = 282.690 }, rot = { x = 0.000, y = 195.670, z = 0.000 }, area_id = 5 }
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
		-- description = NPC睡着,
		monsters = { },
		gadgets = { },
		regions = { },
		triggers = { },
		npcs = { 42001, 42002, 42003 },
		rand_weight = 100,
		ban_refresh = true
	},
	{
		-- suite_id = 2,
		-- description = NPC醒来,
		monsters = { },
		gadgets = { },
		regions = { },
		triggers = { },
		npcs = { 42004, 42005, 42006 },
		rand_weight = 100,
		ban_refresh = true
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

require "AsterMiddle"