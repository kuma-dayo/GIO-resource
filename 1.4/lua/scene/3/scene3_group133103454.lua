-- Trigger变量
local defs = {
	duration = 45,
	kill_sum = 4,
	group_id = 133103454,
	gadget_controller_id = 454003
}


--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 454001, monster_id = 21011001, pos = { x = 152.705, y = 206.905, z = 1217.175 }, rot = { x = 0.000, y = 223.356, z = 0.000 }, level = 24, drop_id = 1000100, pose_id = 32 },
	{ config_id = 454008, monster_id = 21011001, pos = { x = 130.415, y = 199.422, z = 1206.664 }, rot = { x = 0.000, y = 63.500, z = 0.000 }, level = 24, drop_id = 1000100, pose_id = 32 },
	{ config_id = 454009, monster_id = 21010901, pos = { x = 133.050, y = 203.703, z = 1195.505 }, rot = { x = 0.000, y = 45.587, z = 0.000 }, level = 24, drop_id = 1000100, pose_id = 32 },
	{ config_id = 454010, monster_id = 21010501, pos = { x = 150.563, y = 202.062, z = 1193.458 }, rot = { x = 0.000, y = 339.300, z = 0.000 }, level = 24, drop_id = 1000100, pose_id = 32 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 454002, gadget_id = 70360047, pos = { x = 150.241, y = 197.213, z = 1216.450 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 21, drop_tag = "战斗高级璃月", state = GadgetState.Action01, isOneoff = true, persistent = true, type = GadgetType.GADGET_WORLD_CHECT },
	{ config_id = 454003, gadget_id = 70360001, pos = { x = 150.258, y = 198.086, z = 1216.480 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 24 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ name = "CHALLENGE_SUCCESS_454004", event = EventType.EVENT_CHALLENGE_SUCCESS, source = "180", condition = "", action = "action_EVENT_CHALLENGE_SUCCESS_454004" },
	{ name = "CHALLENGE_FAIL_454005", event = EventType.EVENT_CHALLENGE_FAIL, source = "180", condition = "", action = "action_EVENT_CHALLENGE_FAIL_454005", trigger_count = 0 },
	{ name = "GADGET_CREATE_454006", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_454006", action = "action_EVENT_GADGET_CREATE_454006", trigger_count = 0 },
	{ name = "SELECT_OPTION_454007", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_454007", action = "action_EVENT_SELECT_OPTION_454007", trigger_count = 0 }
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
		-- description = suite_1,
		monsters = { },
		gadgets = { 454002, 454003 },
		regions = { },
		triggers = { "CHALLENGE_SUCCESS_454004", "CHALLENGE_FAIL_454005", "GADGET_CREATE_454006", "SELECT_OPTION_454007" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = suite_2,
		monsters = { 454001, 454008, 454009, 454010 },
		gadgets = { },
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

-- 触发操作
function action_EVENT_CHALLENGE_SUCCESS_454004(context, evt)
	-- 将configid为 454002 的物件更改为状态 GadgetState.GearAction1
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 454002, GadgetState.GearAction1) then
			return -1
		end 
	
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 3001, 3, 1) then
	      return -1
	    end
	
	return 0
end

-- 触发条件

-- 触发操作
function action_EVENT_CHALLENGE_FAIL_454005(context, evt)
	-- 将configid为 454002 的物件更改为状态 GadgetState.Action01
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 454002, GadgetState.Action01) then
			return -1
		end 
	
	-- 创建id为454003的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 454003 }) then
	  return -1
	end
	
	-- 删除suite2的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133103454, 2)
	
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 133103454, suite = 1 }) then
			return -1
		end
	
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 3001, 4, 1) then
	      return -1
	    end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_454006(context, evt)
	if 454003 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_454006(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 133103454, 454003, {177}) then
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_454007(context, evt)
	-- 判断是gadgetid 454003 option_id 177
	if 454003 ~= evt.param1 then
		return false	
	end
	
	if 177 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_454007(context, evt)
	-- 180号挑战,duration内击杀kill_sum的怪物
	if 0 ~= ScriptLib.ActiveChallenge(context, 180, 180, defs.duration, defs.group_id, defs.kill_sum, 0) then
	return -1
	end
	
	-- 添加suite2的新内容
	ScriptLib.AddExtraGroupSuite(context, defs.group_id, 2)
	
		--永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
	if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = defs.gadget_controller_id }) then
	return -1
	end
		
	
	-- 将configid为 2002 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 454002, GadgetState.GearStart) then
	return -1
	end 
	
	
	
	-- 运营数据埋点，匹配LD定义的规则使用
	if 0 ~= ScriptLib.MarkPlayerAction(context, 3001, 1, 1) then
	return -1
	end
	
	return 0
	
end
