-- 基础信息
local base_info = {
	group_id = 133008437
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 437001, monster_id = 21011301, pos = { x = 1276.289, y = 272.998, z = -1223.410 }, rot = { x = 0.000, y = 48.258, z = 0.000 }, level = 30, drop_tag = "丘丘人", pose_id = 32, climate_area_id = 1, area_id = 10 },
	{ config_id = 437002, monster_id = 21011301, pos = { x = 1282.622, y = 273.333, z = -1224.706 }, rot = { x = 0.000, y = 350.836, z = 0.000 }, level = 30, drop_tag = "丘丘人", pose_id = 32, climate_area_id = 1, area_id = 10 },
	{ config_id = 437003, monster_id = 21030501, pos = { x = 1281.633, y = 273.607, z = -1218.659 }, rot = { x = 0.000, y = 304.441, z = 0.000 }, level = 30, drop_tag = "丘丘萨满", pose_id = 9012, climate_area_id = 1, area_id = 10 },
	{ config_id = 437004, monster_id = 21020601, pos = { x = 1278.983, y = 272.718, z = -1219.047 }, rot = { x = 0.000, y = 133.539, z = 0.000 }, level = 30, drop_tag = "丘丘暴徒", pose_id = 401, climate_area_id = 1, area_id = 10 }
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
		monsters = { 437001, 437002, 437003, 437004 },
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