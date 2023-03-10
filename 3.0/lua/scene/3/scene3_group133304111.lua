-- 基础信息
local base_info = {
	group_id = 133304111
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
	{ config_id = 111002, gadget_id = 71700521, pos = { x = -1715.818, y = 234.863, z = 2757.633 }, rot = { x = 0.000, y = 0.245, z = 0.000 }, level = 1, area_id = 21 },
	{ config_id = 111007, gadget_id = 70210102, pos = { x = -1715.377, y = 236.018, z = 2757.437 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 26, chest_drop_id = 1000100, drop_count = 1, area_id = 21 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1111006, name = "ANY_GADGET_DIE_111006", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "", action = "action_EVENT_ANY_GADGET_DIE_111006" },
	{ config_id = 1111010, name = "GADGET_STATE_CHANGE_111010", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_111010", action = "action_EVENT_GADGET_STATE_CHANGE_111010" }
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
		gadgets = { 111002 },
		regions = { },
		triggers = { "ANY_GADGET_DIE_111006" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 111007 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_111010" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_111006(context, evt)
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 133304111, suite = 2 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_111010(context, evt)
	if 111007 ~= evt.param2 or GadgetState.ChestOpened ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_111010(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "Q2300408") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end