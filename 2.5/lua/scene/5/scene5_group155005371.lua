-- 基础信息
local base_info = {
	group_id = 155005371
}

-- Trigger变量
local defs = {
	group_ID = 155005371,
	gadget_RuneSeal = 371001,
	gadget_mask = 371002
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
	{ config_id = 371001, gadget_id = 70590044, pos = { x = 430.403, y = 265.466, z = 281.941 }, rot = { x = 12.586, y = 231.413, z = 0.756 }, level = 36, isOneoff = true, persistent = true, interact_id = 56, area_id = 200 },
	{ config_id = 371002, gadget_id = 70290217, pos = { x = 430.452, y = 265.478, z = 281.994 }, rot = { x = 350.462, y = 44.198, z = 0.441 }, level = 36, area_id = 200 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	-- 初始化
	{ config_id = 1371003, name = "GROUP_LOAD_371003", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "", action = "action_EVENT_GROUP_LOAD_371003", trigger_count = 0 },
	-- 监听gameplayState
	{ config_id = 1371004, name = "VARIABLE_CHANGE_371004", event = EventType.EVENT_VARIABLE_CHANGE, source = "gameplayState", condition = "", action = "action_EVENT_VARIABLE_CHANGE_371004", trigger_count = 0 },
	-- 解除刻印
	{ config_id = 1371005, name = "GADGET_STATE_CHANGE_371005", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_371005", action = "action_EVENT_GADGET_STATE_CHANGE_371005" }
}

-- 变量
variables = {
	{ name = "gameplayState", value = 1, no_refresh = true }
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
		triggers = { "GROUP_LOAD_371003", "VARIABLE_CHANGE_371004" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 371001 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_371005" },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { },
		gadgets = { 371001 },
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
function action_EVENT_GROUP_LOAD_371003(context, evt)
	UpdateGamePlayState(context)
	return 0
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_371004(context, evt)
	if evt.param1 == evt.param2 then return -1 end
	
	UpdateGamePlayState(context)
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_371005(context, evt)
	if GadgetState.GearStart ~= ScriptLib.GetGadgetStateByConfigId(context, 155005371, 371001) then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_371005(context, evt)
	-- 将本组内变量名为 "gameplayState" 的变量设置为 2
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "gameplayState", 2) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	-- 针对当前group内变量名为 "activecount" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValueByGroup(context, "activecount", 1, 155005373) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable_by_group")
	  return -1
	end
	
	return 0
end

require "V2_4/EnvState"