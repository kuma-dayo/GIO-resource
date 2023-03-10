-- 基础信息
local base_info = {
	group_id = 133301165
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
	{ config_id = 165001, gadget_id = 70360001, pos = { x = -108.400, y = 249.221, z = 3432.188 }, rot = { x = 357.902, y = 78.606, z = 359.676 }, level = 27, isOneoff = true, persistent = true, area_id = 29 },
	{ config_id = 165002, gadget_id = 70211101, pos = { x = -108.517, y = 249.169, z = 3432.135 }, rot = { x = 358.321, y = 32.070, z = 1.300 }, level = 26, drop_tag = "解谜低级须弥", showcutscene = true, isOneoff = true, persistent = true, explore = { name = "chest", exp = 10 }, area_id = 29 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1165003, name = "GADGET_CREATE_165003", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_165003", action = "action_EVENT_GADGET_CREATE_165003", trigger_count = 0 },
	{ config_id = 1165004, name = "SELECT_OPTION_165004", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_165004", action = "action_EVENT_SELECT_OPTION_165004" },
	{ config_id = 1165005, name = "GADGET_STATE_CHANGE_165005", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_165005", action = "action_EVENT_GADGET_STATE_CHANGE_165005", trigger_count = 0 },
	{ config_id = 1165006, name = "LEVEL_TAG_CHANGE_165006", event = EventType.EVENT_LEVEL_TAG_CHANGE, source = "", condition = "", action = "action_EVENT_LEVEL_TAG_CHANGE_165006", trigger_count = 0 },
	{ config_id = 1165009, name = "GROUP_LOAD_165009", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_165009", action = "action_EVENT_GROUP_LOAD_165009", trigger_count = 0 }
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
	suite = 3,
	end_suite = 2,
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
		gadgets = { 165001 },
		regions = { },
		triggers = { "GADGET_CREATE_165003", "SELECT_OPTION_165004" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = suite_2,
		monsters = { },
		gadgets = { 165001, 165002 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_165005" },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { },
		gadgets = { },
		regions = { },
		triggers = { "LEVEL_TAG_CHANGE_165006", "GROUP_LOAD_165009" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_GADGET_CREATE_165003(context, evt)
	if 165001 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_165003(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptions(context, {169}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_work_options")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_165004(context, evt)
	-- 判断是gadgetid 165001 option_id 169
	if 165001 ~= evt.param1 then
		return false	
	end
	
	if 169 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_165004(context, evt)
	-- 删除指定group： 133301165 ；指定config：165001；物件身上指定option：169；
	if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, 133301165, 165001, 169) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : del_work_options_by_group_configId")
		return -1
	end
	
	-- 将configid为 165001 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 165001, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 2011, 3, 1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 133301165, suite = 2 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_165005(context, evt)
	if 165002 ~= evt.param2 or GadgetState.ChestOpened ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_165005(context, evt)
	-- 将configid为 165001 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 165001, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 调用提示id为 33010064 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 33010064) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_LEVEL_TAG_CHANGE_165006(context, evt)
	if evt.param2 == 39 then
		ScriptLib.AddExtraGroupSuite(context, 133301165, 1)
	else
		ScriptLib.RemoveExtraGroupSuite(context, 133301165, 1)
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GROUP_LOAD_165009(context, evt)
		-- 检查当前LevelTag是否为现实
		    local current_env_state_id = ScriptLib.GetCurrentLevelTagVec(context, 12)[1]
		    if current_env_state_id ~= 39 then
		        return false
		    end 
		
		return true
end

-- 触发操作
function action_EVENT_GROUP_LOAD_165009(context, evt)
	-- 添加suite1的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133301165, 1)
	
	return 0
end