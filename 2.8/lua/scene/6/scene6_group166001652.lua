-- 基础信息
local base_info = {
	group_id = 166001652
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
	{ config_id = 652001, gadget_id = 70211101, pos = { x = 287.681, y = 444.906, z = 600.795 }, rot = { x = 17.980, y = 103.364, z = 13.195 }, level = 26, drop_tag = "解谜低级璃月", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 300 },
	{ config_id = 652002, gadget_id = 70290206, pos = { x = 287.788, y = 445.337, z = 600.887 }, rot = { x = 355.688, y = 160.491, z = 20.178 }, level = 36, persistent = true, interact_id = 88, area_id = 300 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1652003, name = "GADGET_STATE_CHANGE_652003", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_652003", action = "action_EVENT_GADGET_STATE_CHANGE_652003" }
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
		gadgets = { 652001, 652002 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_652003" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_652003(context, evt)
	if 652002 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_652003(context, evt)
	-- 将configid为 652001 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 652001, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end