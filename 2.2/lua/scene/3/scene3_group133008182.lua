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
	{ config_id = 182001, gadget_id = 70310017, pos = { x = 875.352, y = 311.524, z = -469.948 }, rot = { x = 0.000, y = 172.276, z = 0.000 }, level = 30, persistent = true, area_id = 10 },
	{ config_id = 182002, gadget_id = 70360001, pos = { x = 875.647, y = 312.169, z = -469.943 }, rot = { x = 0.000, y = 80.190, z = 0.000 }, level = 30, area_id = 10 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1182003, name = "GADGET_CREATE_182003", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_182003", action = "action_EVENT_GADGET_CREATE_182003", trigger_count = 0 },
	{ config_id = 1182004, name = "SELECT_OPTION_182004", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_182004", action = "action_EVENT_SELECT_OPTION_182004" }
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
		gadgets = { 182001, 182002 },
		regions = { },
		triggers = { "GADGET_CREATE_182003", "SELECT_OPTION_182004" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_GADGET_CREATE_182003(context, evt)
	if 182002 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_182003(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 133008182, 182002, {7}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_182004(context, evt)
	-- 判断是gadgetid 182002 option_id 7
	if 182002 ~= evt.param1 then
		return false	
	end
	
	if 7 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_182004(context, evt)
	-- 将configid为 182001 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 182001, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 182002 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	return 0
end