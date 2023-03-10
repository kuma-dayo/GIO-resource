-- 基础信息
local base_info = {
	group_id = 133303271
}

-- Trigger变量
local defs = {
	duration = 40,
	group_id = 133303271,
	collectable_sum = 8
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
	{ config_id = 271001, gadget_id = 70211101, pos = { x = -1269.310, y = 221.152, z = 3940.469 }, rot = { x = 0.000, y = 157.989, z = 0.000 }, level = 26, drop_tag = "解谜低级须弥", isOneoff = true, persistent = true, explore = { name = "chest", exp = 10 }, area_id = 23 },
	{ config_id = 271002, gadget_id = 70350093, pos = { x = -1260.599, y = 209.345, z = 3881.453 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, persistent = true, area_id = 23 },
	{ config_id = 271003, gadget_id = 70360001, pos = { x = -1260.599, y = 210.310, z = 3881.447 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, persistent = true, area_id = 23 },
	{ config_id = 271004, gadget_id = 70290501, pos = { x = -1265.210, y = 211.633, z = 3890.560 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 23 },
	{ config_id = 271005, gadget_id = 70290501, pos = { x = -1259.963, y = 212.629, z = 3899.727 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 23 },
	{ config_id = 271006, gadget_id = 70290501, pos = { x = -1253.047, y = 216.997, z = 3907.112 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 23 },
	{ config_id = 271007, gadget_id = 70290501, pos = { x = -1248.957, y = 223.048, z = 3916.978 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 23 },
	{ config_id = 271008, gadget_id = 70290501, pos = { x = -1253.119, y = 222.108, z = 3928.340 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 23 },
	{ config_id = 271009, gadget_id = 70290501, pos = { x = -1255.607, y = 219.844, z = 3933.586 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 23 },
	{ config_id = 271010, gadget_id = 70290501, pos = { x = -1261.281, y = 219.541, z = 3939.616 }, rot = { x = 0.000, y = 247.730, z = 0.000 }, level = 30, area_id = 23 },
	{ config_id = 271011, gadget_id = 70290501, pos = { x = -1268.811, y = 221.711, z = 3939.031 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 23 },
	{ config_id = 271019, gadget_id = 70330197, pos = { x = -1256.306, y = 212.731, z = 3902.409 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 23 },
	{ config_id = 271020, gadget_id = 70330197, pos = { x = -1261.140, y = 217.423, z = 3939.536 }, rot = { x = 0.000, y = 247.730, z = 0.000 }, level = 30, area_id = 23 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1271012, name = "CHALLENGE_SUCCESS_271012", event = EventType.EVENT_CHALLENGE_SUCCESS, source = "666", condition = "", action = "action_EVENT_CHALLENGE_SUCCESS_271012", trigger_count = 0 },
	{ config_id = 1271013, name = "CHALLENGE_FAIL_271013", event = EventType.EVENT_CHALLENGE_FAIL, source = "666", condition = "", action = "action_EVENT_CHALLENGE_FAIL_271013", trigger_count = 0 },
	{ config_id = 1271014, name = "GADGET_STATE_CHANGE_271014", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_271014", action = "action_EVENT_GADGET_STATE_CHANGE_271014", trigger_count = 0 },
	{ config_id = 1271015, name = "ANY_GADGET_DIE_271015", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "", action = "", trigger_count = 0, tag = "218" },
	{ config_id = 1271016, name = "GADGET_CREATE_271016", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_271016", action = "action_EVENT_GADGET_CREATE_271016", trigger_count = 0 },
	{ config_id = 1271017, name = "SELECT_OPTION_271017", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_271017", action = "action_EVENT_SELECT_OPTION_271017", trigger_count = 0 },
	-- 2.0rel加的保底，如果group在挑战中间被卸载了，需要在加载时加个保底置回初始状态
	{ config_id = 1271018, name = "GROUP_LOAD_271018", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "", action = "action_EVENT_GROUP_LOAD_271018", trigger_count = 0 }
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
		gadgets = { 271002, 271003 },
		regions = { },
		triggers = { "CHALLENGE_SUCCESS_271012", "CHALLENGE_FAIL_271013", "GADGET_STATE_CHANGE_271014", "ANY_GADGET_DIE_271015", "GADGET_CREATE_271016", "SELECT_OPTION_271017", "GROUP_LOAD_271018" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 271004, 271005, 271006, 271007, 271008, 271009, 271010, 271011, 271019, 271020 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { },
		gadgets = { 271002 },
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
function action_EVENT_CHALLENGE_SUCCESS_271012(context, evt)
	-- 将configid为 271002 的物件更改为状态 GadgetState.GearStop
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 271002, GadgetState.GearStop) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	    -- 杀死指定group内的gadget和monster,移除其它东西
	    ScriptLib.KillExtraGroupSuite(context, 133303271, 2)
	
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 3002, 3, 1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	-- group调整group进度,只对非randSuite有效
	if 0 ~= ScriptLib.GoToGroupSuite(context, 133303271, 3) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : goto_groupSuite")
		return -1
	end
	
	-- 创建id为271001的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 271001 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_CHALLENGE_FAIL_271013(context, evt)
	-- 将configid为 271002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 271002, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 创建id为271003的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 271003 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	-- 删除suite2的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133303271, 2)
	
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 3002, 4, 1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_271014(context, evt)
	if 271002 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_271014(context, evt)
	-- 247号挑战,duration内开启宝箱
	if 0 ~= ScriptLib.ActiveChallenge(context, 666, 271, defs.duration, 2, 218, defs.collectable_sum) then
	return -1
	end
	
	-- 添加suite2的新内容
	ScriptLib.AddExtraGroupSuite(context, defs.group_id, 2)
	
	-- 运营数据埋点，匹配LD定义的规则使用
	if 0 ~= ScriptLib.MarkPlayerAction(context, 3002, 1, 1) then
	return -1
	end
	
	return 0
	
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_271016(context, evt)
	if 271003 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_271016(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 133303271, 271003, {177}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_271017(context, evt)
	-- 判断是gadgetid 271003 option_id 177
	if 271003 ~= evt.param1 then
		return false	
	end
	
	if 177 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_271017(context, evt)
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 271003 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	-- 将configid为 271002 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 271002, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 触发镜头注目，注目位置为坐标{x=-1265.21, y=211.6326, z=3890.56}，持续时间为2秒，并且为强制注目形式，不广播其他玩家
		local pos = {x=-1265.21, y=211.6326, z=3890.56}
	  local pos_follow = {x=0, y=0, z=0}
	    if 0 ~= ScriptLib.BeginCameraSceneLook(context, { look_pos = pos, is_allow_input = false, duration = 2, is_force = true, is_broadcast = false, is_recover_keep_current = true, delay = 0,
	                                                      is_set_follow_pos = false, follow_pos = pos_follow, is_force_walk = false, is_change_play_mode = false,
	                                                      is_set_screen_XY = false, screen_x = 0, screen_y = 0 }) then
					ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_cameraLook_Begin")
	        return -1
				end 
	
	return 0
end

-- 触发操作
function action_EVENT_GROUP_LOAD_271018(context, evt)
	-- 将configid为 271002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 271002, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 创建id为271003的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 271003 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	-- 删除suite2的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133303271, 2)
	
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 3002, 4, 1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	return 0
end