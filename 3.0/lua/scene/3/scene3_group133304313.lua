-- 基础信息
local base_info = {
	group_id = 133304313
}

-- Trigger变量
local defs = {
	gadget_LookHookCid = 313003
}

-- DEFS_MISCS
local RequireSuite = {1}

local HookLookPlay = {
    HookPoint = defs.gadget_LookHookCid,
    Duration = 3,
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
	[313001] = { config_id = 313001, gadget_id = 70330229, pos = { x = -1332.182, y = 162.508, z = 2416.978 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, persistent = true, mark_flag = 3, area_id = 21 },
	[313002] = { config_id = 313002, gadget_id = 70330251, pos = { x = -1338.516, y = 167.780, z = 2400.521 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, mark_flag = 3, area_id = 21 },
	[313003] = { config_id = 313003, gadget_id = 70220103, pos = { x = -1338.516, y = 167.780, z = 2400.521 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, persistent = true, area_id = 21 },
	[313004] = { config_id = 313004, gadget_id = 70220103, pos = { x = -1352.866, y = 171.229, z = 2373.955 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, persistent = true, area_id = 21 },
	[313006] = { config_id = 313006, gadget_id = 70330229, pos = { x = -1399.561, y = 196.677, z = 2245.563 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, persistent = true, mark_flag = 5, area_id = 21 },
	[313007] = { config_id = 313007, gadget_id = 70330251, pos = { x = -1380.429, y = 195.860, z = 2258.796 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, mark_flag = 5, area_id = 21 },
	[313008] = { config_id = 313008, gadget_id = 70220103, pos = { x = -1365.540, y = 175.914, z = 2342.550 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, persistent = true, area_id = 21 },
	[313009] = { config_id = 313009, gadget_id = 70220103, pos = { x = -1369.866, y = 182.822, z = 2310.042 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, persistent = true, area_id = 21 },
	[313010] = { config_id = 313010, gadget_id = 70220103, pos = { x = -1373.840, y = 192.089, z = 2277.674 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, persistent = true, area_id = 21 },
	[313011] = { config_id = 313011, gadget_id = 70220103, pos = { x = -1380.429, y = 195.860, z = 2258.796 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, persistent = true, area_id = 21 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1313005, name = "GADGET_STATE_CHANGE_313005", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_313005", action = "action_EVENT_GADGET_STATE_CHANGE_313005" }
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
		gadgets = { 313001, 313002, 313006, 313007 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_313005" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 313003, 313004, 313008, 313009, 313010, 313011 },
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
function condition_EVENT_GADGET_STATE_CHANGE_313005(context, evt)
	if 313001 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_313005(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133304313, 2)
	
	return 0
end

require "V3_0/HookLook"