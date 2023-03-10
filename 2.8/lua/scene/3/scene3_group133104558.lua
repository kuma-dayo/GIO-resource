-- 基础信息
local base_info = {
	group_id = 133104558
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 558002, monster_id = 28030402, pos = { x = 797.732, y = 253.828, z = 974.192 }, rot = { x = 3.404, y = 327.063, z = 5.236 }, level = 19, drop_tag = "鸟类", pose_id = 2, area_id = 6 },
	{ config_id = 558003, monster_id = 28030402, pos = { x = 795.173, y = 253.828, z = 972.758 }, rot = { x = 0.000, y = 101.446, z = 0.000 }, level = 19, drop_tag = "鸟类", pose_id = 901, area_id = 6 },
	{ config_id = 558005, monster_id = 28030101, pos = { x = 719.495, y = 236.959, z = 908.279 }, rot = { x = 0.000, y = 186.640, z = 0.000 }, level = 19, drop_tag = "鸟类", pose_id = 901, area_id = 6 },
	{ config_id = 558006, monster_id = 28030101, pos = { x = 774.367, y = 261.526, z = 973.399 }, rot = { x = 0.000, y = 165.440, z = 0.000 }, level = 19, drop_tag = "鸟类", pose_id = 901, area_id = 6 }
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
		monsters = { 558002, 558003, 558005, 558006 },
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