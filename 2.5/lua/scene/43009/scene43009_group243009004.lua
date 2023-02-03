-- 基础信息
local base_info = {
	group_id = 243009004
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
	{ config_id = 4001, gadget_id = 70350215, pos = { x = 97.266, y = 40.067, z = -85.409 }, rot = { x = 0.000, y = 180.000, z = 0.000 }, level = 1 },
	{ config_id = 4002, gadget_id = 70350216, pos = { x = 33.361, y = 40.000, z = -71.519 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 4003, gadget_id = 70350218, pos = { x = 2.831, y = 40.049, z = -43.331 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 1 },
	{ config_id = 4004, gadget_id = 70350216, pos = { x = 63.922, y = 40.000, z = -54.590 }, rot = { x = 0.000, y = 180.000, z = 0.000 }, level = 1 },
	{ config_id = 4005, gadget_id = 70350218, pos = { x = 1.809, y = 40.049, z = -82.534 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 1 },
	{ config_id = 4006, gadget_id = 70350216, pos = { x = 49.566, y = 40.013, z = -25.237 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 1 },
	{ config_id = 4007, gadget_id = 70350215, pos = { x = -11.208, y = 40.001, z = 2.859 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 }
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
		gadgets = { 4001, 4002, 4004, 4006, 4007 },
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