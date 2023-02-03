-- 基础信息
local base_info = {
	group_id = 133301639
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
	{ config_id = 639001, gadget_id = 70330238, pos = { x = -402.895, y = 121.879, z = 3922.575 }, rot = { x = 0.000, y = 132.364, z = 0.000 }, level = 33, area_id = 22 },
	{ config_id = 639002, gadget_id = 70290563, pos = { x = -439.557, y = 109.484, z = 3916.561 }, rot = { x = 0.000, y = 212.624, z = 0.000 }, level = 33, vision_level = VisionLevelType.VISION_LEVEL_LITTLE_REMOTE, area_id = 22 },
	{ config_id = 639006, gadget_id = 70330199, pos = { x = -403.246, y = 121.219, z = 3923.030 }, rot = { x = 0.000, y = 146.626, z = 0.000 }, level = 33, area_id = 22 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	-- 删除执行
	{ config_id = 1639003, name = "GADGET_STATE_CHANGE_639003", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_639003", action = "action_EVENT_GADGET_STATE_CHANGE_639003", trigger_count = 0 },
	{ config_id = 1639004, name = "GROUP_LOAD_639004", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_639004", action = "action_EVENT_GROUP_LOAD_639004", trigger_count = 0 },
	{ config_id = 1639005, name = "GADGET_STATE_CHANGE_639005", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_639005", action = "action_EVENT_GADGET_STATE_CHANGE_639005" }
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
		gadgets = { 639001, 639002, 639006 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_639003", "GROUP_LOAD_639004", "GADGET_STATE_CHANGE_639005" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 639001 },
		regions = { },
		triggers = { "GROUP_LOAD_639004" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_639003(context, evt)
	if 639001 ~= evt.param2 or GadgetState.GearStop ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_639003(context, evt)
		-- 卸载指定gadget
		if 0 ~= ScriptLib.RemoveEntityByConfigId(context, 133301639, EntityType.GADGET, 639002 ) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : remove_gadget_by_configid")
			return -1
		end
	
	return 0
end

-- 触发条件
function condition_EVENT_GROUP_LOAD_639004(context, evt)
	if GadgetState.GearStop ~= ScriptLib.GetGadgetStateByConfigId(context, 133301639, 639001) then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_639004(context, evt)
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 133301639, suite = 2 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_639005(context, evt)
	if 639001 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_639005(context, evt)
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

require "V3_0/DeathFieldStandard"