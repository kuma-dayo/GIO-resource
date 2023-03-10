--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 140001, monster_id = 28040102, pos = { x = 1440.162, y = 200.000, z = 379.819 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 16, drop_tag = "水族", area_id = 5 },
	{ config_id = 140002, monster_id = 28040102, pos = { x = 1443.336, y = 200.000, z = 379.294 }, rot = { x = 0.000, y = 266.114, z = 0.000 }, level = 16, drop_tag = "水族", area_id = 5 },
	{ config_id = 140003, monster_id = 28040102, pos = { x = 1439.665, y = 200.000, z = 376.264 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 16, drop_tag = "水族", area_id = 5 },
	{ config_id = 140004, monster_id = 28040101, pos = { x = 1421.474, y = 200.000, z = 361.244 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 16, drop_tag = "水族", area_id = 5 },
	{ config_id = 140005, monster_id = 28040101, pos = { x = 1427.646, y = 200.000, z = 365.077 }, rot = { x = 0.000, y = 254.109, z = 0.000 }, level = 16, drop_tag = "水族", area_id = 5 },
	{ config_id = 140006, monster_id = 28040101, pos = { x = 1431.323, y = 200.000, z = 368.231 }, rot = { x = 0.000, y = 238.208, z = 0.000 }, level = 16, drop_tag = "水族", area_id = 5 },
	{ config_id = 140007, monster_id = 28040101, pos = { x = 1418.192, y = 200.000, z = 303.052 }, rot = { x = 0.000, y = 10.687, z = 0.000 }, level = 16, drop_tag = "水族", area_id = 5 },
	{ config_id = 140008, monster_id = 28040101, pos = { x = 1421.413, y = 200.000, z = 307.081 }, rot = { x = 0.000, y = 29.741, z = 0.000 }, level = 16, drop_tag = "水族", area_id = 5 },
	{ config_id = 140009, monster_id = 28050102, pos = { x = 1370.546, y = 201.205, z = 278.497 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 16, drop_tag = "魔法生物", area_id = 5 },
	{ config_id = 140010, monster_id = 28050102, pos = { x = 1365.108, y = 202.670, z = 279.162 }, rot = { x = 0.000, y = 211.980, z = 0.000 }, level = 16, drop_tag = "魔法生物", area_id = 5 },
	{ config_id = 140011, monster_id = 28010205, pos = { x = 1465.179, y = 200.448, z = 288.964 }, rot = { x = 21.783, y = 358.380, z = 351.596 }, level = 16, drop_tag = "采集动物", area_id = 5 },
	{ config_id = 140012, monster_id = 28010301, pos = { x = 1346.960, y = 200.355, z = 304.032 }, rot = { x = 349.561, y = 358.375, z = 17.649 }, level = 16, drop_tag = "采集动物", area_id = 5 },
	{ config_id = 140013, monster_id = 28010205, pos = { x = 1378.558, y = 200.092, z = 406.000 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 16, drop_tag = "采集动物", area_id = 5 },
	{ config_id = 140014, monster_id = 28010205, pos = { x = 1322.011, y = 200.017, z = 355.644 }, rot = { x = 6.282, y = 76.926, z = 359.458 }, level = 16, drop_tag = "采集动物", area_id = 5 },
	{ config_id = 140015, monster_id = 28010205, pos = { x = 1326.558, y = 200.000, z = 349.286 }, rot = { x = 23.692, y = 200.336, z = 8.146 }, level = 16, drop_tag = "采集动物", area_id = 5 },
	{ config_id = 140016, monster_id = 28010205, pos = { x = 1325.783, y = 200.710, z = 352.102 }, rot = { x = 15.077, y = 64.196, z = 348.800 }, level = 16, drop_tag = "采集动物", area_id = 5 },
	{ config_id = 140017, monster_id = 28010202, pos = { x = 1405.629, y = 207.231, z = 440.776 }, rot = { x = 0.000, y = 342.093, z = 0.000 }, level = 16, drop_tag = "采集动物", area_id = 5 }
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
		monsters = { 140001, 140002, 140003, 140004, 140005, 140006, 140007, 140008, 140009, 140010, 140011, 140012, 140013, 140014, 140015, 140016, 140017 },
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