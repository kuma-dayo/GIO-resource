--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 98001, monster_id = 21010301, pos = { x = -6353.767, y = 246.712, z = -2659.360 }, rot = { x = 0.000, y = 333.327, z = 0.000 }, level = 33, drop_tag = "丘丘人", pose_id = 9016, climate_area_id = 7, area_id = 18 },
	{ config_id = 98002, monster_id = 21010201, pos = { x = -6352.965, y = 246.858, z = -2657.333 }, rot = { x = 0.000, y = 237.106, z = 0.000 }, level = 33, drop_tag = "丘丘人", pose_id = 9016, climate_area_id = 7, area_id = 18 }
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
		monsters = { 98001, 98002 },
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