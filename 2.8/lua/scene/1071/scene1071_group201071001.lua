-- 基础信息
local base_info = {
	group_id = 201071001
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
	-- 封住不开
	{ config_id = 1001, gadget_id = 70290137, pos = { x = -34.180, y = -14.495, z = -14.472 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	-- 封住不开
	{ config_id = 1002, gadget_id = 70290137, pos = { x = 166.154, y = -9.891, z = -19.915 }, rot = { x = 0.000, y = 270.000, z = 0.000 }, level = 1 },
	-- 房间1结束
	{ config_id = 1003, gadget_id = 70290137, pos = { x = 19.999, y = -14.857, z = -19.827 }, rot = { x = 0.000, y = 270.000, z = 0.000 }, level = 1 },
	-- 房间2结束
	{ config_id = 1004, gadget_id = 70290137, pos = { x = 94.830, y = -13.817, z = -19.997 }, rot = { x = 0.000, y = 270.000, z = 0.000 }, level = 1 },
	-- room3进入房间后关闭
	{ config_id = 1005, gadget_id = 70290137, pos = { x = 136.638, y = -9.025, z = -19.903 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 1, state = GadgetState.GearStart }
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