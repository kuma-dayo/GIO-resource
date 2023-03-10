--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 110002, monster_id = 21010101, pos = { x = -292.537, y = 286.793, z = 670.732 }, rot = { x = 0.777, y = 281.602, z = 351.012 }, level = 24, drop_tag = "丘丘人", pose_id = 9002, area_id = 7 },
	{ config_id = 110003, monster_id = 21010101, pos = { x = -290.391, y = 286.795, z = 672.760 }, rot = { x = 0.000, y = 251.114, z = 0.000 }, level = 24, drop_tag = "丘丘人", pose_id = 9003, area_id = 7 },
	{ config_id = 110004, monster_id = 21010101, pos = { x = -292.920, y = 286.794, z = 673.463 }, rot = { x = 0.000, y = 144.328, z = 0.000 }, level = 24, drop_tag = "丘丘人", pose_id = 9003, area_id = 7 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 110001, gadget_id = 70310006, pos = { x = -292.251, y = 286.793, z = 671.989 }, rot = { x = 359.991, y = -0.003, z = 0.043 }, level = 24, state = GadgetState.GearStart, area_id = 7 },
	{ config_id = 110005, gadget_id = 70220014, pos = { x = -290.688, y = 286.795, z = 674.339 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 24, area_id = 7 },
	{ config_id = 110006, gadget_id = 70220014, pos = { x = -295.703, y = 286.794, z = 673.223 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 24, area_id = 7 },
	{ config_id = 110007, gadget_id = 70220013, pos = { x = -297.391, y = 286.747, z = 672.176 }, rot = { x = 0.000, y = 333.542, z = 0.000 }, level = 24, area_id = 7 },
	{ config_id = 110008, gadget_id = 70211001, pos = { x = -291.087, y = 288.393, z = 662.794 }, rot = { x = 4.467, y = 0.512, z = 0.040 }, level = 21, drop_tag = "战斗低级璃月", isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 7 }
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
		monsters = { 110002, 110003, 110004 },
		gadgets = { 110001, 110005, 110006, 110007, 110008 },
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