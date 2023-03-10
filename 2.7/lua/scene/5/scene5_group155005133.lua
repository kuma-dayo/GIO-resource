-- 基础信息
local base_info = {
	group_id = 155005133
}

-- Trigger变量
local defs = {
	duration = 40,
	group_id = 155005133,
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
	{ config_id = 133001, gadget_id = 70211101, pos = { x = 407.368, y = 170.058, z = 932.378 }, rot = { x = 359.852, y = 272.276, z = 8.244 }, level = 16, drop_tag = "解谜低级稻妻", isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 200 },
	{ config_id = 133002, gadget_id = 70350093, pos = { x = 332.455, y = 158.055, z = 925.725 }, rot = { x = 353.478, y = 359.232, z = 13.419 }, level = 35, persistent = true, area_id = 200 },
	{ config_id = 133003, gadget_id = 70360001, pos = { x = 332.436, y = 159.080, z = 925.756 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 35, persistent = true, area_id = 200 },
	{ config_id = 133004, gadget_id = 70290150, pos = { x = 341.966, y = 160.372, z = 932.498 }, rot = { x = 0.000, y = 294.475, z = 0.000 }, level = 35, area_id = 200 },
	{ config_id = 133005, gadget_id = 70290150, pos = { x = 345.204, y = 163.366, z = 937.774 }, rot = { x = 0.000, y = 294.475, z = 0.000 }, level = 35, area_id = 200 },
	{ config_id = 133006, gadget_id = 70290150, pos = { x = 351.578, y = 165.931, z = 945.218 }, rot = { x = 0.000, y = 294.475, z = 0.000 }, level = 35, area_id = 200 },
	{ config_id = 133007, gadget_id = 70290150, pos = { x = 367.290, y = 168.293, z = 943.145 }, rot = { x = 0.000, y = 294.475, z = 0.000 }, level = 35, area_id = 200 },
	{ config_id = 133008, gadget_id = 70290150, pos = { x = 375.932, y = 167.532, z = 935.422 }, rot = { x = 0.000, y = 294.475, z = 0.000 }, level = 35, area_id = 200 },
	{ config_id = 133009, gadget_id = 70290150, pos = { x = 384.514, y = 166.249, z = 926.093 }, rot = { x = 0.000, y = 294.475, z = 0.000 }, level = 35, area_id = 200 },
	{ config_id = 133010, gadget_id = 70290150, pos = { x = 390.186, y = 168.464, z = 929.372 }, rot = { x = 0.000, y = 294.475, z = 0.000 }, level = 35, area_id = 200 },
	{ config_id = 133011, gadget_id = 70290150, pos = { x = 404.763, y = 170.524, z = 931.900 }, rot = { x = 0.000, y = 294.475, z = 0.000 }, level = 35, area_id = 200 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1133012, name = "CHALLENGE_SUCCESS_133012", event = EventType.EVENT_CHALLENGE_SUCCESS, source = "666", condition = "", action = "action_EVENT_CHALLENGE_SUCCESS_133012", trigger_count = 0 },
	{ config_id = 1133013, name = "CHALLENGE_FAIL_133013", event = EventType.EVENT_CHALLENGE_FAIL, source = "666", condition = "", action = "action_EVENT_CHALLENGE_FAIL_133013", trigger_count = 0 },
	{ config_id = 1133014, name = "GADGET_STATE_CHANGE_133014", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_133014", action = "action_EVENT_GADGET_STATE_CHANGE_133014", trigger_count = 0 },
	{ config_id = 1133015, name = "ANY_GADGET_DIE_133015", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "", action = "", trigger_count = 0, tag = "218" },
	{ config_id = 1133016, name = "GADGET_CREATE_133016", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_133016", action = "action_EVENT_GADGET_CREATE_133016", trigger_count = 0 },
	{ config_id = 1133017, name = "SELECT_OPTION_133017", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_133017", action = "action_EVENT_SELECT_OPTION_133017", trigger_count = 0 },
	-- 2.0rel加的保底，如果group在挑战中间被卸载了，需要在加载时加个保底置回初始状态
	{ config_id = 1133018, name = "GROUP_LOAD_133018", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "", action = "action_EVENT_GROUP_LOAD_133018", trigger_count = 0 }
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
		-- description = suite_1,
		monsters = { },
		gadgets = { 133002, 133003 },
		regions = { },
		triggers = { "CHALLENGE_SUCCESS_133012", "CHALLENGE_FAIL_133013", "GADGET_STATE_CHANGE_133014", "ANY_GADGET_DIE_133015", "GADGET_CREATE_133016", "SELECT_OPTION_133017", "GROUP_LOAD_133018" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = suite_2,
		monsters = { },
		gadgets = { 133004, 133005, 133006, 133007, 133008, 133009, 133010, 133011 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { },
		gadgets = { 133002 },
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
function action_EVENT_CHALLENGE_SUCCESS_133012(context, evt)
	-- 将configid为 133002 的物件更改为状态 GadgetState.GearStop
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 133002, GadgetState.GearStop) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	    -- 杀死指定group内的gadget和monster,移除其它东西
	    ScriptLib.KillExtraGroupSuite(context, 155005133, 2)
	
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 3002, 3, 1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	-- group调整group进度,只对非randSuite有效
	if 0 ~= ScriptLib.GoToGroupSuite(context, 155005133, 3) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : goto_groupSuite")
		return -1
	end
	
	-- 创建id为133001的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 133001 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_CHALLENGE_FAIL_133013(context, evt)
	-- 将configid为 133002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 133002, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 创建id为133003的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 133003 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	-- 删除suite2的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 155005133, 2)
	
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 3002, 4, 1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_133014(context, evt)
	if 133002 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_133014(context, evt)
	-- 247号挑战,duration内开启宝箱
	if 0 ~= ScriptLib.ActiveChallenge(context, 666, 247, defs.duration, 2, 218, defs.collectable_sum) then
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
function condition_EVENT_GADGET_CREATE_133016(context, evt)
	if 133003 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_133016(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 155005133, 133003, {177}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_133017(context, evt)
	-- 判断是gadgetid 133003 option_id 177
	if 133003 ~= evt.param1 then
		return false	
	end
	
	if 177 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_133017(context, evt)
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 133003 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	-- 将configid为 133002 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 133002, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 触发镜头注目，注目位置为坐标（341，160，932），持续时间为2秒，并且为强制注目形式，不广播其他玩家
		local pos = {x=341, y=160, z=932}
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
function action_EVENT_GROUP_LOAD_133018(context, evt)
	-- 将configid为 133002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 133002, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 创建id为133003的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 133003 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	-- 删除suite2的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 155005133, 2)
	
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 3002, 4, 1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	return 0
end