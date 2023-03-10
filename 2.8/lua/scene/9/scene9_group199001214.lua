-- 基础信息
local base_info = {
	group_id = 199001214
}

-- DEFS_MISCS
local shadowConfigIDList = {214003,214004}

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
	{ config_id = 214001, gadget_id = 70500033, pos = { x = 133.753, y = 121.170, z = -169.005 }, rot = { x = 0.000, y = 187.790, z = 0.000 }, level = 1, arguments = { 38 }, area_id = 401 },
	{ config_id = 214003, gadget_id = 70500039, pos = { x = 143.518, y = 119.937, z = -173.940 }, rot = { x = 0.000, y = 304.873, z = 0.000 }, level = 1, area_id = 401 },
	{ config_id = 214004, gadget_id = 70500045, pos = { x = 142.860, y = 119.931, z = -172.621 }, rot = { x = 0.000, y = 142.698, z = 0.000 }, level = 1, area_id = 401 }
}

-- 区域
regions = {
	{ config_id = 214002, shape = RegionShape.SPHERE, radius = 10, pos = { x = 138.633, y = 120.066, z = -171.024 }, area_id = 401 }
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
		gadgets = { 214001 },
		regions = { 214002 },
		triggers = { },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

require "V2_8/EchoConch"