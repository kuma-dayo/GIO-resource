-- 基础信息
local base_info = {
	group_id = 133106613
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
	{ config_id = 613001, gadget_id = 70211101, pos = { x = -817.501, y = 152.607, z = 1642.009 }, rot = { x = 352.416, y = 207.664, z = 1.844 }, level = 26, drop_tag = "解谜低级璃月", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 19 },
	{ config_id = 613002, gadget_id = 70220021, pos = { x = -821.049, y = 153.171, z = 1637.175 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, isOneoff = true, persistent = true, area_id = 19 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1613003, name = "ANY_GADGET_DIE_613003", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_613003", action = "action_EVENT_ANY_GADGET_DIE_613003" },
	{ config_id = 1613004, name = "GADGET_STATE_CHANGE_613004", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_613004", action = "action_EVENT_GADGET_STATE_CHANGE_613004", trigger_count = 0 }
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
		gadgets = { 613001, 613002 },
		regions = { },
		triggers = { "ANY_GADGET_DIE_613003", "GADGET_STATE_CHANGE_613004" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_613003(context, evt)
	if 613002 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_613003(context, evt)
	-- 将configid为 613001 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 613001, GadgetState.Default) then
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
function condition_EVENT_GADGET_STATE_CHANGE_613004(context, evt)
	if 613001 ~= evt.param2 or GadgetState.ChestOpened ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_613004(context, evt)
	-- 销毁group存档，不影响当前场景，但卸载后group就永别了
	if 0 ~= ScriptLib.SetGroupDead(context, 0) then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_group_die")
		return -1
	end
	
	return 0
end