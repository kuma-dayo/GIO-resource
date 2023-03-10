--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 371001, monster_id = 20011201, pos = { x = 679.804, y = 216.942, z = 854.880 }, rot = { x = 1.891, y = 352.550, z = 0.655 }, level = 21, drop_id = 1000100 },
	{ config_id = 371002, monster_id = 20011201, pos = { x = 681.081, y = 216.969, z = 854.039 }, rot = { x = 12.071, y = 349.664, z = 2.263 }, level = 21, drop_id = 1000100 },
	{ config_id = 371003, monster_id = 20011201, pos = { x = 678.002, y = 217.169, z = 854.085 }, rot = { x = 7.546, y = 352.021, z = 2.529 }, level = 21, drop_id = 1000100 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 371004, gadget_id = 70211102, pos = { x = 679.281, y = 217.231, z = 852.926 }, rot = { x = 12.934, y = 314.543, z = 343.693 }, level = 16, drop_tag = "解谜低级璃月", isOneoff = true, persistent = true }
}

-- 区域
regions = {
	{ config_id = 371005, shape = RegionShape.SPHERE, radius = 5, pos = { x = 679.754, y = 217.523, z = 853.364 } }
}

-- 触发器
triggers = {
	{ name = "ENTER_REGION_371005", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_371005", action = "action_EVENT_ENTER_REGION_371005" },
	{ name = "ANY_MONSTER_DIE_371006", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_371006", action = "action_EVENT_ANY_MONSTER_DIE_371006" },
	{ name = "GADGET_CREATE_371007", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_371007", action = "action_EVENT_GADGET_CREATE_371007", trigger_count = 0 }
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
		-- description = suite_1,
		monsters = { },
		gadgets = { 371004 },
		regions = { 371005 },
		triggers = { "ENTER_REGION_371005", "GADGET_CREATE_371007" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = suite_2,
		monsters = { 371001, 371002, 371003 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_371006" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ENTER_REGION_371005(context, evt)
	if evt.param1 ~= 371005 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_371005(context, evt)
	-- 将configid为 371004 的物件更改为状态 GadgetState.ChestLocked
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 371004, GadgetState.ChestLocked) then
			return -1
		end 
	
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133104371, 2)
	
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 1002, 1, 1) then
	      return -1
	    end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_371006(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_371006(context, evt)
	-- 将configid为 371004 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 371004, GadgetState.Default) then
			return -1
		end 
	
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 1002, 3, 1) then
	      return -1
	    end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_371007(context, evt)
	if 371004 ~= evt.param1 or GadgetState.ChestLocked ~= ScriptLib.GetGadgetStateByConfigId(context, 0, evt.param1) then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_371007(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133104371, 2)
	
	return 0
end
