--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 143001, monster_id = 24020401, pos = { x = -5990.816, y = 164.685, z = -2779.655 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 33, drop_tag = "拟生机关", pose_id = 100, climate_area_id = 7, area_id = 18 },
	{ config_id = 143002, monster_id = 24020401, pos = { x = -6001.188, y = 163.690, z = -2799.220 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 33, drop_tag = "拟生机关", pose_id = 100, climate_area_id = 7, area_id = 18 }
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
		monsters = { 143001, 143002 },
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