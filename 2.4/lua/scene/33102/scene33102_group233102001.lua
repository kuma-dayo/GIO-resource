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
	{ config_id = 1001, gadget_id = 70950010, pos = { x = -0.090, y = -0.077, z = 23.489 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, state = GadgetState.GearStart },
	{ config_id = 1002, gadget_id = 70950011, pos = { x = -0.130, y = -0.077, z = -23.589 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, state = GadgetState.GearStart },
	{ config_id = 1003, gadget_id = 70950010, pos = { x = -12.352, y = -0.077, z = 19.057 }, rot = { x = 0.000, y = 324.426, z = 0.000 }, level = 1, state = GadgetState.GearStart },
	{ config_id = 1004, gadget_id = 70950010, pos = { x = 13.809, y = -0.077, z = 18.289 }, rot = { x = 0.000, y = 36.222, z = 0.000 }, level = 1, state = GadgetState.GearStart },
	{ config_id = 1005, gadget_id = 70900205, pos = { x = 6.097, y = -1.456, z = 3.161 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 }
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
		gadgets = { 1002, 1003, 1004, 1005 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 1001, 1002, 1003, 1004, 1005 },
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