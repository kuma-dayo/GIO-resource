-- 基础信息
local base_info = {
	group_id = 133301185
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
	{ config_id = 185001, gadget_id = 70330197, pos = { x = -914.046, y = 74.526, z = 3138.831 }, rot = { x = 346.993, y = 230.915, z = 349.967 }, level = 30, area_id = 23 },
	{ config_id = 185004, gadget_id = 70500000, pos = { x = -913.405, y = 111.020, z = 3140.993 }, rot = { x = 0.000, y = 152.694, z = 0.000 }, level = 33, point_type = 4014, isOneoff = true, persistent = true, explore = { name = "gather", exp = 30 }, area_id = 23 },
	{ config_id = 185005, gadget_id = 70220103, pos = { x = -825.410, y = 154.077, z = 3193.559 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 23 },
	{ config_id = 185006, gadget_id = 70220103, pos = { x = -859.284, y = 146.353, z = 3248.842 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 23 },
	{ config_id = 185007, gadget_id = 70220103, pos = { x = -920.688, y = 128.249, z = 3164.374 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 23 },
	{ config_id = 185008, gadget_id = 70220103, pos = { x = -814.649, y = 186.527, z = 3281.005 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 23 },
	{ config_id = 185009, gadget_id = 70220103, pos = { x = -872.161, y = 21.570, z = 3236.351 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 23 },
	{ config_id = 185010, gadget_id = 70220103, pos = { x = -886.834, y = 67.008, z = 3212.828 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 23 },
	{ config_id = 185011, gadget_id = 70220103, pos = { x = -882.258, y = 50.109, z = 3137.011 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 23 },
	{ config_id = 185012, gadget_id = 70330197, pos = { x = -882.980, y = 46.763, z = 3136.362 }, rot = { x = 348.632, y = 241.280, z = 352.225 }, level = 30, area_id = 23 },
	{ config_id = 185013, gadget_id = 70220103, pos = { x = -901.097, y = 81.769, z = 3142.478 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 23 },
	{ config_id = 185014, gadget_id = 70220103, pos = { x = -856.119, y = 39.725, z = 3253.920 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 23 },
	{ config_id = 185015, gadget_id = 70220103, pos = { x = -853.533, y = 49.657, z = 3195.497 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 23 },
	{ config_id = 185016, gadget_id = 70220103, pos = { x = -880.769, y = 108.006, z = 3179.875 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 23 },
	{ config_id = 185017, gadget_id = 70330197, pos = { x = -854.958, y = 113.058, z = 3186.775 }, rot = { x = 351.632, y = 76.734, z = 353.891 }, level = 30, area_id = 23 },
	{ config_id = 185018, gadget_id = 70220103, pos = { x = -855.794, y = 116.556, z = 3186.777 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 23 }
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

-- 废弃数据
garbages = {
	gadgets = {
		{ config_id = 185002, gadget_id = 70330215, pos = { x = -911.836, y = 88.163, z = 3136.776 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 23 },
		{ config_id = 185003, gadget_id = 70330215, pos = { x = -916.151, y = 90.724, z = 3143.906 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 23 }
	}
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
		gadgets = { 185001, 185004, 185005, 185006, 185007, 185008, 185009, 185010, 185011, 185012, 185013, 185014, 185015, 185016, 185017, 185018 },
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