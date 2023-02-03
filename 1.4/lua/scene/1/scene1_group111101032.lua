--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 32001, monster_id = 20011001, pos = { x = 2606.016, y = 228.150, z = -1542.342 }, rot = { x = 356.427, y = 359.916, z = 2.684 }, level = 1, drop_id = 1000100, disableWander = true, affix = { 1030 }, isElite = true },
	{ config_id = 32002, monster_id = 20011001, pos = { x = 2608.683, y = 228.450, z = -1539.426 }, rot = { x = 358.221, y = 359.903, z = 6.242 }, level = 1, drop_id = 1000100, disableWander = true, affix = { 1030 }, isElite = true },
	{ config_id = 32003, monster_id = 20011001, pos = { x = 2605.279, y = 228.447, z = -1538.441 }, rot = { x = 352.959, y = 0.547, z = 351.119 }, level = 1, drop_id = 1000100, disableWander = true, affix = { 1030 }, isElite = true },
	{ config_id = 32004, monster_id = 20011501, pos = { x = 2608.489, y = 230.346, z = -1520.205 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, affix = { 1030 }, isElite = true },
	{ config_id = 32005, monster_id = 20010501, pos = { x = 2613.843, y = 232.142, z = -1508.838 }, rot = { x = 0.000, y = 257.383, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, affix = { 1030 }, isElite = true },
	{ config_id = 32006, monster_id = 20010501, pos = { x = 2615.292, y = 232.111, z = -1510.141 }, rot = { x = 0.000, y = 257.383, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, affix = { 1030 }, isElite = true }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 32007, gadget_id = 70360005, pos = { x = 2606.655, y = 227.780, z = -1550.521 }, rot = { x = 353.761, y = 0.098, z = 358.210 }, level = 1 },
	{ config_id = 32008, gadget_id = 70360025, pos = { x = 2615.500, y = 234.000, z = -1497.100 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 32009, gadget_id = 70900201, pos = { x = 2615.452, y = 233.991, z = -1497.095 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 32010, gadget_id = 70300118, pos = { x = 2606.700, y = 227.800, z = -1550.500 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 32011, gadget_id = 70300118, pos = { x = 2606.665, y = 228.272, z = -1540.075 }, rot = { x = 358.214, y = 359.944, z = 3.577 }, level = 1 },
	{ config_id = 32013, gadget_id = 70300118, pos = { x = 2614.542, y = 232.118, z = -1509.508 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 32016, gadget_id = 70300118, pos = { x = 2608.452, y = 230.347, z = -1520.195 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 }
}

-- 区域
regions = {
	{ config_id = 32017, shape = RegionShape.SPHERE, radius = 5, pos = { x = 2606.700, y = 228.300, z = -1540.100 } },
	{ config_id = 32021, shape = RegionShape.SPHERE, radius = 5, pos = { x = 2608.452, y = 230.347, z = -1520.195 } },
	{ config_id = 32022, shape = RegionShape.SPHERE, radius = 5, pos = { x = 2614.560, y = 232.128, z = -1509.438 } },
	{ config_id = 32023, shape = RegionShape.SPHERE, radius = 3, pos = { x = 2615.500, y = 234.000, z = -1497.100 } }
}

-- 触发器
triggers = {
	{ name = "ENTER_REGION_32017", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_32017", action = "action_EVENT_ENTER_REGION_32017" },
	{ name = "CHALLENGE_SUCCESS_32018", event = EventType.EVENT_CHALLENGE_SUCCESS, source = "888", condition = "", action = "action_EVENT_CHALLENGE_SUCCESS_32018", trigger_count = 0 },
	{ name = "CHALLENGE_FAIL_32019", event = EventType.EVENT_CHALLENGE_FAIL, source = "888", condition = "", action = "action_EVENT_CHALLENGE_FAIL_32019", trigger_count = 0 },
	{ name = "GADGET_STATE_CHANGE_32020", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_32020", action = "action_EVENT_GADGET_STATE_CHANGE_32020", trigger_count = 0 },
	{ name = "ENTER_REGION_32021", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_32021", action = "action_EVENT_ENTER_REGION_32021" },
	{ name = "ENTER_REGION_32022", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_32022", action = "action_EVENT_ENTER_REGION_32022" },
	{ name = "ENTER_REGION_32023", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_32023", action = "", tag = "666" }
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
		gadgets = { 32007, 32010 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_32020" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = suite_2,
		monsters = { 32001, 32002, 32003, 32004, 32005, 32006 },
		gadgets = { 32008, 32009 },
		regions = { 32023 },
		triggers = { "CHALLENGE_SUCCESS_32018", "CHALLENGE_FAIL_32019", "ENTER_REGION_32023" },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = suite_3,
		monsters = { },
		gadgets = { 32011 },
		regions = { 32017 },
		triggers = { "ENTER_REGION_32017" },
		rand_weight = 100
	},
	{
		-- suite_id = 4,
		-- description = suite_4,
		monsters = { },
		gadgets = { 32016 },
		regions = { 32021 },
		triggers = { "ENTER_REGION_32021" },
		rand_weight = 100
	},
	{
		-- suite_id = 5,
		-- description = suite_5,
		monsters = { },
		gadgets = { 32013 },
		regions = { 32022 },
		triggers = { "ENTER_REGION_32022" },
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
function condition_EVENT_ENTER_REGION_32017(context, evt)
	if evt.param1 ~= 32017 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_32017(context, evt)
	-- 删除suite3的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 111101032, 3)
	
	return 0
end

-- 触发条件

-- 触发操作
function action_EVENT_CHALLENGE_SUCCESS_32018(context, evt)
	-- 将本组内变量名为 "hasFinished" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "hasFinished", 1) then
	  return -1
	end
	
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 32010 }) then
		    return -1
		end
		
	
	-- 删除suite2的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 111101032, 2)
	
	-- 删除suite3的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 111101032, 3)
	
	-- 删除suite4的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 111101032, 4)
	
	-- 删除suite5的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 111101032, 5)
	
	-- 将configid为 32007 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 32007, GadgetState.Default) then
			return -1
		end 
	
	-- group调整group进度,只对非randSuite有效
	if 0 ~= ScriptLib.GoToGroupSuite(context, 111101032, 6) then
		return -1
	end
	
	return 0
end

-- 触发条件

-- 触发操作
function action_EVENT_CHALLENGE_FAIL_32019(context, evt)
	-- 创建id为32010的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 32010 }) then
	  return -1
	end
	
	-- 删除suite2的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 111101032, 2)
	
	-- 删除suite3的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 111101032, 3)
	
	-- 删除suite4的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 111101032, 4)
	
	-- 删除suite5的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 111101032, 5)
	
	-- 将configid为 32007 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 32007, GadgetState.Default) then
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_32020(context, evt)
	if 32007 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	-- 判断变量"hasFinished"为0
	if ScriptLib.GetGroupVariableValue(context, "hasFinished") ~= 0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_32020(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 111101032, 2)
	
	-- 添加suite3的新内容
	    ScriptLib.AddExtraGroupSuite(context, 111101032, 3)
	
	-- 添加suite4的新内容
	    ScriptLib.AddExtraGroupSuite(context, 111101032, 4)
	
	-- 添加suite5的新内容
	    ScriptLib.AddExtraGroupSuite(context, 111101032, 5)
	
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 32010 }) then
		    return -1
		end
		
	
	-- 创建编号为888（该挑战的识别id),挑战内容为189的区域挑战，具体参数填写方式，见DungeonChallengeData表中的注释，所有填写的值都必须是int类型
	if 0 ~= ScriptLib.ActiveChallenge(context, 888, 189, 10, 4, 666, 5) then
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_32021(context, evt)
	if evt.param1 ~= 32021 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_32021(context, evt)
	-- 删除suite4的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 111101032, 4)
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_32022(context, evt)
	if evt.param1 ~= 32022 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_32022(context, evt)
	-- 删除suite5的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 111101032, 5)
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_32023(context, evt)
	if evt.param1 ~= 32023 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
