-- 基础信息
local base_info = {
	group_id = 199002146
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 146007, monster_id = 21010301, pos = { x = 80.319, y = 120.399, z = -127.281 }, rot = { x = 0.000, y = 3.880, z = 0.000 }, level = 20, drop_tag = "丘丘人", pose_id = 9003, area_id = 401 },
	{ config_id = 146008, monster_id = 21010301, pos = { x = 84.495, y = 121.027, z = -126.182 }, rot = { x = 0.000, y = 278.440, z = 0.000 }, level = 20, drop_tag = "丘丘人", pose_id = 9003, area_id = 401 },
	{ config_id = 146009, monster_id = 20011201, pos = { x = 81.833, y = 121.254, z = -124.915 }, rot = { x = 0.000, y = 217.321, z = 0.000 }, level = 20, drop_tag = "史莱姆", disableWander = true, area_id = 401 },
	{ config_id = 146010, monster_id = 21010101, pos = { x = 83.779, y = 120.173, z = -121.684 }, rot = { x = 0.000, y = 28.521, z = 0.000 }, level = 20, drop_tag = "丘丘人", pose_id = 9016, area_id = 401 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 146001, gadget_id = 70211101, pos = { x = 85.019, y = 120.000, z = -118.762 }, rot = { x = 0.000, y = 201.410, z = 0.000 }, level = 16, drop_tag = "解谜低级群岛", isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 401 },
	{ config_id = 146002, gadget_id = 70300085, pos = { x = 81.870, y = 120.332, z = -124.597 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, area_id = 401 },
	{ config_id = 146003, gadget_id = 70300087, pos = { x = 81.878, y = 120.792, z = -124.800 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, area_id = 401 },
	{ config_id = 146004, gadget_id = 70300089, pos = { x = 79.307, y = 120.000, z = -121.927 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, area_id = 401 },
	{ config_id = 146005, gadget_id = 70300089, pos = { x = 86.930, y = 121.592, z = -127.302 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, area_id = 401 },
	{ config_id = 146006, gadget_id = 70300089, pos = { x = 75.241, y = 120.000, z = -124.669 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, area_id = 401 },
	{ config_id = 146011, gadget_id = 70220065, pos = { x = 82.611, y = 120.000, z = -120.048 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, area_id = 401 },
	{ config_id = 146012, gadget_id = 70220026, pos = { x = 85.622, y = 120.314, z = -121.588 }, rot = { x = 0.000, y = 34.852, z = 0.000 }, level = 20, area_id = 401 },
	{ config_id = 146013, gadget_id = 70220026, pos = { x = 80.818, y = 120.000, z = -120.670 }, rot = { x = 0.000, y = 325.516, z = 0.000 }, level = 20, area_id = 401 }
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
		monsters = { 146007, 146008, 146009, 146010 },
		gadgets = { 146001, 146002, 146003, 146004, 146005, 146006, 146011, 146012, 146013 },
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