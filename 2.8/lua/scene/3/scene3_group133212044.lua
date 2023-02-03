-- 基础信息
local base_info = {
	group_id = 133212044
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
	{ config_id = 44002, npc_id = 20364, pos = { x = -3607.812, y = 206.181, z = -2509.760 }, rot = { x = 281.548, y = 180.000, z = 180.000 }, area_id = 13 },
	{ config_id = 44005, npc_id = 20365, pos = { x = -3611.458, y = 220.191, z = -2000.074 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, area_id = 13 },
	{ config_id = 44009, npc_id = 20366, pos = { x = -3779.374, y = 203.042, z = -2089.500 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, area_id = 13 },
	{ config_id = 44011, npc_id = 20367, pos = { x = -3896.459, y = 200.512, z = -2283.087 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, area_id = 13 },
	{ config_id = 44014, npc_id = 20368, pos = { x = -3949.827, y = 315.370, z = -2409.769 }, rot = { x = 0.000, y = 302.676, z = 0.000 }, area_id = 13 },
	{ config_id = 44017, npc_id = 20369, pos = { x = -4179.273, y = 223.787, z = -2264.033 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, area_id = 13 }
}

-- 装置
gadgets = {
	{ config_id = 44001, gadget_id = 70710077, pos = { x = -3607.899, y = 204.935, z = -2508.710 }, rot = { x = 357.269, y = 200.161, z = 358.998 }, level = 27, area_id = 13 },
	{ config_id = 44003, gadget_id = 70900394, pos = { x = -3611.476, y = 219.608, z = -1999.786 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 13 },
	{ config_id = 44004, gadget_id = 70710077, pos = { x = -3611.520, y = 219.740, z = -2000.372 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 13 },
	{ config_id = 44006, gadget_id = 70900394, pos = { x = -3608.249, y = 205.015, z = -2509.813 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 13 },
	{ config_id = 44007, gadget_id = 70900394, pos = { x = -3779.391, y = 203.040, z = -2089.516 }, rot = { x = 0.000, y = 328.729, z = 0.000 }, level = 27, area_id = 13 },
	{ config_id = 44008, gadget_id = 70710077, pos = { x = -3778.695, y = 202.921, z = -2090.586 }, rot = { x = 0.000, y = 328.729, z = 0.000 }, level = 27, area_id = 13 },
	{ config_id = 44010, gadget_id = 70900394, pos = { x = -3896.440, y = 200.512, z = -2283.088 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 13 },
	{ config_id = 44012, gadget_id = 70900394, pos = { x = -3949.844, y = 315.371, z = -2409.707 }, rot = { x = 0.000, y = 40.862, z = 0.000 }, level = 27, area_id = 13 },
	{ config_id = 44013, gadget_id = 70710077, pos = { x = -3949.058, y = 315.358, z = -2410.368 }, rot = { x = 0.000, y = 310.384, z = 0.000 }, level = 27, area_id = 13 },
	{ config_id = 44015, gadget_id = 70710077, pos = { x = -4178.961, y = 223.409, z = -2263.162 }, rot = { x = 0.000, y = 194.437, z = 0.000 }, level = 27, area_id = 13 },
	{ config_id = 44016, gadget_id = 70900394, pos = { x = -4179.223, y = 223.804, z = -2264.024 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 13 }
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
		gadgets = { 44001, 44003, 44004, 44006, 44007, 44008, 44010, 44012, 44013, 44015, 44016 },
		regions = { },
		triggers = { },
		npcs = { 44002, 44005, 44009, 44011, 44014, 44017 },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================