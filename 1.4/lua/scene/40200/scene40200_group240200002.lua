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
	{ config_id = 1, gadget_id = 70360010, pos = { x = 0.000, y = 0.100, z = 0.000 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, state = GadgetState.GearStop }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1000002, name = "SELECT_OPTION_2", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_2", action = "action_EVENT_SELECT_OPTION_2", trigger_count = 0 },
	{ config_id = 1000015, name = "SELECT_OPTION_15", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_15", action = "action_EVENT_SELECT_OPTION_15", trigger_count = 0 }
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
	rand_suite = true
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
		gadgets = { 1 },
		regions = { },
		triggers = { "SELECT_OPTION_2", "SELECT_OPTION_15" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_SELECT_OPTION_2(context, evt)
	-- 判断是gadgetid 1 option_id 7
	if 1 ~= evt.param1 then
		return false	
	end
	
	if 7 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_2(context, evt)
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 240200007, suite = 2 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	-- 创建编号为1（该怪物潮的识别id)的怪物潮，创建怪物总数为15，场上怪物最少5只，最多5只
	if 0 ~= ScriptLib.AutoMonsterTide(context, 1, 240200001, {1001,1002,1004,1005,1006,1011,1013,1018,1020,1021}, 15, 5, 5) then
		return -1
	end
	
	-- 改变指定group组240200008中， configid为9的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 240200008, 9, GadgetState.GearStart) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_15(context, evt)
	-- 判断是gadgetid 1 option_id 12
	if 1 ~= evt.param1 then
		return false	
	end
	
	if 12 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_15(context, evt)
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 240200003, suite = 1 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	return 0
end