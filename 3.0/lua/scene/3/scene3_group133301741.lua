-- 基础信息
local base_info = {
	group_id = 133301741
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
	{ config_id = 741001, gadget_id = 70211032, pos = { x = -244.871, y = 276.605, z = 3474.567 }, rot = { x = 4.577, y = 87.062, z = 8.332 }, level = 26, drop_tag = "战斗超级须弥", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, explore = { name = "chest", exp = 10 }, area_id = 29 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1741002, name = "VARIABLE_CHANGE_741002", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_741002", action = "action_EVENT_VARIABLE_CHANGE_741002", trigger_count = 0 }
}

-- 变量
variables = {
	{ config_id = 1, name = "count", value = 0, no_refresh = true }
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
		gadgets = { 741001 },
		regions = { },
		triggers = { "VARIABLE_CHANGE_741002" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_741002(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"count"为3
	if ScriptLib.GetGroupVariableValue(context, "count") ~= 3 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_741002(context, evt)
	-- 将configid为 741001 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 741001, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end