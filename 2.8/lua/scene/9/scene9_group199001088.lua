-- 基础信息
local base_info = {
	group_id = 199001088
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
	{ config_id = 88001, gadget_id = 70310004, pos = { x = -216.026, y = 121.229, z = 416.279 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, state = GadgetState.GearStart, area_id = 403 },
	{ config_id = 88002, gadget_id = 70710589, pos = { x = -216.046, y = 122.394, z = 419.472 }, rot = { x = 0.000, y = 50.000, z = 0.000 }, level = 1, area_id = 403 },
	{ config_id = 88003, gadget_id = 71700380, pos = { x = -216.009, y = 122.494, z = 420.133 }, rot = { x = 60.000, y = 0.000, z = 0.000 }, level = 1, area_id = 403 },
	{ config_id = 88004, gadget_id = 71700380, pos = { x = -216.119, y = 122.502, z = 420.167 }, rot = { x = 60.000, y = 60.000, z = 0.000 }, level = 1, area_id = 403 },
	{ config_id = 88005, gadget_id = 70710589, pos = { x = -215.494, y = 122.394, z = 419.832 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 403 },
	{ config_id = 88006, gadget_id = 70710615, pos = { x = -216.046, y = 122.394, z = 419.472 }, rot = { x = 0.000, y = 50.000, z = 0.000 }, level = 1, area_id = 403 },
	{ config_id = 88007, gadget_id = 70710615, pos = { x = -215.494, y = 122.394, z = 419.832 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 403 }
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
		gadgets = { 88001, 88002, 88003, 88004, 88005 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 88001, 88006, 88007 },
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