-- DEFS_MISCS
local EnterConfigID = 8008

local thunderFloorTimer = {7}

local floorList = {8001,8002,8003,8004,8005,8006,8007}

local randomNumMin = 7

local randomNumMax = 7

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
	{ config_id = 8001, gadget_id = 70360285, pos = { x = -102.153, y = 30.720, z = 385.604 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 8002, gadget_id = 70360285, pos = { x = -80.535, y = 20.720, z = 391.830 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 1 },
	{ config_id = 8003, gadget_id = 70360285, pos = { x = -25.968, y = 21.015, z = 379.451 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 8004, gadget_id = 70360285, pos = { x = -12.336, y = 20.720, z = 410.121 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 8005, gadget_id = 70360285, pos = { x = 0.558, y = 20.720, z = 410.050 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 8006, gadget_id = 70360285, pos = { x = -3.250, y = 15.720, z = 401.154 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 1 },
	{ config_id = 8007, gadget_id = 70360285, pos = { x = -25.950, y = 21.009, z = 410.025 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 8009, gadget_id = 70350256, pos = { x = -68.471, y = 33.208, z = 408.219 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 8010, gadget_id = 70350256, pos = { x = -65.548, y = 33.208, z = 408.219 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 8011, gadget_id = 70350256, pos = { x = -62.558, y = 33.208, z = 408.219 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 8012, gadget_id = 70350256, pos = { x = -58.584, y = 27.174, z = 416.739 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 8013, gadget_id = 70350256, pos = { x = -55.661, y = 27.174, z = 416.739 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 8014, gadget_id = 70350256, pos = { x = -52.671, y = 27.174, z = 416.739 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 8015, gadget_id = 70350256, pos = { x = -58.584, y = 32.473, z = 408.874 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 8016, gadget_id = 70350256, pos = { x = -58.584, y = 31.529, z = 410.881 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 8017, gadget_id = 70350256, pos = { x = -58.584, y = 29.427, z = 413.552 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 8018, gadget_id = 70350256, pos = { x = -49.498, y = 26.796, z = 414.317 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 8019, gadget_id = 70350256, pos = { x = -49.498, y = 24.455, z = 411.976 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 8020, gadget_id = 70350256, pos = { x = -48.992, y = 21.792, z = 408.701 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 8021, gadget_id = 70350256, pos = { x = -47.395, y = 21.792, z = 405.718 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 8022, gadget_id = 70350256, pos = { x = -44.538, y = 21.792, z = 405.718 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 8023, gadget_id = 70350256, pos = { x = -41.749, y = 21.792, z = 405.718 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 8024, gadget_id = 70350256, pos = { x = -38.371, y = 21.792, z = 405.718 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 8025, gadget_id = 70350256, pos = { x = -35.515, y = 21.792, z = 405.718 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 8026, gadget_id = 70350256, pos = { x = -32.725, y = 21.792, z = 405.718 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 8027, gadget_id = 70350256, pos = { x = -38.371, y = 21.792, z = 409.687 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 8028, gadget_id = 70350256, pos = { x = -35.515, y = 21.792, z = 409.687 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 8029, gadget_id = 70350256, pos = { x = -32.725, y = 21.792, z = 409.687 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 8030, gadget_id = 70350256, pos = { x = -38.371, y = 21.792, z = 413.006 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 8031, gadget_id = 70350256, pos = { x = -35.515, y = 21.792, z = 413.006 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 8032, gadget_id = 70350256, pos = { x = -32.725, y = 21.792, z = 413.006 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 8033, gadget_id = 70350256, pos = { x = -25.733, y = 21.792, z = 410.242 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 8034, gadget_id = 70350256, pos = { x = -25.386, y = 24.801, z = 410.242 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 8035, gadget_id = 70350256, pos = { x = -24.897, y = 27.711, z = 410.242 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 8036, gadget_id = 70350256, pos = { x = -22.913, y = 29.678, z = 410.242 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 8037, gadget_id = 70350256, pos = { x = -68.471, y = 33.208, z = 377.476 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 8038, gadget_id = 70350256, pos = { x = -65.548, y = 33.208, z = 377.476 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 8039, gadget_id = 70350256, pos = { x = -62.558, y = 33.208, z = 377.476 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 8040, gadget_id = 70350256, pos = { x = -58.584, y = 27.174, z = 385.995 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 8041, gadget_id = 70350256, pos = { x = -55.661, y = 27.174, z = 385.995 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 8042, gadget_id = 70350256, pos = { x = -52.671, y = 27.174, z = 385.995 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 8043, gadget_id = 70350256, pos = { x = -58.584, y = 32.473, z = 378.131 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 8044, gadget_id = 70350256, pos = { x = -58.584, y = 31.529, z = 380.137 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 8045, gadget_id = 70350256, pos = { x = -58.584, y = 29.427, z = 382.809 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 8046, gadget_id = 70350256, pos = { x = -49.498, y = 26.796, z = 383.574 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 8047, gadget_id = 70350256, pos = { x = -49.498, y = 24.455, z = 381.232 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 8048, gadget_id = 70350256, pos = { x = -48.992, y = 21.792, z = 377.957 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 8049, gadget_id = 70350256, pos = { x = -47.395, y = 21.792, z = 374.974 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 8050, gadget_id = 70350256, pos = { x = -44.538, y = 21.792, z = 374.974 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 8051, gadget_id = 70350256, pos = { x = -41.749, y = 21.792, z = 374.974 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 8052, gadget_id = 70350256, pos = { x = -38.371, y = 21.792, z = 374.974 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 8053, gadget_id = 70350256, pos = { x = -35.515, y = 21.792, z = 374.974 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 8054, gadget_id = 70350256, pos = { x = -32.725, y = 21.792, z = 374.974 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 8055, gadget_id = 70350256, pos = { x = -38.371, y = 21.792, z = 378.944 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 8056, gadget_id = 70350256, pos = { x = -35.515, y = 21.792, z = 378.944 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 8057, gadget_id = 70350256, pos = { x = -32.725, y = 21.792, z = 378.944 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 8058, gadget_id = 70350256, pos = { x = -38.371, y = 21.792, z = 382.263 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 8059, gadget_id = 70350256, pos = { x = -35.515, y = 21.792, z = 382.263 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 8060, gadget_id = 70350256, pos = { x = -32.725, y = 21.792, z = 382.263 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 8061, gadget_id = 70350256, pos = { x = -25.733, y = 21.792, z = 379.499 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 8062, gadget_id = 70350256, pos = { x = -25.386, y = 24.801, z = 379.499 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 8063, gadget_id = 70350256, pos = { x = -24.897, y = 27.711, z = 379.499 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 8064, gadget_id = 70350256, pos = { x = -22.913, y = 29.678, z = 379.499 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 8065, gadget_id = 70350256, pos = { x = -3.982, y = 31.441, z = 374.303 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 8066, gadget_id = 70350256, pos = { x = -3.982, y = 29.593, z = 374.303 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 8067, gadget_id = 70350256, pos = { x = -3.982, y = 27.521, z = 374.303 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 }
}

-- 区域
regions = {
	{ config_id = 8008, shape = RegionShape.SPHERE, radius = 20, pos = { x = -111.602, y = 15.720, z = 406.999 } }
}

-- 触发器
triggers = {
	{ config_id = 1008008, name = "ENTER_REGION_8008", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_8008", action = "" }
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
		gadgets = { 8001, 8002, 8003, 8004, 8005, 8006, 8007, 8009, 8010, 8011, 8012, 8013, 8014, 8015, 8016, 8017, 8018, 8019, 8020, 8021, 8022, 8023, 8024, 8025, 8026, 8027, 8028, 8029, 8030, 8031, 8032, 8033, 8034, 8035, 8036, 8037, 8038, 8039, 8040, 8041, 8042, 8043, 8044, 8045, 8046, 8047, 8048, 8049, 8050, 8051, 8052, 8053, 8054, 8055, 8056, 8057, 8058, 8059, 8060, 8061, 8062, 8063, 8064, 8065, 8066, 8067 },
		regions = { 8008 },
		triggers = { "ENTER_REGION_8008" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ENTER_REGION_8008(context, evt)
	if evt.param1 ~= 8008 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

require "V2_0/ThunderFloor"