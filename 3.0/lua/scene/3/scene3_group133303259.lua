-- 基础信息
local base_info = {
	group_id = 133303259
}

-- Trigger变量
local defs = {
	duration = 40,
	group_id = 133303259,
	gadget_sum = 3
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
	{ config_id = 259001, gadget_id = 70220005, pos = { x = -1068.831, y = 212.921, z = 3584.426 }, rot = { x = 353.832, y = 0.424, z = 352.144 }, level = 2, persistent = true, area_id = 23 },
	{ config_id = 259002, gadget_id = 70350084, pos = { x = -1068.634, y = 200.012, z = 3566.570 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 2, persistent = true, area_id = 23 },
	{ config_id = 259003, gadget_id = 70211101, pos = { x = -1066.649, y = 199.745, z = 3566.703 }, rot = { x = 359.690, y = 3.810, z = 339.394 }, level = 26, drop_tag = "解谜低级须弥", isOneoff = true, persistent = true, explore = { name = "chest", exp = 10 }, area_id = 23 },
	{ config_id = 259004, gadget_id = 70220005, pos = { x = -1071.436, y = 227.458, z = 3584.217 }, rot = { x = 340.839, y = 353.443, z = 337.232 }, level = 2, persistent = true, area_id = 23 },
	{ config_id = 259005, gadget_id = 70360001, pos = { x = -1068.625, y = 200.977, z = 3566.582 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 2, persistent = true, area_id = 23 },
	{ config_id = 259014, gadget_id = 70220005, pos = { x = -1100.516, y = 189.876, z = 3589.036 }, rot = { x = 1.856, y = 355.758, z = 6.074 }, level = 30, persistent = true, area_id = 23 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1259006, name = "CHALLENGE_SUCCESS_259006", event = EventType.EVENT_CHALLENGE_SUCCESS, source = "56", condition = "", action = "action_EVENT_CHALLENGE_SUCCESS_259006", trigger_count = 0 },
	{ config_id = 1259007, name = "CHALLENGE_FAIL_259007", event = EventType.EVENT_CHALLENGE_FAIL, source = "56", condition = "", action = "action_EVENT_CHALLENGE_FAIL_259007", trigger_count = 0 },
	{ config_id = 1259008, name = "GADGET_STATE_CHANGE_259008", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_259008", action = "action_EVENT_GADGET_STATE_CHANGE_259008", trigger_count = 0 },
	{ config_id = 1259009, name = "ANY_GADGET_DIE_259009", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "", action = "", trigger_count = 0, tag = "201" },
	{ config_id = 1259010, name = "GADGET_CREATE_259010", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_259010", action = "action_EVENT_GADGET_CREATE_259010", trigger_count = 0 },
	{ config_id = 1259011, name = "SELECT_OPTION_259011", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_259011", action = "action_EVENT_SELECT_OPTION_259011", trigger_count = 0 },
	-- 2.0rel加的保底，如果group在挑战中间被卸载了，需要在加载时加个保底置回初始状态
	{ config_id = 1259012, name = "GROUP_LOAD_259012", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "", action = "action_EVENT_GROUP_LOAD_259012", trigger_count = 0 }
}

-- 变量
variables = {
	{ config_id = 1, name = "gadget_start", value = 0, no_refresh = true }
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
		gadgets = { 259002, 259005 },
		regions = { },
		triggers = { "CHALLENGE_SUCCESS_259006", "CHALLENGE_FAIL_259007", "GADGET_STATE_CHANGE_259008", "ANY_GADGET_DIE_259009", "GADGET_CREATE_259010", "SELECT_OPTION_259011", "GROUP_LOAD_259012" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 259001, 259004, 259014 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { },
		gadgets = { 259002, 259003 },
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
function action_EVENT_CHALLENGE_SUCCESS_259006(context, evt)
	-- 将configid为 259002 的物件更改为状态 GadgetState.GearStop
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 259002, GadgetState.GearStop) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 259005 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	-- group调整group进度,只对非randSuite有效
	if 0 ~= ScriptLib.GoToGroupSuite(context, 133303259, 3) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : goto_groupSuite")
		return -1
	end
	
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 3003, 3, 1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	return 0
end

-- 触发操作
function action_EVENT_CHALLENGE_FAIL_259007(context, evt)
	-- 将configid为 259002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 259002, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 删除suite2的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133303259, 2)
	
	-- 创建id为259005的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 259005 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 3003, 4, 1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	-- 将本组内变量名为 "gadget_start" 的变量设置为 0
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "gadget_start", 0) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_259008(context, evt)
	if 259002 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_259008(context, evt)
	-- 201号挑战,duration内破坏炸药桶
	if 0 ~= ScriptLib.ActiveChallenge(context, 56, 201, defs.duration, 2, 201, defs.gadget_sum) then
	return -1
	end
	
	-- 添加suite2的新内容
	ScriptLib.AddExtraGroupSuite(context, defs.group_id, 2)
	
	-- 运营数据埋点，匹配LD定义的规则使用
	if 0 ~= ScriptLib.MarkPlayerAction(context, 3003, 1, 1) then
	return -1
	end
	
	return 0
	
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_259010(context, evt)
	if 259005 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_259010(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 133303259, 259005, {177}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_259011(context, evt)
	-- 判断是gadgetid 259005 option_id 177
	if 259005 ~= evt.param1 then
		return false	
	end
	
	if 177 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_259011(context, evt)
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 259005 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	-- 将configid为 259002 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 259002, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发操作
function action_EVENT_GROUP_LOAD_259012(context, evt)
	-- 将configid为 259002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 259002, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 删除suite2的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133303259, 2)
	
	-- 创建id为259005的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 259005 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 3003, 4, 1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	-- 将本组内变量名为 "gadget_start" 的变量设置为 0
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "gadget_start", 0) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end