--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 25, monster_id = 21010101, pos = { x = 498.807, y = 199.900, z = -40.583 }, rot = { x = 0.000, y = 260.843, z = 0.000 }, level = 19, drop_tag = "丘丘人", pose_id = 9014, area_id = 9 },
	{ config_id = 56, monster_id = 21010701, pos = { x = 660.510, y = 233.907, z = -453.101 }, rot = { x = 0.000, y = 63.121, z = 0.000 }, level = 25, drop_tag = "丘丘人", area_id = 9 },
	{ config_id = 62, monster_id = 21010101, pos = { x = 650.016, y = 233.796, z = -449.807 }, rot = { x = 0.000, y = 307.056, z = 0.000 }, level = 25, drop_tag = "丘丘人", pose_id = 9011, area_id = 9 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 19, gadget_id = 70310006, pos = { x = 648.642, y = 233.802, z = -448.908 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 25, state = GadgetState.GearStart, area_id = 9 },
	{ config_id = 11001, gadget_id = 70220014, pos = { x = 653.057, y = 233.719, z = -439.363 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 25, area_id = 9 },
	{ config_id = 11002, gadget_id = 70220014, pos = { x = 652.700, y = 233.721, z = -438.393 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 25, area_id = 9 },
	{ config_id = 11003, gadget_id = 70220014, pos = { x = 660.758, y = 233.655, z = -471.199 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 25, area_id = 9 },
	{ config_id = 11004, gadget_id = 70220014, pos = { x = 659.632, y = 233.663, z = -471.337 }, rot = { x = 0.000, y = 0.000, z = 5.917 }, level = 25, area_id = 9 },
	{ config_id = 11005, gadget_id = 70220013, pos = { x = 660.681, y = 233.716, z = -472.789 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 25, area_id = 9 },
	{ config_id = 11006, gadget_id = 70300087, pos = { x = 662.152, y = 233.695, z = -467.329 }, rot = { x = 4.494, y = 0.386, z = 5.532 }, level = 25, area_id = 9 }
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
		monsters = { 25, 56, 62 },
		gadgets = { 19, 11001, 11002, 11003, 11004, 11005, 11006 },
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