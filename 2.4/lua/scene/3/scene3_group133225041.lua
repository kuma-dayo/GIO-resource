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

-- 废弃数据
garbages = {
	monsters = {
		{ config_id = 41001, monster_id = 21010201, pos = { x = -6205.308, y = 213.053, z = -2364.333 }, rot = { x = 0.000, y = 141.095, z = 0.000 }, level = 33, drop_tag = "丘丘人", pose_id = 9016, climate_area_id = 7, area_id = 18 },
		{ config_id = 41002, monster_id = 21010201, pos = { x = -6203.666, y = 213.070, z = -2364.418 }, rot = { x = 0.000, y = 223.882, z = 0.000 }, level = 33, drop_tag = "丘丘人", pose_id = 9016, climate_area_id = 7, area_id = 18 }
	}
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