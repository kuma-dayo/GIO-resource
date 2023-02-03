-- 基础信息
local base_info = {
	group_id = 133301145
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 145001, monster_id = 24010304, pos = { x = -599.460, y = -42.173, z = 3810.857 }, rot = { x = 0.000, y = 227.830, z = 0.000 }, level = 33, drop_id = 1000100, disableWander = true, affix = { 6117 }, pose_id = 101, area_id = 25 },
	{ config_id = 145013, monster_id = 24010301, pos = { x = -599.690, y = -42.164, z = 3810.912 }, rot = { x = 0.000, y = 231.372, z = 0.000 }, level = 33, drop_id = 1000100, disableWander = true, affix = { 5181 }, pose_id = 111, area_id = 25 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 145007, gadget_id = 70360001, pos = { x = -609.507, y = -42.798, z = 3801.612 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 33, area_id = 25 },
	{ config_id = 145008, gadget_id = 70310224, pos = { x = -607.200, y = -40.200, z = 3802.600 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 33, start_route = false, area_id = 25 },
	{ config_id = 145014, gadget_id = 70290423, pos = { x = -599.024, y = -42.224, z = 3811.309 }, rot = { x = 0.000, y = 13.503, z = 0.000 }, level = 33, area_id = 25 },
	{ config_id = 145017, gadget_id = 70310191, pos = { x = -614.700, y = -43.532, z = 3778.281 }, rot = { x = 0.000, y = 296.220, z = 0.000 }, level = 33, state = GadgetState.GearStart, area_id = 25 },
	{ config_id = 145018, gadget_id = 70310191, pos = { x = -595.716, y = -39.588, z = 3795.944 }, rot = { x = 0.334, y = 347.884, z = 4.815 }, level = 33, area_id = 25 },
	{ config_id = 145019, gadget_id = 70310191, pos = { x = -610.877, y = -39.671, z = 3823.310 }, rot = { x = 331.763, y = 352.731, z = 30.057 }, level = 33, area_id = 25 },
	{ config_id = 145020, gadget_id = 70310191, pos = { x = -623.270, y = -39.721, z = 3800.712 }, rot = { x = 0.000, y = 45.146, z = 352.782 }, level = 33, area_id = 25 },
	{ config_id = 145021, gadget_id = 70310191, pos = { x = -584.028, y = -42.123, z = 3810.778 }, rot = { x = 351.673, y = 88.818, z = 14.539 }, level = 33, area_id = 25 },
	{ config_id = 145022, gadget_id = 70360001, pos = { x = -609.507, y = -42.798, z = 3801.612 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 33, area_id = 25 },
	{ config_id = 145023, gadget_id = 70360001, pos = { x = -609.507, y = -42.798, z = 3801.612 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 33, area_id = 25 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1145006, name = "ANY_MONSTER_DIE_145006", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_145006", action = "action_EVENT_ANY_MONSTER_DIE_145006", trigger_count = 0 },
	{ config_id = 1145009, name = "MONSTER_BATTLE_145009", event = EventType.EVENT_MONSTER_BATTLE, source = "", condition = "condition_EVENT_MONSTER_BATTLE_145009", action = "action_EVENT_MONSTER_BATTLE_145009" },
	-- 第一次倒下+复活
	{ config_id = 1145010, name = "LUA_NOTIFY_145010", event = EventType.EVENT_LUA_NOTIFY, source = "firstDown", condition = "", action = "action_EVENT_LUA_NOTIFY_145010", trigger_count = 0 },
	-- 第二次倒下+复活 start delay 1
	{ config_id = 1145011, name = "LUA_NOTIFY_145011", event = EventType.EVENT_LUA_NOTIFY, source = "secondDown", condition = "", action = "action_EVENT_LUA_NOTIFY_145011", trigger_count = 0 },
	-- delay1后任务刷黑屏包住delay2
	{ config_id = 1145012, name = "TIME_AXIS_PASS_145012", event = EventType.EVENT_TIME_AXIS_PASS, source = "", condition = "condition_EVENT_TIME_AXIS_PASS_145012", action = "action_EVENT_TIME_AXIS_PASS_145012", trigger_count = 0 },
	-- delay2后刷到suite3
	{ config_id = 1145015, name = "TIME_AXIS_PASS_145015", event = EventType.EVENT_TIME_AXIS_PASS, source = "", condition = "condition_EVENT_TIME_AXIS_PASS_145015", action = "action_EVENT_TIME_AXIS_PASS_145015", trigger_count = 0 },
	-- delay3后切操作台状态任务完成
	{ config_id = 1145016, name = "TIME_AXIS_PASS_145016", event = EventType.EVENT_TIME_AXIS_PASS, source = "", condition = "condition_EVENT_TIME_AXIS_PASS_145016", action = "action_EVENT_TIME_AXIS_PASS_145016", trigger_count = 0 }
}

-- 变量
variables = {
	{ config_id = 1, name = "down1", value = 0, no_refresh = true }
}

-- 废弃数据
garbages = {
	monsters = {
		{ config_id = 145002, monster_id = 24030101, pos = { x = -598.186, y = -34.888, z = 3792.856 }, rot = { x = 0.000, y = 323.855, z = 0.000 }, level = 33, drop_id = 1000100, disableWander = true, affix = { 6117 }, pose_id = 101, area_id = 25 },
		{ config_id = 145003, monster_id = 24030101, pos = { x = -609.780, y = -34.919, z = 3790.448 }, rot = { x = 0.000, y = 5.014, z = 0.000 }, level = 33, drop_id = 1000100, disableWander = true, affix = { 6117 }, pose_id = 101, area_id = 25 },
		{ config_id = 145004, monster_id = 24030201, pos = { x = -595.935, y = -32.435, z = 3800.295 }, rot = { x = 0.000, y = 282.629, z = 0.000 }, level = 33, drop_id = 1000100, disableWander = true, affix = { 6117 }, pose_id = 102, area_id = 25 },
		{ config_id = 145005, monster_id = 24030201, pos = { x = -605.296, y = -32.954, z = 3817.985 }, rot = { x = 0.000, y = 210.953, z = 0.000 }, level = 33, drop_id = 1000100, disableWander = true, affix = { 6117 }, pose_id = 102, area_id = 25 }
	}
}

--================================================================
-- 
-- 初始化配置
-- 
--================================================================

-- 初始化时创建
init_config = {
	suite = 1,
	end_suite = 4,
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
		gadgets = { 145007, 145008, 145017, 145018, 145019, 145020, 145021, 145022, 145023 },
		regions = { },
		triggers = { "MONSTER_BATTLE_145009", "LUA_NOTIFY_145010", "LUA_NOTIFY_145011", "TIME_AXIS_PASS_145012", "TIME_AXIS_PASS_145015", "TIME_AXIS_PASS_145016" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 145001 },
		gadgets = { 145007, 145008, 145017, 145018, 145019, 145020, 145021, 145022, 145023 },
		regions = { },
		triggers = { "MONSTER_BATTLE_145009", "LUA_NOTIFY_145010", "LUA_NOTIFY_145011", "TIME_AXIS_PASS_145012", "TIME_AXIS_PASS_145015", "TIME_AXIS_PASS_145016" },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { 145013 },
		gadgets = { 145007, 145008, 145014, 145017, 145018, 145019, 145020, 145021, 145022, 145023 },
		regions = { },
		triggers = { "MONSTER_BATTLE_145009", "LUA_NOTIFY_145010", "LUA_NOTIFY_145011", "TIME_AXIS_PASS_145012", "TIME_AXIS_PASS_145015", "TIME_AXIS_PASS_145016" },
		rand_weight = 100
	},
	{
		-- suite_id = 4,
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
function condition_EVENT_ANY_MONSTER_DIE_145006(context, evt)
	--判断死亡怪物的configid是否为 145001
	if evt.param1 ~= 145001 then
	    return false
	 end
	  
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_145006(context, evt)
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 145008 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 145014 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	-- 将configid为 145007 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 145007, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_MONSTER_BATTLE_145009(context, evt)
	if 145001 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_MONSTER_BATTLE_145009(context, evt)
	-- 调用提示id为 33010036 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 33010036) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "7303616_fin") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	-- 将configid为 145022 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 145022, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发操作
function action_EVENT_LUA_NOTIFY_145010(context, evt)
	-- 调用提示id为 33010039 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 33010039) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	-- 将本组内变量名为 "down1" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "down1", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	-- 将configid为 145018 的物件更改为状态 GadgetState.GearStop
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 145018, GadgetState.GearStop) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 145019 的物件更改为状态 GadgetState.GearStop
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 145019, GadgetState.GearStop) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发操作
function action_EVENT_LUA_NOTIFY_145011(context, evt)
	-- 调用提示id为 33010042 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 33010042) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	-- 将本组内变量名为 "down1" 的变量设置为 2
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "down1", 2) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	-- 创建标识为"delay1"，时间节点为{13}的时间轴，false用于控制该时间轴是否循环
	ScriptLib.InitTimeAxis(context, "delay1", {13}, false)
	
	
	-- 将configid为 145020 的物件更改为状态 GadgetState.GearStop
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 145020, GadgetState.GearStop) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 145021 的物件更改为状态 GadgetState.GearStop
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 145021, GadgetState.GearStop) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_TIME_AXIS_PASS_145012(context, evt)
	if "delay1" ~= evt.source_name or 1 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_TIME_AXIS_PASS_145012(context, evt)
	-- 停止标识为"delay1"的时间轴
	ScriptLib.EndTimeAxis(context, "delay1")
	
	
	-- 创建标识为"delay2"，时间节点为{1}的时间轴，false用于控制该时间轴是否循环
	ScriptLib.InitTimeAxis(context, "delay2", {1}, false)
	
	
	-- 将configid为 145023 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 145023, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "7303639_fin") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_TIME_AXIS_PASS_145015(context, evt)
	if "delay2" ~= evt.source_name or 1 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_TIME_AXIS_PASS_145015(context, evt)
	-- 停止标识为"delay2"的时间轴
	ScriptLib.EndTimeAxis(context, "delay2")
	
	
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 133301145, suite = 3 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	-- 触发镜头注目，注目位置为坐标{x=-599.0242, y=-42.22353, z=3811.309}，持续时间为3秒，并且为强制注目形式，不广播其他玩家
		local pos = {x=-599.0242, y=-42.22353, z=3811.309}
	  local pos_follow = {x=0, y=0, z=0}
	    if 0 ~= ScriptLib.BeginCameraSceneLook(context, { look_pos = pos, is_allow_input = false, duration = 3, is_force = true, is_broadcast = false, is_recover_keep_current = true, delay = 2,
	                                                      is_set_follow_pos = false, follow_pos = pos_follow, is_force_walk = false, is_change_play_mode = false,
	                                                      is_set_screen_XY = false, screen_x = 0, screen_y = 0 }) then
					ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_cameraLook_Begin")
	        return -1
				end 
	
	-- 调用提示id为 33010044 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 33010044) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	-- 创建标识为"delay3"，时间节点为{15}的时间轴，false用于控制该时间轴是否循环
	ScriptLib.InitTimeAxis(context, "delay3", {15}, false)
	
	
	-- 将configid为 145018 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 145018, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 145019 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 145019, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 145020 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 145020, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 145021 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 145021, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_TIME_AXIS_PASS_145016(context, evt)
	if "delay3" ~= evt.source_name or 1 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_TIME_AXIS_PASS_145016(context, evt)
	-- 停止标识为"delay3"的时间轴
	ScriptLib.EndTimeAxis(context, "delay3")
	
	
	-- 将configid为 145007 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 145007, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

require "V3_0/DeathFieldStandard"