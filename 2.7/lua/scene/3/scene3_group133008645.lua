-- 基础信息
local base_info = {
	group_id = 133008645
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
	{ config_id = 645001, gadget_id = 70500000, pos = { x = 1324.800, y = 275.342, z = -794.611 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, point_type = 2032, area_id = 10 },
	{ config_id = 645002, gadget_id = 70500000, pos = { x = 1511.246, y = 266.345, z = -690.640 }, rot = { x = 0.000, y = 131.346, z = 23.188 }, level = 30, point_type = 2032, area_id = 10 },
	{ config_id = 645003, gadget_id = 70500000, pos = { x = 1339.516, y = 270.104, z = -525.966 }, rot = { x = 14.059, y = 143.014, z = 11.120 }, level = 30, point_type = 2032, area_id = 10 },
	{ config_id = 645004, gadget_id = 70500000, pos = { x = 809.607, y = 199.271, z = -1284.039 }, rot = { x = 346.239, y = 23.411, z = 337.691 }, level = 30, point_type = 2032, area_id = 10 }
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
	end_suite = 2,
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
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 645001, 645002, 645003, 645004 },
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