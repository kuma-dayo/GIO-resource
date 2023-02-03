--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 1680, monster_id = 22010201, pos = { x = 2802.490, y = 271.052, z = -1488.677 }, rot = { x = 0.000, y = 58.300, z = 0.000 }, level = 1, drop_tag = "深渊法师", area_id = 1 },
	{ config_id = 1681, monster_id = 21010601, pos = { x = 2809.516, y = 271.713, z = -1488.232 }, rot = { x = 0.000, y = 291.990, z = 0.000 }, level = 1, drop_tag = "丘丘人", area_id = 1 },
	{ config_id = 1682, monster_id = 21010201, pos = { x = 2808.473, y = 271.183, z = -1484.429 }, rot = { x = 0.000, y = 215.222, z = 0.000 }, level = 1, drop_tag = "丘丘人", area_id = 1 },
	{ config_id = 1683, monster_id = 21010201, pos = { x = 2803.967, y = 270.380, z = -1483.031 }, rot = { x = 0.000, y = 223.400, z = 0.000 }, level = 1, drop_tag = "丘丘人", area_id = 1 },
	{ config_id = 1684, monster_id = 21010601, pos = { x = 2805.825, y = 271.969, z = -1490.971 }, rot = { x = 0.000, y = 359.900, z = 0.000 }, level = 1, drop_tag = "丘丘人", area_id = 1 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 4308, gadget_id = 70300107, pos = { x = 2805.085, y = 271.236, z = -1486.101 }, rot = { x = 0.000, y = 71.300, z = 0.000 }, level = 1, state = GadgetState.GearStart, area_id = 1 },
	{ config_id = 4309, gadget_id = 70220013, pos = { x = 2811.509, y = 272.007, z = -1493.176 }, rot = { x = 0.000, y = 329.200, z = 0.000 }, level = 1, area_id = 1 },
	{ config_id = 4453, gadget_id = 70220013, pos = { x = 2807.869, y = 272.700, z = -1494.395 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 1 },
	{ config_id = 4457, gadget_id = 70220014, pos = { x = 2802.937, y = 271.947, z = -1493.523 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 1 },
	{ config_id = 4458, gadget_id = 70220014, pos = { x = 2804.315, y = 272.009, z = -1492.531 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 1 }
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
		-- description = suite_1,
		monsters = { 1680, 1681, 1682, 1683, 1684 },
		gadgets = { 4308, 4309, 4453, 4457, 4458 },
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