-- Trigger变量
local defs = {
	group_id = 133108210
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 210001, monster_id = 25010501, pos = { x = -348.379, y = 200.010, z = -608.983 }, rot = { x = 0.000, y = 315.725, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, pose_id = 4, area_id = 7 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 210002, gadget_id = 70800056, pos = { x = -349.631, y = 200.000, z = -607.323 }, rot = { x = 7.856, y = 320.111, z = 356.926 }, level = 1, area_id = 7 },
	{ config_id = 210003, gadget_id = 70800060, pos = { x = -346.987, y = 200.194, z = -610.502 }, rot = { x = 16.573, y = 317.402, z = 1.293 }, level = 1, area_id = 7 }
}

-- 区域
regions = {
	{ config_id = 210004, shape = RegionShape.SPHERE, radius = 15, pos = { x = -348.395, y = 200.010, z = -609.059 }, area_id = 7 },
	{ config_id = 210005, shape = RegionShape.SPHERE, radius = 30, pos = { x = -348.353, y = 200.013, z = -609.127 }, area_id = 7 },
	{ config_id = 210007, shape = RegionShape.SPHERE, radius = 30, pos = { x = -348.241, y = 200.019, z = -609.151 }, area_id = 7, team_ability_group_list = { "Firecracker_Play" } }
}

-- 触发器
triggers = {
	{ config_id = 1210004, name = "ENTER_REGION_210004", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_210004", action = "action_EVENT_ENTER_REGION_210004", trigger_count = 0 },
	{ config_id = 1210005, name = "LEAVE_REGION_210005", event = EventType.EVENT_LEAVE_REGION, source = "", condition = "condition_EVENT_LEAVE_REGION_210005", action = "action_EVENT_LEAVE_REGION_210005", trigger_count = 0 },
	{ config_id = 1210006, name = "ANY_MONSTER_DIE_210006", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_210006", action = "action_EVENT_ANY_MONSTER_DIE_210006", trigger_count = 0 },
	{ config_id = 1210008, name = "SELECT_OPTION_210008", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_210008", action = "action_EVENT_SELECT_OPTION_210008", trigger_count = 0 },
	{ config_id = 1210009, name = "VARIABLE_CHANGE_210009", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_210009", action = "action_EVENT_VARIABLE_CHANGE_210009", trigger_count = 0 }
}

-- 变量
variables = {
	{ name = "challengeStart", value = 0, no_refresh = false },
	{ name = "challengeSuccess", value = 0, no_refresh = false },
	{ name = "hasReward", value = 0, no_refresh = true }
}

--================================================================
-- 
-- 初始化配置
-- 
--================================================================

-- 初始化时创建
init_config = {
	suite = 1,
	end_suite = 2,
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
		monsters = { 210001 },
		gadgets = { 210002, 210003 },
		regions = { 210004, 210005, 210007 },
		triggers = { "ENTER_REGION_210004", "LEAVE_REGION_210005", "ANY_MONSTER_DIE_210006", "SELECT_OPTION_210008", "VARIABLE_CHANGE_210009" },
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
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ENTER_REGION_210004(context, evt)
	if evt.param1 ~= 210004 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	-- 判断变量"challengeStart"为0
	if ScriptLib.GetGroupVariableValue(context, "challengeStart") ~= 0 then
			return false
	end
	
	-- 判断变量"challengeSuccess"为0
	if ScriptLib.GetGroupVariableValue(context, "challengeSuccess") ~= 0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_210004(context, evt)
	-- 将本组内变量名为 "challengeStart" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "challengeStart", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_LEAVE_REGION_210005(context, evt)
	-- 判断变量"challengeStart"为1
	if ScriptLib.GetGroupVariableValue(context, "challengeStart") ~= 1 then
			return false
	end
	
	-- 判断变量"challengeSuccess"为0
	if ScriptLib.GetGroupVariableValue(context, "challengeSuccess") ~= 0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_LEAVE_REGION_210005(context, evt)
	-- 将本组内变量名为 "challengeStart" 的变量设置为 0
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "challengeStart", 0) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 133108210, suite = 1 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_210006(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_210006(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 133108210, 210003, {189}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_210008(context, evt)
	-- 判断是gadgetid 210003 option_id 189
	if 210003 ~= evt.param1 then
		return false	
	end
	
	if 189 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_210008(context, evt)
	-- 改变指定group组133108210中， configid为210003的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 133108210, 210003, GadgetState.GearStart) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	-- 删除指定group： 133108210 ；指定config：210003；物件身上指定option：189；
	if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, 133108210, 210003, 189) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : del_work_options_by_group_configId")
		return -1
	end
	
	-- 将本组内变量名为 "challengeSuccess" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "challengeSuccess", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_210009(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"challengeSuccess"为1
	if ScriptLib.GetGroupVariableValue(context, "challengeSuccess") ~= 1 then
			return false
	end
	
	-- 判断变量"hasReward"为0
	if ScriptLib.GetGroupVariableValue(context, "hasReward") ~= 0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_210009(context, evt)
	-- 将本组内变量名为 "hasReward" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "hasReward", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	ScriptLib.FinishGroupLinkBundle(context, defs.group_id)
	
	-- group调整group进度,只对非randSuite有效
	if 0 ~= ScriptLib.GoToGroupSuite(context, 133108210, 2) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : goto_groupSuite")
		return -1
	end
	
	return 0
end

require "V2_4/Firecracker"