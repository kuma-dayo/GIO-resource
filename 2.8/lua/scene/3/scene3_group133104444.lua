-- 基础信息
local base_info = {
	group_id = 133104444
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
	{ config_id = 444001, gadget_id = 70900201, pos = { x = 44.466, y = 212.284, z = 774.213 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 19, area_id = 9 }
}

-- 区域
regions = {
	{ config_id = 444002, shape = RegionShape.SPHERE, radius = 60, pos = { x = 94.123, y = 205.435, z = 751.857 }, area_id = 9 }
}

-- 触发器
triggers = {
	{ config_id = 1444002, name = "ENTER_REGION_444002", event = EventType.EVENT_ENTER_REGION, source = "1", condition = "condition_EVENT_ENTER_REGION_444002", action = "action_EVENT_ENTER_REGION_444002", trigger_count = 0 },
	{ config_id = 1444004, name = "VARIABLE_CHANGE_444004", event = EventType.EVENT_VARIABLE_CHANGE, source = "133104448", condition = "condition_EVENT_VARIABLE_CHANGE_444004", action = "action_EVENT_VARIABLE_CHANGE_444004", trigger_count = 0 }
}

-- 变量
variables = {
	{ config_id = 1, name = "902001", value = 1, no_refresh = false },
	{ config_id = 2, name = "902002", value = 1, no_refresh = false },
	{ config_id = 3, name = "902004", value = 1, no_refresh = false },
	{ config_id = 4, name = "902005", value = 1, no_refresh = false },
	{ config_id = 5, name = "902006", value = 1, no_refresh = false },
	{ config_id = 6, name = "133104448", value = 0, no_refresh = false }
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
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = suite_2,
		monsters = { },
		gadgets = { },
		regions = { 444002 },
		triggers = { "ENTER_REGION_444002", "VARIABLE_CHANGE_444004" },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = suite_3,
		monsters = { },
		gadgets = { 444001 },
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
function condition_EVENT_ENTER_REGION_444002(context, evt)
	if evt.param1 ~= 444002 then return false end
	
	-- 判断变量"902001"为1
	if ScriptLib.GetGroupVariableValue(context, "902001") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_444002(context, evt)
	-- 调用提示id为 1110044 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 1110044) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "133310444402") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	-- 变量"902001"赋值为0
	ScriptLib.SetGroupVariableValue(context, "902001", 0)
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_444004(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"Dug"为1
	if ScriptLib.GetGroupVariableValueByGroup(context, "Dug", 133104448) ~= 1 then
			return false
	end
	
	-- 判断变量"902006"为1
	if ScriptLib.GetGroupVariableValue(context, "902006") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_444004(context, evt)
	-- 调用提示id为 1110070 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 1110070) then
		return -1
	end
	
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "13310444401") then
	  return -1
	end
	
	-- 变量"133104448"赋值为0
	if evt.param1 ~= 0 then
		ScriptLib.SetGroupVariableValue(context, "133104448", 0)
	end
	
	return 0
end