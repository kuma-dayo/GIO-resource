--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 31001, monster_id = 20011001, pos = { x = 2629.044, y = 232.908, z = -1476.919 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, affix = { 1030, 1901 }, isElite = true },
	{ config_id = 31002, monster_id = 20011001, pos = { x = 2628.074, y = 232.315, z = -1474.157 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, affix = { 1030, 1901 }, isElite = true },
	{ config_id = 31003, monster_id = 20011001, pos = { x = 2631.209, y = 232.547, z = -1474.693 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, affix = { 1030, 1901 }, isElite = true },
	{ config_id = 31013, monster_id = 20011501, pos = { x = 2637.436, y = 230.671, z = -1457.910 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, affix = { 1030, 1901 }, isElite = true },
	{ config_id = 31015, monster_id = 20010501, pos = { x = 2642.791, y = 230.078, z = -1446.543 }, rot = { x = 0.000, y = 257.383, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, affix = { 1030, 1901 }, isElite = true },
	{ config_id = 31016, monster_id = 20010501, pos = { x = 2644.240, y = 230.451, z = -1447.846 }, rot = { x = 0.000, y = 257.383, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, affix = { 1030, 1901 }, isElite = true }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 31004, gadget_id = 70360005, pos = { x = 2626.521, y = 234.554, z = -1490.110 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 31005, gadget_id = 70360025, pos = { x = 2644.402, y = 228.997, z = -1434.813 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 31006, gadget_id = 70900201, pos = { x = 2644.400, y = 229.000, z = -1434.800 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 31007, gadget_id = 70300118, pos = { x = 2626.500, y = 234.600, z = -1490.100 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 31012, gadget_id = 70300118, pos = { x = 2629.000, y = 232.900, z = -1476.900 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 31014, gadget_id = 70300118, pos = { x = 2642.800, y = 230.100, z = -1446.500 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 31017, gadget_id = 70300118, pos = { x = 2644.200, y = 230.500, z = -1447.800 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 31019, gadget_id = 70300118, pos = { x = 2628.100, y = 232.300, z = -1474.200 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 31020, gadget_id = 70300118, pos = { x = 2631.200, y = 232.500, z = -1474.700 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 31021, gadget_id = 70300118, pos = { x = 2637.400, y = 230.700, z = -1457.900 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 }
}

-- 区域
regions = {
	{ config_id = 31008, shape = RegionShape.SPHERE, radius = 5, pos = { x = 2629.460, y = 232.587, z = -1475.200 } },
	{ config_id = 31024, shape = RegionShape.SPHERE, radius = 5, pos = { x = 2637.400, y = 230.700, z = -1457.900 } },
	{ config_id = 31025, shape = RegionShape.SPHERE, radius = 5, pos = { x = 2643.508, y = 230.209, z = -1447.143 } },
	{ config_id = 31027, shape = RegionShape.SPHERE, radius = 3, pos = { x = 2644.400, y = 229.000, z = -1434.800 } }
}

-- 触发器
triggers = {
	{ name = "ENTER_REGION_31008", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_31008", action = "action_EVENT_ENTER_REGION_31008" },
	{ name = "CHALLENGE_SUCCESS_31009", event = EventType.EVENT_CHALLENGE_SUCCESS, source = "888", condition = "", action = "action_EVENT_CHALLENGE_SUCCESS_31009", trigger_count = 0 },
	{ name = "CHALLENGE_FAIL_31010", event = EventType.EVENT_CHALLENGE_FAIL, source = "888", condition = "", action = "action_EVENT_CHALLENGE_FAIL_31010", trigger_count = 0 },
	{ name = "GADGET_STATE_CHANGE_31011", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_31011", action = "action_EVENT_GADGET_STATE_CHANGE_31011", trigger_count = 0 },
	{ name = "ENTER_REGION_31024", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_31024", action = "action_EVENT_ENTER_REGION_31024" },
	{ name = "ENTER_REGION_31025", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_31025", action = "action_EVENT_ENTER_REGION_31025" },
	{ name = "ENTER_REGION_31027", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_31027", action = "", tag = "666" }
}

-- 变量
variables = {
	{ name = "hasFinished", value = 0, no_refresh = false }
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
		gadgets = { 31004, 31007 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_31011" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = suite_2,
		monsters = { 31001, 31002, 31003, 31013, 31015, 31016 },
		gadgets = { 31005, 31006 },
		regions = { 31027 },
		triggers = { "CHALLENGE_SUCCESS_31009", "CHALLENGE_FAIL_31010", "ENTER_REGION_31027" },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = suite_3,
		monsters = { },
		gadgets = { },
		regions = { 31008 },
		triggers = { "ENTER_REGION_31008" },
		rand_weight = 100
	},
	{
		-- suite_id = 4,
		-- description = suite_4,
		monsters = { },
		gadgets = { },
		regions = { 31024 },
		triggers = { "ENTER_REGION_31024" },
		rand_weight = 100
	},
	{
		-- suite_id = 5,
		-- description = suite_5,
		monsters = { },
		gadgets = { },
		regions = { 31025 },
		triggers = { "ENTER_REGION_31025" },
		rand_weight = 100
	},
	{
		-- suite_id = 6,
		-- description = suite_6,
		monsters = { },
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
function condition_EVENT_ENTER_REGION_31008(context, evt)
	if evt.param1 ~= 31008 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_31008(context, evt)
	-- 删除suite3的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 111101031, 3)
	
	return 0
end

-- 触发条件

-- 触发操作
function action_EVENT_CHALLENGE_SUCCESS_31009(context, evt)
	-- 将本组内变量名为 "hasFinished" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "hasFinished", 1) then
	  return -1
	end
	
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 31007 }) then
		    return -1
		end
		
	
	-- 删除suite2的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 111101031, 2)
	
	-- 删除suite3的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 111101031, 3)
	
	-- 删除suite4的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 111101031, 4)
	
	-- 删除suite5的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 111101031, 5)
	
	-- 将configid为 31004 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 31004, GadgetState.Default) then
			return -1
		end 
	
	-- group调整group进度,只对非randSuite有效
	if 0 ~= ScriptLib.GoToGroupSuite(context, 111101031, 6) then
		return -1
	end
	
	return 0
end

-- 触发条件

-- 触发操作
function action_EVENT_CHALLENGE_FAIL_31010(context, evt)
	-- 创建id为31007的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 31007 }) then
	  return -1
	end
	
	-- 删除suite2的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 111101031, 2)
	
	-- 删除suite3的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 111101031, 3)
	
	-- 删除suite4的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 111101031, 4)
	
	-- 删除suite5的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 111101031, 5)
	
	-- 将configid为 31004 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 31004, GadgetState.Default) then
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_31011(context, evt)
	if 31004 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	-- 判断变量"hasFinished"为0
	if ScriptLib.GetGroupVariableValue(context, "hasFinished") ~= 0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_31011(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 111101031, 2)
	
	-- 添加suite3的新内容
	    ScriptLib.AddExtraGroupSuite(context, 111101031, 3)
	
	-- 添加suite4的新内容
	    ScriptLib.AddExtraGroupSuite(context, 111101031, 4)
	
	-- 添加suite5的新内容
	    ScriptLib.AddExtraGroupSuite(context, 111101031, 5)
	
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 31007 }) then
		    return -1
		end
		
	
	-- 创建编号为888（该挑战的识别id),挑战内容为189的区域挑战，具体参数填写方式，见DungeonChallengeData表中的注释，所有填写的值都必须是int类型
	if 0 ~= ScriptLib.ActiveChallenge(context, 888, 189, 10, 4, 666, 5) then
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_31024(context, evt)
	if evt.param1 ~= 31024 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_31024(context, evt)
	-- 删除suite4的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 111101031, 4)
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_31025(context, evt)
	if evt.param1 ~= 31025 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_31025(context, evt)
	-- 删除suite5的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 111101031, 5)
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_31027(context, evt)
	if evt.param1 ~= 31027 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
