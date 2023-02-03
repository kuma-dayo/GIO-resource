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
	{ config_id = 6001, gadget_id = 70360280, pos = { x = -1.580, y = 21.925, z = 147.579 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 6002, gadget_id = 70360280, pos = { x = -3.154, y = 21.934, z = 147.579 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 6003, gadget_id = 70360280, pos = { x = -4.673, y = 21.944, z = 147.579 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 6004, gadget_id = 70360280, pos = { x = 12.611, y = 22.244, z = 117.684 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 6005, gadget_id = 70360280, pos = { x = 11.091, y = 22.254, z = 117.627 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 6006, gadget_id = 70360280, pos = { x = -60.802, y = 27.159, z = 94.331 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 1 },
	{ config_id = 6007, gadget_id = 70360280, pos = { x = -20.802, y = 27.502, z = 100.165 }, rot = { x = 0.000, y = 270.000, z = 0.000 }, level = 1 },
	{ config_id = 6008, gadget_id = 70610102, pos = { x = -85.522, y = -0.800, z = 76.726 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 }
}

-- 区域
regions = {
	{ config_id = 6009, shape = RegionShape.SPHERE, radius = 8, pos = { x = -59.852, y = 30.720, z = 153.652 } }
}

-- 触发器
triggers = {
	{ config_id = 1006009, name = "ENTER_REGION_6009", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_6009", action = "action_EVENT_ENTER_REGION_6009" },
	{ config_id = 1006010, name = "TIMER_EVENT_6010", event = EventType.EVENT_TIMER_EVENT, source = "AA1", condition = "", action = "action_EVENT_TIMER_EVENT_6010", trigger_count = 0 },
	{ config_id = 1006011, name = "TIMER_EVENT_6011", event = EventType.EVENT_TIMER_EVENT, source = "AA2", condition = "", action = "action_EVENT_TIMER_EVENT_6011", trigger_count = 0 }
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
		gadgets = { 6001, 6002, 6003, 6004, 6005, 6006, 6007, 6008 },
		regions = { 6009 },
		triggers = { "ENTER_REGION_6009", "TIMER_EVENT_6010", "TIMER_EVENT_6011" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ENTER_REGION_6009(context, evt)
	if evt.param1 ~= 6009 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_6009(context, evt)
	-- 延迟1秒后,向groupId为：250060006的对象,请求一次调用,并将string参数："AA1" 传递过去
	if 0 ~= ScriptLib.CreateGroupTimerEvent(context, 250060006, "AA1", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_timerevent_by_group")
	  return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_TIMER_EVENT_6010(context, evt)
	-- 延迟4秒后,向groupId为：250060006的对象,请求一次调用,并将string参数："AA2" 传递过去
	if 0 ~= ScriptLib.CreateGroupTimerEvent(context, 250060006, "AA2", 4) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_timerevent_by_group")
	  return -1
	end
	
	-- 改变指定group组250060006中， configid为6001的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 250060006, 6001, GadgetState.GearStart) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	-- 改变指定group组250060006中， configid为6003的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 250060006, 6003, GadgetState.GearStart) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	-- 改变指定group组250060006中， configid为6005的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 250060006, 6005, GadgetState.GearStart) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	-- 改变指定group组250060006中， configid为6007的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 250060006, 6007, GadgetState.GearStart) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	-- 改变指定group组250060006中， configid为6002的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 250060006, 6002, GadgetState.Default) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	-- 改变指定group组250060006中， configid为6004的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 250060006, 6004, GadgetState.Default) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	-- 改变指定group组250060006中， configid为6006的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 250060006, 6006, GadgetState.Default) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	return 0
end

-- 触发操作
function action_EVENT_TIMER_EVENT_6011(context, evt)
	-- 延迟4秒后,向groupId为：250060006的对象,请求一次调用,并将string参数："AA1" 传递过去
	if 0 ~= ScriptLib.CreateGroupTimerEvent(context, 250060006, "AA1", 4) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_timerevent_by_group")
	  return -1
	end
	
	-- 改变指定group组250060006中， configid为6001的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 250060006, 6001, GadgetState.Default) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	-- 改变指定group组250060006中， configid为6003的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 250060006, 6003, GadgetState.Default) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	-- 改变指定group组250060006中， configid为6005的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 250060006, 6005, GadgetState.Default) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	-- 改变指定group组250060006中， configid为6007的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 250060006, 6007, GadgetState.Default) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	-- 改变指定group组250060006中， configid为6002的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 250060006, 6002, GadgetState.GearStart) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	-- 改变指定group组250060006中， configid为6004的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 250060006, 6004, GadgetState.GearStart) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	-- 改变指定group组250060006中， configid为6006的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 250060006, 6006, GadgetState.GearStart) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	return 0
end