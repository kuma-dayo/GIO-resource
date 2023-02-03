-- 基础信息
local base_info = {
	group_id = 133303478
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
	{ config_id = 478001, gadget_id = 70290485, pos = { x = -1107.813, y = 173.052, z = 3699.369 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 23 },
	{ config_id = 478002, gadget_id = 70310199, pos = { x = -1102.679, y = 174.992, z = 3709.446 }, rot = { x = 0.000, y = 164.722, z = 0.000 }, level = 30, persistent = true, area_id = 23 },
	{ config_id = 478004, gadget_id = 70310201, pos = { x = -1115.920, y = 190.603, z = 3751.317 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, persistent = true, area_id = 23 },
	{ config_id = 478005, gadget_id = 70310201, pos = { x = -1058.940, y = 191.967, z = 3760.140 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, persistent = true, area_id = 23 },
	{ config_id = 478006, gadget_id = 70310201, pos = { x = -1113.369, y = 214.534, z = 3656.828 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, persistent = true, area_id = 23 },
	{ config_id = 478007, gadget_id = 70330255, pos = { x = -1102.810, y = 179.094, z = 3718.945 }, rot = { x = 339.178, y = 341.900, z = 357.019 }, level = 30, area_id = 23 },
	{ config_id = 478008, gadget_id = 70330255, pos = { x = -1111.238, y = 188.260, z = 3742.352 }, rot = { x = 346.511, y = 329.134, z = 0.000 }, level = 30, area_id = 23 },
	{ config_id = 478009, gadget_id = 70330255, pos = { x = -1080.956, y = 175.925, z = 3710.612 }, rot = { x = 341.619, y = 34.893, z = 356.456 }, level = 30, area_id = 23 },
	{ config_id = 478010, gadget_id = 70330255, pos = { x = -1064.456, y = 186.634, z = 3735.090 }, rot = { x = 0.000, y = 13.561, z = 0.000 }, level = 30, area_id = 23 },
	{ config_id = 478011, gadget_id = 70330255, pos = { x = -1102.895, y = 175.756, z = 3695.069 }, rot = { x = 322.752, y = 196.162, z = 0.000 }, level = 30, area_id = 23 },
	{ config_id = 478012, gadget_id = 70330255, pos = { x = -1108.018, y = 187.978, z = 3685.678 }, rot = { x = 322.752, y = 196.162, z = 0.000 }, level = 30, area_id = 23 },
	{ config_id = 478014, gadget_id = 70330219, pos = { x = -1116.060, y = 190.911, z = 3752.216 }, rot = { x = 5.431, y = 63.032, z = 338.549 }, level = 30, area_id = 23 },
	{ config_id = 478015, gadget_id = 70330199, pos = { x = -1059.051, y = 192.088, z = 3760.185 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, state = GadgetState.GearStop, area_id = 23 },
	{ config_id = 478016, gadget_id = 70220103, pos = { x = -1109.906, y = 210.160, z = 3667.869 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 23 },
	{ config_id = 478017, gadget_id = 70330255, pos = { x = -1111.198, y = 208.577, z = 3668.674 }, rot = { x = 322.752, y = 196.162, z = 0.000 }, level = 30, area_id = 23 },
	{ config_id = 478018, gadget_id = 70211122, pos = { x = -1107.813, y = 173.052, z = 3699.369 }, rot = { x = 25.954, y = 4.127, z = 356.786 }, level = 26, drop_tag = "解谜高级须弥", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, vision_level = VisionLevelType.VISION_LEVEL_NORMAL, explore = { name = "chest", exp = 10 }, area_id = 23 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1478003, name = "GADGET_STATE_CHANGE_478003", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_478003", action = "action_EVENT_GADGET_STATE_CHANGE_478003", trigger_count = 0 },
	{ config_id = 1478013, name = "GADGET_STATE_CHANGE_478013", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_478013", action = "action_EVENT_GADGET_STATE_CHANGE_478013" }
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
		gadgets = { 478001, 478002, 478018 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_478003" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 478004, 478005, 478006, 478007, 478008, 478009, 478010, 478011, 478012, 478014, 478015, 478016, 478017 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_478013" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_478003(context, evt)
	if 478002 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_478003(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133303478, 2)
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_478013(context, evt)
	if GadgetState.GearStart ~= ScriptLib.GetGadgetStateByConfigId(context, 133303478, 478004) then
		return false
	end
	
	if GadgetState.GearStart ~= ScriptLib.GetGadgetStateByConfigId(context, 133303478, 478005) then
		return false
	end
	
	if GadgetState.GearStart ~= ScriptLib.GetGadgetStateByConfigId(context, 133303478, 478006) then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_478013(context, evt)
	-- 将configid为 478001 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 478001, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 478018 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 478018, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 触发镜头注目，注目位置为坐标（-1093.765，170.3，3708.62），持续时间为3秒，并且为强制注目形式，不广播其他玩家
		local pos = {x=-1093.765, y=170.3, z=3708.62}
	  local pos_follow = {x=-1, y=1, z=-3}
	    if 0 ~= ScriptLib.BeginCameraSceneLook(context, { look_pos = pos, is_allow_input = true, duration = 3, is_force = true, is_broadcast = false, is_recover_keep_current = true, delay = 0,
	                                                      is_set_follow_pos = true, follow_pos = pos_follow, is_force_walk = true, is_change_play_mode = false,
	                                                      is_set_screen_XY = false, screen_x = 0, screen_y = 0 }) then
					ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_cameraLook_Begin")
	        return -1
				end 
	
	return 0
end