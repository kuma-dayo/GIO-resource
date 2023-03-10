-- 基础信息
local base_info = {
	group_id = 199004111
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 111001, monster_id = 21030401, pos = { x = -313.103, y = 120.053, z = -620.637 }, rot = { x = 0.000, y = 343.008, z = 0.000 }, level = 20, drop_tag = "丘丘萨满", disableWander = true, pose_id = 9012, area_id = 400 },
	{ config_id = 111002, monster_id = 21011201, pos = { x = -312.837, y = 120.254, z = -625.758 }, rot = { x = 0.000, y = 328.789, z = 0.000 }, level = 20, drop_tag = "丘丘人", disableWander = true, pose_id = 9012, area_id = 400 },
	{ config_id = 111003, monster_id = 21011201, pos = { x = -306.670, y = 120.053, z = -621.653 }, rot = { x = 0.000, y = 329.875, z = 0.000 }, level = 20, drop_tag = "丘丘人", disableWander = true, pose_id = 9012, area_id = 400 },
	{ config_id = 111005, monster_id = 21030601, pos = { x = -327.589, y = 120.127, z = -594.048 }, rot = { x = 0.000, y = 135.479, z = 0.000 }, level = 20, drop_tag = "丘丘萨满", disableWander = true, pose_id = 9012, area_id = 400 },
	{ config_id = 111006, monster_id = 21011001, pos = { x = -332.249, y = 120.193, z = -592.357 }, rot = { x = 0.000, y = 137.437, z = 0.000 }, level = 20, drop_tag = "远程丘丘人", disableWander = true, pose_id = 9013, area_id = 400 },
	{ config_id = 111007, monster_id = 21011001, pos = { x = -323.198, y = 120.207, z = -588.155 }, rot = { x = 0.000, y = 157.536, z = 0.000 }, level = 20, drop_tag = "远程丘丘人", disableWander = true, pose_id = 9013, area_id = 400 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 111004, gadget_id = 70220013, pos = { x = -322.511, y = 120.000, z = -583.773 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 400 },
	{ config_id = 111008, gadget_id = 70220013, pos = { x = -318.225, y = 119.954, z = -623.021 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 400 },
	{ config_id = 111009, gadget_id = 70300086, pos = { x = -327.196, y = 117.657, z = -615.007 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 400 }
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
		monsters = { 111001, 111002, 111003, 111005, 111006, 111007 },
		gadgets = { 111004, 111008, 111009 },
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