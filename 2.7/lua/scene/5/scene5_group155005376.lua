-- 基础信息
local base_info = {
	group_id = 155005376
}

-- Trigger变量
local defs = {
	group_ID = 155005376,
	gadget_RuneSeal = 376001,
	gadget_mask = 376002
}

-- DEFS_MISCS
local Controllers = {}
local EnvControlGadgets = {}
local Worktops = {}
local DayAppearGadgets = {defs.gadget_RuneSeal}
local NightAppearGadgets = {defs.gadget_mask}

local gameplayStateFuncitons = 
{
	["0"] = function(context)
		ScriptLib.SetGroupVariableValue(context,"is_daynight_finish",1)
	end,
	["1"] = function(context)
		ScriptLib.SetGroupVariableValue(context,"is_daynight_finish",0)
		ScriptLib.AddExtraGroupSuite(context, defs.group_ID, 2)

	end,
	["2"] = function(context)
		ScriptLib.SetGroupVariableValue(context,"is_daynight_finish",1)
		ScriptLib.AddExtraGroupSuite(context, defs.group_ID, 3)

	end

}


function UpdateGamePlayState(context)
	local state = ScriptLib.GetGroupVariableValue(context, "gameplayState") 

	gameplayStateFuncitons[tostring(state)](context)

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
	{ config_id = 376001, gadget_id = 70590048, pos = { x = 359.609, y = 189.727, z = 124.599 }, rot = { x = 0.000, y = 346.703, z = 355.491 }, level = 36, isOneoff = true, persistent = true, interact_id = 60, area_id = 200 },
	{ config_id = 376002, gadget_id = 70290217, pos = { x = 359.609, y = 189.727, z = 124.599 }, rot = { x = 0.000, y = 346.703, z = 355.491 }, level = 36, area_id = 200 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	-- 初始化
	{ config_id = 1376003, name = "GROUP_LOAD_376003", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "", action = "action_EVENT_GROUP_LOAD_376003", trigger_count = 0 },
	-- 监听gameplayState
	{ config_id = 1376004, name = "VARIABLE_CHANGE_376004", event = EventType.EVENT_VARIABLE_CHANGE, source = "gameplayState", condition = "", action = "action_EVENT_VARIABLE_CHANGE_376004", trigger_count = 0 },
	-- 解除刻印
	{ config_id = 1376005, name = "GADGET_STATE_CHANGE_376005", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_376005", action = "action_EVENT_GADGET_STATE_CHANGE_376005" }
}

-- 变量
variables = {
	{ config_id = 1, name = "gameplayState", value = 1, no_refresh = true }
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
		triggers = { "GROUP_LOAD_376003", "VARIABLE_CHANGE_376004" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 376001 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_376005" },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { },
		gadgets = { 376001 },
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

-- 触发操作
function action_EVENT_GROUP_LOAD_376003(context, evt)
	UpdateGamePlayState(context)
	return 0
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_376004(context, evt)
	if evt.param1 == evt.param2 then return -1 end
	
	UpdateGamePlayState(context)
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_376005(context, evt)
	if GadgetState.GearStart ~= ScriptLib.GetGadgetStateByConfigId(context, 155005376, 376001) then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_376005(context, evt)
	-- 将本组内变量名为 "gameplayState" 的变量设置为 2
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "gameplayState", 2) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	-- 针对当前group内变量名为 "activecount" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValueByGroup(context, "activecount", 1, 155005374) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable_by_group")
	  return -1
	end
	
	return 0
end

require "V2_4/EnvState"