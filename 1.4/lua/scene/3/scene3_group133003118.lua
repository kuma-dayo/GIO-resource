--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 536, monster_id = 21010101, pos = { x = 2583.293, y = 253.239, z = -1639.314 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 15, drop_tag = "丘丘人", pose_id = 9003, area_id = 1 },
	{ config_id = 537, monster_id = 21010301, pos = { x = 2595.818, y = 253.440, z = -1636.173 }, rot = { x = 0.000, y = 323.195, z = 0.000 }, level = 15, drop_tag = "丘丘人", disableWander = true, area_id = 1 },
	{ config_id = 538, monster_id = 21010201, pos = { x = 2597.909, y = 250.201, z = -1627.159 }, rot = { x = 0.000, y = 254.214, z = 0.000 }, level = 15, drop_tag = "丘丘人", area_id = 1 }
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
	rand_suite = true
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
		monsters = { 536, 537, 538 },
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