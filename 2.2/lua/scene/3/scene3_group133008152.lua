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
	{ config_id = 152001, gadget_id = 70590025, pos = { x = 966.672, y = 350.966, z = -550.343 }, rot = { x = 332.335, y = 296.090, z = 26.247 }, level = 30, area_id = 10 },
	{ config_id = 152003, gadget_id = 70590025, pos = { x = 1540.215, y = 272.329, z = -893.653 }, rot = { x = 22.268, y = 79.155, z = 7.606 }, level = 30, area_id = 10 },
	{ config_id = 152004, gadget_id = 70590025, pos = { x = 1565.967, y = 266.100, z = -891.517 }, rot = { x = 0.000, y = 354.829, z = 0.000 }, level = 30, area_id = 10 },
	{ config_id = 152005, gadget_id = 70590025, pos = { x = 964.551, y = 366.742, z = -676.166 }, rot = { x = 17.184, y = 33.522, z = 26.571 }, level = 30, area_id = 10 },
	{ config_id = 152006, gadget_id = 70590025, pos = { x = 1031.555, y = 349.414, z = -648.410 }, rot = { x = 326.956, y = 7.210, z = 30.650 }, level = 30, area_id = 10 },
	{ config_id = 152007, gadget_id = 70590025, pos = { x = 1201.932, y = 340.501, z = -1024.553 }, rot = { x = 354.067, y = 71.228, z = 355.003 }, level = 30, area_id = 10 },
	{ config_id = 152008, gadget_id = 70590025, pos = { x = 962.773, y = 365.253, z = -674.018 }, rot = { x = 23.136, y = 286.172, z = 342.135 }, level = 30, area_id = 10 },
	{ config_id = 152009, gadget_id = 70590025, pos = { x = 933.023, y = 367.985, z = -695.458 }, rot = { x = 26.925, y = 28.387, z = 4.033 }, level = 30, area_id = 10 },
	{ config_id = 152010, gadget_id = 70590025, pos = { x = 969.445, y = 349.438, z = -554.708 }, rot = { x = 349.920, y = 271.142, z = 16.113 }, level = 30, area_id = 10 },
	{ config_id = 152011, gadget_id = 70590025, pos = { x = 863.431, y = 337.349, z = -618.601 }, rot = { x = 346.414, y = 274.995, z = 4.058 }, level = 30, area_id = 10 },
	{ config_id = 152013, gadget_id = 70590025, pos = { x = 1439.901, y = 266.569, z = -1125.260 }, rot = { x = 357.347, y = 34.785, z = 355.987 }, level = 30, area_id = 10 }
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
		monsters = { },
		gadgets = { 152001, 152003, 152004, 152005, 152006, 152007, 152008, 152009, 152010, 152011, 152013 },
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