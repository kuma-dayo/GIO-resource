--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 3001, monster_id = 21020401, pos = { x = 87.144, y = -0.129, z = 79.511 }, rot = { x = 0.000, y = 270.000, z = 0.000 }, level = 10, disableWander = true, affix = { 1008, 1011 } },
	{ config_id = 3002, monster_id = 21030101, pos = { x = 73.756, y = -0.027, z = 86.155 }, rot = { x = 0.000, y = 120.000, z = 0.000 }, level = 5, disableWander = true, affix = { 1008, 1011 } },
	{ config_id = 3003, monster_id = 21030601, pos = { x = 73.268, y = -0.027, z = 74.311 }, rot = { x = 0.000, y = 60.000, z = 0.000 }, level = 5, disableWander = true, affix = { 1008, 1011 } },
	{ config_id = 3004, monster_id = 21030601, pos = { x = 86.431, y = -0.027, z = 85.582 }, rot = { x = 0.000, y = 245.000, z = 0.000 }, level = 10, disableWander = true, affix = { 1008, 1011 } },
	{ config_id = 3005, monster_id = 21020401, pos = { x = 71.639, y = -0.118, z = 79.894 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 5, disableWander = true, affix = { 1008, 1011 } },
	{ config_id = 3006, monster_id = 21030101, pos = { x = 86.458, y = -0.027, z = 74.499 }, rot = { x = 0.000, y = 285.000, z = 0.000 }, level = 10, disableWander = true, affix = { 1008, 1011 } }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 3007, gadget_id = 70360001, pos = { x = 79.865, y = 0.050, z = 80.032 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 3008, gadget_id = 70290137, pos = { x = 79.795, y = 0.031, z = 60.113 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, state = GadgetState.GearStart },
	{ config_id = 3009, gadget_id = 70290137, pos = { x = 79.807, y = 0.146, z = 99.984 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, state = GadgetState.GearStart },
	{ config_id = 3010, gadget_id = 70290137, pos = { x = 59.942, y = 0.225, z = 79.853 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 1, state = GadgetState.GearStart },
	{ config_id = 3011, gadget_id = 70290137, pos = { x = 99.893, y = 0.146, z = 79.861 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 1, state = GadgetState.GearStart }
}

-- 区域
regions = {
	{ config_id = 3014, shape = RegionShape.CUBIC, size = { x = 20.000, y = 10.000, z = 20.000 }, pos = { x = 80.366, y = 0.069, z = 80.087 } }
}

-- 触发器
triggers = {
	{ config_id = 1003012, name = "GADGET_CREATE_3012", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_3012", action = "action_EVENT_GADGET_CREATE_3012" },
	{ config_id = 1003013, name = "SELECT_OPTION_3013", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_3013", action = "action_EVENT_SELECT_OPTION_3013" },
	{ config_id = 1003014, name = "ENTER_REGION_3014", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_3014", action = "action_EVENT_ENTER_REGION_3014" },
	{ config_id = 1003015, name = "ANY_MONSTER_DIE_3015", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_3015", action = "action_EVENT_ANY_MONSTER_DIE_3015" },
	{ config_id = 1003016, name = "ANY_MONSTER_DIE_3016", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_3016", action = "action_EVENT_ANY_MONSTER_DIE_3016" },
	{ config_id = 1003017, name = "SELECT_OPTION_3017", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_3017", action = "action_EVENT_SELECT_OPTION_3017" }
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
		gadgets = { 3007, 3008, 3009, 3010, 3011 },
		regions = { 3014 },
		triggers = { "GADGET_CREATE_3012", "SELECT_OPTION_3013", "ENTER_REGION_3014", "SELECT_OPTION_3017" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 3002, 3003, 3005 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_3016" },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { 3001, 3004, 3006 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_3015" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_GADGET_CREATE_3012(context, evt)
	if 3007 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_3012(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 247016003, 3007, {4102,4103}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_3013(context, evt)
	-- 判断是gadgetid 3007 option_id 4102
	if 3007 ~= evt.param1 then
		return false	
	end
	
	if 4102 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_3013(context, evt)
	-- 删除指定group： 247016003 ；指定config：3007；物件身上指定option：4102；
	if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, 247016003, 3007, 4102) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : del_work_options_by_group_configId")
		return -1
	end
	
	-- 删除指定group： 247016003 ；指定config：3007；物件身上指定option：4103；
	if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, 247016003, 3007, 4103) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : del_work_options_by_group_configId")
		return -1
	end
	
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 247016003, 2)
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_3014(context, evt)
	if evt.param1 ~= 3014 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_3014(context, evt)
	-- 将configid为 3008 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 3008, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 3009 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 3009, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 3010 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 3010, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 3011 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 3011, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_3015(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_3015(context, evt)
	-- 将configid为 3008 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 3008, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 3009 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 3009, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 3010 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 3010, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 3011 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 3011, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_3016(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_3016(context, evt)
	-- 将configid为 3008 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 3008, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 3009 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 3009, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 3010 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 3010, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 3011 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 3011, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_3017(context, evt)
	-- 判断是gadgetid 3007 option_id 4103
	if 3007 ~= evt.param1 then
		return false	
	end
	
	if 4103 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_3017(context, evt)
	-- 删除指定group： 247016003 ；指定config：3007；物件身上指定option：4103；
	if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, 247016003, 3007, 4103) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : del_work_options_by_group_configId")
		return -1
	end
	
	-- 删除指定group： 247016003 ；指定config：3007；物件身上指定option：4102；
	if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, 247016003, 3007, 4102) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : del_work_options_by_group_configId")
		return -1
	end
	
	-- 添加suite3的新内容
	    ScriptLib.AddExtraGroupSuite(context, 247016003, 3)
	
	return 0
end