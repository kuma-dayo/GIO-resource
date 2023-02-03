-- 基础信息
local base_info = {
	group_id = 133106018
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
	{ config_id = 18001, gadget_id = 70500000, pos = { x = -695.887, y = 216.881, z = 1365.604 }, rot = { x = 0.000, y = 11.424, z = 0.000 }, level = 32, point_type = 2001, area_id = 8 },
	{ config_id = 18002, gadget_id = 70500000, pos = { x = -549.290, y = 225.617, z = 1288.565 }, rot = { x = 0.000, y = 81.895, z = 0.000 }, level = 32, point_type = 2001, area_id = 8 },
	{ config_id = 18003, gadget_id = 70500000, pos = { x = -670.043, y = 226.700, z = 1409.083 }, rot = { x = 0.000, y = 328.151, z = 0.000 }, level = 32, point_type = 2004, area_id = 8 },
	{ config_id = 18004, gadget_id = 70500000, pos = { x = -577.910, y = 257.120, z = 1454.562 }, rot = { x = 0.000, y = 108.954, z = 0.000 }, level = 32, point_type = 2004 },
	{ config_id = 18005, gadget_id = 70500000, pos = { x = -630.846, y = 219.129, z = 1311.631 }, rot = { x = 0.000, y = 178.168, z = 0.000 }, level = 32, point_type = 2001, area_id = 8 },
	{ config_id = 18006, gadget_id = 70500000, pos = { x = -757.257, y = 200.104, z = 1294.517 }, rot = { x = 0.000, y = 353.737, z = 0.000 }, level = 32, point_type = 2001, area_id = 8 },
	{ config_id = 18007, gadget_id = 70290002, pos = { x = -766.875, y = 210.766, z = 1334.259 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, area_id = 8 },
	{ config_id = 18008, gadget_id = 70500000, pos = { x = -767.946, y = 212.384, z = 1334.973 }, rot = { x = 0.000, y = 265.000, z = 0.000 }, level = 32, point_type = 3011, owner = 18007, area_id = 8 },
	{ config_id = 18009, gadget_id = 70500000, pos = { x = -766.005, y = 213.394, z = 1333.248 }, rot = { x = 0.000, y = 314.000, z = 0.000 }, level = 32, point_type = 3011, owner = 18007, area_id = 8 },
	{ config_id = 18010, gadget_id = 70500000, pos = { x = -766.832, y = 213.674, z = 1335.640 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, point_type = 3011, owner = 18007, area_id = 8 }
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
		gadgets = { 18001, 18002, 18003, 18004, 18005, 18006, 18007, 18008, 18009, 18010 },
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