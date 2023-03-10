-- Trigger变量
local defs = {
	duration = 60,
	kill_sum = 2,
	group_id = 133212222,
	gadget_controller_id = 222004
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 222001, monster_id = 25100401, pos = { x = -3556.740, y = 213.278, z = -1997.751 }, rot = { x = 0.000, y = 190.827, z = 0.000 }, level = 27, drop_id = 1000100, affix = { 1101 }, pose_id = 1, area_id = 13 },
	{ config_id = 222009, monster_id = 25100301, pos = { x = -3564.072, y = 213.336, z = -1997.449 }, rot = { x = 0.000, y = 136.180, z = 0.000 }, level = 27, drop_id = 1000100, affix = { 1101 }, pose_id = 1, area_id = 13 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 222002, gadget_id = 70350082, pos = { x = -3562.205, y = 213.214, z = -2002.750 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, persistent = true, area_id = 13 },
	{ config_id = 222003, gadget_id = 70211011, pos = { x = -3560.032, y = 213.186, z = -2002.871 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 26, drop_tag = "战斗中级稻妻", isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 13 },
	{ config_id = 222004, gadget_id = 70360001, pos = { x = -3562.206, y = 213.213, z = -2002.790 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, area_id = 13 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1222005, name = "CHALLENGE_SUCCESS_222005", event = EventType.EVENT_CHALLENGE_SUCCESS, source = "180", condition = "", action = "action_EVENT_CHALLENGE_SUCCESS_222005", trigger_count = 0 },
	{ config_id = 1222006, name = "CHALLENGE_FAIL_222006", event = EventType.EVENT_CHALLENGE_FAIL, source = "180", condition = "", action = "action_EVENT_CHALLENGE_FAIL_222006", trigger_count = 0 },
	{ config_id = 1222007, name = "GADGET_CREATE_222007", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_222007", action = "action_EVENT_GADGET_CREATE_222007", trigger_count = 0 },
	{ config_id = 1222008, name = "SELECT_OPTION_222008", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_222008", action = "action_EVENT_SELECT_OPTION_222008", trigger_count = 0 },
	{ config_id = 1222010, name = "GROUP_LOAD_222010", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_222010", action = "action_EVENT_GROUP_LOAD_222010", trigger_count = 0 }
}

-- 变量
variables = {
	{ name = "finish", value = 0, no_refresh = true }
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
		-- description = suite_1,
		monsters = { },
		gadgets = { 222002, 222004 },
		regions = { },
		triggers = { "CHALLENGE_SUCCESS_222005", "CHALLENGE_FAIL_222006", "GADGET_CREATE_222007", "SELECT_OPTION_222008", "GROUP_LOAD_222010" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = suite_2,
		monsters = { 222001, 222009 },
		gadgets = { },
		regions = { },
		triggers = { "GROUP_LOAD_222010" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发操作
function action_EVENT_CHALLENGE_SUCCESS_222005(context, evt)
	-- 将configid为 222002 的物件更改为状态 GadgetState.GearStop
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 222002, GadgetState.GearStop) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 创建id为222003的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 222003 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 3001, 3, 1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	-- 将本组内变量名为 "finish" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "finish", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_CHALLENGE_FAIL_222006(context, evt)
	-- 将configid为 222002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 222002, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 创建id为222004的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 222004 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	-- 删除suite2的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133212222, 2)
	
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 3001, 4, 1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_222007(context, evt)
	if 222004 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_222007(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 133212222, 222004, {177}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_222008(context, evt)
	-- 判断是gadgetid 222004 option_id 177
	if 222004 ~= evt.param1 then
		return false	
	end
	
	if 177 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_222008(context, evt)
	-- 180号挑战,duration内击杀kill_sum的怪物
	if 0 ~= ScriptLib.ActiveChallenge(context, 180, 180, defs.duration, defs.group_id, defs.kill_sum, 0) then
	return -1
	end
	
	-- 添加suite2的新内容
	ScriptLib.AddExtraGroupSuite(context, defs.group_id, 2)
	
		--永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
	if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = defs.gadget_controller_id }) then
	return -1
	end
		
	
	-- 将configid为 2002 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 222002, GadgetState.GearStart) then
	return -1
	end 
	
	
	
	-- 运营数据埋点，匹配LD定义的规则使用
	if 0 ~= ScriptLib.MarkPlayerAction(context, 3001, 1, 1) then
	return -1
	end
	
	return 0
	
end

-- 触发条件
function condition_EVENT_GROUP_LOAD_222010(context, evt)
	-- 判断变量"finish"为0
	if ScriptLib.GetGroupVariableValueByGroup(context, "finish", 133212222) ~= 0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_222010(context, evt)
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 133212222, suite = 1 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	return 0
end