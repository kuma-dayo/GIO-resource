-- 基础信息
local base_info = {
	group_id = 199001170
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
	{ config_id = 170001, gadget_id = 70620001, pos = { x = 292.355, y = 119.685, z = 243.242 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, isOneoff = true, persistent = true, area_id = 402 },
	{ config_id = 170002, gadget_id = 70211101, pos = { x = 292.360, y = 120.365, z = 243.103 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 16, drop_tag = "解谜低级群岛", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 402 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1170003, name = "GADGET_STATE_CHANGE_170003", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_170003", action = "action_EVENT_GADGET_STATE_CHANGE_170003" },
	{ config_id = 1170004, name = "GADGET_STATE_CHANGE_170004", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_170004", action = "action_EVENT_GADGET_STATE_CHANGE_170004" },
	{ config_id = 1170005, name = "GADGET_CREATE_170005", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_170005", action = "action_EVENT_GADGET_CREATE_170005", trigger_count = 0 },
	{ config_id = 1170006, name = "GADGET_CREATE_170006", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_170006", action = "action_EVENT_GADGET_CREATE_170006", trigger_count = 0 }
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
		gadgets = { 170001, 170002 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_170003", "GADGET_CREATE_170005", "GADGET_CREATE_170006" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 170001 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_170004" },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
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
function condition_EVENT_GADGET_STATE_CHANGE_170003(context, evt)
	if 170002 ~= evt.param2 or GadgetState.ChestOpened ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_170003(context, evt)
	    -- 杀死指定group内的gadget和monster,移除其它东西
	    ScriptLib.KillExtraGroupSuite(context, 199001170, 2)
	
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 1000, 3, 1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	-- group调整group进度,只对非randSuite有效
	if 0 ~= ScriptLib.GoToGroupSuite(context, 199001170, 3) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : goto_groupSuite")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_170004(context, evt)
	if 170001 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_170004(context, evt)
	-- 将configid为 170002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 170002, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_170005(context, evt)
	if 170001 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_170005(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 199001170, 2)
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_170006(context, evt)
	if 170001 ~= evt.param1 or GadgetState.GearStart ~= ScriptLib.GetGadgetStateByConfigId(context, 0, evt.param1) then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_170006(context, evt)
	-- 将configid为 170002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 170002, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end