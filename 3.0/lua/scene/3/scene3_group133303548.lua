-- 基础信息
local base_info = {
	group_id = 133303548
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	-- #4
	{ config_id = 548004, monster_id = 26090201, pos = { x = -1890.654, y = 324.813, z = 3765.575 }, rot = { x = 0.000, y = 131.894, z = 0.000 }, level = 30, drop_tag = "蕈兽", pose_id = 101, area_id = 23 },
	-- #2
	{ config_id = 548011, monster_id = 26090201, pos = { x = -1907.103, y = 318.810, z = 3724.424 }, rot = { x = 0.000, y = 27.020, z = 0.000 }, level = 30, drop_tag = "蕈兽", pose_id = 101, area_id = 23 },
	-- #3
	{ config_id = 548012, monster_id = 26090201, pos = { x = -1908.370, y = 313.849, z = 3762.921 }, rot = { x = 0.000, y = 140.472, z = 0.000 }, level = 30, drop_tag = "蕈兽", pose_id = 101, area_id = 23 },
	{ config_id = 548017, monster_id = 26120301, pos = { x = -1890.557, y = 312.445, z = 3733.358 }, rot = { x = 0.000, y = 119.708, z = 0.000 }, level = 30, drop_tag = "大蕈兽", pose_id = 101, area_id = 23 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 548001, gadget_id = 70211001, pos = { x = -1894.996, y = 312.262, z = 3732.125 }, rot = { x = 359.326, y = 83.582, z = 2.099 }, level = 26, drop_tag = "战斗低级须弥", isOneoff = true, persistent = true, explore = { name = "chest", exp = 10 }, area_id = 23 },
	-- #4
	{ config_id = 548002, gadget_id = 70330199, pos = { x = -1890.684, y = 324.160, z = 3766.453 }, rot = { x = 7.427, y = 176.652, z = 3.346 }, level = 30, state = GadgetState.GearStop, isOneoff = true, persistent = true, area_id = 23 },
	{ config_id = 548003, gadget_id = 70217020, pos = { x = -1869.688, y = 323.624, z = 3738.348 }, rot = { x = 28.241, y = 354.065, z = 9.198 }, level = 26, drop_tag = "摩拉石箱须弥", isOneoff = true, persistent = true, explore = { name = "chest", exp = 4 }, area_id = 23 },
	-- #5
	{ config_id = 548006, gadget_id = 70330199, pos = { x = -1869.459, y = 323.521, z = 3738.292 }, rot = { x = 3.314, y = 222.893, z = 327.883 }, level = 30, isOneoff = true, persistent = true, area_id = 23 },
	-- #1
	{ config_id = 548007, gadget_id = 70330199, pos = { x = -1894.029, y = 312.865, z = 3725.787 }, rot = { x = 349.927, y = 207.086, z = 0.072 }, level = 30, isOneoff = true, persistent = true, area_id = 23 },
	-- #3
	{ config_id = 548008, gadget_id = 70330199, pos = { x = -1908.958, y = 312.978, z = 3763.346 }, rot = { x = 5.358, y = 85.629, z = 352.171 }, level = 30, state = GadgetState.GearStop, isOneoff = true, persistent = true, area_id = 23 },
	-- #2
	{ config_id = 548009, gadget_id = 70330199, pos = { x = -1907.188, y = 317.744, z = 3723.707 }, rot = { x = 359.573, y = 270.191, z = 352.214 }, level = 30, state = GadgetState.GearStop, isOneoff = true, persistent = true, area_id = 23 },
	{ config_id = 548010, gadget_id = 70330197, pos = { x = -1878.293, y = 313.346, z = 3737.238 }, rot = { x = 0.000, y = 275.847, z = 0.000 }, level = 30, area_id = 23 },
	{ config_id = 548015, gadget_id = 70330197, pos = { x = -1875.026, y = 314.890, z = 3739.719 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 23 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	-- #2
	{ config_id = 1548005, name = "GADGET_STATE_CHANGE_548005", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_548005", action = "action_EVENT_GADGET_STATE_CHANGE_548005" },
	-- #3
	{ config_id = 1548013, name = "GADGET_STATE_CHANGE_548013", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_548013", action = "action_EVENT_GADGET_STATE_CHANGE_548013" },
	-- #4
	{ config_id = 1548014, name = "GADGET_STATE_CHANGE_548014", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_548014", action = "action_EVENT_GADGET_STATE_CHANGE_548014" },
	{ config_id = 1548018, name = "ANY_MONSTER_DIE_548018", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_548018", action = "action_EVENT_ANY_MONSTER_DIE_548018" },
	-- 全部开
	{ config_id = 1548019, name = "GADGET_STATE_CHANGE_548019", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_548019", action = "action_EVENT_GADGET_STATE_CHANGE_548019" }
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
	end_suite = 2,
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
		gadgets = { 548002, 548003, 548006, 548007, 548008, 548009, 548010, 548015 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_548005", "GADGET_STATE_CHANGE_548013", "GADGET_STATE_CHANGE_548014", "GADGET_STATE_CHANGE_548019" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 548017 },
		gadgets = { 548001, 548002, 548006, 548007, 548008, 548009 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_548005", "GADGET_STATE_CHANGE_548013", "GADGET_STATE_CHANGE_548014", "ANY_MONSTER_DIE_548018" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_548005(context, evt)
	-- 检测指定三态物件的grassState是否为对应状态，其中1为正常态、2为激化态、3为消亡态
	if 548009 ~= evt.param2 then
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
function action_EVENT_GADGET_STATE_CHANGE_548005(context, evt)
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 548011, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_548013(context, evt)
	-- 检测指定三态物件的grassState是否为对应状态，其中1为正常态、2为激化态、3为消亡态
	if 548008 ~= evt.param2 then
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
function action_EVENT_GADGET_STATE_CHANGE_548013(context, evt)
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 548012, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_548014(context, evt)
	-- 检测指定三态物件的grassState是否为对应状态，其中1为正常态、2为激化态、3为消亡态
	if 548002 ~= evt.param2 then
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
function action_EVENT_GADGET_STATE_CHANGE_548014(context, evt)
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 548004, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_548018(context, evt)
	if 548017 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_548018(context, evt)
	-- 将configid为 548001 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 548001, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_548019(context, evt)
	-- 检测指定三态物件的grassState是否为对应状态，其中1为正常态、2为激化态、3为消亡态
	if 548002 ~= evt.param2 then
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
	
	
	-- 检测指定三态物件的grassState是否为对应状态，其中1为正常态、2为激化态、3为消亡态
	if 548006 ~= evt.param2 then
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
	
	
	-- 检测指定三态物件的grassState是否为对应状态，其中1为正常态、2为激化态、3为消亡态
	if 548007 ~= evt.param2 then
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
	
	
	-- 检测指定三态物件的grassState是否为对应状态，其中1为正常态、2为激化态、3为消亡态
	if 548008 ~= evt.param2 then
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
	
	
	-- 检测指定三态物件的grassState是否为对应状态，其中1为正常态、2为激化态、3为消亡态
	if 548009 ~= evt.param2 then
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
function action_EVENT_GADGET_STATE_CHANGE_548019(context, evt)
	-- group调整group进度,只对非randSuite有效
	if 0 ~= ScriptLib.GoToGroupSuite(context, 133303548, 2) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : goto_groupSuite")
		return -1
	end
	
	return 0
end