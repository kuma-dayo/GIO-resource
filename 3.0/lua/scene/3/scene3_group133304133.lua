-- 基础信息
local base_info = {
	group_id = 133304133
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 133001, monster_id = 24020301, pos = { x = -1197.016, y = 276.165, z = 2849.888 }, rot = { x = 0.000, y = 229.129, z = 0.000 }, level = 1, drop_id = 1000100, pose_id = 100, area_id = 21 },
	{ config_id = 133008, monster_id = 24020101, pos = { x = -1203.553, y = 275.506, z = 2854.792 }, rot = { x = 0.000, y = 186.968, z = 0.000 }, level = 1, drop_id = 1000100, pose_id = 100, area_id = 21 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 133002, gadget_id = 70360001, pos = { x = -1203.428, y = 269.760, z = 2854.860 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, persistent = true, area_id = 21 },
	{ config_id = 133004, gadget_id = 70310467, pos = { x = -1203.428, y = 269.760, z = 2854.860 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 21 },
	{ config_id = 133005, gadget_id = 70310229, pos = { x = -1206.900, y = 279.232, z = 2846.654 }, rot = { x = 18.893, y = 79.970, z = 14.250 }, level = 1, state = GadgetState.GearStart, persistent = true, area_id = 21 },
	{ config_id = 133007, gadget_id = 70211001, pos = { x = -1198.034, y = 274.559, z = 2858.094 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 26, drop_tag = "战斗低级须弥", isOneoff = true, persistent = true, explore = { name = "chest", exp = 10 }, area_id = 21 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1133003, name = "ANY_MONSTER_DIE_133003", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_133003", action = "action_EVENT_ANY_MONSTER_DIE_133003", trigger_count = 0 },
	{ config_id = 1133006, name = "ANY_GADGET_DIE_133006", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_133006", action = "action_EVENT_ANY_GADGET_DIE_133006", trigger_count = 0 },
	-- 通知勾爪group
	{ config_id = 1133009, name = "ANY_GADGET_DIE_133009", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_133009", action = "action_EVENT_ANY_GADGET_DIE_133009", trigger_count = 0 },
	{ config_id = 1133010, name = "GROUP_LOAD_133010", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_133010", action = "action_EVENT_GROUP_LOAD_133010", trigger_count = 0 }
}

-- 变量
variables = {
	{ config_id = 4, name = "finish", value = 0, no_refresh = true }
}

--================================================================
-- 
-- 初始化配置
-- 
--================================================================

-- 初始化时创建
init_config = {
	suite = 2,
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
		monsters = { 133001, 133008 },
		gadgets = { 133002, 133004, 133005 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_133003", "ANY_GADGET_DIE_133006", "ANY_GADGET_DIE_133009", "GROUP_LOAD_133010" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
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
function condition_EVENT_ANY_MONSTER_DIE_133003(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_133003(context, evt)
	-- 将configid为 133005 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 133005, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_133006(context, evt)
	if 133005 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_133006(context, evt)
	-- 创建id为133007的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 133007 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	-- 将configid为 133002 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 133002, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 133004 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	-- 将本组内变量名为 "finish" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "finish", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_133009(context, evt)
	if 133005 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_133009(context, evt)
	-- 将本组内变量名为 "second" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValueByGroup(context, "second", 1, 133304054) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable_by_group")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GROUP_LOAD_133010(context, evt)
	-- 判断变量"finish"为1
	if ScriptLib.GetGroupVariableValue(context, "finish") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_133010(context, evt)
	-- 将configid为 133002 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 133002, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 133004 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	-- 创建id为133007的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 133007 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end