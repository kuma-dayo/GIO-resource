-- 基础信息
local base_info = {
	group_id = 133301531
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
	{ config_id = 531001, gadget_id = 70500000, pos = { x = -639.920, y = 156.407, z = 3707.550 }, rot = { x = 0.000, y = 116.206, z = 0.000 }, level = 33, point_type = 2052, area_id = 25 },
	{ config_id = 531002, gadget_id = 70500000, pos = { x = -608.591, y = 100.162, z = 3792.123 }, rot = { x = 0.000, y = 169.885, z = 0.000 }, level = 33, point_type = 2052, area_id = 25 },
	{ config_id = 531003, gadget_id = 70500000, pos = { x = -639.059, y = 131.581, z = 3739.296 }, rot = { x = 0.000, y = 282.244, z = 0.000 }, level = 33, point_type = 2052, area_id = 25 },
	{ config_id = 531004, gadget_id = 70500000, pos = { x = -632.067, y = 126.835, z = 3802.427 }, rot = { x = 0.000, y = 195.558, z = 0.000 }, level = 33, point_type = 2052, area_id = 25 },
	{ config_id = 531005, gadget_id = 70500000, pos = { x = -681.977, y = 116.317, z = 3799.780 }, rot = { x = 0.000, y = 25.120, z = 0.000 }, level = 33, point_type = 2052, area_id = 25 },
	{ config_id = 531006, gadget_id = 70500000, pos = { x = -658.225, y = 124.437, z = 3823.188 }, rot = { x = 0.000, y = 331.143, z = 0.000 }, level = 33, point_type = 2004, area_id = 25 },
	{ config_id = 531007, gadget_id = 70500000, pos = { x = -705.877, y = 140.752, z = 3775.317 }, rot = { x = 0.000, y = 49.523, z = 0.000 }, level = 33, point_type = 2052, area_id = 25 },
	{ config_id = 531008, gadget_id = 70500000, pos = { x = -567.275, y = 141.941, z = 3712.501 }, rot = { x = 0.000, y = 5.534, z = 0.000 }, level = 33, point_type = 2052, area_id = 25 },
	{ config_id = 531009, gadget_id = 70500000, pos = { x = -730.816, y = 177.368, z = 3821.768 }, rot = { x = 0.000, y = 29.163, z = 0.000 }, level = 33, point_type = 2004, area_id = 25 }
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
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

require "V3_0/DeathFieldStandard"