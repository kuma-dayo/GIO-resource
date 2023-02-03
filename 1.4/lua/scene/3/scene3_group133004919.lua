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
	{ config_id = 919001, npc_id = 20090, pos = { x = 2284.521, y = 221.739, z = -875.364 }, rot = { x = 0.000, y = 313.200, z = 0.000 }, area_id = 1 },
	{ config_id = 919002, npc_id = 20091, pos = { x = 2311.003, y = 221.572, z = -867.497 }, rot = { x = 0.000, y = 205.530, z = 0.000 }, area_id = 1 },
	{ config_id = 919006, npc_id = 20092, pos = { x = 2305.435, y = 216.024, z = -922.828 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, area_id = 1 },
	{ config_id = 919007, npc_id = 20093, pos = { x = 2211.653, y = 240.028, z = -842.673 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, area_id = 1 },
	{ config_id = 919009, npc_id = 20094, pos = { x = 2234.399, y = 232.205, z = -810.636 }, rot = { x = 0.000, y = 115.830, z = 0.000 }, area_id = 1 },
	{ config_id = 919011, npc_id = 20095, pos = { x = 2180.861, y = 225.661, z = -815.483 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, area_id = 1 },
	{ config_id = 919013, npc_id = 20096, pos = { x = 2200.228, y = 257.221, z = -769.086 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, area_id = 1 },
	{ config_id = 919015, npc_id = 20097, pos = { x = 2239.842, y = 237.383, z = -749.199 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, area_id = 1 },
	{ config_id = 919017, npc_id = 20098, pos = { x = 2361.618, y = 273.748, z = -649.855 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, area_id = 1 },
	{ config_id = 919019, npc_id = 20099, pos = { x = 2411.936, y = 255.562, z = -634.065 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, area_id = 1 }
}

-- 装置
gadgets = {
	{ config_id = 919003, gadget_id = 70290018, pos = { x = 2284.476, y = 221.887, z = -875.271 }, rot = { x = 0.000, y = 297.110, z = 179.390 }, level = 2, area_id = 1 },
	{ config_id = 919004, gadget_id = 70290018, pos = { x = 2310.916, y = 221.755, z = -867.526 }, rot = { x = 0.000, y = 205.620, z = 179.390 }, level = 2, area_id = 1 },
	{ config_id = 919005, gadget_id = 70290018, pos = { x = 2211.635, y = 240.120, z = -842.737 }, rot = { x = 0.000, y = 330.500, z = 179.390 }, level = 2, area_id = 1 },
	{ config_id = 919008, gadget_id = 70290018, pos = { x = 2234.450, y = 232.291, z = -810.674 }, rot = { x = 0.000, y = 118.500, z = 179.390 }, level = 2, area_id = 1 },
	{ config_id = 919010, gadget_id = 70290018, pos = { x = 2180.890, y = 225.829, z = -815.469 }, rot = { x = 0.000, y = 23.200, z = 179.390 }, level = 2, area_id = 1 },
	{ config_id = 919012, gadget_id = 70290018, pos = { x = 2200.228, y = 257.329, z = -769.011 }, rot = { x = 0.000, y = 295.550, z = 179.390 }, level = 2, area_id = 1 },
	{ config_id = 919014, gadget_id = 70290018, pos = { x = 2239.851, y = 237.503, z = -749.210 }, rot = { x = 0.000, y = 248.700, z = 179.390 }, level = 2, area_id = 1 },
	{ config_id = 919016, gadget_id = 70290018, pos = { x = 2361.707, y = 273.880, z = -649.787 }, rot = { x = 0.000, y = 206.500, z = 179.390 }, level = 2, area_id = 1 },
	{ config_id = 919018, gadget_id = 70290018, pos = { x = 2412.014, y = 255.785, z = -634.076 }, rot = { x = 0.000, y = 72.900, z = 179.390 }, level = 2, area_id = 1 }
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
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100,
		ban_refresh = true
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 919003, 919004, 919005, 919008, 919010, 919012, 919014, 919016, 919018 },
		regions = { },
		triggers = { },
		npcs = { 919001, 919002, 919006, 919007, 919009, 919011, 919013, 919015, 919017, 919019 },
		rand_weight = 100,
		ban_refresh = true
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================