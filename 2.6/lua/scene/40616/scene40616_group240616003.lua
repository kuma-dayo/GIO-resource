-- 基础信息
local base_info = {
	group_id = 240616003
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 3001, monster_id = 20011001, pos = { x = 7.130, y = 0.120, z = -6.251 }, rot = { x = 0.000, y = 346.531, z = 0.000 }, level = 1 },
	{ config_id = 3002, monster_id = 20011001, pos = { x = -6.145, y = 0.120, z = -6.264 }, rot = { x = 0.000, y = 21.465, z = 0.000 }, level = 1 },
	{ config_id = 3003, monster_id = 21010301, pos = { x = -5.726, y = 0.120, z = -11.174 }, rot = { x = 0.000, y = 18.562, z = 0.000 }, level = 1 },
	{ config_id = 3004, monster_id = 21010301, pos = { x = 0.808, y = 0.120, z = -12.769 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 3005, monster_id = 21010301, pos = { x = 8.689, y = 0.120, z = -12.969 }, rot = { x = 0.000, y = 343.731, z = 0.000 }, level = 1 },
	{ config_id = 3006, monster_id = 20011001, pos = { x = -10.396, y = 0.120, z = -2.368 }, rot = { x = 0.000, y = 64.828, z = 0.000 }, level = 1 },
	{ config_id = 3007, monster_id = 20011001, pos = { x = 12.682, y = 0.120, z = -2.071 }, rot = { x = 0.000, y = 270.084, z = 0.000 }, level = 1 },
	{ config_id = 3008, monster_id = 20011001, pos = { x = 1.092, y = 0.120, z = 6.281 }, rot = { x = 0.000, y = 182.789, z = 0.000 }, level = 1 },
	{ config_id = 3009, monster_id = 20011101, pos = { x = 5.283, y = 0.120, z = -8.561 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 3010, monster_id = 20011101, pos = { x = -4.981, y = 0.120, z = -8.887 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 3011, monster_id = 21010501, pos = { x = 12.917, y = 0.120, z = 0.360 }, rot = { x = 0.000, y = 315.283, z = 0.000 }, level = 1, pose_id = 32 },
	{ config_id = 3012, monster_id = 21010501, pos = { x = 12.406, y = 0.120, z = -9.369 }, rot = { x = 0.000, y = 322.134, z = 0.000 }, level = 1, pose_id = 32 },
	{ config_id = 3013, monster_id = 21010501, pos = { x = 0.373, y = 0.120, z = -11.272 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, pose_id = 32 },
	{ config_id = 3014, monster_id = 21010501, pos = { x = -12.092, y = 0.120, z = -6.434 }, rot = { x = 0.000, y = 50.168, z = 0.000 }, level = 1, pose_id = 32 },
	{ config_id = 3015, monster_id = 21010501, pos = { x = -13.641, y = 0.120, z = 1.147 }, rot = { x = 0.000, y = 76.240, z = 0.000 }, level = 1, pose_id = 32 },
	{ config_id = 3016, monster_id = 22010301, pos = { x = 1.000, y = 0.120, z = -7.530 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 3017, monster_id = 20011001, pos = { x = -10.648, y = 0.120, z = 0.463 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 3018, monster_id = 20011001, pos = { x = 10.372, y = 0.120, z = -2.043 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 3019, monster_id = 20011001, pos = { x = -0.820, y = 0.120, z = 8.075 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 3020, monster_id = 20011001, pos = { x = 5.407, y = 0.120, z = 6.521 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 3021, gadget_id = 70900205, pos = { x = 7.127, y = -1.339, z = 1.931 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1003022, name = "ANY_MONSTER_LIVE_3022", event = EventType.EVENT_ANY_MONSTER_LIVE, source = "", condition = "condition_EVENT_ANY_MONSTER_LIVE_3022", action = "action_EVENT_ANY_MONSTER_LIVE_3022" },
	{ config_id = 1003023, name = "ANY_MONSTER_DIE_3023", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_3023", action = "action_EVENT_ANY_MONSTER_DIE_3023" },
	{ config_id = 1003024, name = "ANY_MONSTER_DIE_3024", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_3024", action = "action_EVENT_ANY_MONSTER_DIE_3024" },
	{ config_id = 1003025, name = "ANY_MONSTER_DIE_3025", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_3025", action = "action_EVENT_ANY_MONSTER_DIE_3025" },
	{ config_id = 1003026, name = "CHALLENGE_SUCCESS_3026", event = EventType.EVENT_CHALLENGE_SUCCESS, source = "1", condition = "", action = "action_EVENT_CHALLENGE_SUCCESS_3026" },
	{ config_id = 1003027, name = "CHALLENGE_FAIL_3027", event = EventType.EVENT_CHALLENGE_FAIL, source = "1", condition = "", action = "action_EVENT_CHALLENGE_FAIL_3027" }
}

-- 变量
variables = {
	{ name = "Key", value = 0, no_refresh = false }
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
		gadgets = { 3021 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = suite_2,
		monsters = { 3001, 3002, 3003, 3004, 3005 },
		gadgets = { 3021 },
		regions = { },
		triggers = { "ANY_MONSTER_LIVE_3022", "ANY_MONSTER_DIE_3023", "CHALLENGE_SUCCESS_3026", "CHALLENGE_FAIL_3027" },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = suite_3,
		monsters = { 3006, 3007, 3008, 3009, 3010 },
		gadgets = { 3021 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_3024", "CHALLENGE_SUCCESS_3026", "CHALLENGE_FAIL_3027" },
		rand_weight = 100
	},
	{
		-- suite_id = 4,
		-- description = suite_4,
		monsters = { 3011, 3012, 3013, 3014, 3015 },
		gadgets = { 3021 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_3025", "CHALLENGE_SUCCESS_3026", "CHALLENGE_FAIL_3027" },
		rand_weight = 100
	},
	{
		-- suite_id = 5,
		-- description = suite_5,
		monsters = { 3016, 3017, 3018, 3019, 3020 },
		gadgets = { 3021 },
		regions = { },
		triggers = { "CHALLENGE_SUCCESS_3026", "CHALLENGE_FAIL_3027" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_LIVE_3022(context, evt)
	if 3001 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_LIVE_3022(context, evt)
	-- 创建编号为1（该挑战的识别id),挑战内容为191的区域挑战，具体参数填写方式，见DungeonChallengeData表中的注释，所有填写的值都必须是int类型
	if 0 ~= ScriptLib.ActiveChallenge(context, 1, 191, 120, 240616003, 20, 0) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_challenge")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_3023(context, evt)
	-- 判断指定group组剩余怪物数量是否是0 
	if ScriptLib.GetGroupMonsterCountByGroupId(context, 240616003) ~= 0 then
		return false
	end
	
	-- 判断变量"Key"为0
	if ScriptLib.GetGroupVariableValue(context, "Key") ~= 0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_3023(context, evt)
	-- 添加suite3的新内容
	    ScriptLib.AddExtraGroupSuite(context, 240616003, 3)
	
	-- 针对当前group内变量名为 "Key" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "Key", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_3024(context, evt)
	-- 判断指定group组剩余怪物数量是否是0 
	if ScriptLib.GetGroupMonsterCountByGroupId(context, 240616003) ~= 0 then
		return false
	end
	
	-- 判断变量"Key"为1
	if ScriptLib.GetGroupVariableValue(context, "Key") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_3024(context, evt)
	-- 添加suite4的新内容
	    ScriptLib.AddExtraGroupSuite(context, 240616003, 4)
	
	-- 针对当前group内变量名为 "Key" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "Key", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_3025(context, evt)
	-- 判断指定group组剩余怪物数量是否是0 
	if ScriptLib.GetGroupMonsterCountByGroupId(context, 240616003) ~= 0 then
		return false
	end
	
	-- 判断变量"Key"为2
	if ScriptLib.GetGroupVariableValue(context, "Key") ~= 2 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_3025(context, evt)
	-- 添加suite5的新内容
	    ScriptLib.AddExtraGroupSuite(context, 240616003, 5)
	
	-- 针对当前group内变量名为 "Key" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "Key", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_CHALLENGE_SUCCESS_3026(context, evt)
	-- 改变指定group组240616001中， configid为1002的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 240616001, 1002, GadgetState.GearStart) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	return 0
end

-- 触发操作
function action_EVENT_CHALLENGE_FAIL_3027(context, evt)
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 240616003, suite = 1 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	-- 改变指定group组240616002中， configid为2001的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 240616002, 2001, GadgetState.Default) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 240616002, 2001, {7}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	return 0
end