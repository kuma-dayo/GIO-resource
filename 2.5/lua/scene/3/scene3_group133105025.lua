-- 基础信息
local base_info = {
	group_id = 133105025
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
	{ config_id = 25001, gadget_id = 70500000, pos = { x = 163.466, y = 204.088, z = -7.452 }, rot = { x = 0.000, y = 180.540, z = 0.000 }, level = 19, point_type = 2001, area_id = 7 },
	{ config_id = 25002, gadget_id = 70500000, pos = { x = 58.022, y = 204.369, z = -41.706 }, rot = { x = 0.000, y = 180.540, z = 0.000 }, level = 19, point_type = 2001, area_id = 7 },
	{ config_id = 25003, gadget_id = 70500000, pos = { x = 9.031, y = 204.900, z = -51.139 }, rot = { x = 0.000, y = 293.315, z = 0.000 }, level = 19, point_type = 2004, area_id = 7 },
	{ config_id = 25004, gadget_id = 70500000, pos = { x = 109.248, y = 204.984, z = -6.065 }, rot = { x = 0.000, y = 293.315, z = 0.000 }, level = 19, point_type = 2004, area_id = 7 }
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
		gadgets = { 25001, 25002, 25003, 25004 },
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