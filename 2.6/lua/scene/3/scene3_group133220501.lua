-- 基础信息
local base_info = {
	group_id = 133220501
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
	{ config_id = 501001, gadget_id = 70900380, pos = { x = -2092.528, y = 207.038, z = -4638.031 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 11 },
	{ config_id = 501002, gadget_id = 70330092, pos = { x = -2088.867, y = 201.174, z = -4635.508 }, rot = { x = 0.000, y = 216.861, z = 0.000 }, level = 27, state = GadgetState.GearStart, area_id = 11 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1501003, name = "USE_WIDGET_TOY_FOX_CAMERA_501003", event = EventType.EVENT_USE_WIDGET_TOY_FOX_CAMERA, source = "", condition = "condition_EVENT_USE_WIDGET_TOY_FOX_CAMERA_501003", action = "action_EVENT_USE_WIDGET_TOY_FOX_CAMERA_501003", trigger_count = 0 }
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
		gadgets = { 501002 },
		regions = { },
		triggers = { "USE_WIDGET_TOY_FOX_CAMERA_501003" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 501001 },
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
function condition_EVENT_USE_WIDGET_TOY_FOX_CAMERA_501003(context, evt)
	 local configId=ScriptLib.GetGadgetConfigId(context, { gadget_eid =evt.source_eid })
	if configId==501002 then
	return true
	end
	return false
end

-- 触发操作
function action_EVENT_USE_WIDGET_TOY_FOX_CAMERA_501003(context, evt)
	-- 将configid为 501002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 501002, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133220501, 2)
	
	return 0
end

require "V2_0/ElectricCore"