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
	{ config_id = 40001, gadget_id = 70360001, pos = { x = 1250.571, y = 266.892, z = 1274.936 }, rot = { x = 0.004, y = 175.400, z = 0.000 }, level = 24, isOneoff = true, persistent = true, area_id = 6 },
	{ config_id = 40002, gadget_id = 70211111, pos = { x = 1250.785, y = 266.389, z = 1275.457 }, rot = { x = 2.434, y = 18.188, z = 343.081 }, level = 21, drop_tag = "解谜中级璃月", isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 6 },
	{ config_id = 40005, gadget_id = 70211111, pos = { x = 1250.616, y = 265.746, z = 1275.457 }, rot = { x = 2.434, y = 18.188, z = 343.081 }, level = 21, drop_tag = "解谜中级璃月", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 6 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1040003, name = "GADGET_CREATE_40003", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_40003", action = "action_EVENT_GADGET_CREATE_40003", trigger_count = 0 },
	{ config_id = 1040004, name = "SELECT_OPTION_40004", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_40004", action = "action_EVENT_SELECT_OPTION_40004" },
	{ config_id = 1040006, name = "GADGET_STATE_CHANGE_40006", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_40006", action = "action_EVENT_GADGET_STATE_CHANGE_40006", trigger_count = 0 }
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
	end_suite = 2,
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
		gadgets = { 40001, 40005 },
		regions = { },
		triggers = { "GADGET_CREATE_40003", "SELECT_OPTION_40004" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = suite_2,
		monsters = { },
		gadgets = { 40002 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_40006" },
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
function condition_EVENT_GADGET_CREATE_40003(context, evt)
	-- 判断是gadgetid 40001
	if 40001 ~= evt.param1 then
			return false
		end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_40003(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptions(context, {169}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_work_options")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_40004(context, evt)
	if 40001 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_40004(context, evt)
	-- 删除指定group： 133101040 ；指定config：40001；物件身上指定option：169；
	if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, 133101040, 40001, 169) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : del_work_options_by_group_configId")
		return -1
	end
	
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 2011, 3, 1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 133101040, suite = 2 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_40006(context, evt)
	if 40002 ~= evt.param2 or GadgetState.ChestOpened ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_40006(context, evt)
	-- 销毁group存档，不影响当前场景，但卸载后group就永别了
	if 0 ~= ScriptLib.SetGroupDead(context, 0) then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_group_die")
		return -1
	end
	
	return 0
end