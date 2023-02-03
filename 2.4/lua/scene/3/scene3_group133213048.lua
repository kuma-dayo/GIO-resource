--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 48001, monster_id = 25100201, pos = { x = -3318.032, y = 200.000, z = -3372.480 }, rot = { x = 0.000, y = 349.947, z = 0.000 }, level = 25, drop_tag = "高阶武士", disableWander = true, pose_id = 1, area_id = 12 },
	{ config_id = 48002, monster_id = 28040102, pos = { x = -3323.896, y = 200.000, z = -3363.089 }, rot = { x = 0.000, y = 340.359, z = 0.000 }, level = 27, drop_tag = "水族", area_id = 12 },
	{ config_id = 48003, monster_id = 28040102, pos = { x = -3323.943, y = 200.000, z = -3361.864 }, rot = { x = 0.000, y = 46.715, z = 0.000 }, level = 27, drop_tag = "水族", area_id = 12 },
	{ config_id = 48004, monster_id = 25010301, pos = { x = -3321.275, y = 199.464, z = -3363.110 }, rot = { x = 0.000, y = 282.853, z = 0.000 }, level = 27, drop_tag = "盗宝团", disableWander = true, pose_id = 9003, area_id = 12 },
	{ config_id = 48005, monster_id = 25080201, pos = { x = -3315.278, y = 200.000, z = -3379.189 }, rot = { x = 0.000, y = 340.813, z = 0.000 }, level = 27, drop_tag = "浪人武士", pose_id = 1004, area_id = 12 },
	{ config_id = 48007, monster_id = 28040102, pos = { x = -3323.815, y = 200.000, z = -3360.795 }, rot = { x = 0.000, y = 19.917, z = 0.000 }, level = 27, drop_tag = "水族", area_id = 12 },
	{ config_id = 48008, monster_id = 28040102, pos = { x = -3323.150, y = 200.000, z = -3361.387 }, rot = { x = 0.000, y = 229.022, z = 0.000 }, level = 27, drop_tag = "水族", area_id = 12 },
	{ config_id = 48009, monster_id = 28040102, pos = { x = -3323.118, y = 200.000, z = -3360.291 }, rot = { x = 0.000, y = 248.663, z = 0.000 }, level = 27, drop_tag = "水族", area_id = 12 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 48006, gadget_id = 70310006, pos = { x = -3315.127, y = 200.049, z = -3376.934 }, rot = { x = 0.000, y = 0.000, z = 4.467 }, level = 27, area_id = 12 },
	{ config_id = 48010, gadget_id = 70220048, pos = { x = -3311.771, y = 200.135, z = -3383.171 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 12 },
	{ config_id = 48011, gadget_id = 70220048, pos = { x = -3310.637, y = 200.200, z = -3380.232 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 12 },
	{ config_id = 48012, gadget_id = 70220051, pos = { x = -3312.368, y = 200.069, z = -3381.566 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 12 },
	{ config_id = 48013, gadget_id = 70220051, pos = { x = -3311.759, y = 201.288, z = -3368.147 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 12 },
	{ config_id = 48014, gadget_id = 70220052, pos = { x = -3312.326, y = 201.309, z = -3367.383 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 12 },
	{ config_id = 48015, gadget_id = 70220052, pos = { x = -3312.138, y = 200.040, z = -3380.178 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 12 }
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
		monsters = { 48001, 48002, 48003, 48004, 48005, 48007, 48008, 48009 },
		gadgets = { 48006, 48010, 48011, 48012, 48013, 48014, 48015 },
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