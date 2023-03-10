-- 基础信息
local base_info = {
	group_id = 133105069
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
	{ config_id = 69002, npc_id = 12383, pos = { x = 521.332, y = 200.048, z = -19.626 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, area_id = 9 }
}

-- 装置
gadgets = {
	{ config_id = 69001, gadget_id = 70360130, pos = { x = 521.280, y = 199.965, z = -19.657 }, rot = { x = 3.949, y = 325.442, z = 281.218 }, level = 1, area_id = 9 },
	{ config_id = 69003, gadget_id = 70360001, pos = { x = 521.388, y = 200.000, z = -20.248 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, persistent = true, area_id = 9 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1069004, name = "GADGET_CREATE_69004", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_69004", action = "action_EVENT_GADGET_CREATE_69004", trigger_count = 0 },
	{ config_id = 1069005, name = "SELECT_OPTION_69005", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_69005", action = "action_EVENT_SELECT_OPTION_69005", trigger_count = 0 }
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
		gadgets = { 69003 },
		regions = { },
		triggers = { "GADGET_CREATE_69004", "SELECT_OPTION_69005" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 69001 },
		regions = { },
		triggers = { },
		npcs = { 69002 },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_GADGET_CREATE_69004(context, evt)
	if 69003 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_69004(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 133105069, 69003, {95}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_69005(context, evt)
	-- 判断是gadgetid 69003 option_id 95
	if 69003 ~= evt.param1 then
		return false	
	end
	
	if 95 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_69005(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133105069, 2)
	
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "1331050691") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	-- 删除指定group： 133105069 ；指定config：69003；物件身上指定option：95；
	if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, 133105069, 69003, 95) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : del_work_options_by_group_configId")
		return -1
	end
	
		-- 卸载指定gadget
		if 0 ~= ScriptLib.RemoveEntityByConfigId(context, 133105069, EntityType.GADGET, 69003 ) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : remove_gadget_by_configid")
			return -1
		end
	
	return 0
end