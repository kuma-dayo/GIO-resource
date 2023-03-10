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
	{ config_id = 270001, gadget_id = 70330064, pos = { x = -6723.915, y = 214.944, z = -2635.018 }, rot = { x = 336.493, y = 19.608, z = 0.000 }, level = 27, interact_id = 35, area_id = 18 },
	{ config_id = 270002, gadget_id = 70900380, pos = { x = -6722.220, y = 218.877, z = -2642.581 }, rot = { x = 359.838, y = 354.316, z = 1.296 }, level = 27, area_id = 18 },
	{ config_id = 270003, gadget_id = 70900380, pos = { x = -6718.506, y = 218.924, z = -2653.685 }, rot = { x = 359.838, y = 354.316, z = 1.296 }, level = 27, area_id = 18 },
	{ config_id = 270004, gadget_id = 70900380, pos = { x = -6717.308, y = 217.236, z = -2662.269 }, rot = { x = 359.838, y = 354.316, z = 1.296 }, level = 27, area_id = 18 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1270005, name = "GADGET_STATE_CHANGE_270005", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_270005", action = "action_EVENT_GADGET_STATE_CHANGE_270005", trigger_count = 0 },
	{ config_id = 1270006, name = "GADGET_STATE_CHANGE_270006", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_270006", action = "action_EVENT_GADGET_STATE_CHANGE_270006", trigger_count = 0 }
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
		gadgets = { 270001 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_270005", "GADGET_STATE_CHANGE_270006" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 270002, 270003, 270004 },
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
function condition_EVENT_GADGET_STATE_CHANGE_270005(context, evt)
	if 270001 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_270005(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133225270, 2)
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_270006(context, evt)
	if 270001 ~= evt.param2 or GadgetState.Default ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_270006(context, evt)
	-- 删除suite2的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133225270, 2)
	
	return 0
end

require "V2_0/ElectricCore"