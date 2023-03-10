--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 217002, monster_id = 25030201, pos = { x = 50.994, y = 202.398, z = -73.660 }, rot = { x = 0.000, y = 240.129, z = 0.000 }, level = 22, drop_tag = "盗宝团", pose_id = 9003, area_id = 7 },
	{ config_id = 217003, monster_id = 25020201, pos = { x = 46.799, y = 203.779, z = -63.907 }, rot = { x = 0.000, y = 99.121, z = 0.000 }, level = 22, drop_tag = "盗宝团", area_id = 7 },
	{ config_id = 217004, monster_id = 25010201, pos = { x = 46.788, y = 203.282, z = -68.533 }, rot = { x = 0.000, y = 186.667, z = 0.000 }, level = 22, drop_tag = "盗宝团", disableWander = true, pose_id = 9004, area_id = 7 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 217001, gadget_id = 70310006, pos = { x = 46.651, y = 202.968, z = -70.256 }, rot = { x = 354.028, y = 0.031, z = 359.109 }, level = 19, area_id = 7 }
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
	end_suite = 2,
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
		monsters = { 217002, 217003, 217004 },
		gadgets = { 217001 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = suite_2,
		monsters = { },
		gadgets = { 217001 },
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