--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 168001, monster_id = 21010101, pos = { x = 108.980, y = 257.096, z = 315.021 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, drop_tag = "丘丘人", pose_id = 9002, area_id = 200 },
	{ config_id = 168002, monster_id = 21010101, pos = { x = 111.591, y = 257.127, z = 314.248 }, rot = { x = 0.000, y = 242.932, z = 0.000 }, level = 36, drop_tag = "丘丘人", pose_id = 9002, area_id = 200 },
	{ config_id = 168003, monster_id = 21010101, pos = { x = 113.330, y = 257.043, z = 317.127 }, rot = { x = 0.000, y = 8.757, z = 0.000 }, level = 36, drop_tag = "丘丘人", pose_id = 9002, area_id = 200 },
	{ config_id = 168004, monster_id = 21010101, pos = { x = 108.194, y = 257.115, z = 318.268 }, rot = { x = 0.000, y = 302.174, z = 0.000 }, level = 36, drop_tag = "丘丘人", pose_id = 9002, area_id = 200 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 168005, gadget_id = 70310004, pos = { x = 110.342, y = 257.091, z = 316.979 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, state = GadgetState.GearStart, area_id = 200 },
	{ config_id = 168006, gadget_id = 70310001, pos = { x = 119.496, y = 257.525, z = 321.955 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, state = GadgetState.GearStart, area_id = 200 },
	{ config_id = 168007, gadget_id = 70310001, pos = { x = 116.404, y = 256.813, z = 330.707 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, state = GadgetState.GearStart, area_id = 200 }
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
		monsters = { 168001, 168002, 168003, 168004 },
		gadgets = { 168005, 168006, 168007 },
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