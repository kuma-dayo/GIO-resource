--ServerUploadTool Save to [/root/env/data/lua/common/V2_7]
--======================================================================================================================
--||   Filename      ||    Activity_LumenWipeout
--||   RelVersion    ||    V2_7
--||   Owner         ||    chao-jin
--||   Description   ||    
--||   LogName       ||    ##[Activity_LumenWipeout]
--||   Protection    ||    
--[[======================================================================================================================
--Defs & Miscs
local defs = {
	pursina = 630015,
	pursina_tip = 630087,
	fail_region = 630038
}
local mud_list = {
	[630009] = 630063,
	[630012] = 630062,
	[630023] = 630028,

}
local extra_infos = {
	start_operator = 630002,
	mud_cover = 630096,
}

--======================================================================================================================]]

local LumenWipeout_Triggers = {
	{config_id = 8002001, name = "pursina_state",  event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "", action = "action_pursina_state", trigger_count = 0},
	{config_id = 8002002, name = "challenge_success", event = EventType.EVENT_CHALLENGE_SUCCESS, source = "", condition = "", action = "action_challenge_success", trigger_count = 0 }, 
	{config_id = 8002003, name = "challenge_fail", event = EventType.EVENT_CHALLENGE_FAIL, source = "", condition = "", action = "action_challenge_fail", trigger_count = 0 }, 
    {config_id = 8002004, name = "any_gadget_die",  event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "", action = "action_any_gadget_die", trigger_count = 0},
    {config_id = 8002005, name = "group_load",  event = EventType.EVENT_GROUP_LOAD, source = "", condition = "", action = "action_group_load", trigger_count = 0},
    {config_id = 8002006, name = "leave_fail_region",  event = EventType.EVENT_LEAVE_REGION, source = "", condition = "", action = "action_leave_fail_region", trigger_count = 0},
    {config_id = 8002007, name = "gadget_create",  event = EventType.EVENT_GADGET_CREATE, source = "", condition = "", action = "action_gadget_create", trigger_count = 0},
    {config_id = 8002008, name = "time_axis_pass",  event = EventType.EVENT_TIME_AXIS_PASS, source = "", condition = "", action = "action_time_axis_pass", trigger_count = 0},
    {config_id = 8002009, name = "select_option",  event = EventType.EVENT_SELECT_OPTION, source = "", condition = "", action = "action_select_option", trigger_count = 0},
    {config_id = 8002010, name = "pause_battle_bgm",  event = EventType.EVENT_ANY_MONSTER_LIVE, source = "", condition = "", action = "action_pause_battle_bgm", trigger_count = 0},
}


--Events

function action_pursina_state(context, evt) 
	if evt.source_name == "pursina_state" then 
		if evt.param1 == 0 then 
			LF_SetPursinaNormal(context)
			return 0
		end
		if evt.param1 == 1 then 
			LF_SetPursinaBroken(context)
			return 0
		end
		if evt.param1 == 2 then 
			LF_SetPursinaMidSpeed(context)
			return 0
		end
		if evt.param3 == 3 then 
			LF_SetPursinaHighSpeed(context)
			return 0
		end
	end
	return 0
end

--??????????????????
function action_challenge_success(context, evt)
	ScriptLib.PrintContextLog(context,"##[LumenWipeout]:????????????")
	--????????????????????????
	local used_time = 300 - evt.param2
	local remove_mud  = ScriptLib.GetGroupTempValue(context, "MUD_REMOVED", {})
	local transaction = evt.param_str1
	local lumen_level = ScriptLib.GetTeamServerGlobalValue(context, context.owner_uid, "SGV_Light_Stone_Level")
	ScriptLib.PrintContextLog(context,"##[LumenWipeout]:????????????,????????????,?????????"..transaction.."??????"..used_time.."??????????????????"..remove_mud.."???????????????"..lumen_level)
    ScriptLib.MarkGroupLuaAction(context, "Luminous_challenge_2", transaction, {["challenge_id"] = 2009002,["end_reason"] = 1,["use_time"]= used_time ,["remove_mud"]= remove_mud,["luminous_level"] = lumen_level})

    LF_ClearGroup(context) 
	ScriptLib.TryFinishLuminanceStoneChallengeStage(context, base_info.group_id)
	ScriptLib.GoToGroupSuite(context, base_info.group_id, 10)
	
	ScriptLib.FinishGroupLinkBundle(context, base_info.group_id)
	return 0
