--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 579, monster_id = 28020301, pos = { x = 2577.469, y = 265.290, z = -259.414 }, rot = { x = 0.000, y = 337.478, z = 0.000 }, level = 1, drop_tag = "走兽", area_id = 4 },
	{ config_id = 580, monster_id = 28020301, pos = { x = 2562.689, y = 264.014, z = -258.434 }, rot = { x = 0.000, y = 121.361, z = 0.000 }, level = 1, drop_tag = "走兽", area_id = 4 },
	{ config_id = 581, monster_id = 28020301, pos = { x = 2574.550, y = 263.326, z = -279.237 }, rot = { x = 0.000, y = 127.018, z = 0.000 }, level = 1, drop_tag = "走兽", area_id = 4 },
	{ config_id = 582, monster_id = 28020301, pos = { x = 2589.746, y = 264.224, z = -296.730 }, rot = { x = 0.000, y = 167.794, z = 0.000 }, level = 1, drop_tag = "走兽", area_id = 4 },
	{ config_id = 583, monster_id = 28020301, pos = { x = 2578.845, y = 262.562, z = -294.290 }, rot = { x = 0.000, y = 217.130, z = 0.000 }, level = 1, drop_tag = "走兽", area_id = 4 },
	{ config_id = 584, monster_id = 28020301, pos = { x = 2537.658, y = 263.413, z = -257.463 }, rot = { x = 0.000, y = 287.762, z = 0.000 }, level = 1, drop_tag = "走兽", area_id = 4 },
	{ config_id = 585, monster_id = 28020301, pos = { x = 2561.491, y = 258.292, z = -301.762 }, rot = { x = 0.000, y = 192.687, z = 0.000 }, level = 1, drop_tag = "走兽", area_id = 4 },
	{ config_id = 586, monster_id = 28020301, pos = { x = 2553.802, y = 263.062, z = -260.029 }, rot = { x = 0.000, y = 287.762, z = 0.000 }, level = 1, drop_tag = "走兽", area_id = 4 },
	{ config_id = 587, monster_id = 28020301, pos = { x = 2556.022, y = 259.359, z = -287.790 }, rot = { x = 0.000, y = 281.313, z = 0.000 }, level = 1, drop_tag = "走兽", area_id = 4 },
	{ config_id = 588, monster_id = 28020301, pos = { x = 2579.590, y = 262.076, z = -311.701 }, rot = { x = 0.000, y = 316.566, z = 0.000 }, level = 1, drop_tag = "走兽", area_id = 4 },
	{ config_id = 589, monster_id = 28020301, pos = { x = 2566.606, y = 262.704, z = -270.666 }, rot = { x = 0.000, y = 316.566, z = 0.000 }, level = 1, drop_tag = "走兽", area_id = 4 },
	{ config_id = 590, monster_id = 28020301, pos = { x = 2559.367, y = 259.829, z = -285.410 }, rot = { x = 0.000, y = 301.382, z = 0.000 }, level = 1, drop_tag = "走兽", area_id = 4 },
	{ config_id = 591, monster_id = 28020301, pos = { x = 2571.018, y = 261.906, z = -286.741 }, rot = { x = 0.000, y = 316.566, z = 0.000 }, level = 1, drop_tag = "走兽", area_id = 4 },
	{ config_id = 592, monster_id = 28020201, pos = { x = 2556.493, y = 263.231, z = -272.975 }, rot = { x = 0.000, y = 259.983, z = 0.000 }, level = 1, drop_tag = "走兽", disableWander = true, area_id = 4 }
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
	rand_suite = true
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
		monsters = { 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592 },
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