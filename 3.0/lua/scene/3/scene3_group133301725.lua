-- 基础信息
local base_info = {
	group_id = 133301725
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
}

-- 区域
regions = {
	-- 先播横幅
	{ config_id = 725001, shape = RegionShape.POLYGON, pos = { x = -705.760, y = -106.018, z = 3969.561 }, height = 212.035, point_array = { { x = -717.475, y = 3822.981 }, { x = -619.768, y = 3949.357 }, { x = -579.117, y = 4068.161 }, { x = -613.890, y = 4086.948 }, { x = -666.053, y = 4084.214 }, { x = -690.379, y = 4091.059 }, { x = -752.257, y = 4090.050 }, { x = -802.445, y = 3995.083 }, { x = -848.684, y = 3947.657 }, { x = -816.251, y = 3858.946 }, { x = -769.134, y = 3801.267 }, { x = -891.465, y = 3823.850 }, { x = -867.926, y = 4118.526 }, { x = -520.056, y = 4137.855 }, { x = -607.640, y = 3846.724 } }, area_id = 25 },
	-- 后传玩家
	{ config_id = 725002, shape = RegionShape.POLYGON, pos = { x = -705.760, y = -100.000, z = 3969.561 }, height = 200.000, point_array = { { x = -715.958, y = 3820.969 }, { x = -609.205, y = 3940.318 }, { x = -570.270, y = 4068.559 }, { x = -612.512, y = 4108.289 }, { x = -676.314, y = 4093.504 }, { x = -687.046, y = 4102.998 }, { x = -759.512, y = 4098.196 }, { x = -804.757, y = 4048.623 }, { x = -853.707, y = 3947.658 }, { x = -821.538, y = 3856.498 }, { x = -769.134, y = 3801.267 }, { x = -891.465, y = 3823.850 }, { x = -867.926, y = 4118.526 }, { x = -520.056, y = 4137.855 }, { x = -607.640, y = 3846.724 } }, area_id = 25 },
	-- 天花板横幅
	{ config_id = 725003, shape = RegionShape.CUBIC, size = { x = 300.000, y = 10.000, z = 300.000 }, pos = { x = -713.903, y = -100.000, z = 3971.188 }, area_id = 25 },
	-- 天花板拉回
	{ config_id = 725004, shape = RegionShape.CUBIC, size = { x = 300.000, y = 10.000, z = 300.000 }, pos = { x = -713.903, y = -100.000, z = 3971.188 }, area_id = 25 }
}

-- 触发器
triggers = {
	-- 先播横幅
	{ config_id = 1725001, name = "ENTER_REGION_725001", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_725001", action = "action_EVENT_ENTER_REGION_725001", trigger_count = 0 },
	-- 后传玩家
	{ config_id = 1725002, name = "ENTER_REGION_725002", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_725002", action = "action_EVENT_ENTER_REGION_725002", trigger_count = 0 },
	-- 天花板横幅
	{ config_id = 1725003, name = "ENTER_REGION_725003", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_725003", action = "action_EVENT_ENTER_REGION_725003", trigger_count = 0, forbid_guest = false },
	-- 天花板拉回
	{ config_id = 1725004, name = "ENTER_REGION_725004", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_725004", action = "action_EVENT_ENTER_REGION_725004", trigger_count = 0, forbid_guest = false }
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
		regions = { 725001, 725002 },
		triggers = { "ENTER_REGION_725001", "ENTER_REGION_725002" },
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
function condition_EVENT_ENTER_REGION_725001(context, evt)
	if evt.param1 ~= 725001 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_725001(context, evt)
	-- 调用提示id为 33010247 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 33010247) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_725002(context, evt)
	if evt.param1 ~= 725002 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_725002(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "73037_OUT") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_725003(context, evt)
	if evt.param1 ~= 725003 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_725003(context, evt)
	-- 调用提示id为 33010247 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 33010247) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_725004(context, evt)
	if evt.param1 ~= 725004 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_725004(context, evt)
	-- 调用提示id为 33010247 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 33010247) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end

require "V3_0/DeathFieldStandard"