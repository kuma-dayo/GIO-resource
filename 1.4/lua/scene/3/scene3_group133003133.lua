--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 574, monster_id = 21010301, pos = { x = 2307.467, y = 247.262, z = -1263.036 }, rot = { x = 0.000, y = 82.261, z = 0.000 }, level = 10, drop_tag = "丘丘人", disableWander = true, pose_id = 9003, area_id = 1 },
	{ config_id = 575, monster_id = 21010201, pos = { x = 2309.185, y = 247.471, z = -1257.592 }, rot = { x = 0.000, y = 157.211, z = 0.000 }, level = 10, drop_tag = "丘丘人", disableWander = true, area_id = 1 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 2579, gadget_id = 70900019, pos = { x = 2311.714, y = 247.066, z = -1262.554 }, rot = { x = 0.000, y = 143.948, z = 0.000 }, level = 5, area_id = 1 }
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
		monsters = { 574, 575 },
		gadgets = { 2579 },
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