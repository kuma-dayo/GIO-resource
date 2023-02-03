-- 基础信息
local base_info = {
	group_id = 133303043
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
	{ config_id = 43001, gadget_id = 70220004, pos = { x = -1157.800, y = 235.057, z = 3494.281 }, rot = { x = 22.446, y = 352.634, z = 3.514 }, level = 30, area_id = 23 },
	{ config_id = 43002, gadget_id = 70900388, pos = { x = -1159.970, y = 234.507, z = 3495.009 }, rot = { x = 21.997, y = 358.594, z = 5.769 }, level = 30, area_id = 23 },
	{ config_id = 43003, gadget_id = 70900388, pos = { x = -1157.366, y = 232.033, z = 3499.906 }, rot = { x = 33.735, y = 351.194, z = 0.811 }, level = 30, area_id = 23 },
	{ config_id = 43005, gadget_id = 70900388, pos = { x = -1158.688, y = 232.270, z = 3499.313 }, rot = { x = 32.775, y = 357.436, z = 2.872 }, level = 30, area_id = 23 },
	{ config_id = 43006, gadget_id = 70220109, pos = { x = -1158.386, y = 234.399, z = 3495.607 }, rot = { x = 43.365, y = 6.493, z = 5.913 }, level = 30, area_id = 23 },
	{ config_id = 43007, gadget_id = 70220109, pos = { x = -1157.777, y = 230.652, z = 3501.965 }, rot = { x = 32.867, y = 349.951, z = 358.811 }, level = 30, area_id = 23 },
	{ config_id = 43009, gadget_id = 70211001, pos = { x = -1150.831, y = 232.565, z = 3499.231 }, rot = { x = 0.789, y = 97.526, z = 24.997 }, level = 26, drop_tag = "战斗低级须弥", isOneoff = true, persistent = true, explore = { name = "chest", exp = 10 }, area_id = 23 }
}

-- 区域
regions = {
	{ config_id = 43010, shape = RegionShape.SPHERE, radius = 25, pos = { x = -1157.648, y = 234.232, z = 3496.048 }, area_id = 23 }
}

-- 触发器
triggers = {
	{ config_id = 1043004, name = "ANY_GADGET_DIE_43004", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "", action = "action_EVENT_ANY_GADGET_DIE_43004" },
	{ config_id = 1043010, name = "ENTER_REGION_43010", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_43010", action = "action_EVENT_ENTER_REGION_43010" },
	{ config_id = 1043011, name = "TIME_AXIS_PASS_43011", event = EventType.EVENT_TIME_AXIS_PASS, source = "", condition = "condition_EVENT_TIME_AXIS_PASS_43011", action = "action_EVENT_TIME_AXIS_PASS_43011", trigger_count = 0 },
	{ config_id = 1043013, name = "GADGET_CREATE_43013", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_43013", action = "action_EVENT_GADGET_CREATE_43013" }
}

-- 变量
variables = {
}

-- 废弃数据
garbages = {
	triggers = {
		{ config_id = 1043008, name = "QUEST_FINISH_43008", event = EventType.EVENT_QUEST_FINISH, source = "7306501", condition = "", action = "action_EVENT_QUEST_FINISH_43008" }
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
	end_suite = 3,
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
		monsters = { },
		gadgets = { 43001, 43002, 43003, 43005, 43006, 43007 },
		regions = { 43010 },
		triggers = { "ANY_GADGET_DIE_43004", "ENTER_REGION_43010", "TIME_AXIS_PASS_43011" },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { },
		gadgets = { 43009 },
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

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_43004(context, evt)
	-- 调用提示id为 7306501 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 7306501) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_43010(context, evt)
	if evt.param1 ~= 43010 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_43010(context, evt)
	-- 创建标识为"duration"，时间节点为{13}的时间轴，false用于控制该时间轴是否循环
	ScriptLib.InitTimeAxis(context, "duration", {13}, false)
	
	
	return 0
end

-- 触发条件
function condition_EVENT_TIME_AXIS_PASS_43011(context, evt)
	if "duration" ~= evt.source_name or 1 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_TIME_AXIS_PASS_43011(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "7306503_finish") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_43013(context, evt)
	if 43009 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_43013(context, evt)
	-- 创建id为43009的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 43009 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end