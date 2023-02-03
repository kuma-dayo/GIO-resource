--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 10001, monster_id = 25080201, pos = { x = -3301.908, y = 202.891, z = -3260.699 }, rot = { x = 0.000, y = 239.046, z = 0.000 }, level = 27, drop_tag = "浪人武士", disableWander = true, pose_id = 1003, area_id = 12 },
	{ config_id = 10004, monster_id = 25080301, pos = { x = -3316.862, y = 200.531, z = -3277.832 }, rot = { x = 0.000, y = 0.847, z = 0.000 }, level = 27, drop_tag = "浪人武士", pose_id = 1, area_id = 12 },
	{ config_id = 10005, monster_id = 25080201, pos = { x = -3311.108, y = 201.557, z = -3260.680 }, rot = { x = 0.000, y = 86.228, z = 0.000 }, level = 27, drop_tag = "浪人武士", disableWander = true, pose_id = 1004, area_id = 12 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 10002, gadget_id = 70300094, pos = { x = -3316.650, y = 202.590, z = -3261.917 }, rot = { x = 4.514, y = 271.543, z = 358.336 }, level = 27, area_id = 12 },
	{ config_id = 10003, gadget_id = 70220048, pos = { x = -3300.234, y = 202.786, z = -3257.779 }, rot = { x = 1.785, y = 0.070, z = 4.467 }, level = 27, area_id = 12 },
	{ config_id = 10006, gadget_id = 70310006, pos = { x = -3309.399, y = 201.534, z = -3260.179 }, rot = { x = 1.785, y = 0.070, z = 4.467 }, level = 27, area_id = 12 },
	{ config_id = 10007, gadget_id = 70220048, pos = { x = -3299.602, y = 203.201, z = -3260.846 }, rot = { x = 4.797, y = 295.963, z = 0.349 }, level = 27, area_id = 12 },
	{ config_id = 10008, gadget_id = 70220063, pos = { x = -3316.594, y = 202.504, z = -3260.033 }, rot = { x = 6.385, y = 36.539, z = 0.322 }, level = 27, area_id = 12 },
	{ config_id = 10009, gadget_id = 70220063, pos = { x = -3300.555, y = 202.905, z = -3259.497 }, rot = { x = 359.359, y = 36.544, z = 12.829 }, level = 27, area_id = 12 }
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
		monsters = { 10001, 10004, 10005 },
		gadgets = { 10002, 10003, 10006, 10007, 10008, 10009 },
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