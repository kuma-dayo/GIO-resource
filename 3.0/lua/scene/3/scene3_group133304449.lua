-- 基础信息
local base_info = {
	group_id = 133304449
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
	{ config_id = 449001, gadget_id = 70330238, pos = { x = -1167.111, y = 165.591, z = 2491.978 }, rot = { x = 0.000, y = 296.288, z = 0.000 }, level = 30, area_id = 21 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	-- 删除执行
	{ config_id = 1449003, name = "GADGET_STATE_CHANGE_449003", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_449003", action = "action_EVENT_GADGET_STATE_CHANGE_449003", trigger_count = 0 },
	{ config_id = 1449004, name = "GROUP_LOAD_449004", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_449004", action = "action_EVENT_GROUP_LOAD_449004", trigger_count = 0 },
	{ config_id = 1449005, name = "GADGET_STATE_CHANGE_449005", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_449005", action = "action_EVENT_GADGET_STATE_CHANGE_449005" }
}

-- 变量
variables = {
}

-- 废弃数据
garbages = {
	gadgets = {
		{ config_id = 449002, gadget_id = 70290555, pos = { x = -1130.719, y = 168.651, z = 2452.682 }, rot = { x = 0.000, y = 100.814, z = 0.000 }, level = 30, area_id = 21 },
		{ config_id = 449006, gadget_id = 70290556, pos = { x = -1130.367, y = 169.593, z = 2451.001 }, rot = { x = 0.000, y = 117.710, z = 0.000 }, level = 30, area_id = 21 }
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
		gadgets = { 449001 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_449003", "GROUP_LOAD_449004", "GADGET_STATE_CHANGE_449005" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 449001 },
		regions = { },
		triggers = { "GROUP_LOAD_449004" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_449003(context, evt)
	if 449001 ~= evt.param2 or GadgetState.GearStop ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_449003(context, evt)
		-- 卸载指定gadget
		if 0 ~= ScriptLib.RemoveEntityByConfigId(context, 133304449, EntityType.GADGET, 449002 ) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : remove_gadget_by_configid")
			return -1
		end
	
	return 0
end

-- 触发条件
function condition_EVENT_GROUP_LOAD_449004(context, evt)
	if GadgetState.GearStop ~= ScriptLib.GetGadgetStateByConfigId(context, 133304449, 449001) then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_449004(context, evt)
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 133304449, suite = 2 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_449005(context, evt)
	if 449001 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_449005(context, evt)
	-- 触发镜头注目，注目位置为坐标（-334.518，214.3548，3518.771），持续时间为2秒，并且为强制注目形式，不广播其他玩家
		local pos = {x=-334.518, y=214.3548, z=3518.771}
	  local pos_follow = {x=0, y=0, z=0}
	    if 0 ~= ScriptLib.BeginCameraSceneLook(context, { look_pos = pos, is_allow_input = true, duration = 2, is_force = true, is_broadcast = false, is_recover_keep_current = true, delay = 1,
	                                                      is_set_follow_pos = false, follow_pos = pos_follow, is_force_walk = false, is_change_play_mode = false,
	                                                      is_set_screen_XY = false, screen_x = 0, screen_y = 0 }) then
					ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_cameraLook_Begin")
	        return -1
				end 
	
	return 0
end