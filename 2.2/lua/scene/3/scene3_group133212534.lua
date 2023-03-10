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
	{ config_id = 534001, gadget_id = 70330064, pos = { x = -4222.505, y = 201.704, z = -2426.330 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, interact_id = 35, area_id = 13 },
	{ config_id = 534002, gadget_id = 70900380, pos = { x = -4232.384, y = 203.089, z = -2432.743 }, rot = { x = 359.974, y = 239.721, z = 0.007 }, level = 27, area_id = 13 },
	{ config_id = 534003, gadget_id = 70900380, pos = { x = -4245.336, y = 204.055, z = -2440.305 }, rot = { x = 359.974, y = 239.721, z = 0.007 }, level = 27, area_id = 13 },
	{ config_id = 534004, gadget_id = 70900380, pos = { x = -4258.289, y = 205.001, z = -2447.870 }, rot = { x = 359.974, y = 239.721, z = 0.007 }, level = 27, area_id = 13 },
	{ config_id = 534007, gadget_id = 70900380, pos = { x = -4271.242, y = 206.099, z = -2455.432 }, rot = { x = 359.974, y = 239.721, z = 0.007 }, level = 27, area_id = 13 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1534005, name = "GADGET_STATE_CHANGE_534005", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_534005", action = "action_EVENT_GADGET_STATE_CHANGE_534005", trigger_count = 0 },
	{ config_id = 1534006, name = "GADGET_STATE_CHANGE_534006", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_534006", action = "action_EVENT_GADGET_STATE_CHANGE_534006", trigger_count = 0 }
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
		gadgets = { 534001 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_534005", "GADGET_STATE_CHANGE_534006" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 534002, 534003, 534004, 534007 },
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
function condition_EVENT_GADGET_STATE_CHANGE_534005(context, evt)
	if 534001 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_534005(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133212534, 2)
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_534006(context, evt)
	if 534001 ~= evt.param2 or GadgetState.Default ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_534006(context, evt)
	-- 删除suite2的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133212534, 2)
	
	return 0
end

require "V2_0/ElectricCore"