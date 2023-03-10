--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 197002, monster_id = 21011201, pos = { x = -528.383, y = 215.311, z = 947.869 }, rot = { x = 0.000, y = 89.434, z = 0.000 }, level = 32, drop_tag = "丘丘人", pose_id = 9003, area_id = 8 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 197003, gadget_id = 70220005, pos = { x = -529.318, y = 215.476, z = 948.736 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, area_id = 8 },
	{ config_id = 197004, gadget_id = 70220005, pos = { x = -530.291, y = 215.749, z = 948.841 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, area_id = 8 },
	{ config_id = 197005, gadget_id = 70220005, pos = { x = -486.358, y = 180.711, z = 917.414 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, area_id = 8 },
	{ config_id = 197006, gadget_id = 70220005, pos = { x = -489.780, y = 181.283, z = 926.192 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, area_id = 8 },
	{ config_id = 197007, gadget_id = 70220035, pos = { x = -490.672, y = 181.274, z = 926.247 }, rot = { x = 0.000, y = 320.702, z = 0.000 }, level = 32, area_id = 8 },
	{ config_id = 197008, gadget_id = 70220035, pos = { x = -496.643, y = 203.602, z = 855.294 }, rot = { x = 0.000, y = 327.140, z = 0.000 }, level = 32, area_id = 8 }
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
		monsters = { 197002 },
		gadgets = { 197003, 197004, 197005, 197006, 197007, 197008 },
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