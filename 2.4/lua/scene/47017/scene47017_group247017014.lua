--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 14001, monster_id = 21020401, pos = { x = 327.010, y = -3.348, z = -320.693 }, rot = { x = 0.000, y = 270.000, z = 0.000 }, level = 10, disableWander = true, affix = { 1008, 1011 } },
	{ config_id = 14002, monster_id = 21030101, pos = { x = 313.622, y = -3.246, z = -314.048 }, rot = { x = 0.000, y = 120.000, z = 0.000 }, level = 5, disableWander = true, affix = { 1008, 1011 } },
	{ config_id = 14003, monster_id = 21030601, pos = { x = 313.134, y = -3.246, z = -325.893 }, rot = { x = 0.000, y = 60.000, z = 0.000 }, level = 5, disableWander = true, affix = { 1008, 1011 } },
	{ config_id = 14004, monster_id = 21030601, pos = { x = 326.297, y = -3.246, z = -314.622 }, rot = { x = 0.000, y = 245.000, z = 0.000 }, level = 10, disableWander = true, affix = { 1008, 1011 } },
	{ config_id = 14005, monster_id = 21020401, pos = { x = 311.505, y = -3.337, z = -320.310 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 5, disableWander = true, affix = { 1008, 1011 } },
	{ config_id = 14006, monster_id = 21030101, pos = { x = 326.324, y = -3.246, z = -325.705 }, rot = { x = 0.000, y = 285.000, z = 0.000 }, level = 10, disableWander = true, affix = { 1008, 1011 } }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 14007, gadget_id = 70360001, pos = { x = 319.731, y = -3.169, z = -320.172 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 14008, gadget_id = 70290137, pos = { x = 319.661, y = -3.188, z = -340.091 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, state = GadgetState.GearStart },
	{ config_id = 14009, gadget_id = 70290137, pos = { x = 319.674, y = -3.073, z = -300.219 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, state = GadgetState.GearStart },
	{ config_id = 14010, gadget_id = 70290137, pos = { x = 299.808, y = -2.994, z = -320.351 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 1, state = GadgetState.GearStart },
	{ config_id = 14011, gadget_id = 70290137, pos = { x = 339.759, y = -3.073, z = -320.343 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 1, state = GadgetState.GearStart }
}

-- 区域
regions = {
	{ config_id = 14014, shape = RegionShape.CUBIC, size = { x = 20.000, y = 10.000, z = 20.000 }, pos = { x = 320.232, y = -3.150, z = -320.117 } }
}

-- 触发器
triggers = {
	{ config_id = 1014012, name = "GADGET_CREATE_14012", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_14012", action = "action_EVENT_GADGET_CREATE_14012" },
	{ config_id = 1014013, name = "SELECT_OPTION_14013", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_14013", action = "action_EVENT_SELECT_OPTION_14013" },
	{ config_id = 1014014, name = "ENTER_REGION_14014", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_14014", action = "action_EVENT_ENTER_REGION_14014" },
	{ config_id = 1014015, name = "ANY_MONSTER_DIE_14015", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_14015", action = "action_EVENT_ANY_MONSTER_DIE_14015" },
	{ config_id = 1014016, name = "ANY_MONSTER_DIE_14016", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_14016", action = "action_EVENT_ANY_MONSTER_DIE_14016" },
	{ config_id = 1014017, name = "SELECT_OPTION_14017", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_14017", action = "action_EVENT_SELECT_OPTION_14017" }
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
		gadgets = { 14007, 14008, 14009, 14010, 14011 },
		regions = { 14014 },
		triggers = { "GADGET_CREATE_14012", "SELECT_OPTION_14013", "ENTER_REGION_14014", "SELECT_OPTION_14017" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 14002, 14003, 14005 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_14016" },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { 14001, 14004, 14006 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_14015" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_GADGET_CREATE_14012(context, evt)
	if 14007 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_14012(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 247017014, 14007, {4102,4103}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_14013(context, evt)
	-- 判断是gadgetid 14007 option_id 4102
	if 14007 ~= evt.param1 then
		return false	
	end
	
	if 4102 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_14013(context, evt)
	-- 删除指定group： 247017014 ；指定config：14007；物件身上指定option：4102；
	if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, 247017014, 14007, 4102) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : del_work_options_by_group_configId")
		return -1
	end
	
	-- 删除指定group： 247017014 ；指定config：14007；物件身上指定option：4103；
	if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, 247017014, 14007, 4103) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : del_work_options_by_group_configId")
		return -1
	end
	
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 247017014, 2)
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_14014(context, evt)
	if evt.param1 ~= 14014 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_14014(context, evt)
	-- 将configid为 14008 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 14008, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 14009 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 14009, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 14010 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 14010, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 14011 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 14011, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_14015(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_14015(context, evt)
	-- 将configid为 14008 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 14008, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 14009 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 14009, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 14010 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 14010, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 14011 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 14011, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_14016(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_14016(context, evt)
	-- 将configid为 14008 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 14008, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 14009 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 14009, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 14010 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 14010, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 14011 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 14011, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_14017(context, evt)
	-- 判断是gadgetid 14007 option_id 4103
	if 14007 ~= evt.param1 then
		return false	
	end
	
	if 4103 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_14017(context, evt)
	-- 删除指定group： 247017014 ；指定config：14007；物件身上指定option：4103；
	if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, 247017014, 14007, 4103) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : del_work_options_by_group_configId")
		return -1
	end
	
	-- 删除指定group： 247017014 ；指定config：14007；物件身上指定option：4102；
	if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, 247017014, 14007, 4102) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : del_work_options_by_group_configId")
		return -1
	end
	
	-- 添加suite3的新内容
	    ScriptLib.AddExtraGroupSuite(context, 247017014, 3)
	
	return 0
end