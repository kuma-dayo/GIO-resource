-- Trigger变量
local defs = {
	group_id = 144004123,
	gadget_signal_id = 123001
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
	{ config_id = 123001, gadget_id = 70220068, pos = { x = 225.123, y = 200.000, z = -534.678 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, persistent = true, area_id = 101 }
}

-- 区域
regions = {
	{ config_id = 123002, shape = RegionShape.SPHERE, radius = 8, pos = { x = 225.123, y = 200.000, z = -534.678 }, area_id = 101 },
	{ config_id = 123003, shape = RegionShape.SPHERE, radius = 8, pos = { x = 225.123, y = 200.000, z = -534.678 }, area_id = 101 },
	{ config_id = 123004, shape = RegionShape.SPHERE, radius = 10, pos = { x = 225.123, y = 200.000, z = -534.678 }, area_id = 101 }
}

-- 触发器
triggers = {
	{ config_id = 1123002, name = "ENTER_REGION_123002", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_123002", action = "action_EVENT_ENTER_REGION_123002", trigger_count = 0 },
	{ config_id = 1123003, name = "ENTER_REGION_123003", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_123003", action = "action_EVENT_ENTER_REGION_123003", trigger_count = 0 },
	{ config_id = 1123004, name = "ENTER_REGION_123004", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_123004", action = "action_EVENT_ENTER_REGION_123004" }
}

-- 点位
points = {
	{ config_id = 123005, pos = { x = 235.496, y = 200.000, z = -527.419 }, rot = { x = 0.000, y = 53.872, z = 0.000 }, area_id = 101 }
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
		gadgets = { 123001 },
		regions = { 123002, 123003, 123004 },
		triggers = { "ENTER_REGION_123002", "ENTER_REGION_123003", "ENTER_REGION_123004" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ENTER_REGION_123002(context, evt)
	if evt.param1 ~= 123002 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_123002(context, evt)
	-- 将configid为 123001 的物件更改为状态 GadgetState.GearStop
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 123001, GadgetState.GearStop) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_123003(context, evt)
	if evt.param1 ~= 123003 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_123003(context, evt)
	ScriptLib.UnlockFloatSignal(context, defs.group_id, defs.gadget_signal_id)
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_123004(context, evt)
	if evt.param1 ~= 123004 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_123004(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "7900901") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end