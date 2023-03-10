-- 基础信息
local base_info = {
	group_id = 133209020
}

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
	{ config_id = 20001, gadget_id = 70300084, pos = { x = -2779.156, y = 199.978, z = -4597.063 }, rot = { x = 0.000, y = 10.731, z = 0.000 }, level = 1, area_id = 11 },
	{ config_id = 20002, gadget_id = 70300084, pos = { x = -2781.895, y = 201.102, z = -4583.970 }, rot = { x = 352.987, y = 311.526, z = 7.224 }, level = 1, area_id = 11 },
	{ config_id = 20003, gadget_id = 70300091, pos = { x = -2795.492, y = 200.043, z = -4586.075 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 11 },
	{ config_id = 20004, gadget_id = 70300084, pos = { x = -2798.840, y = 198.780, z = -4598.051 }, rot = { x = 6.173, y = 133.855, z = 355.872 }, level = 1, area_id = 11 },
	{ config_id = 20005, gadget_id = 70310006, pos = { x = -2782.592, y = 200.136, z = -4596.219 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 11 },
	{ config_id = 20006, gadget_id = 70300090, pos = { x = -2784.390, y = 200.542, z = -4585.965 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 11 },
	{ config_id = 20007, gadget_id = 70220065, pos = { x = -2798.017, y = 199.261, z = -4595.329 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 11 },
	{ config_id = 20008, gadget_id = 70220065, pos = { x = -2796.197, y = 199.134, z = -4596.775 }, rot = { x = 0.000, y = 67.716, z = 0.000 }, level = 1, area_id = 11 },
	{ config_id = 20009, gadget_id = 70310001, pos = { x = -2798.781, y = 199.472, z = -4592.771 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, state = GadgetState.GearStart, area_id = 11 },
	{ config_id = 20010, gadget_id = 70310001, pos = { x = -2787.615, y = 200.981, z = -4583.596 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, state = GadgetState.GearStart, area_id = 11 },
	{ config_id = 20011, gadget_id = 70310001, pos = { x = -2781.657, y = 200.281, z = -4592.742 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, state = GadgetState.GearStart, area_id = 11 }
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
		gadgets = { 20001, 20002, 20003, 20004, 20005, 20006, 20007, 20008, 20009, 20010, 20011 },
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