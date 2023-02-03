-- 基础信息
local base_info = {
	group_id = 133315052
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 52005, monster_id = 28050106, pos = { x = 277.109, y = 201.401, z = 2513.654 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, drop_tag = "魔法生物", area_id = 20 },
	{ config_id = 52006, monster_id = 28050106, pos = { x = 277.695, y = 200.813, z = 2513.840 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, drop_tag = "魔法生物", area_id = 20 },
	{ config_id = 52007, monster_id = 26090501, pos = { x = 246.161, y = 201.279, z = 2478.692 }, rot = { x = 0.000, y = 336.294, z = 0.000 }, level = 27, drop_tag = "蕈兽", isElite = true, pose_id = 101, area_id = 20 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 52001, gadget_id = 70330199, pos = { x = 211.976, y = 201.059, z = 2477.259 }, rot = { x = 346.656, y = 306.790, z = 1.942 }, level = 27, state = GadgetState.GearStop, area_id = 20 },
	{ config_id = 52002, gadget_id = 70330199, pos = { x = 246.424, y = 201.112, z = 2477.594 }, rot = { x = 0.000, y = 348.576, z = 0.000 }, level = 27, state = GadgetState.GearStop, area_id = 20 },
	{ config_id = 52003, gadget_id = 70330199, pos = { x = 277.504, y = 200.468, z = 2514.736 }, rot = { x = 10.371, y = 186.689, z = 3.670 }, level = 27, state = GadgetState.GearStop, area_id = 20 },
	{ config_id = 52010, gadget_id = 70500000, pos = { x = 212.482, y = 201.849, z = 2476.795 }, rot = { x = 357.321, y = 0.084, z = 356.424 }, level = 27, point_type = 2045, area_id = 20 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1052004, name = "GADGET_STATE_CHANGE_52004", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_52004", action = "action_EVENT_GADGET_STATE_CHANGE_52004" },
	{ config_id = 1052008, name = "GADGET_STATE_CHANGE_52008", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_52008", action = "action_EVENT_GADGET_STATE_CHANGE_52008" },
	{ config_id = 1052009, name = "GADGET_STATE_CHANGE_52009", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_52009", action = "action_EVENT_GADGET_STATE_CHANGE_52009" }
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
		-- description = ,
		monsters = { },
		gadgets = { 52001, 52002, 52003 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_52004", "GADGET_STATE_CHANGE_52008", "GADGET_STATE_CHANGE_52009" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 52005, 52006 },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { 52007 },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 4,
		-- description = 书页啥的收藏,
		monsters = { },
		gadgets = { 52010 },
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
function condition_EVENT_GADGET_STATE_CHANGE_52004(context, evt)
	-- 检测指定三态物件的grassState是否为对应状态，其中1为正常态、2为激化态、3为消亡态
	if 52003 ~= evt.param2 then
		return false
	end
	if 1<1 or 1>3 then
	  return false
	end
	if 1 == 1 and 0 ~= evt.param1 then
	  return false
	end
	if 1 == 2 and 200 ~= evt.param1 then
	  return false
	end
	if 1 == 3 and 300 ~= evt.param1 and 301 ~= evt.param1 then
	  return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_52004(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133315052, 2)
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_52008(context, evt)
	-- 检测指定三态物件的grassState是否为对应状态，其中1为正常态、2为激化态、3为消亡态
	if 52002 ~= evt.param2 then
		return false
	end
	if 1<1 or 1>3 then
	  return false
	end
	if 1 == 1 and 0 ~= evt.param1 then
	  return false
	end
	if 1 == 2 and 200 ~= evt.param1 then
	  return false
	end
	if 1 == 3 and 300 ~= evt.param1 and 301 ~= evt.param1 then
	  return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_52008(context, evt)
	-- 添加suite3的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133315052, 3)
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_52009(context, evt)
	-- 检测指定三态物件的grassState是否为对应状态，其中1为正常态、2为激化态、3为消亡态
	if 52001 ~= evt.param2 then
		return false
	end
	if 1<1 or 1>3 then
	  return false
	end
	if 1 == 1 and 0 ~= evt.param1 then
	  return false
	end
	if 1 == 2 and 200 ~= evt.param1 then
	  return false
	end
	if 1 == 3 and 300 ~= evt.param1 and 301 ~= evt.param1 then
	  return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_52009(context, evt)
	-- 添加suite4的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133315052, 4)
	
	return 0
end