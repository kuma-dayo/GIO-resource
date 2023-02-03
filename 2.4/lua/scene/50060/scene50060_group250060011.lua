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
	{ config_id = 11001, gadget_id = 70360280, pos = { x = -46.648, y = 27.556, z = 302.627 }, rot = { x = 0.000, y = 180.000, z = 0.000 }, level = 1 },
	{ config_id = 11002, gadget_id = 70360280, pos = { x = -48.222, y = 27.557, z = 302.627 }, rot = { x = 0.000, y = 180.000, z = 0.000 }, level = 1 },
	{ config_id = 11003, gadget_id = 70360280, pos = { x = -49.741, y = 27.610, z = 302.627 }, rot = { x = 0.000, y = 180.000, z = 0.000 }, level = 1 },
	{ config_id = 11004, gadget_id = 70360280, pos = { x = -27.805, y = 27.278, z = 302.646 }, rot = { x = 0.000, y = 180.000, z = 0.000 }, level = 1 },
	{ config_id = 11005, gadget_id = 70360280, pos = { x = -25.813, y = 27.267, z = 302.650 }, rot = { x = 0.000, y = 180.000, z = 0.000 }, level = 1 },
	{ config_id = 11006, gadget_id = 70360280, pos = { x = -24.001, y = 27.353, z = 302.659 }, rot = { x = 0.000, y = 180.000, z = 0.000 }, level = 1 },
	{ config_id = 11007, gadget_id = 70360280, pos = { x = -20.802, y = 26.941, z = 284.921 }, rot = { x = 0.000, y = 270.000, z = 0.000 }, level = 1 }
}

-- 区域
regions = {
	{ config_id = 11008, shape = RegionShape.SPHERE, radius = 8, pos = { x = -110.599, y = 30.720, z = 403.332 } }
}

-- 触发器
triggers = {
	{ config_id = 1011008, name = "ENTER_REGION_11008", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_11008", action = "action_EVENT_ENTER_REGION_11008" },
	{ config_id = 1011009, name = "TIMER_EVENT_11009", event = EventType.EVENT_TIMER_EVENT, source = "AA1", condition = "", action = "action_EVENT_TIMER_EVENT_11009", trigger_count = 0 },
	{ config_id = 1011010, name = "TIMER_EVENT_11010", event = EventType.EVENT_TIMER_EVENT, source = "AA2", condition = "", action = "action_EVENT_TIMER_EVENT_11010", trigger_count = 0 }
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
		gadgets = { 11001, 11002, 11003, 11004, 11005, 11006, 11007 },
		regions = { 11008 },
		triggers = { "ENTER_REGION_11008", "TIMER_EVENT_11009", "TIMER_EVENT_11010" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ENTER_REGION_11008(context, evt)
	if evt.param1 ~= 11008 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_11008(context, evt)
	-- 延迟1秒后,向groupId为：250060011的对象,请求一次调用,并将string参数："AA1" 传递过去
	if 0 ~= ScriptLib.CreateGroupTimerEvent(context, 250060011, "AA1", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_timerevent_by_group")
	  return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_TIMER_EVENT_11009(context, evt)
	-- 延迟4秒后,向groupId为：250060011的对象,请求一次调用,并将string参数："AA2" 传递过去
	if 0 ~= ScriptLib.CreateGroupTimerEvent(context, 250060011, "AA2", 4) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_timerevent_by_group")
	  return -1
	end
	
	-- 改变指定group组250060011中， configid为11001的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 250060011, 11001, GadgetState.GearStart) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	-- 改变指定group组250060011中， configid为11003的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 250060011, 11003, GadgetState.GearStart) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	-- 改变指定group组250060011中， configid为11005的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 250060011, 11005, GadgetState.GearStart) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	-- 改变指定group组250060011中， configid为11007的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 250060011, 11007, GadgetState.GearStart) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	-- 改变指定group组250060011中， configid为11002的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 250060011, 11002, GadgetState.Default) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	-- 改变指定group组250060011中， configid为11004的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 250060011, 11004, GadgetState.Default) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	-- 改变指定group组250060011中， configid为11006的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 250060011, 11006, GadgetState.Default) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	return 0
end

-- 触发操作
function action_EVENT_TIMER_EVENT_11010(context, evt)
	-- 延迟4秒后,向groupId为：250060011的对象,请求一次调用,并将string参数："AA1" 传递过去
	if 0 ~= ScriptLib.CreateGroupTimerEvent(context, 250060011, "AA1", 4) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_timerevent_by_group")
	  return -1
	end
	
	-- 改变指定group组250060011中， configid为11001的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 250060011, 11001, GadgetState.Default) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	-- 改变指定group组250060011中， configid为11003的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 250060011, 11003, GadgetState.Default) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	-- 改变指定group组250060011中， configid为11005的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 250060011, 11005, GadgetState.Default) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	-- 改变指定group组250060011中， configid为11007的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 250060011, 11007, GadgetState.Default) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	-- 改变指定group组250060011中， configid为11002的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 250060011, 11002, GadgetState.GearStart) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	-- 改变指定group组250060011中， configid为11004的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 250060011, 11004, GadgetState.GearStart) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	-- 改变指定group组250060011中， configid为11006的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 250060011, 11006, GadgetState.GearStart) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	return 0
end