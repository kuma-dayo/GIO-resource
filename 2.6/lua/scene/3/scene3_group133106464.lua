-- 基础信息
local base_info = {
	group_id = 133106464
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
	{ config_id = 464001, npc_id = 2182, pos = { x = -575.853, y = 173.530, z = 1798.937 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, area_id = 19 },
	{ config_id = 464004, npc_id = 2183, pos = { x = -524.071, y = 181.358, z = 1889.524 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, area_id = 19 },
	{ config_id = 464006, npc_id = 2184, pos = { x = -675.536, y = 106.449, z = 1768.976 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, area_id = 19 },
	{ config_id = 464008, npc_id = 2185, pos = { x = -772.937, y = 103.564, z = 1799.024 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, area_id = 19 },
	{ config_id = 464010, npc_id = 2186, pos = { x = -690.619, y = 154.890, z = 1984.185 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, area_id = 19 }
}

-- 装置
gadgets = {
	{ config_id = 464002, gadget_id = 70290376, pos = { x = -575.794, y = 171.914, z = 1799.002 }, rot = { x = 0.000, y = 186.850, z = 0.000 }, level = 36, area_id = 19 },
	{ config_id = 464003, gadget_id = 70710071, pos = { x = -523.921, y = 180.264, z = 1889.529 }, rot = { x = 0.000, y = 246.427, z = 0.000 }, level = 36, area_id = 19 },
	{ config_id = 464005, gadget_id = 70290376, pos = { x = -675.488, y = 104.986, z = 1768.972 }, rot = { x = 0.000, y = 328.819, z = 0.000 }, level = 36, area_id = 19 },
	{ config_id = 464007, gadget_id = 70290376, pos = { x = -773.001, y = 102.160, z = 1799.211 }, rot = { x = 359.947, y = 89.573, z = 352.877 }, level = 36, area_id = 19 },
	{ config_id = 464009, gadget_id = 70290376, pos = { x = -690.759, y = 153.369, z = 1984.098 }, rot = { x = 359.596, y = 10.676, z = 358.544 }, level = 36, area_id = 19 }
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
		gadgets = { 464002, 464003, 464005, 464007, 464009 },
		regions = { },
		triggers = { },
		npcs = { 464001, 464004, 464006, 464008, 464010 },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================