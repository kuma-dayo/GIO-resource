-- 基础信息
local base_info = {
	group_id = 133304244
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
	{ config_id = 244002, gadget_id = 70360001, pos = { x = -1486.281, y = 187.213, z = 2460.837 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, is_use_point_array = true, area_id = 21 }
}

-- 区域
regions = {
	{ config_id = 244001, shape = RegionShape.SPHERE, radius = 20, pos = { x = -1486.281, y = 187.213, z = 2460.837 }, area_id = 21 },
	{ config_id = 244003, shape = RegionShape.SPHERE, radius = 20, pos = { x = -1486.281, y = 187.213, z = 2460.837 }, area_id = 21 },
	{ config_id = 244004, shape = RegionShape.SPHERE, radius = 2, pos = { x = -1494.356, y = 173.018, z = 2431.802 }, area_id = 21 }
}

-- 触发器
triggers = {
	{ config_id = 1244001, name = "ENTER_REGION_244001", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_244001", action = "action_EVENT_ENTER_REGION_244001", trigger_count = 0 },
	{ config_id = 1244003, name = "LEAVE_REGION_244003", event = EventType.EVENT_LEAVE_REGION, source = "", condition = "condition_EVENT_LEAVE_REGION_244003", action = "action_EVENT_LEAVE_REGION_244003", trigger_count = 0 },
	{ config_id = 1244004, name = "ENTER_REGION_244004", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_244004", action = "action_EVENT_ENTER_REGION_244004", trigger_count = 0 },
	{ config_id = 1244005, name = "GADGET_STATE_CHANGE_244005", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_244005", action = "action_EVENT_GADGET_STATE_CHANGE_244005", trigger_count = 0 }
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
		gadgets = { 244002 },
		regions = { 244001, 244003, 244004 },
		triggers = { "ENTER_REGION_244001", "LEAVE_REGION_244003", "ENTER_REGION_244004", "GADGET_STATE_CHANGE_244005" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ENTER_REGION_244001(context, evt)
	if evt.param1 ~= 244001 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_244001(context, evt)
	-- play_type含义：1·代表开始播放； 2·代表停止播放
	-- 在指定位置播放或停止音效资源
		local pos = {x=-1487, y=187, z=2463}
	    if 0 ~= ScriptLib.ScenePlaySound(context, {play_pos = pos, sound_name = "Sfx_Quest_underConstruction", play_type= 1, is_broadcast = false }) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_soundplay")
					return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_LEAVE_REGION_244003(context, evt)
	-- 判断是区域244003
	if ScriptLib.GetRegionConfigId(context, { region_eid = evt.source_eid }) ~= 244003 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_LEAVE_REGION_244003(context, evt)
	-- play_type含义：1·代表开始播放； 2·代表停止播放
	-- 在指定位置播放或停止音效资源
		local pos = {x=-1487, y=187, z=2463}
	    if 0 ~= ScriptLib.ScenePlaySound(context, {play_pos = pos, sound_name = "Sfx_Quest_underConstruction", play_type= 2, is_broadcast = false }) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_soundplay")
					return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_244004(context, evt)
	if evt.param1 ~= 244004 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_244004(context, evt)
	-- play_type含义：1·代表开始播放； 2·代表停止播放
	-- 在指定位置播放或停止音效资源
		local pos = {x=-1494, y=173, z=2431}
	    if 0 ~= ScriptLib.ScenePlaySound(context, {play_pos = pos, sound_name = "Play_amb_explore_water_waterfall_large", play_type= 1, is_broadcast = false }) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_soundplay")
					return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_244005(context, evt)
	if 244002 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_244005(context, evt)
	-- play_type含义：1·代表开始播放； 2·代表停止播放
	-- 在指定位置播放或停止音效资源
		local pos = {x=-1487, y=187, z=2463}
	    if 0 ~= ScriptLib.ScenePlaySound(context, {play_pos = pos, sound_name = "Sfx_Quest_underConstruction", play_type= 1, is_broadcast = false }) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_soundplay")
					return -1
		end 
	
	return 0
end