end

--??????BGM??????
function action_pause_battle_bgm(context, evt) 
	if evt.param1 == 630078 then 
		ScriptLib.PrintContextLog(context,"##[LumenWipeout]:???????????????????????????BGM????????????")
		if 0 ~= ScriptLib.GetEntityIdByConfigId(context, defs.enemy_gadget) then
			ScriptLib.RemoveEntityByConfigId(context, base_info.group_id, EntityType.GADGET, defs.enemy_gadget)
		end
	end
	return 0
end

--??????????????????
function action_challenge_fail(context, evt) 
	ScriptLib.PrintContextLog(context,"##[LumenWipeout]:????????????")
	--????????????????????????
	local used_time = 300 - evt.param2
	local remove_mud  = ScriptLib.GetGroupTempValue(context, "MUD_REMOVED", {})
	local lumen_level = ScriptLib.GetTeamServerGlobalValue(context, context.owner_uid, "SGV_Light_Stone_Level")
	local transaction = evt.param_str1
	if evt.param2 <= 0 then 
		ScriptLib.PrintContextLog(context,"##[LumenWipeout]:????????????,????????????,?????????"..transaction.."??????"..used_time.."??????????????????"..remove_mud.."???????????????"..lumen_level)
    	ScriptLib.MarkGroupLuaAction(context, "Luminous_challenge_2", transaction, {["challenge_id"] = 2009002,["end_reason"] = 2,["use_time"]= used_time ,["remove_mud"]= remove_mud, ["luminous_level"] = lumen_level})
    else
    	if ScriptLib.IsPlayerAllAvatarDie(context, context.owner_uid) then 
    		ScriptLib.PrintContextLog(context,"##[LumenWipeout]:????????????,??????,?????????"..transaction.."??????"..used_time.."??????????????????"..remove_mud.."???????????????"..lumen_level)
    		ScriptLib.MarkGroupLuaAction(context, "Luminous_challenge_2", transaction, {["challenge_id"] = 2009002,["end_reason"] = 0,["use_time"]= used_time ,["remove_mud"]= remove_mud, ["luminous_level"] = lumen_level})
    	end
    end
    --???????????????????????????
	LF_ClearGroup(context) 
    ScriptLib.CreateGadget(context, {config_id = defs.pursina_tip})
    ScriptLib.SetWorktopOptionsByGroupId(context, base_info.group_id, extra_infos.start_operator, {7})

	return 0
end

--Group??????
function action_group_load( context, evt )
	ScriptLib.PrintContextLog(context,"##[LumenWipeout]:??????Group,?????????????????????")
	ScriptLib.SetGroupTempValue(context, "MUD_REMOVED", 0, {})
	return 0
end

--???????????????????????????????????????
function action_leave_fail_region(context, evt) 
    if evt.param1 == defs.fail_region then 
        ScriptLib.PrintContextLog(context,"##[LumenWipeout]:?????????????????????????????????????????????")
        ScriptLib.StopChallenge(context, 233, 0)
    end
    return 0
end

