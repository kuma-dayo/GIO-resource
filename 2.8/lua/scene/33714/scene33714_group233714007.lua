-- 基础信息
local base_info = {
	group_id = 233714007
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 7001, monster_id = 20011103, pos = { x = 5.919, y = -0.044, z = -5.583 }, rot = { x = 0.000, y = 346.531, z = 0.000 }, level = 1, disableWander = true },
	{ config_id = 7002, monster_id = 20011103, pos = { x = -7.356, y = -0.044, z = -5.596 }, rot = { x = 0.000, y = 21.465, z = 0.000 }, level = 1, disableWander = true },
	{ config_id = 7003, monster_id = 20010904, pos = { x = -0.197, y = -0.044, z = -7.200 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, disableWander = true },
	{ config_id = 7004, monster_id = 21011301, pos = { x = -0.021, y = 0.046, z = 12.214 }, rot = { x = 0.000, y = 180.000, z = 0.000 }, level = 1, disableWander = true },
	{ config_id = 7005, monster_id = 21011301, pos = { x = 14.582, y = 0.046, z = 0.029 }, rot = { x = 0.000, y = 270.000, z = 0.000 }, level = 1, disableWander = true },
	{ config_id = 7006, monster_id = 21011301, pos = { x = -14.620, y = 0.046, z = 0.020 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 1, disableWander = true },
	{ config_id = 7007, monster_id = 22010302, pos = { x = -0.127, y = -0.044, z = 9.140 }, rot = { x = 0.000, y = 180.000, z = 0.000 }, level = 1, disableWander = true, affix = { 6106 }, isElite = true },
	{ config_id = 7008, monster_id = 26010101, pos = { x = 13.345, y = -0.044, z = 10.805 }, rot = { x = 0.000, y = 225.389, z = 0.000 }, level = 1, disableWander = true },
	{ config_id = 7009, monster_id = 26010101, pos = { x = -13.500, y = -0.044, z = 11.163 }, rot = { x = 0.000, y = 132.996, z = 0.000 }, level = 1, disableWander = true }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 7010, gadget_id = 70900205, pos = { x = 5.917, y = -0.566, z = 2.600 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1007011, name = "MONSTER_TIDE_DIE_7011", event = EventType.EVENT_MONSTER_TIDE_DIE, source = "2", condition = "condition_EVENT_MONSTER_TIDE_DIE_7011", action = "action_EVENT_MONSTER_TIDE_DIE_7011" },
	{ config_id = 1007012, name = "MONSTER_TIDE_DIE_7012", event = EventType.EVENT_MONSTER_TIDE_DIE, source = "1", condition = "condition_EVENT_MONSTER_TIDE_DIE_7012", action = "action_EVENT_MONSTER_TIDE_DIE_7012" },
	{ config_id = 1007013, name = "ANY_MONSTER_LIVE_7013", event = EventType.EVENT_ANY_MONSTER_LIVE, source = "", condition = "condition_EVENT_ANY_MONSTER_LIVE_7013", action = "action_EVENT_ANY_MONSTER_LIVE_7013" },
	{ config_id = 1007014, name = "CHALLENGE_SUCCESS_7014", event = EventType.EVENT_CHALLENGE_SUCCESS, source = "1", condition = "", action = "action_EVENT_CHALLENGE_SUCCESS_7014" },
	{ config_id = 1007015, name = "CHALLENGE_FAIL_7015", event = EventType.EVENT_CHALLENGE_FAIL, source = "1", condition = "", action = "action_EVENT_CHALLENGE_FAIL_7015" }
}

-- 变量
variables = {
	{ config_id = 1, name = "monster_wave", value = 0, no_refresh = false },
	{ config_id = 2, name = "stage", value = 0, no_refresh = false }
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
		gadgets = { 7010 },
		regions = { },
		triggers = { "MONSTER_TIDE_DIE_7011", "MONSTER_TIDE_DIE_7012", "ANY_MONSTER_LIVE_7013", "CHALLENGE_SUCCESS_7014", "CHALLENGE_FAIL_7015" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_MONSTER_TIDE_DIE_7011(context, evt)
	if 6 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_MONSTER_TIDE_DIE_7011(context, evt)
	-- 延迟1秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 7008, delay_time = 1 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	-- 延迟1秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 7009, delay_time = 1 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_MONSTER_TIDE_DIE_7012(context, evt)
	if 6 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_MONSTER_TIDE_DIE_7012(context, evt)
	-- 延迟1秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 7007, delay_time = 1 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_LIVE_7013(context, evt)
	if 7001 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_LIVE_7013(context, evt)
	-- 创建编号为1（该挑战的识别id),挑战内容为197的区域挑战，具体参数填写方式，见DungeonChallengeData表中的注释，所有填写的值都必须是int类型
	if 0 ~= ScriptLib.ActiveChallenge(context, 1, 197, 600, 233714007, 15, 0) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_challenge")
		return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_CHALLENGE_SUCCESS_7014(context, evt)
	-- 将剩余时间记录在触发此challenge的group变量TPL_TIME中
	    if 0 ~= ScriptLib.SetGroupVariableValueByGroup(context, "TPL_TIME", evt.param2, 233714005) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : save_challenge_remainTime")
	      return -1
	    end
	
	-- 爬塔是否允许使用技能（ is_allow_use_skill=0或1,表示不允许或允许使用主动技能）
	if 0 ~= ScriptLib.SetIsAllowUseSkill(context, 0) then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : tower_allow_use_skill")
		return -1
	end
	
	-- 将本组内变量名为 "stage" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValueByGroup(context, "stage", 1, 233714005) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable_by_group")
	  return -1
	end
	
	-- 爬塔更换队伍2
	if 0 ~= ScriptLib.TowerMirrorTeamSetUp(context, 2) then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : tower_team_setup")
		return -1
	end
	
	-- 改变指定group组233714006中， configid为6001的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 233714006, 6001, GadgetState.Default) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 233714006, 6001, {176}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	-- 改变指定group组233714005中， configid为5001的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 233714005, 5001, GadgetState.GearStart) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	-- 改变指定group组233714009中， configid为9001的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 233714009, 9001, GadgetState.Default) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	-- 改变指定group组233714009中， configid为9002的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 233714009, 9002, GadgetState.Default) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	-- 改变指定group组233714006中， configid为6002的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 233714006, 6002, GadgetState.GearStop) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	-- 删除suite2的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 233714006, 2)
	
	-- 添加suite3的新内容
	    ScriptLib.AddExtraGroupSuite(context, 233714006, 3)
	
	return 0
end

-- 触发操作
function action_EVENT_CHALLENGE_FAIL_7015(context, evt)
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 233714007, suite = 1 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	-- 地城失败结算
	if 0 ~= ScriptLib.CauseDungeonFail(context) then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : cause_dungeonfail")
		return -1
	end
	
	-- 改变指定group组233714006中， configid为6002的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 233714006, 6002, GadgetState.Default) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	-- 改变指定group组233714006中， configid为9001的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 233714006, 9001, GadgetState.Default) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	-- 改变指定group组233714006中， configid为9002的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 233714006, 9002, GadgetState.Default) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	return 0
end