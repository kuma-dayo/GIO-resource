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
	{ config_id = 1001, gadget_id = 70330064, pos = { x = -18.088, y = 24.190, z = 186.458 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, interact_id = 35 },
	{ config_id = 1002, gadget_id = 70900380, pos = { x = -10.369, y = 33.025, z = 186.587 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 1003, gadget_id = 70900380, pos = { x = -3.441, y = 37.640, z = 186.587 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 1004, gadget_id = 70690001, pos = { x = -8.908, y = 37.101, z = 186.921 }, rot = { x = 0.000, y = 270.000, z = 0.000 }, level = 1 },
	{ config_id = 1005, gadget_id = 70690001, pos = { x = -3.400, y = 37.131, z = 192.648 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 1006, gadget_id = 70690001, pos = { x = -3.400, y = 37.131, z = 197.141 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 1007, gadget_id = 70690001, pos = { x = -24.379, y = 32.477, z = 176.193 }, rot = { x = 340.000, y = 90.000, z = 0.000 }, level = 1 },
	{ config_id = 1008, gadget_id = 70330064, pos = { x = -3.306, y = 9.190, z = 176.488 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, interact_id = 35 },
	{ config_id = 1009, gadget_id = 70900380, pos = { x = -3.536, y = 33.059, z = 176.545 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 1010, gadget_id = 70320001, pos = { x = -2.245, y = 19.190, z = 197.108 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, state = GadgetState.GearStart },
	{ config_id = 1011, gadget_id = 70320001, pos = { x = -5.240, y = 19.190, z = 188.352 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, state = GadgetState.GearStart }
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
		gadgets = { 1001, 1002, 1003, 1004, 1005, 1006, 1007, 1008, 1009, 1010, 1011 },
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

require "V2_0/ElectricCore"