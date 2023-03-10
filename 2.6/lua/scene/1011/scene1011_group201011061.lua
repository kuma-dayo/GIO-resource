-- 基础信息
local base_info = {
	group_id = 201011061
}

-- Trigger变量
local defs = {
	group_id = 201011061,
	gadget_riddle_hint = 61001,
	gadget_riddle_1 = 61002,
	gadget_riddle_2 = 61003,
	gadget_riddle_3 = 61004,
	gadget_riddle_4 = 61005,
	gadget_chest = 61006,
	gadget_riddle_5 = 61007,
	gadget_riddle_6 = 61008,
	gadget_riddle_7 = 61009,
	gadget_riddle_8 = 61010,
	gadget_riddle_9 = 61011,
	gadget_riddle_10 = 61012,
	gadget_riddle_11 = 61013,
	gadget_riddle_12 = 61014,
	gadget_riddle_13 = 61015,
	gadget_riddle_14 = 61016,
	group_id_2 = 201011059,
	group_id_3 = 201011060
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
	{ config_id = 61001, gadget_id = 70310012, pos = { x = -54.640, y = 14.690, z = 81.819 }, rot = { x = 0.000, y = 190.000, z = 0.000 }, level = 1, persistent = true },
	{ config_id = 61002, gadget_id = 70310011, pos = { x = -60.210, y = 14.675, z = 60.531 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, persistent = true },
	{ config_id = 61003, gadget_id = 70310011, pos = { x = -75.214, y = 14.690, z = 60.497 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, persistent = true },
	{ config_id = 61004, gadget_id = 70310011, pos = { x = -60.237, y = 14.690, z = 75.522 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, persistent = true },
	{ config_id = 61005, gadget_id = 70310011, pos = { x = -75.227, y = 14.690, z = 75.537 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, persistent = true },
	{ config_id = 61006, gadget_id = 70900007, pos = { x = -54.609, y = 15.139, z = 81.820 }, rot = { x = 0.000, y = 270.400, z = 0.000 }, level = 1, isOneoff = true, persistent = true },
	{ config_id = 61007, gadget_id = 70310011, pos = { x = -75.227, y = 14.690, z = 68.031 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, persistent = true },
	{ config_id = 61008, gadget_id = 70310011, pos = { x = -60.237, y = 14.690, z = 68.012 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, persistent = true },
	{ config_id = 61009, gadget_id = 70310011, pos = { x = -67.723, y = 14.690, z = 75.522 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, persistent = true },
	{ config_id = 61010, gadget_id = 70310011, pos = { x = -67.746, y = 14.675, z = 60.531 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, persistent = true },
	{ config_id = 61011, gadget_id = 70310011, pos = { x = -72.805, y = 14.690, z = 65.541 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, persistent = true },
	{ config_id = 61012, gadget_id = 70310011, pos = { x = -65.221, y = 14.690, z = 62.995 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, persistent = true },
	{ config_id = 61013, gadget_id = 70310011, pos = { x = -62.699, y = 14.690, z = 70.603 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, persistent = true },
	{ config_id = 61014, gadget_id = 70310011, pos = { x = -70.653, y = 14.690, z = 72.895 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, persistent = true },
	{ config_id = 61015, gadget_id = 70310011, pos = { x = -72.141, y = 14.690, z = 69.600 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, persistent = true },
	{ config_id = 61016, gadget_id = 70310011, pos = { x = -63.900, y = 14.690, z = 66.346 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, persistent = true }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1061017, name = "GADGET_STATE_CHANGE_61017", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_61017", action = "action_EVENT_GADGET_STATE_CHANGE_61017", trigger_count = 0 },
	{ config_id = 1061018, name = "VARIABLE_CHANGE_61018", event = EventType.EVENT_VARIABLE_CHANGE, source = "State_Flag", condition = "condition_EVENT_VARIABLE_CHANGE_61018", action = "action_EVENT_VARIABLE_CHANGE_61018", trigger_count = 0 }
}

-- 变量
variables = {
	{ name = "State_Flag", value = 0, no_refresh = true },
	{ name = "Door_Open", value = 0, no_refresh = true }
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
		-- description = suite_1,
		monsters = { },
		gadgets = { 61001, 61002, 61003, 61004, 61005, 61006, 61007, 61008, 61009, 61010, 61011, 61012, 61013, 61014, 61015, 61016 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_61017", "VARIABLE_CHANGE_61018" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_61017(context, evt)
	if evt.param2 ~= defs.gadget_riddle_1 and evt.param2 ~= defs.gadget_riddle_2 and evt.param2 ~= defs.gadget_riddle_3 and evt.param2 ~= defs.gadget_riddle_4 and evt.param2 ~= defs.gadget_riddle_5 and evt.param2 ~= defs.gadget_riddle_6 and evt.param2 ~= defs.gadget_riddle_7 and evt.param2 ~= defs.gadget_riddle_8 and evt.param2 ~= defs.gadget_riddle_9 and evt.param2 ~= defs.gadget_riddle_10 and evt.param2 ~= defs.gadget_riddle_11 and evt.param2 ~= defs.gadget_riddle_12 and evt.param2 ~= defs.gadget_riddle_13 and evt.param2 ~= defs.gadget_riddle_14 then
	return false 
	end
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_61017(context, evt)
	--映射点亮
	if evt.param2 == defs.gadget_riddle_1 and evt.param1 == GadgetState.GearStart  then
	    ScriptLib.ChangeGroupVariableValue(context, "State_Flag", 1)
	    if ScriptLib.GetGadgetStateByConfigId(context, defs.group_id_2, defs.gadget_riddle_1) == GadgetState.Default then
	        ScriptLib.SetGroupGadgetStateByConfigId(context, defs.group_id_2, defs.gadget_riddle_1, GadgetState.GearAction1)
	    end
	    if ScriptLib.GetGadgetStateByConfigId(context, defs.group_id_3, defs.gadget_riddle_1) == GadgetState.Default then
	        ScriptLib.SetGroupGadgetStateByConfigId(context, defs.group_id_3, defs.gadget_riddle_1, GadgetState.GearAction1)
	    end
	end
	if evt.param2 == defs.gadget_riddle_2 and evt.param1 == GadgetState.GearStart  then
	    ScriptLib.ChangeGroupVariableValue(context, "State_Flag", 1)
	    if ScriptLib.GetGadgetStateByConfigId(context, defs.group_id_2, defs.gadget_riddle_2) == GadgetState.Default then
	        ScriptLib.SetGroupGadgetStateByConfigId(context, defs.group_id_2, defs.gadget_riddle_2, GadgetState.GearAction1)
	    end
	    if ScriptLib.GetGadgetStateByConfigId(context, defs.group_id_3, defs.gadget_riddle_2) == GadgetState.Default then
	        ScriptLib.SetGroupGadgetStateByConfigId(context, defs.group_id_3, defs.gadget_riddle_2, GadgetState.GearAction1)
	    end
	end
	if evt.param2 == defs.gadget_riddle_3 and evt.param1 == GadgetState.GearStart  then
	    ScriptLib.ChangeGroupVariableValue(context, "State_Flag", 1)
	    if ScriptLib.GetGadgetStateByConfigId(context, defs.group_id_2, defs.gadget_riddle_3) == GadgetState.Default then
	        ScriptLib.SetGroupGadgetStateByConfigId(context, defs.group_id_2, defs.gadget_riddle_3, GadgetState.GearAction1)
	    end
	    if ScriptLib.GetGadgetStateByConfigId(context, defs.group_id_3, defs.gadget_riddle_3) == GadgetState.Default then
	        ScriptLib.SetGroupGadgetStateByConfigId(context, defs.group_id_3, defs.gadget_riddle_3, GadgetState.GearAction1)
	    end
	end
	if evt.param2 == defs.gadget_riddle_4 and evt.param1 == GadgetState.GearStart  then
	    ScriptLib.ChangeGroupVariableValue(context, "State_Flag", 1)
	    if ScriptLib.GetGadgetStateByConfigId(context, defs.group_id_2, defs.gadget_riddle_4) == GadgetState.Default then
	        ScriptLib.SetGroupGadgetStateByConfigId(context, defs.group_id_2, defs.gadget_riddle_4, GadgetState.GearAction1)
	    end
	    if ScriptLib.GetGadgetStateByConfigId(context, defs.group_id_3, defs.gadget_riddle_4) == GadgetState.Default then
	        ScriptLib.SetGroupGadgetStateByConfigId(context, defs.group_id_3, defs.gadget_riddle_4, GadgetState.GearAction1)
	    end
	end
	if evt.param2 == defs.gadget_riddle_5 and evt.param1 == GadgetState.GearStart  then
	    ScriptLib.ChangeGroupVariableValue(context, "State_Flag", 1)
	    if ScriptLib.GetGadgetStateByConfigId(context, defs.group_id_2, defs.gadget_riddle_5) == GadgetState.Default then
	        ScriptLib.SetGroupGadgetStateByConfigId(context, defs.group_id_2, defs.gadget_riddle_5, GadgetState.GearAction1)
	    end
	    if ScriptLib.GetGadgetStateByConfigId(context, defs.group_id_3, defs.gadget_riddle_5) == GadgetState.Default then
	        ScriptLib.SetGroupGadgetStateByConfigId(context, defs.group_id_3, defs.gadget_riddle_5, GadgetState.GearAction1)
	    end
	end
	if evt.param2 == defs.gadget_riddle_6 and evt.param1 == GadgetState.GearStart  then
	    ScriptLib.ChangeGroupVariableValue(context, "State_Flag", 1)
	    if ScriptLib.GetGadgetStateByConfigId(context, defs.group_id_2, defs.gadget_riddle_6) == GadgetState.Default then
	        ScriptLib.SetGroupGadgetStateByConfigId(context, defs.group_id_2, defs.gadget_riddle_6, GadgetState.GearAction1)
	    end
	    if ScriptLib.GetGadgetStateByConfigId(context, defs.group_id_3, defs.gadget_riddle_6) == GadgetState.Default then
	        ScriptLib.SetGroupGadgetStateByConfigId(context, defs.group_id_3, defs.gadget_riddle_6, GadgetState.GearAction1)
	    end
	end
	if evt.param2 == defs.gadget_riddle_7 and evt.param1 == GadgetState.GearStart  then
	    ScriptLib.ChangeGroupVariableValue(context, "State_Flag", 1)
	    if ScriptLib.GetGadgetStateByConfigId(context, defs.group_id_2, defs.gadget_riddle_7) == GadgetState.Default then
	        ScriptLib.SetGroupGadgetStateByConfigId(context, defs.group_id_2, defs.gadget_riddle_7, GadgetState.GearAction1)
	    end
	    if ScriptLib.GetGadgetStateByConfigId(context, defs.group_id_3, defs.gadget_riddle_7) == GadgetState.Default then
	        ScriptLib.SetGroupGadgetStateByConfigId(context, defs.group_id_3, defs.gadget_riddle_7, GadgetState.GearAction1)
	    end
	end
	if evt.param2 == defs.gadget_riddle_8 and evt.param1 == GadgetState.GearStart  then
	    ScriptLib.ChangeGroupVariableValue(context, "State_Flag", 1)
	    if ScriptLib.GetGadgetStateByConfigId(context, defs.group_id_2, defs.gadget_riddle_8) == GadgetState.Default then
	        ScriptLib.SetGroupGadgetStateByConfigId(context, defs.group_id_2, defs.gadget_riddle_8, GadgetState.GearAction1)
	    end
	    if ScriptLib.GetGadgetStateByConfigId(context, defs.group_id_3, defs.gadget_riddle_8) == GadgetState.Default then
	        ScriptLib.SetGroupGadgetStateByConfigId(context, defs.group_id_3, defs.gadget_riddle_8, GadgetState.GearAction1)
	    end
	end
	if evt.param2 == defs.gadget_riddle_9 and evt.param1 == GadgetState.GearStart  then
	    ScriptLib.ChangeGroupVariableValue(context, "State_Flag", 1)
	    if ScriptLib.GetGadgetStateByConfigId(context, defs.group_id_2, defs.gadget_riddle_9) == GadgetState.Default then
	        ScriptLib.SetGroupGadgetStateByConfigId(context, defs.group_id_2, defs.gadget_riddle_9, GadgetState.GearAction1)
	    end
	    if ScriptLib.GetGadgetStateByConfigId(context, defs.group_id_3, defs.gadget_riddle_9) == GadgetState.Default then
	        ScriptLib.SetGroupGadgetStateByConfigId(context, defs.group_id_3, defs.gadget_riddle_9, GadgetState.GearAction1)
	    end
	end
	if evt.param2 == defs.gadget_riddle_10 and evt.param1 == GadgetState.GearStart  then
	    ScriptLib.ChangeGroupVariableValue(context, "State_Flag", 1)
	    if ScriptLib.GetGadgetStateByConfigId(context, defs.group_id_2, defs.gadget_riddle_10) == GadgetState.Default then
	        ScriptLib.SetGroupGadgetStateByConfigId(context, defs.group_id_2, defs.gadget_riddle_10, GadgetState.GearAction1)
	    end
	    if ScriptLib.GetGadgetStateByConfigId(context, defs.group_id_3, defs.gadget_riddle_10) == GadgetState.Default then
	        ScriptLib.SetGroupGadgetStateByConfigId(context, defs.group_id_3, defs.gadget_riddle_10, GadgetState.GearAction1)
	    end
	end
	if evt.param2 == defs.gadget_riddle_11 and evt.param1 == GadgetState.GearStart  then
	    ScriptLib.ChangeGroupVariableValue(context, "State_Flag", 1)
	    if ScriptLib.GetGadgetStateByConfigId(context, defs.group_id_2, defs.gadget_riddle_11) == GadgetState.Default then
	        ScriptLib.SetGroupGadgetStateByConfigId(context, defs.group_id_2, defs.gadget_riddle_11, GadgetState.GearAction1)
	    end
	    if ScriptLib.GetGadgetStateByConfigId(context, defs.group_id_3, defs.gadget_riddle_11) == GadgetState.Default then
	        ScriptLib.SetGroupGadgetStateByConfigId(context, defs.group_id_3, defs.gadget_riddle_11, GadgetState.GearAction1)
	    end
	end
	if evt.param2 == defs.gadget_riddle_12 and evt.param1 == GadgetState.GearStart  then
	    ScriptLib.ChangeGroupVariableValue(context, "State_Flag", 1)
	    if ScriptLib.GetGadgetStateByConfigId(context, defs.group_id_2, defs.gadget_riddle_12) == GadgetState.Default then
	        ScriptLib.SetGroupGadgetStateByConfigId(context, defs.group_id_2, defs.gadget_riddle_12, GadgetState.GearAction1)
	    end
	    if ScriptLib.GetGadgetStateByConfigId(context, defs.group_id_3, defs.gadget_riddle_12) == GadgetState.Default then
	        ScriptLib.SetGroupGadgetStateByConfigId(context, defs.group_id_3, defs.gadget_riddle_12, GadgetState.GearAction1)
	    end
	end
	if evt.param2 == defs.gadget_riddle_13 and evt.param1 == GadgetState.GearStart  then
	    ScriptLib.ChangeGroupVariableValue(context, "State_Flag", 1)
	    if ScriptLib.GetGadgetStateByConfigId(context, defs.group_id_2, defs.gadget_riddle_13) == GadgetState.Default then
	        ScriptLib.SetGroupGadgetStateByConfigId(context, defs.group_id_2, defs.gadget_riddle_13, GadgetState.GearAction1)
	    end
	    if ScriptLib.GetGadgetStateByConfigId(context, defs.group_id_3, defs.gadget_riddle_13) == GadgetState.Default then
	        ScriptLib.SetGroupGadgetStateByConfigId(context, defs.group_id_3, defs.gadget_riddle_13, GadgetState.GearAction1)
	    end
	end
	if evt.param2 == defs.gadget_riddle_14 and evt.param1 == GadgetState.GearStart  then
	    ScriptLib.ChangeGroupVariableValue(context, "State_Flag", 1)
	    if ScriptLib.GetGadgetStateByConfigId(context, defs.group_id_2, defs.gadget_riddle_14) == GadgetState.Default then
	        ScriptLib.SetGroupGadgetStateByConfigId(context, defs.group_id_2, defs.gadget_riddle_14, GadgetState.GearAction1)
	    end
	    if ScriptLib.GetGadgetStateByConfigId(context, defs.group_id_3, defs.gadget_riddle_14) == GadgetState.Default then
	        ScriptLib.SetGroupGadgetStateByConfigId(context, defs.group_id_3, defs.gadget_riddle_14, GadgetState.GearAction1)
	    end
	end
	--检查是否符合开门条件
	if ScriptLib.GetGroupVariableValue(context, "Door_Open") == 0 then
	    if ScriptLib.GetGadgetStateByConfigId(context, defs.group_id, defs.gadget_riddle_1) == GadgetState.GearStart or 
	    ScriptLib.GetGadgetStateByConfigId(context, defs.group_id, defs.gadget_riddle_1) == GadgetState.GearAction1 then
	        if ScriptLib.GetGadgetStateByConfigId(context, defs.group_id, defs.gadget_riddle_2) == GadgetState.GearStart or 
	        ScriptLib.GetGadgetStateByConfigId(context, defs.group_id, defs.gadget_riddle_2) == GadgetState.GearAction1 then
	            if ScriptLib.GetGadgetStateByConfigId(context, defs.group_id, defs.gadget_riddle_3) == GadgetState.GearStart or 
	            ScriptLib.GetGadgetStateByConfigId(context, defs.group_id, defs.gadget_riddle_3) == GadgetState.GearAction1 then
	                if ScriptLib.GetGadgetStateByConfigId(context, defs.group_id, defs.gadget_riddle_4) == GadgetState.GearStart or 
	                ScriptLib.GetGadgetStateByConfigId(context, defs.group_id, defs.gadget_riddle_4) == GadgetState.GearAction1 then
	                    if ScriptLib.GetGadgetStateByConfigId(context, defs.group_id, defs.gadget_riddle_5) == GadgetState.GearStart or 
	                    ScriptLib.GetGadgetStateByConfigId(context, defs.group_id, defs.gadget_riddle_5) == GadgetState.GearAction1 then
	                        if ScriptLib.GetGadgetStateByConfigId(context, defs.group_id, defs.gadget_riddle_6) == GadgetState.GearStart or 
	                        ScriptLib.GetGadgetStateByConfigId(context, defs.group_id, defs.gadget_riddle_6) == GadgetState.GearAction1 then
	                            if ScriptLib.GetGadgetStateByConfigId(context, defs.group_id, defs.gadget_riddle_7) == GadgetState.GearStart or 
	                            ScriptLib.GetGadgetStateByConfigId(context, defs.group_id, defs.gadget_riddle_7) == GadgetState.GearAction1 then
	                                if ScriptLib.GetGadgetStateByConfigId(context, defs.group_id, defs.gadget_riddle_8) == GadgetState.GearStart or 
	                                ScriptLib.GetGadgetStateByConfigId(context, defs.group_id, defs.gadget_riddle_8) == GadgetState.GearAction1 then
	                                    ScriptLib.SetGroupGadgetStateByConfigId(context, defs.group_id, defs.gadget_chest, GadgetState.GearStart)
	                                    ScriptLib.SetGroupVariableValueByGroup(context, "Door_Open", 1, defs.group_id)
	                                    ScriptLib.MarkPlayerAction(context, 5007, 2, 4)
	                                    ScriptLib.MarkPlayerAction(context, 5007, 3, 5)
	                                end
	                            end
	                        end
	                    end
	                end
	            end
	        end
	    end
	end
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_61018(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	if evt.param1 < 0 or evt.param1 > 14 then
	return false
	end
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_61018(context, evt)
	--单层点亮超3个熄灭所有
	if evt.param1 > 3 then
	    ScriptLib.SetGroupVariableValueByGroup(context, "State_Flag", 0, defs.group_id)
	    ScriptLib.SetGroupVariableValueByGroup(context, "State_Flag", 0, defs.group_id2)
	    ScriptLib.SetGroupVariableValueByGroup(context, "State_Flag", 0, defs.group_id3)
	end
	--灭火
	if evt.param1 == 0 then
	    ScriptLib.SetGroupGadgetStateByConfigId(context, defs.group_id, defs.gadget_riddle_1, GadgetState.Default)
	    ScriptLib.SetGroupGadgetStateByConfigId(context, defs.group_id, defs.gadget_riddle_2, GadgetState.Default)
	    ScriptLib.SetGroupGadgetStateByConfigId(context, defs.group_id, defs.gadget_riddle_3, GadgetState.Default)
	    ScriptLib.SetGroupGadgetStateByConfigId(context, defs.group_id, defs.gadget_riddle_4, GadgetState.Default)
	    ScriptLib.SetGroupGadgetStateByConfigId(context, defs.group_id, defs.gadget_riddle_5, GadgetState.Default)
	    ScriptLib.SetGroupGadgetStateByConfigId(context, defs.group_id, defs.gadget_riddle_6, GadgetState.Default)
	    ScriptLib.SetGroupGadgetStateByConfigId(context, defs.group_id, defs.gadget_riddle_7, GadgetState.Default)
	    ScriptLib.SetGroupGadgetStateByConfigId(context, defs.group_id, defs.gadget_riddle_8, GadgetState.Default)
	    ScriptLib.SetGroupGadgetStateByConfigId(context, defs.group_id, defs.gadget_riddle_9, GadgetState.Default)
	    ScriptLib.SetGroupGadgetStateByConfigId(context, defs.group_id, defs.gadget_riddle_10, GadgetState.Default)
	    ScriptLib.SetGroupGadgetStateByConfigId(context, defs.group_id, defs.gadget_riddle_11, GadgetState.Default)
	    ScriptLib.SetGroupGadgetStateByConfigId(context, defs.group_id, defs.gadget_riddle_12, GadgetState.Default)
	    ScriptLib.SetGroupGadgetStateByConfigId(context, defs.group_id, defs.gadget_riddle_13, GadgetState.Default)
	    ScriptLib.SetGroupGadgetStateByConfigId(context, defs.group_id, defs.gadget_riddle_14, GadgetState.Default)
	end
	return 0
	    
end