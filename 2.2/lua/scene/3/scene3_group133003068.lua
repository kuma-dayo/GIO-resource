--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 68001, monster_id = 20010501, pos = { x = 2651.463, y = 246.952, z = -1329.864 }, rot = { x = 0.000, y = 351.942, z = 0.000 }, level = 1, drop_id = 1000100, area_id = 1 },
	{ config_id = 68002, monster_id = 20010501, pos = { x = 2653.598, y = 246.691, z = -1331.306 }, rot = { x = 0.000, y = 351.942, z = 0.000 }, level = 1, drop_id = 1000100, area_id = 1 },
	{ config_id = 68003, monster_id = 20010501, pos = { x = 2650.185, y = 246.969, z = -1332.540 }, rot = { x = 0.000, y = 351.942, z = 0.000 }, level = 1, drop_id = 1000100, area_id = 1 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
}

-- 区域
regions = {
	{ config_id = 68004, shape = RegionShape.SPHERE, radius = 5, pos = { x = 2651.299, y = 247.365, z = -1332.014 }, area_id = 1 }
}

-- 触发器
triggers = {
	{ config_id = 1068004, name = "ENTER_REGION_68004", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_68004", action = "action_EVENT_ENTER_REGION_68004" },
	{ config_id = 1068005, name = "ANY_MONSTER_DIE_68005", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_68005", action = "action_EVENT_ANY_MONSTER_DIE_68005" }
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
	end_suite = 3,
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
		regions = { 68004 },
		triggers = { "ENTER_REGION_68004", "ANY_MONSTER_DIE_68005" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 68001, 68002, 68003 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_68005" },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
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
function condition_EVENT_ENTER_REGION_68004(context, evt)
	if evt.param1 ~= 68004 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_68004(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133003068, 2)
	
	-- 改变指定group组133003044中， configid为44027的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 133003044, 44027, GadgetState.ChestLocked) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_68005(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_68005(context, evt)
	-- 改变指定group组133003044中， configid为44027的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 133003044, 44027, GadgetState.Default) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	-- group调整group进度,只对非randSuite有效
	if 0 ~= ScriptLib.GoToGroupSuite(context, 133003068, 3) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : goto_groupSuite")
		return -1
	end
	
	return 0
end