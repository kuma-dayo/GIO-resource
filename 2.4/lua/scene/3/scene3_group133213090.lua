-- Trigger变量
local defs = {
	group_ID = 133213090,
	gadget_thunderThelfID = 90001,
	pointarray_ID = 321300013,
	maxPointCount = 14,
	gadget_Reward_1 = 90002,
	pointInfo = {5,10,14} 
}

-- DEFS_MISCS
function GetNextPath(context)
	local path = {}
	local index = ScriptLib.GetGroupVariableValue(context,"nextRouteIndex")
	local stoppoint = defs.pointInfo[index]
	ScriptLib.PrintLog("stop point : "..stoppoint)
	local currentNodeIndex = ScriptLib.GetGroupVariableValue(context,"currentPathNodeIndex")
	for i=currentNodeIndex + 1,stoppoint do
		table.insert(path,i)
	end
	return path
end


function MovePlatform(context)
	ScriptLib.PrintLog("platform to move")
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "isMoving", 1) then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
		return -1
	end


	ScriptLib.SetPlatformPointArray(context, defs.gadget_thunderThelfID, defs.pointarray_ID, GetNextPath(context), { route_type = 0 })
	ScriptLib.PrintLog("platform to move : start platform")
	return 0
end

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
	{ config_id = 90001, gadget_id = 70350292, pos = { x = -3425.505, y = 200.660, z = -2939.657 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 2, start_route = false, persistent = true, is_use_point_array = true, area_id = 12 },
	{ config_id = 90003, gadget_id = 70350292, pos = { x = -3416.599, y = 199.202, z = -2978.712 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 2, start_route = false, persistent = true, is_use_point_array = true, area_id = 12 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1090004, name = "PLATFORM_REACH_POINT_90004", event = EventType.EVENT_PLATFORM_REACH_POINT, source = "", condition = "condition_EVENT_PLATFORM_REACH_POINT_90004", action = "action_EVENT_PLATFORM_REACH_POINT_90004", trigger_count = 0 },
	{ config_id = 1090005, name = "AVATAR_NEAR_PLATFORM_90005", event = EventType.EVENT_AVATAR_NEAR_PLATFORM, source = "", condition = "condition_EVENT_AVATAR_NEAR_PLATFORM_90005", action = "action_EVENT_AVATAR_NEAR_PLATFORM_90005", trigger_count = 0 },
	{ config_id = 1090006, name = "VARIABLE_CHANGE_90006", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_90006", action = "action_EVENT_VARIABLE_CHANGE_90006" },
	{ config_id = 1090007, name = "GADGET_CREATE_90007", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_90007", action = "action_EVENT_GADGET_CREATE_90007" }
}

-- 变量
variables = {
	{ name = "isFinished", value = 0, no_refresh = true },
	{ name = "isMoving", value = 0, no_refresh = false },
	{ name = "currentRouteIndex", value = 0, no_refresh = false },
	{ name = "nextRouteIndex", value = 1, no_refresh = false },
	{ name = "isstart", value = 0, no_refresh = false },
	{ name = "currentPathNodeIndex", value = 0, no_refresh = false }
}

--================================================================
-- 
-- 初始化配置
-- 
--================================================================

-- 初始化时创建
init_config = {
	io_type = 1,
	suite = 3,
	end_suite = 0,
	rand_suite = false
}

--================================================================
-- 
-- 小组配置
-- 
--================================================================

suite_disk = {
	[1] = {
		gadgets = {
			{ config_id = 90001, state = 0, platform_info = { point_id = 0, move_type = 1, route_id = 0, route_index = 0, is_started = false } }
		},
		monsters = {
		},
		regions = { },
		triggers = { "PLATFORM_REACH_POINT_90004", "AVATAR_NEAR_PLATFORM_90005", "VARIABLE_CHANGE_90006" },
		npcs = { },
		variables = {
			{ name = "isFinished", value = 0, no_refresh = true },
			{ name = "isMoving", value = 0, no_refresh = false },
			{ name = "currentRouteIndex", value = 0, no_refresh = false },
			{ name = "nextRouteIndex", value = 1, no_refresh = false },
			{ name = "isstart", value = 0, no_refresh = false },
			{ name = "currentPathNodeIndex", value = 0, no_refresh = false }
		}
	},
	[2] = {
		gadgets = {
			{ config_id = 90003, state = 201, platform_info = { point_id = 0, move_type = 1, route_id = 0, route_index = 0, is_started = false } }
		},
		monsters = {
		},
		regions = { },
		triggers = { "GADGET_CREATE_90007" },
		npcs = { },
		variables = {
			{ name = "isFinished", value = 1, no_refresh = true },
			{ name = "isMoving", value = 0, no_refresh = false },
			{ name = "currentRouteIndex", value = 0, no_refresh = false },
			{ name = "nextRouteIndex", value = 1, no_refresh = false },
			{ name = "isstart", value = 0, no_refresh = false },
			{ name = "currentPathNodeIndex", value = 0, no_refresh = false }
		}
	},
	[3] = {
		gadgets = {
		},
		monsters = {
		},
		regions = { },
		triggers = { },
		npcs = { },
		variables = {
			{ name = "isFinished", value = 0, no_refresh = true },
			{ name = "isMoving", value = 0, no_refresh = false },
			{ name = "currentRouteIndex", value = 0, no_refresh = false },
			{ name = "nextRouteIndex", value = 1, no_refresh = false },
			{ name = "isstart", value = 0, no_refresh = false },
			{ name = "currentPathNodeIndex", value = 0, no_refresh = false }
		}
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_PLATFORM_REACH_POINT_90004(context, evt)
	if 90001 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_PLATFORM_REACH_POINT_90004(context, evt)
	ScriptLib.PrintLog("Reach Point : ".. " configID = "..evt.param1 .. ", pointarray_ID = "..evt.param2..", pointID = "..evt.param3)		
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "isMoving", 0) then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
		return -1
	end	
	ScriptLib.StopPlatform(context, defs.gadget_thunderThelfID)
	if evt.param3 == defs.maxPointCount then
		ScriptLib.SetGroupVariableValue(context, "isFinished", 1)
		ScriptLib.SetGadgetStateByConfigId(context, defs.gadget_thunderThelfID, GadgetState.GearStart)
		ScriptLib.SetFlowSuite(context, defs.group_ID, 2)		
		ScriptLib.MarkPlayerAction(context, 2014, 3, 1)	
		return 0
	end
			
	local next = ScriptLib.GetGroupVariableValue(context, "nextRouteIndex")
	next = next + 1
	ScriptLib.SetGroupVariableValue(context,"nextRouteIndex", next)
	ScriptLib.SetGroupVariableValue(context,"currentPathNodeIndex",evt.param3)
	return 0
end

-- 触发条件
function condition_EVENT_AVATAR_NEAR_PLATFORM_90005(context, evt)
			ScriptLib.PrintLog("Near Platform condition : ".. evt.param1.." | RouteID = " .. evt.param2 .. " | Point = ".. evt.param3)
			if defs.gadget_thunderThelfID ~= evt.param1 then
				return false
			end
			local state = ScriptLib.GetGadgetStateByConfigId(context, defs.group_ID, defs.gadget_thunderThelfID)
			ScriptLib.PrintLog("Near Platform condition : ".." State = "..state) 
			if state == 201 then 
				return false
			end
			if ScriptLib.GetGroupVariableValue(context, "isMoving") ~= 0 then 
				return false
			end
			
			return true
end

-- 触发操作
function action_EVENT_AVATAR_NEAR_PLATFORM_90005(context, evt)
		MovePlatform(context)
		return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_90006(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"isFinished"为1
	if ScriptLib.GetGroupVariableValue(context, "isFinished") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_90006(context, evt)
	-- 将本组内变量名为 "count1" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValueByGroup(context, "count1", 1, 133213372) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable_by_group")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_90007(context, evt)
	-- 判断变量"isFinished"为1
	if ScriptLib.GetGroupVariableValue(context, "isFinished") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_90007(context, evt)
	-- 将本组内变量名为 "count1" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValueByGroup(context, "count1", 1, 133213372) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable_by_group")
	  return -1
	end
	
	return 0
end