-- 基础信息
local base_info = {
	group_id = 133303076
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
	{ config_id = 76001, gadget_id = 70290028, pos = { x = -1182.527, y = 215.410, z = 3788.525 }, rot = { x = 4.178, y = 346.868, z = 343.036 }, level = 30, area_id = 23 },
	{ config_id = 76002, gadget_id = 70211111, pos = { x = -1182.359, y = 215.312, z = 3788.420 }, rot = { x = 3.903, y = 345.966, z = 342.972 }, level = 26, chest_drop_id = 1050224, drop_count = 1, isOneoff = true, persistent = true, explore = { name = "chest", exp = 10 }, area_id = 23 },
	{ config_id = 76003, gadget_id = 70360286, pos = { x = -1182.527, y = 215.410, z = 3788.525 }, rot = { x = 5.228, y = 352.932, z = 338.036 }, level = 30, worktop_config = { is_persistent = true, init_options = { 99 } }, area_id = 23 }
}

-- 区域
regions = {
	{ config_id = 76006, shape = RegionShape.SPHERE, radius = 20, pos = { x = -1181.511, y = 215.125, z = 3789.127 }, area_id = 23 }
}

-- 触发器
triggers = {
	{ config_id = 1076004, name = "SELECT_OPTION_76004", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_76004", action = "action_EVENT_SELECT_OPTION_76004" },
	{ config_id = 1076005, name = "GROUP_LOAD_76005", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_76005", action = "action_EVENT_GROUP_LOAD_76005", trigger_count = 0 },
	{ config_id = 1076006, name = "ENTER_REGION_76006", event = EventType.EVENT_ENTER_REGION, source = "", condition = "", action = "" },
	-- 本组opened+1并管理组chestNum+1
	{ config_id = 1076007, name = "GADGET_STATE_CHANGE_76007", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_76007", action = "action_EVENT_GADGET_STATE_CHANGE_76007" },
	{ config_id = 1076008, name = "GROUP_LOAD_76008", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_76008", action = "action_EVENT_GROUP_LOAD_76008" }
}

-- 变量
variables = {
	{ config_id = 1, name = "opened", value = 0, no_refresh = true }
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
		regions = { 76006 },
		triggers = { "ENTER_REGION_76006", "GROUP_LOAD_76008" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 76001, 76003 },
		regions = { },
		triggers = { "SELECT_OPTION_76004", "GROUP_LOAD_76005", "GADGET_STATE_CHANGE_76007" },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { },
		gadgets = { 76002 },
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
function condition_EVENT_SELECT_OPTION_76004(context, evt)
	-- 判断是gadgetid 76003 option_id 99
	if 76003 ~= evt.param1 then
		return false	
	end
	
	if 99 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_76004(context, evt)
	-- 创建id为76002的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 76002 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
		-- 卸载指定gadget
		if 0 ~= ScriptLib.RemoveEntityByConfigId(context, 133303076, EntityType.GADGET, 76003 ) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : remove_gadget_by_configid")
			return -1
		end
	
		-- 卸载指定gadget
		if 0 ~= ScriptLib.RemoveEntityByConfigId(context, 133303076, EntityType.GADGET, 76001 ) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : remove_gadget_by_configid")
			return -1
		end
	
	return 0
end

-- 触发条件
function condition_EVENT_GROUP_LOAD_76005(context, evt)
	-- 判断变量"opened"为1
	if ScriptLib.GetGroupVariableValue(context, "opened") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_76005(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "7306409_fin") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_76007(context, evt)
	if 76002 ~= evt.param2 or GadgetState.ChestOpened ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_76007(context, evt)
	-- 将本组内变量名为 "opened" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "opened", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	-- 针对当前group内变量名为 "chestNum" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValueByGroup(context, "chestNum", 1, 133303047) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable_by_group")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GROUP_LOAD_76008(context, evt)
	local curQuestState = ScriptLib.GetHostQuestState(context,7306409)
	if -1 == curQuestState or 0 == curQuestState then
	  return false
	end
	if curQuestState ~= 2 then
	   return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_76008(context, evt)
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 133303076, suite = 2 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	return 0
end