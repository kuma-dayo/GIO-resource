--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 40001, monster_id = 25080401, pos = { x = -3243.366, y = 210.109, z = -4531.354 }, rot = { x = 0.000, y = 52.735, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, affix = { 1008, 1009 }, isElite = true, isOneoff = true, pose_id = 1, area_id = 11 },
	{ config_id = 40002, monster_id = 25080301, pos = { x = -3236.496, y = 210.194, z = -4528.046 }, rot = { x = 0.000, y = 209.250, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, affix = { 1008, 1009 }, isElite = true, isOneoff = true, pose_id = 1, area_id = 11 },
	{ config_id = 40005, monster_id = 25080401, pos = { x = -3242.883, y = 209.950, z = -4534.804 }, rot = { x = 0.000, y = 52.735, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, affix = { 1008, 1009 }, isElite = true, isOneoff = true, pose_id = 1, area_id = 11 },
	{ config_id = 40006, monster_id = 25080401, pos = { x = -3246.374, y = 210.173, z = -4528.947 }, rot = { x = 0.000, y = 52.735, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, affix = { 1008, 1009 }, isElite = true, isOneoff = true, pose_id = 1, area_id = 11 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1040003, name = "GROUP_LOAD_40003", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_40003", action = "action_EVENT_GROUP_LOAD_40003", trigger_count = 0 },
	{ config_id = 1040007, name = "ANY_MONSTER_DIE_40007", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_40007", action = "action_EVENT_ANY_MONSTER_DIE_40007" }
}

-- 变量
variables = {
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
		-- description = ,
		monsters = { 40001, 40002, 40005, 40006 },
		gadgets = { },
		regions = { },
		triggers = { "GROUP_LOAD_40003", "ANY_MONSTER_DIE_40007" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_GROUP_LOAD_40003(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_40003(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "133220040") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_40007(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_40007(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "133220040") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	-- 调用提示id为 321372109 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 321372109) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end