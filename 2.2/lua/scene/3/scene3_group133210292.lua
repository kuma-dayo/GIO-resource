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
	{ config_id = 292001, gadget_id = 70360184, pos = { x = -3810.804, y = 125.464, z = -923.498 }, rot = { x = 0.000, y = 302.788, z = 0.000 }, level = 30, state = GadgetState.GearStop, persistent = true, area_id = 17 },
	{ config_id = 292005, gadget_id = 70950134, pos = { x = -3810.804, y = 126.867, z = -923.498 }, rot = { x = 0.000, y = 198.424, z = 0.000 }, level = 30, area_id = 17 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1292002, name = "VARIABLE_CHANGE_292002", event = EventType.EVENT_VARIABLE_CHANGE, source = "GadgetState", condition = "condition_EVENT_VARIABLE_CHANGE_292002", action = "action_EVENT_VARIABLE_CHANGE_292002", trigger_count = 0 },
	{ config_id = 1292003, name = "VARIABLE_CHANGE_292003", event = EventType.EVENT_VARIABLE_CHANGE, source = "GadgetState", condition = "condition_EVENT_VARIABLE_CHANGE_292003", action = "action_EVENT_VARIABLE_CHANGE_292003", trigger_count = 0 }
}

-- 变量
variables = {
	{ name = "GadgetActive", value = 0, no_refresh = true },
	{ name = "GadgetState", value = 0, no_refresh = true }
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
		gadgets = { 292001, 292005 },
		regions = { },
		triggers = { "VARIABLE_CHANGE_292002", "VARIABLE_CHANGE_292003" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_292002(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"GadgetState"为0
	if ScriptLib.GetGroupVariableValue(context, "GadgetState") ~= 0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_292002(context, evt)
	-- 将configid为 292001 的物件更改为状态 GadgetState.GearStop
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 292001, GadgetState.GearStop) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_292003(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"GadgetState"为1
	if ScriptLib.GetGroupVariableValue(context, "GadgetState") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_292003(context, evt)
	-- 将configid为 292001 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 292001, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end