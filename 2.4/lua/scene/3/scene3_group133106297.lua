-- Trigger变量
local defs = {
	gadget_id = 297004
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
	{ config_id = 297001, gadget_id = 70330019, pos = { x = -456.947, y = 197.506, z = 1244.460 }, rot = { x = 0.000, y = 333.648, z = 0.000 }, level = 32, persistent = true, area_id = 8 },
	{ config_id = 297002, gadget_id = 70330019, pos = { x = -460.826, y = 197.189, z = 1235.565 }, rot = { x = 0.000, y = 331.496, z = 0.000 }, level = 32, persistent = true, area_id = 8 },
	{ config_id = 297003, gadget_id = 70330019, pos = { x = -447.005, y = 197.083, z = 1242.975 }, rot = { x = 0.000, y = 59.601, z = 0.000 }, level = 32, persistent = true, area_id = 8 },
	{ config_id = 297004, gadget_id = 70211111, pos = { x = -451.508, y = 197.367, z = 1234.292 }, rot = { x = 0.000, y = 151.366, z = 0.000 }, level = 26, drop_tag = "解谜中级璃月", showcutscene = true, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 8 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1297005, name = "GADGET_STATE_CHANGE_297005", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_297005", action = "action_EVENT_GADGET_STATE_CHANGE_297005", trigger_count = 0 },
	{ config_id = 1297006, name = "GADGET_STATE_CHANGE_297006", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "", action = "action_EVENT_GADGET_STATE_CHANGE_297006" },
	{ config_id = 1297007, name = "GADGET_CREATE_297007", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_297007", action = "action_EVENT_GADGET_CREATE_297007" }
}

-- 变量
variables = {
	{ name = "start", value = 0, no_refresh = true }
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
		gadgets = { 297001, 297002, 297003 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_297005", "GADGET_STATE_CHANGE_297006", "GADGET_CREATE_297007" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_297005(context, evt)
	if ScriptLib.GetGroupVariableValue(context, "start") == #suites[1].gadgets then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_297005(context, evt)
	if evt.param1 == GadgetState.GearStart then
		ScriptLib.ChangeGroupVariableValue(context,"start",1)
	elseif evt.param1 == GadgetState.Default then
		ScriptLib.ChangeGroupVariableValue(context,"start",-1)
	end
	
	if ScriptLib.GetGroupVariableValue(context, "start") == #suites[1].gadgets then
		ScriptLib.CreateGadget(context, { config_id = defs.gadget_id })
	end
	
	return 0
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_297006(context, evt)
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 1008, 1, 1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_297007(context, evt)
	if defs.gadget_id ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_297007(context, evt)
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 1008, 3, 1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	return 0
end