-- 基础信息
local base_info = {
	group_id = 133213221
}

-- Trigger变量
local defs = {
	group_ID = 133213221,
	gadget_thunderThelfID = 221001,
	pointarray_ID = 321300048,
	maxPointCount = 15,
	pointInfo = {5,11,15} 
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
	{ config_id = 221001, gadget_id = 70350292, pos = { x = -3602.349, y = 238.825, z = -3241.417 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 2, start_route = false, persistent = true, is_use_point_array = true, area_id = 12 },
	{ config_id = 221003, gadget_id = 70350292, pos = { x = -3602.458, y = 239.529, z = -3237.643 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 2, start_route = false, persistent = true, is_use_point_array = true, area_id = 12 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1221002, name = "VARIABLE_CHANGE_221002", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_221002", action = "action_EVENT_VARIABLE_CHANGE_221002" },
	-- 到达中断点停止
	{ config_id = 1221004, name = "PLATFORM_REACH_POINT_221004", event = EventType.EVENT_PLATFORM_REACH_POINT, source = "", condition = "condition_EVENT_PLATFORM_REACH_POINT_221004", action = "action_EVENT_PLATFORM_REACH_POINT_221004", trigger_count = 0 },
	-- 玩家接近雷仙灵后触发移动
	{ config_id = 1221005, name = "AVATAR_NEAR_PLATFORM_221005", event = EventType.EVENT_AVATAR_NEAR_PLATFORM, source = "", condition = "condition_EVENT_AVATAR_NEAR_PLATFORM_221005", action = "action_EVENT_AVATAR_NEAR_PLATFORM_221005", trigger_count = 0 },
	{ config_id = 1221006, name = "GADGET_CREATE_221006", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_221006", action = "action_EVENT_GADGET_CREATE_221006" },
	{ config_id = 1221007, name = "QUEST_START_221007", event = EventType.EVENT_QUEST_START, source = "7211406", condition = "", action = "action_EVENT_QUEST_START_221007" },
	{ config_id = 1221008, name = "QUEST_FINISH_221008", event = EventType.EVENT_QUEST_FINISH, source = "7211408", condition = "", action = "action_EVENT_QUEST_FINISH_221008" }
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
	end_suite = 3,
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
			{ config_id = 221001, state = 0, platform_info = { point_id = 0, move_type = 1, route_id = 0, route_index = 0, is_started = false } }
		},
		monsters = {
		},
		regions = { },
		triggers = { "VARIABLE_CHANGE_221002", "PLATFORM_REACH_POINT_221004", "AVATAR_NEAR_PLATFORM_221005" },
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
			{ config_id = 221003, state = 201, platform_info = { point_id = 0, move_type = 1, route_id = 0, route_index = 0, is_started = false } }
		},
		monsters = {
		},
		regions = { },
		triggers = { "GADGET_CREATE_221006", "QUEST_FINISH_221008" },
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
		triggers = { "QUEST_START_221007" },
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
function condition_EVENT_VARIABLE_CHANGE_221002(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"isFinished"为1
	if ScriptLib.GetGroupVariableValue(context, "isFinished") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_221002(context, evt)
	-- 将本组内变量名为 "count" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValueByGroup(context, "count", 1, 133213101) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable_by_group")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_PLATFORM_REACH_POINT_221004(context, evt)
	if 221001 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_PLATFORM_REACH_POINT_221004(context, evt)
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
function condition_EVENT_AVATAR_NEAR_PLATFORM_221005(context, evt)
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
function action_EVENT_AVATAR_NEAR_PLATFORM_221005(context, evt)
		MovePlatform(context)
		return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_221006(context, evt)
	-- 判断变量"isFinished"为1
	if ScriptLib.GetGroupVariableValue(context, "isFinished") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_221006(context, evt)
	-- 将本组内变量名为 "count" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValueByGroup(context, "count", 1, 133213101) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable_by_group")
	  return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_QUEST_START_221007(context, evt)
		-- 将指定flowGroup的进度和要素属性都改为目标suite（缺的创建，多的移除）
	  ScriptLib.GoToFlowSuite(context, 133213221, 1)
	
	return 0
end

-- 触发操作
function action_EVENT_QUEST_FINISH_221008(context, evt)
		-- 将指定flowGroup的进度和要素属性都改为目标suite（缺的创建，多的移除）
	  ScriptLib.GoToFlowSuite(context, 133213221, 3)
	
	return 0
end