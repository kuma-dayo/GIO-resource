-- 基础信息
local base_info = {
	group_id = 155005256
}

-- Trigger变量
local defs = {
	group_ID = 155005256,
	gadget_sealday = 256001,
	gadget_sealnight = 256002
}

-- DEFS_MISCS
local EnvControlGadgets = {}
local DayAppearGadgets = {defs.gadget_sealday}
local NightAppearGadgets = {defs.gadget_sealnight}




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
		ScriptLib.SetGroupGadgetStateByConfigId(context, defs.group_ID, defs.gadget_sealday, 202)
		ScriptLib.SetGroupGadgetStateByConfigId(context, defs.group_ID, defs.gadget_sealnight, 202)
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
	{ config_id = 256001, gadget_id = 70360314, pos = { x = 402.077, y = 293.475, z = 273.629 }, rot = { x = 0.000, y = 319.838, z = 0.000 }, level = 36, area_id = 200 },
	{ config_id = 256002, gadget_id = 70360315, pos = { x = 395.578, y = 293.570, z = 281.330 }, rot = { x = 0.000, y = 319.838, z = 0.000 }, level = 36, area_id = 200 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1256003, name = "GROUP_LOAD_256003", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "", action = "action_EVENT_GROUP_LOAD_256003", trigger_count = 0 },
	{ config_id = 1256004, name = "VARIABLE_CHANGE_256004", event = EventType.EVENT_VARIABLE_CHANGE, source = "gameplayState", condition = "", action = "action_EVENT_VARIABLE_CHANGE_256004", trigger_count = 0 }
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
		triggers = { "GROUP_LOAD_256003", "VARIABLE_CHANGE_256004" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
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

-- 触发操作
function action_EVENT_GROUP_LOAD_256003(context, evt)
	
	UpdateGamePlayState(context)
	return 0
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_256004(context, evt)
	if evt.param1 == evt.param2 then return -1 end
	
	UpdateGamePlayState(context)
	return 0
end

require "V2_4/EnvState"