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
	{ config_id = 258001, gadget_id = 70211101, pos = { x = -4004.181, y = 235.398, z = -2455.955 }, rot = { x = 0.000, y = 214.037, z = 0.000 }, level = 26, drop_tag = "解谜低级稻妻", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 13 },
	{ config_id = 258002, gadget_id = 70900387, pos = { x = -4004.066, y = 234.393, z = -2454.946 }, rot = { x = 24.383, y = 20.360, z = 355.414 }, level = 27, isOneoff = true, persistent = true, area_id = 13 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1258003, name = "ANY_GADGET_DIE_258003", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_258003", action = "action_EVENT_ANY_GADGET_DIE_258003" },
	{ config_id = 1258004, name = "GADGET_STATE_CHANGE_258004", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_258004", action = "action_EVENT_GADGET_STATE_CHANGE_258004", trigger_count = 0 }
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
		gadgets = { 258002 },
		regions = { },
		triggers = { "ANY_GADGET_DIE_258003", "GADGET_STATE_CHANGE_258004" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 258001 },
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
function condition_EVENT_ANY_GADGET_DIE_258003(context, evt)
	if 258002 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_258003(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133212258, 2)
	
	-- 将configid为 258001 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 258001, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 2012, 3, 1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_258004(context, evt)
	if 258001 ~= evt.param2 or GadgetState.ChestOpened ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_258004(context, evt)
	-- 销毁group存档，不影响当前场景，但卸载后group就永别了
	if 0 ~= ScriptLib.SetGroupDead(context, 0) then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_group_die")
		return -1
	end
	
	return 0
end