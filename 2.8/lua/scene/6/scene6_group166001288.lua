-- 基础信息
local base_info = {
	group_id = 166001288
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
	{ config_id = 288002, npc_id = 2188, pos = { x = 1035.293, y = 1088.254, z = 906.720 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, area_id = 300 },
	{ config_id = 288006, npc_id = 2189, pos = { x = 1082.313, y = 918.204, z = 517.270 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, area_id = 300 },
	{ config_id = 288008, npc_id = 2190, pos = { x = 986.036, y = 951.249, z = 529.117 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, area_id = 300 },
	{ config_id = 288010, npc_id = 2195, pos = { x = 927.043, y = 995.873, z = 661.132 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, area_id = 300 },
	{ config_id = 288012, npc_id = 2191, pos = { x = 970.230, y = 797.958, z = 346.505 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, area_id = 300 },
	{ config_id = 288013, npc_id = 2192, pos = { x = 918.493, y = 750.558, z = 297.968 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, area_id = 300 },
	{ config_id = 288015, npc_id = 2193, pos = { x = 990.893, y = 776.066, z = 330.212 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, area_id = 300 },
	{ config_id = 288017, npc_id = 2194, pos = { x = 696.125, y = 709.718, z = 394.278 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, area_id = 300 }
}

-- 装置
gadgets = {
	{ config_id = 288001, gadget_id = 70710153, pos = { x = 1035.493, y = 1087.417, z = 906.693 }, rot = { x = 0.000, y = 280.138, z = 0.000 }, level = 36, area_id = 300 },
	{ config_id = 288005, gadget_id = 70710153, pos = { x = 1082.476, y = 917.385, z = 517.186 }, rot = { x = 0.000, y = 293.858, z = 0.000 }, level = 36, area_id = 300 },
	{ config_id = 288007, gadget_id = 70710153, pos = { x = 986.051, y = 950.418, z = 529.304 }, rot = { x = 0.000, y = 196.659, z = 0.000 }, level = 36, area_id = 300 },
	{ config_id = 288009, gadget_id = 70710153, pos = { x = 927.059, y = 995.027, z = 661.315 }, rot = { x = 359.966, y = 181.401, z = 359.698 }, level = 36, area_id = 300 },
	{ config_id = 288011, gadget_id = 70710093, pos = { x = 970.119, y = 796.335, z = 346.535 }, rot = { x = 0.000, y = 99.088, z = 0.000 }, level = 36, area_id = 300 },
	{ config_id = 288014, gadget_id = 70710136, pos = { x = 990.883, y = 776.010, z = 330.111 }, rot = { x = 0.000, y = 76.879, z = 0.000 }, level = 36, area_id = 300 },
	{ config_id = 288016, gadget_id = 70710397, pos = { x = 696.086, y = 709.447, z = 394.490 }, rot = { x = 359.615, y = 167.151, z = 358.399 }, level = 36, area_id = 300 }
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
		gadgets = { 288001, 288005, 288007, 288009, 288011, 288014, 288016 },
		regions = { },
		triggers = { },
		npcs = { 288002, 288006, 288008, 288010, 288012, 288013, 288015, 288017 },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================