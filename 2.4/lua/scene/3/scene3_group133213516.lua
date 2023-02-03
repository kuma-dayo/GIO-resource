--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 516001, monster_id = 28040101, pos = { x = -3135.599, y = 200.000, z = -3328.702 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, drop_tag = "水族", area_id = 12 },
	{ config_id = 516002, monster_id = 28040101, pos = { x = -3129.117, y = 200.000, z = -3324.603 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, drop_tag = "水族", area_id = 12 },
	{ config_id = 516003, monster_id = 28040101, pos = { x = -3129.315, y = 200.000, z = -3330.568 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, drop_tag = "水族", area_id = 12 },
	{ config_id = 516004, monster_id = 28040101, pos = { x = -2920.386, y = 200.000, z = -3208.444 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, drop_tag = "水族", area_id = 12 },
	{ config_id = 516005, monster_id = 28040101, pos = { x = -2933.813, y = 200.000, z = -3180.689 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, drop_tag = "水族", area_id = 12 },
	{ config_id = 516006, monster_id = 28040101, pos = { x = -2920.269, y = 200.000, z = -3191.369 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, drop_tag = "水族", area_id = 12 },
	{ config_id = 516007, monster_id = 28040101, pos = { x = -3291.679, y = 200.000, z = -3159.736 }, rot = { x = 0.000, y = 136.609, z = 0.000 }, level = 27, drop_tag = "水族", area_id = 12 },
	{ config_id = 516008, monster_id = 28040101, pos = { x = -3288.339, y = 200.000, z = -3158.450 }, rot = { x = 0.000, y = 208.745, z = 0.000 }, level = 27, drop_tag = "水族", area_id = 12 }
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
		monsters = { 516001, 516002, 516003, 516004, 516005, 516006, 516007, 516008 },
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