-- ????????????
function action_select_option(context, evt)
	ScriptLib.PrintContextLog(context,"##[LumenWipeout]:????????????")
	--???????????????????????????
	ScriptLib.SetGroupTempValue(context, "MUD_NUMS", 0, {})
	ScriptLib.SetGroupTempValue(context, "MUD_REMIND", 0, {})
	--????????????
	ScriptLib.ActiveChallenge(context, 233, 2009005, 300, 166001630, 29, 0)
	ScriptLib.DelWorktopOptionByGroupId(context, 166001630, 630002, 7)
	--????????????
	LF_StartPursina(context)
	LF_SetPursinaNormal(context)
	ScriptLib.InitTimeAxis(context, "pursinaDelay", {2}, false)
	--?????????????????????
	ScriptLib.CreateGadget(context, { config_id = 630068 })
	ScriptLib.CreateGadget(context, { config_id = 630076 })
	ScriptLib.CreateGadget(context, { config_id = defs.enemy_gadget })
	--???????????????
	ScriptLib.AddExtraGroupSuite(context, 166001630, 2)
	ScriptLib.ShowReminder(context, 400012)
	local pos = {x=993, y=737, z=409}
	ScriptLib.ScenePlaySound(context, {play_pos = pos, sound_name = "LevelHornSound001", play_type= 1, is_broadcast = false })
	return 0
end

-- ??????????????????
function action_gadget_create(context,evt)
	--??????????????????????????????????????????
	if mud_list[evt.param1] ~= nil then
--		ScriptLib.CreateGadget(context, {config_id = mud_list[evt.param1]})
		ScriptLib.ChangeGroupTempValue(context, "MUD_NUMS", 1, {})
		--??????????????????????????????????????????
		if 0 ~= ScriptLib.GetGroupTempValue(context, "MUD_NUMS", {}) then 
			if 1 == ScriptLib.GetGroupTempValue(context, "PURSINA_WORKING", {}) then
				if 0 ==  ScriptLib.GetGroupTempValue(context, "MUD_REMIND", {}) then
					ScriptLib.PrintContextLog(context,"##[LumenWipeout]:???????????????Reminder")
					ScriptLib.ShowReminder(context, 4000146) 
					ScriptLib.SetGroupTempValue(context, "MUD_REMIND",1, {})
				end
				ScriptLib.PrintContextLog(context,"##[LumenWipeout]:????????????????????????????????????????????????")
				ScriptLib.ShowReminder(context, 4000151)
				LF_SetPursinaBroken(context)
			end
		end
	end
	if evt.param1 == extra_infos.start_operator then 
		ScriptLib.SetWorktopOptionsByGroupId(context, base_info.group_id, extra_infos.start_operator, {7})
	end
	return 0
end

--??????????????????????????????
function action_any_gadget_die(context,evt)
    if mud_list[evt.param1] ~= nil then
    	--???????????????????????????
    	ScriptLib.ChangeGroupTempValue(context, "MUD_NUMS", -1, {})
    	ScriptLib.KillEntityByConfigId(context, { group_id = base_info.group_id, config_id = mud_list[evt.param1], entity_type = EntityType.GADGET })
--    	ScriptLib.RemoveEntityByConfigId(context, 166001630, EntityType.GADGET, mud_list[evt.param1])
		if not ScriptLib.IsChallengeStartedByChallengeId(context, 2009005) then 
			ScriptLib.PrintContextLog(context,"##[LumenWipeout]:?????????????????????????????????")
			return 0
		end
		--??????????????????????????????????????????????????????
		if 0 == ScriptLib.GetGroupTempValue(context, "MUD_NUMS", {}) then 
			if 0 ~= ScriptLib.GetEntityIdByConfigId(context, extra_infos.mud_cover) then
				ScriptLib.KillEntityByConfigId(context, { group_id = base_info.group_id, config_id = extra_infos.mud_cover, entity_type = EntityType.GADGET })
--				ScriptLib.RemoveEntityByConfigId(context, 166001630, EntityType.GADGET, extra_infos.mud_cover)
			end
			LF_SetPursinaMidSpeed(context)
		end
		ScriptLib.PrintContextLog(context,"##[LumenWipeout]:?????????????????????????????????")
        ScriptLib.ChangeGroupTempValue(context, "MUD_REMOVED", 1, {})
	end
    return 0
end

