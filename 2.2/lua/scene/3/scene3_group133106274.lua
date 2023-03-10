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
	{ config_id = 274001, gadget_id = 70500000, pos = { x = -671.065, y = 147.038, z = 879.570 }, rot = { x = 13.904, y = 73.537, z = 0.000 }, level = 1, point_type = 1003, persistent = true, area_id = 8 },
	{ config_id = 274002, gadget_id = 70500000, pos = { x = -669.116, y = 146.378, z = 876.767 }, rot = { x = 353.694, y = 1.839, z = 327.518 }, level = 1, point_type = 1003, persistent = true, area_id = 8 },
	{ config_id = 274003, gadget_id = 70360001, pos = { x = -669.628, y = 146.750, z = 877.413 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, persistent = true, area_id = 8 },
	{ config_id = 274004, gadget_id = 70500000, pos = { x = -671.519, y = 147.774, z = 875.687 }, rot = { x = 0.000, y = 317.277, z = 0.000 }, level = 1, point_type = 1005, persistent = true, area_id = 8 },
	{ config_id = 274005, gadget_id = 70500000, pos = { x = -668.532, y = 146.167, z = 878.225 }, rot = { x = 342.023, y = 55.911, z = 7.924 }, level = 1, point_type = 1005, persistent = true, area_id = 8 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1274006, name = "GROUP_REFRESH_274006", event = EventType.EVENT_GROUP_REFRESH, source = "", condition = "", action = "action_EVENT_GROUP_REFRESH_274006" },
	{ config_id = 1274007, name = "ANY_GADGET_DIE_274007", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "", action = "action_EVENT_ANY_GADGET_DIE_274007", trigger_count = 0 },
	{ config_id = 1274008, name = "BLOSSOM_PROGRESS_FINISH_274008", event = EventType.EVENT_BLOSSOM_PROGRESS_FINISH, source = "", condition = "", action = "action_EVENT_BLOSSOM_PROGRESS_FINISH_274008" },
	{ config_id = 1274009, name = "GROUP_LOAD_274009", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "", action = "action_EVENT_GROUP_LOAD_274009" }
}

-- 变量
variables = {
	{ name = "GroupCompletion", value = 0, no_refresh = false }
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
		gadgets = { },
		regions = { },
		triggers = { "GROUP_LOAD_274009" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = 开关suite,
		monsters = { },
		gadgets = { },
		regions = { },
		triggers = { "GROUP_REFRESH_274006", "ANY_GADGET_DIE_274007", "BLOSSOM_PROGRESS_FINISH_274008" },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = 战斗suite,
		monsters = { },
		gadgets = { 274001, 274002, 274003, 274004, 274005 },
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

-- 触发操作
function action_EVENT_GROUP_REFRESH_274006(context, evt)
	-- 指定group的循环玩法进度加1
	if 0 ~= ScriptLib.SetBlossomScheduleStateByGroupId(context, 133106274, 2) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_blossomscehedule_byGroupId")
		return -1
	end
	
	-- 添加suite3的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133106274, 3)
	
	return 0
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_274007(context, evt)
	-- 指定group的循环玩法进度加1
	ScriptLib.AddBlossomScheduleProgressByGroupId(context, 133106274)
	
	return 0
end

-- 触发操作
function action_EVENT_BLOSSOM_PROGRESS_FINISH_274008(context, evt)
	-- 指定group的循环玩法进度加1
	if 0 ~= ScriptLib.SetBlossomScheduleStateByGroupId(context, 133106274, 3) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_blossomscehedule_byGroupId")
		return -1
	end
	
	-- 将本组内变量名为 "GroupCompletion" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "GroupCompletion", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_GROUP_LOAD_274009(context, evt)
		-- 刷新本group,指定suite与等级修正,自动通知对应循环玩法的进度
		if 0 ~= ScriptLib.RefreshBlossomGroup(context, { group_id = 0, suite = 2, exclude_prev = true }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_blossom_group")
			return -1
		end
	
	return 0
end