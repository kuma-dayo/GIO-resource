-- 基础信息
local base_info = {
	group_id = 201011027
}

-- Trigger变量
local defs = {
	gadget_id_1 = 151,
	gadget_id_2 = 166,
	gadget_id_3 = 167
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
	{ config_id = 249, gadget_id = 70360002, pos = { x = 802.445, y = 0.633, z = -46.155 }, rot = { x = 0.000, y = 270.536, z = 0.000 }, level = 1 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1000079, name = "GADGET_CREATE_79", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_79", action = "action_EVENT_GADGET_CREATE_79" },
	{ config_id = 1000080, name = "SELECT_OPTION_80", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_80", action = "action_EVENT_SELECT_OPTION_80", trigger_count = 0, forbid_guest = false }
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
		gadgets = { 249 },
		regions = { },
		triggers = { "GADGET_CREATE_79", "SELECT_OPTION_80" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_GADGET_CREATE_79(context, evt)
	if 249 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_79(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptions(context, {151,166,167}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_work_options")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_80(context, evt)
	if 249 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_80(context, evt)
	-- 根据不同的选项做不同的操作
	if defs.gadget_id_1 == evt.param2 then
		 if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 201011010, refresh_level_revise = 1}) then
			return -1
		end
		return 0
	end
	
	if defs.gadget_id_2 == evt.param2 then
		 if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 201011010, refresh_level_revise = 7}) then
			return -1
		end
		return 0
	end
	
	if defs.gadget_id_3 == evt.param2 then
		 if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 201011010, refresh_level_revise = 16}) then
			return -1
		end
		return 0
	end
	
	
	return 0
end