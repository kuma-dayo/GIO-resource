-- 基础信息
local base_info = {
	group_id = 133220196
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
	{ config_id = 196010, gadget_id = 70310010, pos = { x = -1845.407, y = 205.952, z = -4215.045 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 11 },
	{ config_id = 196013, gadget_id = 70310006, pos = { x = -1858.474, y = 231.033, z = -4204.747 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 11 },
	{ config_id = 196014, gadget_id = 70310004, pos = { x = -1861.486, y = 232.689, z = -4191.900 }, rot = { x = 355.641, y = 12.912, z = 1.108 }, level = 27, state = GadgetState.GearStart, area_id = 11 },
	{ config_id = 196015, gadget_id = 70220025, pos = { x = -1855.436, y = 231.335, z = -4205.415 }, rot = { x = 86.308, y = 67.049, z = 320.131 }, level = 27, area_id = 11 },
	{ config_id = 196016, gadget_id = 70220025, pos = { x = -1856.425, y = 231.247, z = -4205.022 }, rot = { x = 86.308, y = 67.049, z = 320.131 }, level = 27, area_id = 11 },
	{ config_id = 196017, gadget_id = 70220025, pos = { x = -1860.868, y = 230.849, z = -4204.920 }, rot = { x = 82.012, y = 79.589, z = 332.727 }, level = 27, area_id = 11 }
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
		gadgets = { 196010, 196013, 196014, 196015, 196016, 196017 },
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