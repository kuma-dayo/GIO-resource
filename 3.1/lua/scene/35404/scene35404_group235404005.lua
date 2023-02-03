-- 基础信息
local base_info = {
	group_id = 235404005
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 5002, monster_id = 26020201, pos = { x = 0.162, y = 0.028, z = -0.045 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, pose_id = 1 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 5026, gadget_id = 70900205, pos = { x = -2.206, y = -3.342, z = -0.046 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1005001, name = "ANY_MONSTER_LIVE_5001", event = EventType.EVENT_ANY_MONSTER_LIVE, source = "", condition = "", action = "action_EVENT_ANY_MONSTER_LIVE_5001" },
	{ config_id = 1005004, name = "CHALLENGE_SUCCESS_5004", event = EventType.EVENT_CHALLENGE_SUCCESS, source = "2", condition = "", action = "action_EVENT_CHALLENGE_SUCCESS_5004" },
	{ config_id = 1005005, name = "CHALLENGE_FAIL_5005", event = EventType.EVENT_CHALLENGE_FAIL, source = "2", condition = "", action = "action_EVENT_CHALLENGE_FAIL_5005" },
	{ config_id = 1005027, name = "ANY_MONSTER_DIE_5027", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_5027", action = "action_EVENT_ANY_MONSTER_DIE_5027" }
}

-- 变量
variables = {
	{ config_id = 1, name = "monster_wave", value = 0, no_refresh = false }
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
		gadgets = { 5026 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = suite_2,
		monsters = { 5002 },
		gadgets = { 5026 },
		regions = { },
		triggers = { "ANY_MONSTER_LIVE_5001", "CHALLENGE_SUCCESS_5004", "CHALLENGE_FAIL_5005" },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = suite_3,
		monsters = { },
		gadgets = { 5026 },
		regions = { },
		triggers = { "CHALLENGE_SUCCESS_5004", "CHALLENGE_FAIL_5005" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发操作
function action_EVENT_ANY_MONSTER_LIVE_5001(context, evt)
	-- 创建编号为2（该挑战的识别id),挑战内容为198的区域挑战，param1必须为时间
	-- 从235404001的变量TPL_TIME中取出对应值并开启挑战
	  local tpl_time = ScriptLib.GetGroupVariableValueByGroup(context, "TPL_TIME", 235404001)
	  if tpl_time == nil or tpl_time < 0 then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_challenge_by_remainTime")
	    return -1
	  elseif tpl_time < 1 then
	    tpl_time = 0
	  end
	  if 0 ~= ScriptLib.ActiveChallenge(context, 2, 198, tpl_time, 235404005, 1, 0) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_challenge_by_remainTime")
	    return -1
	  end
	
	return 0
end

-- 触发操作
function action_EVENT_CHALLENGE_SUCCESS_5004(context, evt)
	-- 将本组内变量名为 "stage" 的变量设置为 2
	if 0 ~= ScriptLib.SetGroupVariableValueByGroup(context, "stage", 2, 235404001) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable_by_group")
	  return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_CHALLENGE_FAIL_5005(context, evt)
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 235404005, suite = 1 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	-- 地城失败结算
	if 0 ~= ScriptLib.CauseDungeonFail(context) then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : cause_dungeonfail")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_5027(context, evt)
	-- 判断指定group组剩余怪物数量是否是0 
	if ScriptLib.GetGroupMonsterCountByGroupId(context, 235404005) ~= 0 then
		return false
	end
	
	-- 判断变量"monster_wave"为1
	if ScriptLib.GetGroupVariableValue(context, "monster_wave") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_5027(context, evt)
	-- 添加suite3的新内容
	    ScriptLib.AddExtraGroupSuite(context, 235404005, 3)
	
	-- 针对当前group内变量名为 "monster_wave" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "monster_wave", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	return 0
end