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
	{ config_id = 25001, gadget_id = 70500000, pos = { x = -3923.241, y = 200.423, z = -1085.438 }, rot = { x = 356.127, y = 275.296, z = 353.391 }, level = 30, point_type = 1008, area_id = 17 },
	{ config_id = 25002, gadget_id = 70500000, pos = { x = -3917.430, y = 200.883, z = -1088.705 }, rot = { x = 1.418, y = 120.255, z = 2.897 }, level = 30, point_type = 1008, area_id = 17 },
	{ config_id = 25003, gadget_id = 70500000, pos = { x = -3914.133, y = 201.594, z = -1089.110 }, rot = { x = 358.700, y = 15.500, z = 350.578 }, level = 30, point_type = 1008, area_id = 17 }
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
		gadgets = { 25001, 25002, 25003 },
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