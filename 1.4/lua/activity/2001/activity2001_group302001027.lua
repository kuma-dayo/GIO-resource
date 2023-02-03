-- Trigger变量
local defs = {
	radius = 7,
	group_id = 302001027,
	gadget_id = 27021,
	battle_time = 600,
	auto_decline = 30,
	max_energy = 300,
	reward_gadget_id = 246022
}


--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 27001, monster_id = 21010201, pos = { x = 2703.916, y = 194.650, z = -1664.419 }, rot = { x = 0.000, y = 118.838, z = 0.000 }, level = 15, drop_id = 1000100, kill_score = 10 },
	{ config_id = 27002, monster_id = 21011001, pos = { x = 2721.785, y = 195.108, z = -1681.752 }, rot = { x = 0.000, y = 322.246, z = 0.000 }, level = 15, kill_score = 10 },
	{ config_id = 27003, monster_id = 21011001, pos = { x = 2703.916, y = 194.650, z = -1664.419 }, rot = { x = 0.000, y = 118.838, z = 0.000 }, level = 15, drop_id = 1000100, kill_score = 10 },
	{ config_id = 27004, monster_id = 21011001, pos = { x = 2715.013, y = 196.617, z = -1659.827 }, rot = { x = 0.000, y = 173.028, z = 0.000 }, level = 15, drop_id = 1000100, kill_score = 10 },
	{ config_id = 27005, monster_id = 20010501, pos = { x = 2723.444, y = 196.871, z = -1664.042 }, rot = { x = 0.000, y = 202.290, z = 0.000 }, level = 15, drop_id = 1000100, kill_score = 10 },
	{ config_id = 27006, monster_id = 20010501, pos = { x = 2699.233, y = 194.600, z = -1677.728 }, rot = { x = 0.000, y = 80.107, z = 0.000 }, level = 15, drop_id = 1000100, kill_score = 10 },
	{ config_id = 27007, monster_id = 20010501, pos = { x = 2734.289, y = 198.481, z = -1668.959 }, rot = { x = 0.000, y = 252.239, z = 0.000 }, level = 15, drop_id = 1000100, kill_score = 10 },
	{ config_id = 27008, monster_id = 20010501, pos = { x = 2733.050, y = 198.233, z = -1665.453 }, rot = { x = 0.000, y = 236.476, z = 0.000 }, level = 15, drop_id = 1000100, kill_score = 10 },
	{ config_id = 27009, monster_id = 20010601, pos = { x = 2719.490, y = 194.689, z = -1689.548 }, rot = { x = 0.000, y = 359.203, z = 0.000 }, level = 15, drop_id = 1000100, kill_score = 30 },
	{ config_id = 27010, monster_id = 20010601, pos = { x = 2700.213, y = 194.600, z = -1684.319 }, rot = { x = 0.000, y = 46.593, z = 0.000 }, level = 15, drop_id = 1000100, kill_score = 30 },
	{ config_id = 27011, monster_id = 20011301, pos = { x = 2710.052, y = 195.336, z = -1663.101 }, rot = { x = 0.000, y = 151.032, z = 0.000 }, level = 15, drop_id = 1000100, kill_score = 50 },
	{ config_id = 27012, monster_id = 21010201, pos = { x = 2715.013, y = 196.617, z = -1659.827 }, rot = { x = 0.000, y = 173.028, z = 0.000 }, level = 15, drop_id = 1000100, kill_score = 10 },
	{ config_id = 27013, monster_id = 21010301, pos = { x = 2723.444, y = 196.871, z = -1664.042 }, rot = { x = 0.000, y = 202.290, z = 0.000 }, level = 15, drop_id = 1000100, kill_score = 10 },
	{ config_id = 27014, monster_id = 21010301, pos = { x = 2699.233, y = 194.600, z = -1677.728 }, rot = { x = 0.000, y = 80.107, z = 0.000 }, level = 15, drop_id = 1000100, kill_score = 10 },
	{ config_id = 27015, monster_id = 21010502, pos = { x = 2734.289, y = 198.481, z = -1668.959 }, rot = { x = 0.000, y = 252.239, z = 0.000 }, level = 15, drop_id = 1000100, kill_score = 10 },
	{ config_id = 27016, monster_id = 21011002, pos = { x = 2733.050, y = 198.233, z = -1665.453 }, rot = { x = 0.000, y = 236.476, z = 0.000 }, level = 15, drop_id = 1000100, kill_score = 10 },
	{ config_id = 27017, monster_id = 21020101, pos = { x = 2719.490, y = 194.689, z = -1689.548 }, rot = { x = 0.000, y = 359.203, z = 0.000 }, level = 15, drop_id = 1000100, kill_score = 30 },
	{ config_id = 27018, monster_id = 21020202, pos = { x = 2700.213, y = 194.600, z = -1684.319 }, rot = { x = 0.000, y = 46.593, z = 0.000 }, level = 15, drop_id = 1000100, kill_score = 30 },
	{ config_id = 27019, monster_id = 22010202, pos = { x = 2710.052, y = 195.336, z = -1663.101 }, rot = { x = 0.000, y = 151.032, z = 0.000 }, level = 15, drop_id = 1000100, kill_score = 50 },
	{ config_id = 27020, monster_id = 21010201, pos = { x = 2721.785, y = 195.108, z = -1681.752 }, rot = { x = 0.000, y = 322.246, z = 0.000 }, level = 15, kill_score = 10 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 27021, gadget_id = 70950020, pos = { x = 2713.799, y = 195.195, z = -1671.011 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 15 },
	{ config_id = 27022, gadget_id = 70950021, pos = { x = 2713.799, y = 195.195, z = -1671.011 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 15 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ name = "ANY_MONSTER_LIVE_27023", event = EventType.EVENT_ANY_MONSTER_LIVE, source = "", condition = "condition_EVENT_ANY_MONSTER_LIVE_27023", action = "action_EVENT_ANY_MONSTER_LIVE_27023", trigger_count = 0 },
	{ name = "MONSTER_TIDE_DIE_27024", event = EventType.EVENT_MONSTER_TIDE_DIE, source = "1", condition = "condition_EVENT_MONSTER_TIDE_DIE_27024", action = "action_EVENT_MONSTER_TIDE_DIE_27024", trigger_count = 0 },
	{ name = "MONSTER_TIDE_DIE_27025", event = EventType.EVENT_MONSTER_TIDE_DIE, source = "2", condition = "condition_EVENT_MONSTER_TIDE_DIE_27025", action = "action_EVENT_MONSTER_TIDE_DIE_27025", trigger_count = 0 },
	{ name = "MONSTER_TIDE_DIE_27026", event = EventType.EVENT_MONSTER_TIDE_DIE, source = "3", condition = "condition_EVENT_MONSTER_TIDE_DIE_27026", action = "action_EVENT_MONSTER_TIDE_DIE_27026", trigger_count = 0 },
	{ name = "MONSTER_TIDE_DIE_27027", event = EventType.EVENT_MONSTER_TIDE_DIE, source = "4", condition = "condition_EVENT_MONSTER_TIDE_DIE_27027", action = "action_EVENT_MONSTER_TIDE_DIE_27027", trigger_count = 0 },
	{ name = "MONSTER_TIDE_DIE_27028", event = EventType.EVENT_MONSTER_TIDE_DIE, source = "5", condition = "condition_EVENT_MONSTER_TIDE_DIE_27028", action = "action_EVENT_MONSTER_TIDE_DIE_27028", trigger_count = 0 },
	{ name = "MONSTER_TIDE_DIE_27029", event = EventType.EVENT_MONSTER_TIDE_DIE, source = "6", condition = "condition_EVENT_MONSTER_TIDE_DIE_27029", action = "action_EVENT_MONSTER_TIDE_DIE_27029", trigger_count = 0 },
	{ name = "SEAL_BATTLE_END_27030", event = EventType.EVENT_SEAL_BATTLE_END, source = "", condition = "condition_EVENT_SEAL_BATTLE_END_27030", action = "action_EVENT_SEAL_BATTLE_END_27030", trigger_count = 0 },
	{ name = "SELECT_DIFFICULTY_27031", event = EventType.EVENT_SELECT_DIFFICULTY, source = "", condition = "condition_EVENT_SELECT_DIFFICULTY_27031", action = "action_EVENT_SELECT_DIFFICULTY_27031", trigger_count = 0 },
	{ name = "ANY_MONSTER_LIVE_27032", event = EventType.EVENT_ANY_MONSTER_LIVE, source = "", condition = "condition_EVENT_ANY_MONSTER_LIVE_27032", action = "action_EVENT_ANY_MONSTER_LIVE_27032", trigger_count = 0 },
	{ name = "MONSTER_TIDE_DIE_27033", event = EventType.EVENT_MONSTER_TIDE_DIE, source = "1", condition = "condition_EVENT_MONSTER_TIDE_DIE_27033", action = "action_EVENT_MONSTER_TIDE_DIE_27033", trigger_count = 0 },
	{ name = "MONSTER_TIDE_DIE_27034", event = EventType.EVENT_MONSTER_TIDE_DIE, source = "2", condition = "condition_EVENT_MONSTER_TIDE_DIE_27034", action = "action_EVENT_MONSTER_TIDE_DIE_27034", trigger_count = 0 },
	{ name = "MONSTER_TIDE_DIE_27035", event = EventType.EVENT_MONSTER_TIDE_DIE, source = "3", condition = "condition_EVENT_MONSTER_TIDE_DIE_27035", action = "action_EVENT_MONSTER_TIDE_DIE_27035", trigger_count = 0 },
	{ name = "MONSTER_TIDE_DIE_27036", event = EventType.EVENT_MONSTER_TIDE_DIE, source = "4", condition = "condition_EVENT_MONSTER_TIDE_DIE_27036", action = "action_EVENT_MONSTER_TIDE_DIE_27036", trigger_count = 0 },
	{ name = "MONSTER_TIDE_DIE_27037", event = EventType.EVENT_MONSTER_TIDE_DIE, source = "5", condition = "condition_EVENT_MONSTER_TIDE_DIE_27037", action = "action_EVENT_MONSTER_TIDE_DIE_27037", trigger_count = 0 },
	{ name = "MONSTER_TIDE_DIE_27038", event = EventType.EVENT_MONSTER_TIDE_DIE, source = "6", condition = "condition_EVENT_MONSTER_TIDE_DIE_27038", action = "action_EVENT_MONSTER_TIDE_DIE_27038", trigger_count = 0 },
	{ name = "GENERAL_REWARD_DIE_27039", event = EventType.EVENT_GENERAL_REWARD_DIE, source = "", condition = "condition_EVENT_GENERAL_REWARD_DIE_27039", action = "action_EVENT_GENERAL_REWARD_DIE_27039" }
}

-- 变量
variables = {
	{ name = "isDone", value = 0, no_refresh = false },
	{ name = "difficulty", value = 0, no_refresh = false }
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
		gadgets = { 27021 },
		regions = { },
		triggers = { "SEAL_BATTLE_END_27030", "SELECT_DIFFICULTY_27031", "GENERAL_REWARD_DIE_27039" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 27002 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_LIVE_27023", "MONSTER_TIDE_DIE_27024", "MONSTER_TIDE_DIE_27025", "MONSTER_TIDE_DIE_27026", "MONSTER_TIDE_DIE_27027", "MONSTER_TIDE_DIE_27028", "MONSTER_TIDE_DIE_27029" },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { 27003, 27004, 27005, 27006, 27007, 27008, 27009, 27010, 27011 },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 4,
		-- description = ,
		monsters = { 27020 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_LIVE_27032", "MONSTER_TIDE_DIE_27033", "MONSTER_TIDE_DIE_27034", "MONSTER_TIDE_DIE_27035", "MONSTER_TIDE_DIE_27036", "MONSTER_TIDE_DIE_27037", "MONSTER_TIDE_DIE_27038" },
		rand_weight = 100
	},
	{
		-- suite_id = 5,
		-- description = ,
		monsters = { 27001, 27012, 27013, 27014, 27015, 27016, 27017, 27018, 27019 },
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
function condition_EVENT_ANY_MONSTER_LIVE_27023(context, evt)
	if 27002 ~= evt.param1 then
		return false
	end
	
	-- 判断变量"isDone"为0
	if ScriptLib.GetGroupVariableValue(context, "isDone") ~= 0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_LIVE_27023(context, evt)
	-- 创建编号为1（该怪物潮的识别id)的怪物潮，创建怪物总数为3，场上怪物最少2只，最多2只
	if 0 ~= ScriptLib.AutoMonsterTide(context, 1, 302001027, {27003,27004}, 3, 2, 2) then
		return -1
	end
	
	-- 创建编号为2（该怪物潮的识别id)的怪物潮，创建怪物总数为6，场上怪物最少2只，最多2只
	if 0 ~= ScriptLib.AutoMonsterTide(context, 2, 133005001, {1008,1009}, 6, 2, 2) then
		return -1
	end
	
	-- 创建编号为3（该怪物潮的识别id)的怪物潮，创建怪物总数为6，场上怪物最少1只，最多2只
	if 0 ~= ScriptLib.AutoMonsterTide(context, 3, 133005001, {1010,1011}, 6, 1, 2) then
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_MONSTER_TIDE_DIE_27024(context, evt)
	if 6 ~= evt.param1 then
		return false
	end
	
	-- 判断变量"isDone"为0
	if ScriptLib.GetGroupVariableValue(context, "isDone") ~= 0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_MONSTER_TIDE_DIE_27024(context, evt)
	-- 创建编号为4（该怪物潮的识别id)的怪物潮，创建怪物总数为2，场上怪物最少1只，最多1只
	if 0 ~= ScriptLib.AutoMonsterTide(context, 4, 133005001, {1015}, 2, 1, 1) then
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_MONSTER_TIDE_DIE_27025(context, evt)
	if 6 ~= evt.param1 then
		return false
	end
	
	-- 判断变量"isDone"为0
	if ScriptLib.GetGroupVariableValue(context, "isDone") ~= 0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_MONSTER_TIDE_DIE_27025(context, evt)
	-- 创建编号为5（该怪物潮的识别id)的怪物潮，创建怪物总数为2，场上怪物最少1只，最多1只
	if 0 ~= ScriptLib.AutoMonsterTide(context, 5, 133005001, {1014}, 2, 1, 1) then
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_MONSTER_TIDE_DIE_27026(context, evt)
	if 6 ~= evt.param1 then
		return false
	end
	
	-- 判断变量"isDone"为0
	if ScriptLib.GetGroupVariableValue(context, "isDone") ~= 0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_MONSTER_TIDE_DIE_27026(context, evt)
	-- 创建编号为6（该怪物潮的识别id)的怪物潮，创建怪物总数为1，场上怪物最少1只，最多1只
	if 0 ~= ScriptLib.AutoMonsterTide(context, 6, 133005001, {1019}, 1, 1, 1) then
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_MONSTER_TIDE_DIE_27027(context, evt)
	if 2 ~= evt.param1 then
		return false
	end
	
	-- 判断变量"isDone"为0
	if ScriptLib.GetGroupVariableValue(context, "isDone") ~= 0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_MONSTER_TIDE_DIE_27027(context, evt)
	-- 创建编号为1（该怪物潮的识别id)的怪物潮，创建怪物总数为6，场上怪物最少2只，最多2只
	if 0 ~= ScriptLib.AutoMonsterTide(context, 1, 133005001, {1006,1007}, 6, 2, 2) then
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_MONSTER_TIDE_DIE_27028(context, evt)
	if 2 ~= evt.param1 then
		return false
	end
	
	-- 判断变量"isDone"为0
	if ScriptLib.GetGroupVariableValue(context, "isDone") ~= 0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_MONSTER_TIDE_DIE_27028(context, evt)
	-- 创建编号为2（该怪物潮的识别id)的怪物潮，创建怪物总数为6，场上怪物最少2只，最多2只
	if 0 ~= ScriptLib.AutoMonsterTide(context, 2, 133005001, {1008,1009}, 6, 2, 2) then
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_MONSTER_TIDE_DIE_27029(context, evt)
	if 1 ~= evt.param1 then
		return false
	end
	
	-- 判断变量"isDone"为0
	if ScriptLib.GetGroupVariableValue(context, "isDone") ~= 0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_MONSTER_TIDE_DIE_27029(context, evt)
	-- 创建编号为3（该怪物潮的识别id)的怪物潮，创建怪物总数为6，场上怪物最少1只，最多2只
	if 0 ~= ScriptLib.AutoMonsterTide(context, 3, 133005001, {1010,1011}, 6, 1, 2) then
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SEAL_BATTLE_END_27030(context, evt)
	if 27021 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_SEAL_BATTLE_END_27030(context, evt)
	local diff = ScriptLib.GetGroupVariableValue(context, "difficulty")
	local state = ScriptLib.GetGroupVariableValue(context, "isDone")
	
	if evt.param2 == 0 then
		ScriptLib.SetGroupVariableValue(context, "isDone", 2) 	
		if diff < 7 then
			ScriptLib.KillMonsterTide(context, defs.group_id, 1)
	        ScriptLib.KillMonsterTide(context, defs.group_id, 2)
	        ScriptLib.KillMonsterTide(context, defs.group_id, 3)
	        ScriptLib.KillMonsterTide(context, defs.group_id, 4)
	        ScriptLib.KillMonsterTide(context, defs.group_id, 5)
	        ScriptLib.KillMonsterTide(context, defs.group_id, 6)
			ScriptLib.RemoveExtraGroupSuite(context, defs.group_id, 2)
			ScriptLib.RemoveExtraGroupSuite(context, defs.group_id, 3)
		else
			ScriptLib.KillMonsterTide(context, defs.group_id, 7)
	        ScriptLib.KillMonsterTide(context, defs.group_id, 8)
	        ScriptLib.KillMonsterTide(context, defs.group_id, 9)
	        ScriptLib.KillMonsterTide(context, defs.group_id, 10)
	        ScriptLib.KillMonsterTide(context, defs.group_id, 11)
	        ScriptLib.KillMonsterTide(context, defs.group_id, 12)
			ScriptLib.RemoveExtraGroupSuite(context, defs.group_id, 4)
			ScriptLib.RemoveExtraGroupSuite(context, defs.group_id, 5)
		end
		ScriptLib.SetGadgetStateByConfigId(context, defs.gadget_id, GadgetState.Default)
	elseif evt.param2 == 1 then
		ScriptLib.SetGroupVariableValue(context, "isDone", 1) 	
		if diff < 7 then
			ScriptLib.KillMonsterTide(context, defs.group_id, 1)
		    ScriptLib.KillMonsterTide(context, defs.group_id, 2)
		    ScriptLib.KillMonsterTide(context, defs.group_id, 3)
		    ScriptLib.KillMonsterTide(context, defs.group_id, 4)
		    ScriptLib.KillMonsterTide(context, defs.group_id, 5)
		    ScriptLib.KillMonsterTide(context, defs.group_id, 6)
			ScriptLib.RemoveExtraGroupSuite(context, defs.group_id, 2)
			ScriptLib.RemoveExtraGroupSuite(context, defs.group_id, 3)
		else
			ScriptLib.KillMonsterTide(context, defs.group_id, 7)
	        ScriptLib.KillMonsterTide(context, defs.group_id, 8)
	        ScriptLib.KillMonsterTide(context, defs.group_id, 9)
	        ScriptLib.KillMonsterTide(context, defs.group_id, 10)
	        ScriptLib.KillMonsterTide(context, defs.group_id, 11)
	        ScriptLib.KillMonsterTide(context, defs.group_id, 12)
			ScriptLib.RemoveExtraGroupSuite(context, defs.group_id, 4)
			ScriptLib.RemoveExtraGroupSuite(context, defs.group_id, 5)
		end
		ScriptLib.SetGadgetStateByConfigId(context, defs.gadget_id, GadgetState.GearStop)
		ScriptLib.CreateAsterMidGeneralRewardGadget(context, {config_id=defs.reward_gadget_id, difficulty_id=diff})
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_DIFFICULTY_27031(context, evt)
	if 27021 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_DIFFICULTY_27031(context, evt)
	local diff = evt.param2
	local state = ScriptLib.GetGroupVariableValue(context, "isDone")
	
	ScriptLib.SetGroupVariableValue(context, "difficulty", diff)
	
	if state == 2 then
		ScriptLib.SetGroupVariableValue(context, "isDone", 0)
	end
	
	if diff < 7 then
		ScriptLib.SetGadgetStateByConfigId(context, defs.gadget_id, GadgetState.GearStart)
		ScriptLib.AddExtraGroupSuite(context, defs.group_id, 2)
		local ret = ScriptLib.StartSealBattle(context,defs.gadget_id, {radius = defs.radius, battle_time = defs.battle_time, monster_group_id = defs.group_id, default_kill_charge = 0, auto_charge = 0, auto_decline= defs.auto_decline, max_energy = defs.max_energy, battle_type = SealBattleType.ENERGY_CHARGE})
	else
		ScriptLib.SetGadgetStateByConfigId(context, defs.gadget_id, GadgetState.GearStart)
		ScriptLib.AddExtraGroupSuite(context, defs.group_id, 4)
		local ret = ScriptLib.StartSealBattle(context,defs.gadget_id, {radius = defs.radius, battle_time = defs.battle_time, monster_group_id = defs.group_id, default_kill_charge = 0, auto_charge = 0, auto_decline= defs.auto_decline, max_energy = defs.max_energy, battle_type = SealBattleType.ENERGY_CHARGE})
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_LIVE_27032(context, evt)
	if 27020 ~= evt.param1 then
		return false
	end
	
	-- 判断变量"isDone"为0
	if ScriptLib.GetGroupVariableValue(context, "isDone") ~= 0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_LIVE_27032(context, evt)
	-- 创建编号为1（该怪物潮的识别id)的怪物潮，创建怪物总数为6，场上怪物最少2只，最多2只
	if 0 ~= ScriptLib.AutoMonsterTide(context, 1, 133005001, {1002,1025}, 6, 2, 2) then
		return -1
	end
	
	-- 创建编号为2（该怪物潮的识别id)的怪物潮，创建怪物总数为6，场上怪物最少2只，最多2只
	if 0 ~= ScriptLib.AutoMonsterTide(context, 2, 133005001, {1026,1027}, 6, 2, 2) then
		return -1
	end
	
	-- 创建编号为3（该怪物潮的识别id)的怪物潮，创建怪物总数为6，场上怪物最少1只，最多2只
	if 0 ~= ScriptLib.AutoMonsterTide(context, 3, 133005001, {1028,1029}, 6, 1, 2) then
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_MONSTER_TIDE_DIE_27033(context, evt)
	if 6 ~= evt.param1 then
		return false
	end
	
	-- 判断变量"isDone"为0
	if ScriptLib.GetGroupVariableValue(context, "isDone") ~= 0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_MONSTER_TIDE_DIE_27033(context, evt)
	-- 创建编号为4（该怪物潮的识别id)的怪物潮，创建怪物总数为2，场上怪物最少1只，最多1只
	if 0 ~= ScriptLib.AutoMonsterTide(context, 4, 133005001, {1031}, 2, 1, 1) then
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_MONSTER_TIDE_DIE_27034(context, evt)
	if 6 ~= evt.param1 then
		return false
	end
	
	-- 判断变量"isDone"为0
	if ScriptLib.GetGroupVariableValue(context, "isDone") ~= 0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_MONSTER_TIDE_DIE_27034(context, evt)
	-- 创建编号为5（该怪物潮的识别id)的怪物潮，创建怪物总数为2，场上怪物最少1只，最多1只
	if 0 ~= ScriptLib.AutoMonsterTide(context, 5, 133005001, {1030}, 2, 1, 1) then
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_MONSTER_TIDE_DIE_27035(context, evt)
	if 6 ~= evt.param1 then
		return false
	end
	
	-- 判断变量"isDone"为0
	if ScriptLib.GetGroupVariableValue(context, "isDone") ~= 0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_MONSTER_TIDE_DIE_27035(context, evt)
	-- 创建编号为6（该怪物潮的识别id)的怪物潮，创建怪物总数为1，场上怪物最少1只，最多1只
	if 0 ~= ScriptLib.AutoMonsterTide(context, 6, 133005001, {1032}, 1, 1, 1) then
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_MONSTER_TIDE_DIE_27036(context, evt)
	if 2 ~= evt.param1 then
		return false
	end
	
	-- 判断变量"isDone"为0
	if ScriptLib.GetGroupVariableValue(context, "isDone") ~= 0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_MONSTER_TIDE_DIE_27036(context, evt)
	-- 创建编号为1（该怪物潮的识别id)的怪物潮，创建怪物总数为6，场上怪物最少2只，最多2只
	if 0 ~= ScriptLib.AutoMonsterTide(context, 1, 133005001, {1002,1025}, 6, 2, 2) then
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_MONSTER_TIDE_DIE_27037(context, evt)
	if 2 ~= evt.param1 then
		return false
	end
	
	-- 判断变量"isDone"为0
	if ScriptLib.GetGroupVariableValue(context, "isDone") ~= 0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_MONSTER_TIDE_DIE_27037(context, evt)
	-- 创建编号为2（该怪物潮的识别id)的怪物潮，创建怪物总数为6，场上怪物最少2只，最多2只
	if 0 ~= ScriptLib.AutoMonsterTide(context, 2, 133005001, {1026,1027}, 6, 2, 2) then
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_MONSTER_TIDE_DIE_27038(context, evt)
	if 1 ~= evt.param1 then
		return false
	end
	
	-- 判断变量"isDone"为0
	if ScriptLib.GetGroupVariableValue(context, "isDone") ~= 0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_MONSTER_TIDE_DIE_27038(context, evt)
	-- 创建编号为3（该怪物潮的识别id)的怪物潮，创建怪物总数为6，场上怪物最少1只，最多2只
	if 0 ~= ScriptLib.AutoMonsterTide(context, 3, 133005001, {1028,1029}, 6, 1, 2) then
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GENERAL_REWARD_DIE_27039(context, evt)
	if 27022 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GENERAL_REWARD_DIE_27039(context, evt)
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 27021 }) then
		    return -1
		end
		
	
	return 0
end
