-- 基础信息
local base_info = {
	group_id = 133008632
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 632001, monster_id = 21020601, pos = { x = 1024.417, y = 407.488, z = -1025.306 }, rot = { x = 358.614, y = 312.754, z = 354.662 }, level = 30, drop_tag = "丘丘暴徒", pose_id = 401, climate_area_id = 1, area_id = 10 },
	{ config_id = 632002, monster_id = 21011301, pos = { x = 1025.572, y = 409.515, z = -1016.885 }, rot = { x = 0.000, y = 194.683, z = 0.000 }, level = 30, drop_tag = "丘丘人", pose_id = 32, climate_area_id = 1, area_id = 10 },
	{ config_id = 632003, monster_id = 21011401, pos = { x = 1021.601, y = 407.574, z = -1023.564 }, rot = { x = 0.000, y = 97.723, z = 0.000 }, level = 30, drop_tag = "丘丘人", pose_id = 9010, climate_area_id = 1, area_id = 10 },
	{ config_id = 632004, monster_id = 21011401, pos = { x = 1022.993, y = 407.352, z = -1022.118 }, rot = { x = 0.000, y = 149.972, z = 0.000 }, level = 30, drop_tag = "丘丘人", pose_id = 9010, climate_area_id = 1, area_id = 10 }
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
		monsters = { 632001, 632002, 632003, 632004 },
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