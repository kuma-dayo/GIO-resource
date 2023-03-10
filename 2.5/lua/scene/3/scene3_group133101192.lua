-- 基础信息
local base_info = {
	group_id = 133101192
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
	{ config_id = 192001, gadget_id = 70500000, pos = { x = 1197.863, y = 248.705, z = 1051.370 }, rot = { x = 12.658, y = 2.461, z = 21.921 }, level = 1, point_type = 1003, persistent = true, area_id = 6 },
	{ config_id = 192002, gadget_id = 70500000, pos = { x = 1202.242, y = 246.745, z = 1038.061 }, rot = { x = 354.274, y = 359.314, z = 13.658 }, level = 1, point_type = 1003, persistent = true, area_id = 6 },
	{ config_id = 192003, gadget_id = 70360001, pos = { x = 1200.418, y = 249.193, z = 1046.414 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, persistent = true, area_id = 6 },
	{ config_id = 192004, gadget_id = 70500000, pos = { x = 1203.465, y = 249.500, z = 1053.730 }, rot = { x = 351.245, y = 359.252, z = 9.753 }, level = 1, point_type = 1005, persistent = true, area_id = 6 },
	{ config_id = 192005, gadget_id = 70500000, pos = { x = 1199.026, y = 249.090, z = 1047.572 }, rot = { x = 21.147, y = 284.007, z = 359.299 }, level = 1, point_type = 1005, persistent = true, area_id = 6 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1192006, name = "GROUP_REFRESH_192006", event = EventType.EVENT_GROUP_REFRESH, source = "", condition = "", action = "action_EVENT_GROUP_REFRESH_192006" },
	{ config_id = 1192007, name = "ANY_GADGET_DIE_192007", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "", action = "action_EVENT_ANY_GADGET_DIE_192007", trigger_count = 0 },
	{ config_id = 1192008, name = "BLOSSOM_PROGRESS_FINISH_192008", event = EventType.EVENT_BLOSSOM_PROGRESS_FINISH, source = "", condition = "", action = "action_EVENT_BLOSSOM_PROGRESS_FINISH_192008" },
	{ config_id = 1192009, name = "GROUP_LOAD_192009", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "", action = "action_EVENT_GROUP_LOAD_192009" }
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
		triggers = { "GROUP_LOAD_192009" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = 开关suite,
		monsters = { },
		gadgets = { },
		regions = { },
		triggers = { "GROUP_REFRESH_192006", "ANY_GADGET_DIE_192007", "BLOSSOM_PROGRESS_FINISH_192008" },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = 战斗suite,
		monsters = { },
		gadgets = { 192001, 192002, 192003, 192004, 192005 },
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
function action_EVENT_GROUP_REFRESH_192006(context, evt)
	-- 指定group的循环玩法进度加1
	if 0 ~= ScriptLib.SetBlossomScheduleStateByGroupId(context, 133101192, 2) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_blossomscehedule_byGroupId")
		return -1
	end
	
	-- 添加suite3的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133101192, 3)
	
	return 0
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_192007(context, evt)
	-- 指定group的循环玩法进度加1
	ScriptLib.AddBlossomScheduleProgressByGroupId(context, 133101192)
	
	return 0
end

-- 触发操作
function action_EVENT_BLOSSOM_PROGRESS_FINISH_192008(context, evt)
	-- 指定group的循环玩法进度加1
	if 0 ~= ScriptLib.SetBlossomScheduleStateByGroupId(context, 133101192, 3) then
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
function action_EVENT_GROUP_LOAD_192009(context, evt)
		-- 刷新本group,指定suite与等级修正,自动通知对应循环玩法的进度
		if 0 ~= ScriptLib.RefreshBlossomGroup(context, { group_id = 0, suite = 2, exclude_prev = true }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_blossom_group")
			return -1
		end
	
	return 0
end