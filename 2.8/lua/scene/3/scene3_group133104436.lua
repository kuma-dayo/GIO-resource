-- 基础信息
local base_info = {
	group_id = 133104436
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
	{ config_id = 436001, gadget_id = 70211101, pos = { x = 198.607, y = 204.329, z = 843.547 }, rot = { x = 8.456, y = 238.643, z = 10.309 }, level = 16, drop_tag = "解谜低级璃月", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 9 },
	{ config_id = 436002, gadget_id = 70220021, pos = { x = 198.250, y = 202.758, z = 842.509 }, rot = { x = 10.451, y = 7.023, z = 329.918 }, level = 19, isOneoff = true, persistent = true, oneoff_reset_version = 2, area_id = 9 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1436003, name = "ANY_GADGET_DIE_436003", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_436003", action = "action_EVENT_ANY_GADGET_DIE_436003" },
	{ config_id = 1436004, name = "GADGET_STATE_CHANGE_436004", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_436004", action = "action_EVENT_GADGET_STATE_CHANGE_436004", trigger_count = 0 }
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
		gadgets = { 436001, 436002 },
		regions = { },
		triggers = { "ANY_GADGET_DIE_436003", "GADGET_STATE_CHANGE_436004" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_436003(context, evt)
	if 436002 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_436003(context, evt)
	-- 将configid为 436001 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 436001, GadgetState.Default) then
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
function condition_EVENT_GADGET_STATE_CHANGE_436004(context, evt)
	if 436001 ~= evt.param2 or GadgetState.ChestOpened ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_436004(context, evt)
	-- 销毁group存档，不影响当前场景，但卸载后group就永别了
	if 0 ~= ScriptLib.SetGroupDead(context, 0) then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_group_die")
		return -1
	end
	
	return 0
end