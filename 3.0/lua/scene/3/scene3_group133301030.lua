-- 基础信息
local base_info = {
	group_id = 133301030
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 30001, monster_id = 28030313, pos = { x = -1069.194, y = 207.996, z = 2917.381 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, drop_tag = "鸟类", area_id = 23 },
	{ config_id = 30002, monster_id = 28030313, pos = { x = -1059.481, y = 205.397, z = 2927.049 }, rot = { x = 0.000, y = 241.821, z = 0.000 }, level = 30, drop_tag = "鸟类", area_id = 23 },
	{ config_id = 30003, monster_id = 28060101, pos = { x = -1124.952, y = 176.500, z = 2949.687 }, rot = { x = 0.000, y = 223.394, z = 0.000 }, level = 30, drop_tag = "走兽", pose_id = 1, area_id = 21 },
	{ config_id = 30020, monster_id = 28010304, pos = { x = -1143.957, y = 176.951, z = 2956.687 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, drop_tag = "采集动物", area_id = 21 },
	{ config_id = 30021, monster_id = 28010304, pos = { x = -1134.949, y = 176.778, z = 2971.586 }, rot = { x = 0.000, y = 319.907, z = 0.000 }, level = 30, drop_tag = "采集动物", area_id = 23 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 30027, gadget_id = 70500000, pos = { x = -1043.654, y = 219.958, z = 2763.932 }, rot = { x = 350.951, y = 282.389, z = 354.384 }, level = 30, point_type = 2052, area_id = 21 },
	{ config_id = 30028, gadget_id = 70500000, pos = { x = -1031.054, y = 216.949, z = 2785.862 }, rot = { x = 7.923, y = 280.278, z = 357.177 }, level = 30, point_type = 2052, area_id = 24 },
	{ config_id = 30029, gadget_id = 70500000, pos = { x = -1031.639, y = 217.215, z = 2811.039 }, rot = { x = 354.897, y = 247.647, z = 1.055 }, level = 30, point_type = 2052, area_id = 24 },
	{ config_id = 30030, gadget_id = 70500000, pos = { x = -1042.154, y = 218.950, z = 2781.602 }, rot = { x = 1.417, y = 128.401, z = 1.701 }, level = 30, point_type = 2052, area_id = 21 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1030004, name = "QUEST_FINISH_30004", event = EventType.EVENT_QUEST_FINISH, source = "7300207", condition = "", action = "action_EVENT_QUEST_FINISH_30004", trigger_count = 0 },
	{ config_id = 1030015, name = "GATHER_30015", event = EventType.EVENT_GATHER, source = "", condition = "condition_EVENT_GATHER_30015", action = "action_EVENT_GATHER_30015" }
}

-- 变量
variables = {
	{ config_id = 1, name = "nofollow", value = 0, no_refresh = true }
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
		monsters = { },
		gadgets = { 30028 },
		regions = { },
		triggers = { "QUEST_FINISH_30004", "GATHER_30015" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 30001, 30002, 30003, 30020, 30021 },
		gadgets = { 30027, 30028, 30029, 30030 },
		regions = { },
		triggers = { "QUEST_FINISH_30004", "GATHER_30015" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发操作
function action_EVENT_QUEST_FINISH_30004(context, evt)
	-- 将本组内变量名为 "nofollow" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "nofollow", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GATHER_30015(context, evt)
	-- 判断变量"nofollow"为0
	if ScriptLib.GetGroupVariableValue(context, "nofollow") ~= 0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GATHER_30015(context, evt)
	-- 调用提示id为 33010015 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 33010015) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end