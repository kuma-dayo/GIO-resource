--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 402001, monster_id = 26010101, pos = { x = 1757.563, y = 254.209, z = -1195.636 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 10 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 402002, gadget_id = 70510014, pos = { x = 1757.488, y = 254.244, z = -1195.720 }, rot = { x = 0.000, y = 319.800, z = 0.000 }, level = 10, isOneoff = true, persistent = true }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ name = "GADGET_STATE_CHANGE_402003", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_402003", action = "action_EVENT_GADGET_STATE_CHANGE_402003", trigger_count = 0 },
	{ name = "ANY_MONSTER_DIE_402004", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_402004", action = "action_EVENT_ANY_MONSTER_DIE_402004" },
	{ name = "GADGET_CREATE_402005", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_402005", action = "action_EVENT_GADGET_CREATE_402005", trigger_count = 0 },
	{ name = "SELECT_OPTION_402006", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_402006", action = "action_EVENT_SELECT_OPTION_402006", trigger_count = 0 }
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
		-- description = suite_1,
		monsters = { },
		gadgets = { 402002 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_402003", "ANY_MONSTER_DIE_402004", "GADGET_CREATE_402005", "SELECT_OPTION_402006" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 402001 },
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
function condition_EVENT_GADGET_STATE_CHANGE_402003(context, evt)
	if 402002 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_402003(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133001402, 2)
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_402004(context, evt)
	if 402001 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_402004(context, evt)
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 2002, 3, 1) then
	      return -1
	    end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_402005(context, evt)
	if 402002 ~= evt.param1 or GadgetState.Default ~= ScriptLib.GetGadgetStateByConfigId(context, 0, evt.param1) then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_402005(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 133001402, 402002, {174}) then
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_402006(context, evt)
	-- 判断是gadgetid 402002 option_id 174
	if 402002 ~= evt.param1 then
		return false	
	end
	
	if 174 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_402006(context, evt)
	-- 将configid为 402002 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 402002, GadgetState.GearStart) then
			return -1
		end 
	
	-- 删除指定group： 133001402 ；指定config：402002；物件身上指定option：174；
	if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, 133001402, 402002, 174) then
		return -1
	end
	
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 2002, 1, 1) then
	      return -1
	    end
	
	return 0
end
