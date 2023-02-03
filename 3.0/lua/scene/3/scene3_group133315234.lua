-- 基础信息
local base_info = {
	group_id = 133315234
}

-- Trigger变量
local defs = {
	point_camera = 234010,
	gadget_lookEntity = 234009,
	look_duration = 3
}

-- DEFS_MISCS
local CameraLookSetting = {
    blend_type = 1,
    blend_duration = 1.5,
    is_force_walk = false,
    is_allow_input = true,
    delay = 0,
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
	[234001] = { config_id = 234001, gadget_id = 70290544, pos = { x = 302.856, y = 249.655, z = 2402.339 }, rot = { x = 1.359, y = 58.012, z = 357.797 }, level = 27, area_id = 20 },
	[234002] = { config_id = 234002, gadget_id = 70320004, pos = { x = 305.063, y = 246.259, z = 2416.273 }, rot = { x = 0.000, y = 7.574, z = 0.000 }, level = 27, persistent = true, area_id = 20 },
	[234003] = { config_id = 234003, gadget_id = 70330216, pos = { x = 305.529, y = 246.239, z = 2413.967 }, rot = { x = 3.802, y = 267.225, z = 1.517 }, level = 27, area_id = 20 },
	[234005] = { config_id = 234005, gadget_id = 70330219, pos = { x = 304.854, y = 245.600, z = 2416.433 }, rot = { x = 0.000, y = 47.070, z = 0.000 }, level = 27, isOneoff = true, area_id = 20 },
	[234006] = { config_id = 234006, gadget_id = 70310198, pos = { x = 312.144, y = 245.478, z = 2420.374 }, rot = { x = 0.000, y = 7.339, z = 0.000 }, level = 27, area_id = 20 },
	[234008] = { config_id = 234008, gadget_id = 70290544, pos = { x = 298.725, y = 249.853, z = 2403.836 }, rot = { x = 359.319, y = 221.618, z = 2.497 }, level = 27, area_id = 20 },
	[234009] = { config_id = 234009, gadget_id = 70360286, pos = { x = 303.630, y = 247.825, z = 2404.906 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 20 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1234004, name = "GADGET_STATE_CHANGE_234004", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_234004", action = "action_EVENT_GADGET_STATE_CHANGE_234004" },
	{ config_id = 1234007, name = "ANY_GADGET_DIE_234007", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_234007", action = "action_EVENT_ANY_GADGET_DIE_234007" }
}

-- 点位
points = {
	[234010] = { config_id = 234010, pos = { x = 308.265, y = 249.139, z = 2413.016 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, area_id = 20 }
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
	io_type = 1,
	suite = 1,
	end_suite = 0,
	rand_suite = false
}

--================================================================
-- 
-- 小组配置
-- 
--================================================================

suite_disk = {
	[1] = {
		gadgets = {
			{ config_id = 234001, state = 0 },
			{ config_id = 234003, state = 0 },
			{ config_id = 234005, state = 0 },
			{ config_id = 234006, state = 0 },
			{ config_id = 234008, state = 0 },
			{ config_id = 234009, state = 0 }
		},
		monsters = {
		},
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_234004", "ANY_GADGET_DIE_234007" },
		npcs = { },
		variables = {
		}
	},
	[2] = {
		gadgets = {
			{ config_id = 234001, state = 0 },
			{ config_id = 234002, state = 0 },
			{ config_id = 234003, state = 0 },
			{ config_id = 234005, state = 0 },
			{ config_id = 234006, state = 0 },
			{ config_id = 234008, state = 0 },
			{ config_id = 234009, state = 0 }
		},
		monsters = {
		},
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_234004" },
		npcs = { },
		variables = {
		}
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_234004(context, evt)
	if 234002 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_234004(context, evt)
	-- 将configid为 234001 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 234001, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将configid为 234008 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 234008, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	
	LF_PointLook(context)
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_234007(context, evt)
	if 234005 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_234007(context, evt)
		-- 将指定flowGroup的进度和要素属性都改为目标suite（缺的创建，多的移除）
	  ScriptLib.GoToFlowSuite(context, 133315234, 2)
	
	return 0
end

require "V3_0/CameraLook"