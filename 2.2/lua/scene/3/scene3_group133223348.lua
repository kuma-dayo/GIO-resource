-- Trigger变量
local defs = {
	gadget_temple = 348001,
	gadget_chest = 348002,
	group_ID = 133223348
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
	{ config_id = 348001, gadget_id = 70900383, pos = { x = -6149.009, y = 221.130, z = -2937.871 }, rot = { x = 0.000, y = 235.095, z = 0.000 }, level = 32, isOneoff = true, persistent = true, interact_id = 42, explore = { name = "temple", exp = 14 }, area_id = 18 },
	{ config_id = 348002, gadget_id = 70211131, pos = { x = -6148.911, y = 221.895, z = -2937.676 }, rot = { x = 0.000, y = 288.472, z = 0.000 }, level = 26, drop_tag = "灵龛稻妻", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 18 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1348003, name = "GADGET_STATE_CHANGE_348003", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_348003", action = "action_EVENT_GADGET_STATE_CHANGE_348003" },
	{ config_id = 1348004, name = "GADGET_CREATE_348004", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_348004", action = "", trigger_count = 0 },
	{ config_id = 1348005, name = "ANY_GADGET_DIE_348005", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_348005", action = "", trigger_count = 0 },
	{ config_id = 1348006, name = "GADGET_STATE_CHANGE_348006", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_348006", action = "", trigger_count = 0 },
	{ config_id = 1348007, name = "GROUP_LOAD_348007", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "", action = "action_EVENT_GROUP_LOAD_348007", trigger_count = 0 }
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
		gadgets = { 348001, 348002 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_348003", "GADGET_CREATE_348004", "ANY_GADGET_DIE_348005", "GADGET_STATE_CHANGE_348006", "GROUP_LOAD_348007" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_348003(context, evt)
	if 348001 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_348003(context, evt)
	-- 将configid为 348002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 348002, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 348001 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_348004(context, evt)
	-- 打印创建日志
	    ScriptLib.PrintContextLog(context, "## TEMPLE_LOG : Gadget_Create | "..evt.param1)
	
	return true
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_348005(context, evt)
	-- 打印死亡日志
	    ScriptLib.PrintContextLog(context, "## TEMPLE_LOG : Gadget_Die | "..evt.param1)
	
	return true
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_348006(context, evt)
	-- 打印创建日志
	    ScriptLib.PrintContextLog(context, "## TEMPLE_LOG : Gadget_State_Change | "..evt.param2.." : "..evt.param3.." -> "..evt.param1)
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_348007(context, evt)
	if ScriptLib.GetGadgetStateByConfigId(context, defs.group_ID, defs.gadget_temple) == -1 or ScriptLib.GetGadgetStateByConfigId(context, defs.group_ID, defs.gadget_temple) == GadgetState.GearStart then
	        ScriptLib.SetGroupGadgetStateByConfigId(context, defs.group_ID, defs.gadget_chest, GadgetState.Default) 
	        ScriptLib.KillEntityByConfigId(context, { config_id = defs.gadget_temple})
	end
	
	return 0
end