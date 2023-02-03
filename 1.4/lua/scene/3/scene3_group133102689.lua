--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 689001, monster_id = 21030101, pos = { x = 1185.524, y = 201.199, z = 342.660 }, rot = { x = 5.770, y = 191.402, z = 2.976 }, level = 16, drop_tag = "丘丘萨满", disableWander = true, area_id = 5 },
	{ config_id = 689003, monster_id = 21010201, pos = { x = 1183.413, y = 201.255, z = 340.752 }, rot = { x = 2.952, y = 93.499, z = 355.710 }, level = 16, drop_tag = "丘丘人", disableWander = true, pose_id = 9003, area_id = 5 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 689004, gadget_id = 70310006, pos = { x = 1185.960, y = 201.199, z = 340.573 }, rot = { x = 357.317, y = 0.028, z = 358.211 }, level = 16, area_id = 5 },
	{ config_id = 689005, gadget_id = 70220014, pos = { x = 1184.268, y = 201.003, z = 338.995 }, rot = { x = 351.123, y = 0.139, z = 358.210 }, level = 16, area_id = 5 },
	{ config_id = 689006, gadget_id = 70220005, pos = { x = 1187.646, y = 200.503, z = 337.214 }, rot = { x = 345.963, y = 0.000, z = 0.000 }, level = 16, area_id = 5 }
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
		monsters = { 689001, 689003 },
		gadgets = { 689004, 689005, 689006 },
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