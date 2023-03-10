-- Trigger变量
local defs = {
	timer = 60,
	group_id = 245004023,
	challange_group_id = 245004017
}

-- DEFS_MISCS
local light_bridge={

}
local wind_field={
	{operator_id=23001,effect_id=23002,gadget_id={23003,23004,23005}}
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
	{ config_id = 23003, gadget_id = 70690025, pos = { x = 121.143, y = -25.000, z = -23.032 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, state = GadgetState.GearStart },
	{ config_id = 23004, gadget_id = 70690025, pos = { x = 121.143, y = -25.000, z = -9.523 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, state = GadgetState.GearStart },
	{ config_id = 23005, gadget_id = 70690025, pos = { x = 121.143, y = -25.000, z = -16.133 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, state = GadgetState.GearStart }
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

-- 废弃数据
garbages = {
	gadgets = {
		{ config_id = 23001, gadget_id = 70360145, pos = { x = 130.981, y = -13.409, z = -15.070 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 1, is_guest_can_operate = true },
		{ config_id = 23002, gadget_id = 70360140, pos = { x = 130.981, y = -13.409, z = -15.013 }, rot = { x = 0.000, y = 270.000, z = 0.000 }, level = 1 }
	}
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
		gadgets = { },
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

require "TowerDefense_Trap"