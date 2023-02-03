-- 基础信息
local base_info = {
	group_id = 133301140
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
	{ config_id = 140001, gadget_id = 70220103, pos = { x = -646.145, y = 34.713, z = 3757.803 }, rot = { x = 0.000, y = 15.471, z = 0.000 }, level = 33, area_id = 25 },
	{ config_id = 140004, gadget_id = 70220103, pos = { x = -641.575, y = 39.360, z = 3761.594 }, rot = { x = 0.000, y = 15.471, z = 0.000 }, level = 33, area_id = 25 },
	{ config_id = 140006, gadget_id = 70310191, pos = { x = -597.438, y = 30.957, z = 3712.270 }, rot = { x = 0.000, y = 346.408, z = 0.000 }, level = 33, state = GadgetState.GearStart, area_id = 25 },
	{ config_id = 140012, gadget_id = 70310191, pos = { x = -640.331, y = 32.340, z = 3727.307 }, rot = { x = 0.000, y = 27.575, z = 0.000 }, level = 33, area_id = 25 },
	{ config_id = 140017, gadget_id = 70310191, pos = { x = -637.790, y = 30.975, z = 3763.937 }, rot = { x = 354.105, y = 350.415, z = 356.426 }, level = 33, state = GadgetState.GearStart, area_id = 25 },
	{ config_id = 140018, gadget_id = 70310191, pos = { x = -561.818, y = 33.288, z = 3734.662 }, rot = { x = 20.928, y = 51.608, z = 8.264 }, level = 33, area_id = 25 },
	{ config_id = 140032, gadget_id = 70360001, pos = { x = -553.419, y = 33.228, z = 3754.830 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 33, area_id = 25 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1140028, name = "ANY_GADGET_DIE_140028", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_140028", action = "action_EVENT_ANY_GADGET_DIE_140028", trigger_count = 0 },
	{ config_id = 1140029, name = "ANY_GADGET_DIE_140029", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_140029", action = "action_EVENT_ANY_GADGET_DIE_140029", trigger_count = 0 },
	{ config_id = 1140030, name = "ANY_GADGET_DIE_140030", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_140030", action = "action_EVENT_ANY_GADGET_DIE_140030", trigger_count = 0 },
	{ config_id = 1140031, name = "VARIABLE_CHANGE_140031", event = EventType.EVENT_VARIABLE_CHANGE, source = "ice", condition = "condition_EVENT_VARIABLE_CHANGE_140031", action = "action_EVENT_VARIABLE_CHANGE_140031", trigger_count = 0 }
}

-- 变量
variables = {
	{ config_id = 1, name = "ice", value = 0, no_refresh = true }
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
		gadgets = { 140001, 140004, 140006, 140012, 140017, 140018, 140032 },
		regions = { },
		triggers = { "ANY_GADGET_DIE_140028", "ANY_GADGET_DIE_140029", "ANY_GADGET_DIE_140030", "VARIABLE_CHANGE_140031" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_140028(context, evt)
	if 140019 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_140028(context, evt)
	-- 将本组内变量名为 "ice" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "ice", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_140029(context, evt)
	if 140025 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_140029(context, evt)
	-- 将本组内变量名为 "ice" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "ice", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_140030(context, evt)
	if 140027 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_140030(context, evt)
	-- 将本组内变量名为 "ice" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "ice", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_140031(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"ice"为3
	if ScriptLib.GetGroupVariableValue(context, "ice") ~= 3 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_140031(context, evt)
	-- 将configid为 140032 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 140032, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 针对当前group内变量名为 "finish" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValueByGroup(context, "finish", 1, 133301139) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable_by_group")
	  return -1
	end
	
	-- 将本组内变量名为 "finish" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValueByGroup(context, "finish", 1, 133301139) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable_by_group")
	  return -1
	end
	
	return 0
end

require "V3_0/DeathFieldStandard"