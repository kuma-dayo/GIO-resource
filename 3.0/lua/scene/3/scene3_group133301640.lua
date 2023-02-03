-- 基础信息
local base_info = {
	group_id = 133301640
}

-- Trigger变量
local defs = {
	point_camera = 640007,
	gadget_lookEntity = 640002,
	look_duration = 2
}

-- DEFS_MISCS
local CameraLookSetting = {
    blend_type = 1,
    blend_duration = 1.5,
    is_force_walk = false,
    is_allow_input = false,
    delay = 0,
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
	[640001] = { config_id = 640001, gadget_id = 70290540, pos = { x = -293.130, y = 199.423, z = 3304.962 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, route_id = 330100187, start_route = false, persistent = true, area_id = 22 },
	[640002] = { config_id = 640002, gadget_id = 70900050, pos = { x = -286.858, y = 212.720, z = 3306.067 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, state = GadgetState.GearStop, persistent = true, area_id = 22 },
	[640004] = { config_id = 640004, gadget_id = 70220103, pos = { x = -280.829, y = 214.688, z = 3304.348 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 22 },
	[640005] = { config_id = 640005, gadget_id = 70220103, pos = { x = -278.382, y = 233.368, z = 3307.573 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 22 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1640003, name = "GADGET_STATE_CHANGE_640003", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_640003", action = "action_EVENT_GADGET_STATE_CHANGE_640003" },
	{ config_id = 1640006, name = "GADGET_STATE_CHANGE_640006", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_640006", action = "action_EVENT_GADGET_STATE_CHANGE_640006" },
	{ config_id = 1640008, name = "GROUP_LOAD_640008", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_640008", action = "action_EVENT_GROUP_LOAD_640008", trigger_count = 0 }
}

-- 点位
points = {
	[640007] = { config_id = 640007, pos = { x = -274.125, y = 224.772, z = 3318.786 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, area_id = 29 }
}

-- 变量
variables = {
	{ config_id = 1, name = "123", value = 0, no_refresh = true }
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
		gadgets = { 640001, 640002, 640004, 640005 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_640003", "GADGET_STATE_CHANGE_640006", "GROUP_LOAD_640008" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_640003(context, evt)
	if 640002 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_640003(context, evt)
	-- 启动移动平台
	if 0 ~= ScriptLib.StartPlatform(context, 640001) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : start_platform")
	  return -1
	end
	
	-- 将本组内变量名为 "123" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "123", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_640006(context, evt)
	if 640002 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_640006(context, evt)
	LF_PointLook(context)
	return 0
end

-- 触发条件
function condition_EVENT_GROUP_LOAD_640008(context, evt)
	-- 判断变量"123"为1
	if ScriptLib.GetGroupVariableValue(context, "123") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_640008(context, evt)
	-- 启动移动平台
	if 0 ~= ScriptLib.StartPlatform(context, 640001) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : start_platform")
	  return -1
	end
	
	return 0
end

require "V3_0/CameraLook"
require "V3_0/DeathFieldStandard"