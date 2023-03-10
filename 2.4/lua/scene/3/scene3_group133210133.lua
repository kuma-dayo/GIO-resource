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
	{ config_id = 133001, gadget_id = 70300088, pos = { x = -3859.876, y = 204.788, z = -456.261 }, rot = { x = 0.000, y = 297.102, z = 17.495 }, level = 30, area_id = 17 },
	{ config_id = 133002, gadget_id = 70300088, pos = { x = -3866.718, y = 203.578, z = -454.143 }, rot = { x = 343.358, y = 269.038, z = 354.616 }, level = 30, area_id = 17 },
	{ config_id = 133003, gadget_id = 70310004, pos = { x = -3872.609, y = 201.702, z = -444.929 }, rot = { x = 11.349, y = 359.116, z = 351.119 }, level = 30, area_id = 17 },
	{ config_id = 133004, gadget_id = 70300086, pos = { x = -3876.918, y = 199.639, z = -438.575 }, rot = { x = 313.937, y = 0.000, z = 32.295 }, level = 30, area_id = 17 },
	{ config_id = 133005, gadget_id = 70300086, pos = { x = -3849.672, y = 202.882, z = -454.074 }, rot = { x = 335.865, y = 333.659, z = 11.428 }, level = 30, area_id = 17 },
	{ config_id = 133006, gadget_id = 70300076, pos = { x = -3844.720, y = 200.082, z = -443.482 }, rot = { x = 1.155, y = 291.751, z = 349.964 }, level = 30, area_id = 17 }
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
		{ config_id = 133007, gadget_id = 70300076, pos = { x = -3856.928, y = 200.026, z = -436.603 }, rot = { x = 358.383, y = 317.304, z = 353.003 }, level = 30, area_id = 17 }
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
		gadgets = { 133001, 133002, 133003, 133004, 133005, 133006 },
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