--???????????????
function action_time_axis_pass(context,evt)
	if evt.source_name == "pursinaDelay" then 
		ScriptLib.PrintContextLog(context,"##[LumenWipeout]:????????????????????????")
		LF_SetPursinaMidSpeed(context)
		ScriptLib.ShowReminder(context, 4000145) 
	end
	return 0
end
--======================================================================================================================
--LevelFunctions
function LF_ClearGroup(context)
	ScriptLib.PrintContextLog(context,"##[LumenWipeout]:??????Group????????????")
	if 0 ~= ScriptLib.GetEntityIdByConfigId(context, defs.enemy_gadget) then
		ScriptLib.RemoveEntityByConfigId(context, base_info.group_id, EntityType.GADGET, defs.enemy_gadget)
	end
	for i=1,8 do
		ScriptLib.RemoveExtraGroupSuite(context, base_info.group_id, i+1)
	end
	LF_SetPursinaNormal(context)
    LF_StopPursina(context)
    ScriptLib.EndTimeAxis(context, "pursinaDelay")
end


--??????????????????????????????
function LF_SetPursinaNormal(context)
	ScriptLib.PrintContextLog(context,"##[LumenWipeout]:??????????????????????????????")
	ScriptLib.SetEntityServerGlobalValueByConfigId(context, defs.pursina, "SGV_PURSINA_ROTATE", 0)
	ScriptLib.SetGroupTempValue(context, "PURSINA_WORKING", 1, {})
end
--????????????
function LF_SetPursinaBroken(context)
	ScriptLib.PrintContextLog(context,"##[LumenWipeout]:????????????")
	ScriptLib.SetEntityServerGlobalValueByConfigId(context, defs.pursina, "SGV_PURSINA_ROTATE", 1)
	ScriptLib.SetGroupTempValue(context, "PURSINA_WORKING", 0, {})
end
--??????????????????
function LF_SetPursinaMidSpeed(context)
	ScriptLib.PrintContextLog(context,"##[LumenWipeout]:????????????")
	ScriptLib.SetEntityServerGlobalValueByConfigId(context, defs.pursina, "SGV_PURSINA_ROTATE", 2)
	ScriptLib.SetGroupTempValue(context, "PURSINA_WORKING", 1, {})
end
--????????????????????????????????????????????????
function LF_SetPursinaHighSpeed(context)
	ScriptLib.SetEntityServerGlobalValueByConfigId(context, defs.pursina, "SGV_PURSINA_ROTATE", 3)
	ScriptLib.SetGroupTempValue(context, "PURSINA_WORKING", 1, {})
end
--????????????
function LF_StartPursina(context, evt) 
	ScriptLib.PrintContextLog(context,"##[LumenWipeout]:????????????")
	ScriptLib.SetGadgetStateByConfigId(context, defs.pursina, 202)
	ScriptLib.SetGroupTempValue(context, "PURSINA_WORKING", 1, {})
	--????????????????????????
	ScriptLib.RemoveEntityByConfigId(context, base_info.group_id, EntityType.GADGET, defs.pursina_tip)
end
--????????????
function LF_StopPursina(context, evt)
	ScriptLib.PrintContextLog(context,"##[LumenWipeout]:????????????") 
	ScriptLib.SetGadgetStateByConfigId(context, defs.pursina, 203)
	ScriptLib.SetGroupTempValue(context, "PURSINA_WORKING", 0, {})
end


function LumenWipeout_Initialize()
	for config_id,infos in pairs(monsters) do
        if infos.affix ~= nil then
            table.insert(infos.affix, 4160)
        else
            infos["affix"] = {4160}
        end
    end
	table.insert(variables, {  config_id=50000001,name = "pursina_state", value = 0,no_refresh = false})
	table.insert(variables, {  config_id=50000002,name = "ChallengeSuccess", value = 0,no_refresh = false})
--	suites[1].triggers = {}
	for k,v in pairs(LumenWipeout_Triggers) do
		table.insert(triggers, v)
		table.insert(suites[1].triggers, v.name)
	end
end

LumenWipeout_Initialize()