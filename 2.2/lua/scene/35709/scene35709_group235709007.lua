--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 7001, monster_id = 23010501, pos = { x = 6.069, y = 0.012, z = -11.151 }, rot = { x = 0.000, y = 346.531, z = 0.000 }, level = 1 },
	{ config_id = 7002, monster_id = 23010301, pos = { x = -8.689, y = 0.012, z = -11.392 }, rot = { x = 0.000, y = 21.465, z = 0.000 }, level = 1, affix = { 6104 }, isElite = true },
	{ config_id = 7003, monster_id = 23010401, pos = { x = -0.003, y = 0.046, z = -14.532 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 7005, monster_id = 23010301, pos = { x = 5.516, y = 0.012, z = -8.425 }, rot = { x = 0.000, y = 346.531, z = 0.000 }, level = 1, affix = { 1027 }, isElite = true },
	{ config_id = 7006, monster_id = 23010201, pos = { x = -7.759, y = 0.012, z = -8.438 }, rot = { x = 0.000, y = 21.465, z = 0.000 }, level = 1 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 7009, gadget_id = 70900205, pos = { x = 5.987, y = -1.198, z = 3.099 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1007010, name = "ANY_MONSTER_LIVE_7010", event = EventType.EVENT_ANY_MONSTER_LIVE, source = "", condition = "condition_EVENT_ANY_MONSTER_LIVE_7010", action = "action_EVENT_ANY_MONSTER_LIVE_7010" },
	{ config_id = 1007011, name = "CHALLENGE_SUCCESS_7011", event = EventType.EVENT_CHALLENGE_SUCCESS, source = "1", condition = "", action = "action_EVENT_CHALLENGE_SUCCESS_7011" },
	{ config_id = 1007012, name = "CHALLENGE_FAIL_7012", event = EventType.EVENT_CHALLENGE_FAIL, source = "1", condition = "", action = "action_EVENT_CHALLENGE_FAIL_7012" },
	{ config_id = 1007013, name = "ANY_MONSTER_DIE_7013", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_7013", action = "action_EVENT_ANY_MONSTER_DIE_7013" }
}

-- 变量
variables = {
	{ name = "monster_wave", value = 0, no_refresh = false },
	{ name = "stage", value = 0, no_refresh = false }
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
		gadgets = { 7009 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 7001, 7002 },
		gadgets = { 7009 },
		regions = { },
		triggers = { "ANY_MONSTER_LIVE_7010", "CHALLENGE_SUCCESS_7011", "CHALLENGE_FAIL_7012", "ANY_MONSTER_DIE_7013" },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { 7003, 7005, 7006 },
		gadgets = { },
		regions = { },
		triggers = { "CHALLENGE_SUCCESS_7011", "CHALLENGE_FAIL_7012" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_LIVE_7010(context, evt)
	if 7001 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_LIVE_7010(context, evt)
	-- 创建编号为1（该挑战的识别id),挑战内容为197的区域挑战，具体参数填写方式，见DungeonChallengeData表中的注释，所有填写的值都必须是int类型
	if 0 ~= ScriptLib.ActiveChallenge(context, 1, 197, 600, 235709007, 5, 0) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_challenge")
		return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_CHALLENGE_SUCCESS_7011(context, evt)
	-- 将剩余时间记录在触发此challenge的group变量TPL_TIME中
	    if 0 ~= ScriptLib.SetGroupVariableValueByGroup(context, "TPL_TIME", evt.param2, 235709005) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : save_challenge_remainTime")
	      return -1
	    end
	
	-- 将本组内变量名为 "stage" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValueByGroup(context, "stage", 1, 235709005) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable_by_group")
	  return -1
	end
	
	-- 爬塔更换队伍2
	if 0 ~= ScriptLib.TowerMirrorTeamSetUp(context, 2) then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : tower_team_setup")
		return -1
	end
	
	-- 改变指定group组235709006中， configid为6001的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 235709006, 6001, GadgetState.Default) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 235709006, 6001, {176}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	-- 改变指定group组235709005中， configid为5001的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 235709005, 5001, GadgetState.GearStart) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	-- 改变指定group组235709006中， configid为6002的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 235709006, 6002, GadgetState.Default) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	-- 改变指定group组235709009中， configid为9001的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 235709009, 9001, GadgetState.Default) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	-- 改变指定group组235709009中， configid为9002的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 235709009, 9002, GadgetState.Default) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	return 0
end

-- 触发操作
function action_EVENT_CHALLENGE_FAIL_7012(context, evt)
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 235709007, suite = 1 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	-- 地城失败结算
	if 0 ~= ScriptLib.CauseDungeonFail(context) then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : cause_dungeonfail")
		return -1
	end
	
	-- 改变指定group组235709006中， configid为6002的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 235709006, 6002, GadgetState.Default) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	-- 改变指定group组235709009中， configid为9001的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 235709009, 9001, GadgetState.Default) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	-- 改变指定group组235709009中， configid为9002的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 235709009, 9002, GadgetState.Default) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_7013(context, evt)
	-- 判断指定group组剩余怪物数量是否是0 
	if ScriptLib.GetGroupMonsterCountByGroupId(context, 235709007) ~= 0 then
		return false
	end
	
	-- 判断变量"monster_wave"为0
	if ScriptLib.GetGroupVariableValue(context, "monster_wave") ~= 0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_7013(context, evt)
	-- 添加suite3的新内容
	    ScriptLib.AddExtraGroupSuite(context, 235709007, 3)
	
	-- 针对当前group内变量名为 "monster_wave" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "monster_wave", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	return 0
end