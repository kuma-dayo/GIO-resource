-- 基础信息
local base_info = {
	group_id = 133212555
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
	{ config_id = 555001, gadget_id = 70330064, pos = { x = -3665.183, y = 238.787, z = -2373.361 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, interact_id = 35, area_id = 13 },
	{ config_id = 555002, gadget_id = 70330064, pos = { x = -3548.271, y = 201.704, z = -2475.183 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, interact_id = 35, area_id = 13 },
	{ config_id = 555003, gadget_id = 70330064, pos = { x = -3825.617, y = 211.451, z = -2622.159 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, interact_id = 35, area_id = 13 },
	{ config_id = 555004, gadget_id = 70330064, pos = { x = -4026.649, y = 206.626, z = -2529.541 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, interact_id = 35, area_id = 13 },
	{ config_id = 555005, gadget_id = 70330064, pos = { x = -3818.809, y = 205.096, z = -1791.644 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, interact_id = 35, area_id = 13 },
	{ config_id = 555006, gadget_id = 70330064, pos = { x = -3470.166, y = 205.363, z = -2118.608 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, interact_id = 35, area_id = 13 },
	{ config_id = 555007, gadget_id = 70330064, pos = { x = -3687.959, y = 245.353, z = -2248.511 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, interact_id = 35, area_id = 13 },
	{ config_id = 555008, gadget_id = 70330064, pos = { x = -3790.594, y = 243.789, z = -2189.420 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, interact_id = 35, area_id = 13 },
	{ config_id = 555009, gadget_id = 70330064, pos = { x = -3799.005, y = 235.571, z = -2130.784 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, interact_id = 35, area_id = 13 }
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
		gadgets = { 555001, 555002, 555003, 555004, 555005, 555006, 555007, 555008, 555009 },
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