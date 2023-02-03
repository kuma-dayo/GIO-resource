-- 基础信息
local base_info = {
	group_id = 133304326
}

-- Trigger变量
local defs = {
	group_id = 133304326,
	gadget_riddle_hint = 326001,
	gadget_riddle_1 = 326002,
	gadget_riddle_2 = 326003,
	gadget_riddle_3 = 326004,
	gadget_riddle_4 = 326005,
	gadget_chest = 326006
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
	{ config_id = 326001, gadget_id = 70310012, pos = { x = -1220.708, y = 150.801, z = 2164.409 }, rot = { x = 0.000, y = 190.000, z = 0.000 }, level = 30, persistent = true, area_id = 21 },
	{ config_id = 326002, gadget_id = 70310011, pos = { x = -1214.295, y = 153.393, z = 2160.899 }, rot = { x = 6.344, y = 279.547, z = 349.159 }, level = 30, persistent = true, area_id = 21 },
	{ config_id = 326003, gadget_id = 70320005, pos = { x = -1224.676, y = 156.137, z = 2167.518 }, rot = { x = 346.738, y = 317.500, z = 0.000 }, level = 30, persistent = true, area_id = 21 },
	{ config_id = 326004, gadget_id = 70310011, pos = { x = -1239.967, y = 158.912, z = 2154.561 }, rot = { x = 335.508, y = 257.600, z = 0.000 }, level = 30, persistent = true, area_id = 21 },
	{ config_id = 326005, gadget_id = 70310011, pos = { x = -1224.989, y = 154.829, z = 2145.902 }, rot = { x = 0.000, y = 14.100, z = 0.000 }, level = 30, persistent = true, area_id = 21 },
	{ config_id = 326006, gadget_id = 70211102, pos = { x = -1215.508, y = 153.734, z = 2163.083 }, rot = { x = 0.000, y = 314.970, z = 0.000 }, level = 26, drop_tag = "解谜低级须弥", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, explore = { name = "chest", exp = 10 }, area_id = 21 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1326007, name = "GADGET_STATE_CHANGE_326007", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_326007", action = "action_EVENT_GADGET_STATE_CHANGE_326007", trigger_count = 0 },
	{ config_id = 1326008, name = "VARIABLE_CHANGE_326008", event = EventType.EVENT_VARIABLE_CHANGE, source = "State_Flag", condition = "condition_EVENT_VARIABLE_CHANGE_326008", action = "action_EVENT_VARIABLE_CHANGE_326008", trigger_count = 0 },
	{ config_id = 1326009, name = "GROUP_LOAD_326009", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "", action = "action_EVENT_GROUP_LOAD_326009", trigger_count = 0 }
}

-- 变量
variables = {
	{ config_id = 1, name = "State_Flag", value = 0, no_refresh = true }
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
		gadgets = { 326001, 326002, 326003, 326004, 326005, 326006 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_326007", "VARIABLE_CHANGE_326008", "GROUP_LOAD_326009" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_326007(context, evt)
	if evt.param2 ~= defs.gadget_riddle_1 and evt.param2 ~= defs.gadget_riddle_2 and evt.param2 ~= defs.gadget_riddle_3 and evt.param2 ~= defs.gadget_riddle_4 then
	return false 
	end
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_326007(context, evt)
	if evt.param1 == GadgetState.GearStart then
	ScriptLib.ChangeGroupVariableValue(context, "State_Flag", 1)
	if 0 == ScriptLib.GetCurTriggerCount(context) then
	ScriptLib.MarkPlayerAction(context, 1003, 1, 1)
	end 
	elseif evt.param1 == GadgetState.Default then
	ScriptLib.ChangeGroupVariableValue(context, "State_Flag", -1)
	end
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_326008(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	if evt.param1 < 0 or evt.param1 > 4 then
	return false
	end
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_326008(context, evt)
	if evt.param1 == 0 then
	ScriptLib.SetGroupGadgetStateByConfigId(context, defs.group_id, defs.gadget_riddle_hint, GadgetState.Default)
	elseif evt.param1 == 1 then
	ScriptLib.SetGroupGadgetStateByConfigId(context, defs.group_id, defs.gadget_riddle_hint, GadgetState.Action01)
	ScriptLib.MarkPlayerAction(context, 1003, 2, 2) 
	elseif evt.param1 == 2 then
	ScriptLib.SetGroupGadgetStateByConfigId(context, defs.group_id, defs.gadget_riddle_hint, GadgetState.Action02)
	ScriptLib.MarkPlayerAction(context, 1003, 2, 3) 
	elseif evt.param1 == 3 then
	ScriptLib.SetGroupGadgetStateByConfigId(context, defs.group_id, defs.gadget_riddle_hint, GadgetState.Action03)
	ScriptLib.MarkPlayerAction(context, 1003, 2, 4) 
	elseif evt.param1 == 4 then
	ScriptLib.SetGroupGadgetStateByConfigId(context, defs.group_id, defs.gadget_riddle_hint, GadgetState.GearStart)
	ScriptLib.MarkPlayerAction(context, 1003, 3, 5) 
	ScriptLib.SetGroupGadgetStateByConfigId(context, defs.group_id, defs.gadget_chest, GadgetState.Default)
	end
	return 0
end

-- 触发操作
function action_EVENT_GROUP_LOAD_326009(context, evt)
	local sum = 0
	if ScriptLib.GetGadgetStateByConfigId(context, defs.group_id, defs.gadget_riddle_1) == GadgetState.GearStart then
	sum = sum + 1
	end
	if ScriptLib.GetGadgetStateByConfigId(context, defs.group_id, defs.gadget_riddle_2) == GadgetState.GearStart then
	sum = sum + 1
	end
	if ScriptLib.GetGadgetStateByConfigId(context, defs.group_id, defs.gadget_riddle_3) == GadgetState.GearStart then
	sum = sum + 1
	end
	if ScriptLib.GetGadgetStateByConfigId(context, defs.group_id, defs.gadget_riddle_4) == GadgetState.GearStart then
	sum = sum + 1
	end
	ScriptLib.SetGroupVariableValue(context, "State_Flag", sum)
	return 0
end

require "V3_0/DeathFieldStandard"