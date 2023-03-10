-- 基础信息
local base_info = {
	group_id = 133210331
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 331001, monster_id = 28010206, pos = { x = -4039.071, y = 201.196, z = -688.988 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, drop_tag = "采集动物", area_id = 17 },
	{ config_id = 331002, monster_id = 28010206, pos = { x = -4037.253, y = 201.115, z = -680.963 }, rot = { x = 0.000, y = 245.700, z = 0.000 }, level = 30, drop_tag = "采集动物", area_id = 17 },
	{ config_id = 331003, monster_id = 28010204, pos = { x = -3864.699, y = 256.022, z = -513.480 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, drop_tag = "采集动物", area_id = 17 },
	{ config_id = 331004, monster_id = 28040101, pos = { x = -3950.487, y = 186.975, z = -637.214 }, rot = { x = 0.000, y = 273.603, z = 0.000 }, level = 30, drop_tag = "水族", area_id = 17 },
	{ config_id = 331005, monster_id = 28040101, pos = { x = -3946.964, y = 186.975, z = -632.263 }, rot = { x = 0.000, y = 273.603, z = 0.000 }, level = 30, drop_tag = "水族", area_id = 17 },
	{ config_id = 331006, monster_id = 28040101, pos = { x = -3943.535, y = 186.975, z = -639.800 }, rot = { x = 0.000, y = 273.603, z = 0.000 }, level = 30, drop_tag = "水族", area_id = 17 },
	{ config_id = 331011, monster_id = 28010401, pos = { x = -4065.488, y = 199.854, z = -732.876 }, rot = { x = 0.000, y = 148.068, z = 0.000 }, level = 30, drop_tag = "采集动物", pose_id = 1, area_id = 17 },
	{ config_id = 331012, monster_id = 28010401, pos = { x = -4066.073, y = 199.887, z = -738.025 }, rot = { x = 0.000, y = 54.435, z = 0.000 }, level = 30, drop_tag = "采集动物", pose_id = 1, area_id = 17 },
	{ config_id = 331013, monster_id = 28010401, pos = { x = -4064.165, y = 199.856, z = -723.689 }, rot = { x = 0.000, y = 263.714, z = 0.000 }, level = 30, drop_tag = "采集动物", pose_id = 1, area_id = 17 }
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
		{ config_id = 331007, monster_id = 28040102, pos = { x = -3911.920, y = 126.830, z = -674.597 }, rot = { x = 0.000, y = 78.789, z = 0.000 }, level = 30, drop_tag = "水族", area_id = 17 },
		{ config_id = 331008, monster_id = 28040102, pos = { x = -3915.655, y = 126.830, z = -658.612 }, rot = { x = 0.000, y = 216.683, z = 0.000 }, level = 30, drop_tag = "水族", area_id = 17 },
		{ config_id = 331009, monster_id = 28040101, pos = { x = -3879.057, y = 126.830, z = -659.304 }, rot = { x = 0.000, y = 28.634, z = 0.000 }, level = 30, drop_tag = "水族", area_id = 17 },
		{ config_id = 331010, monster_id = 28040101, pos = { x = -3885.309, y = 126.830, z = -654.326 }, rot = { x = 0.000, y = 352.247, z = 0.000 }, level = 30, drop_tag = "水族", area_id = 17 }
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
		monsters = { 331001, 331002, 331003, 331004, 331005, 331006, 331011, 331012, 331013 },
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