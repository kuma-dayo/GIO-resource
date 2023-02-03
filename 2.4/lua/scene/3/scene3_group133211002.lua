--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 2001, monster_id = 23010301, pos = { x = -3918.478, y = 200.000, z = -1135.964 }, rot = { x = 0.000, y = 18.622, z = 0.000 }, level = 35, drop_id = 1000100, disableWander = true, area_id = 17 },
	{ config_id = 2002, monster_id = 23010601, pos = { x = -3914.093, y = 200.000, z = -1136.183 }, rot = { x = 0.000, y = 344.328, z = 0.000 }, level = 35, drop_id = 1000100, disableWander = true, area_id = 17 },
	{ config_id = 2003, monster_id = 23010201, pos = { x = -3930.759, y = 200.000, z = -1138.307 }, rot = { x = 0.000, y = 71.707, z = 0.000 }, level = 35, drop_id = 1000100, area_id = 17 },
	{ config_id = 2006, monster_id = 23010101, pos = { x = -3915.707, y = 199.783, z = -1134.383 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 35, drop_id = 1000100, disableWander = true, area_id = 17 },
	{ config_id = 2007, monster_id = 23010401, pos = { x = -3934.616, y = 200.000, z = -1137.202 }, rot = { x = 0.000, y = 65.859, z = 0.000 }, level = 35, drop_id = 1000100, area_id = 17 },
	{ config_id = 2008, monster_id = 23010501, pos = { x = -3933.044, y = 200.000, z = -1136.062 }, rot = { x = 0.000, y = 63.706, z = 0.000 }, level = 35, drop_id = 1000100, area_id = 17 }
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
	{ config_id = 1002004, name = "ANY_MONSTER_DIE_2004", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_2004", action = "action_EVENT_ANY_MONSTER_DIE_2004" },
	{ config_id = 1002005, name = "ANY_MONSTER_DIE_2005", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_2005", action = "action_EVENT_ANY_MONSTER_DIE_2005" }
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
		monsters = { 2001, 2002, 2006 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_2004" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 2003, 2007, 2008 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_2005" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_2004(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_2004(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133211002, 2)
	
	-- 在指定位置对应半径范围播放reminder
	local pos = {x=-3929.485,y=200,z=-1124.133}
	if 0 ~= ScriptLib.ShowReminderRadius(context, 1110317, pos, 60) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui_bypos")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_2005(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_2005(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "1202002") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end