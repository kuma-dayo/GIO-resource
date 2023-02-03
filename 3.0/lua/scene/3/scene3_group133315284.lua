-- 基础信息
local base_info = {
	group_id = 133315284
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 284009, monster_id = 26120101, pos = { x = 124.199, y = 281.163, z = 2458.120 }, rot = { x = 0.000, y = 17.918, z = 0.000 }, level = 27, drop_tag = "大蕈兽", pose_id = 201, area_id = 20 },
	{ config_id = 284014, monster_id = 26090201, pos = { x = 144.052, y = 285.673, z = 2462.512 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, drop_tag = "蕈兽", pose_id = 101, area_id = 20 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 284001, gadget_id = 70330218, pos = { x = 141.328, y = 286.441, z = 2435.497 }, rot = { x = 20.161, y = 147.691, z = 350.974 }, level = 27, persistent = true, area_id = 20 },
	-- 右
	{ config_id = 284002, gadget_id = 70330199, pos = { x = 116.075, y = 284.722, z = 2435.801 }, rot = { x = 0.000, y = 11.003, z = 0.000 }, level = 27, state = GadgetState.GearStop, area_id = 20 },
	{ config_id = 284004, gadget_id = 70310198, pos = { x = 116.239, y = 284.574, z = 2436.329 }, rot = { x = 0.000, y = 134.514, z = 0.000 }, level = 27, persistent = true, area_id = 20 },
	-- 中
	{ config_id = 284005, gadget_id = 70330199, pos = { x = 124.555, y = 280.701, z = 2458.370 }, rot = { x = 356.361, y = 169.607, z = 351.749 }, level = 27, state = GadgetState.GearStop, area_id = 20 },
	-- 左
	{ config_id = 284006, gadget_id = 70330199, pos = { x = 144.215, y = 285.755, z = 2462.877 }, rot = { x = 0.000, y = 183.673, z = 0.000 }, level = 27, state = GadgetState.GearStop, area_id = 20 },
	{ config_id = 284007, gadget_id = 70211102, pos = { x = 140.030, y = 287.904, z = 2436.195 }, rot = { x = 341.154, y = 147.961, z = 1.077 }, level = 26, drop_tag = "解谜低级须弥", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, explore = { name = "chest", exp = 10 }, area_id = 20 },
	{ config_id = 284010, gadget_id = 70210101, pos = { x = 143.239, y = 285.818, z = 2462.900 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 26, drop_tag = "搜刮点解谜果蔬须弥", isOneoff = true, persistent = true, area_id = 20 },
	-- 怪
	{ config_id = 284013, gadget_id = 70230111, pos = { x = 141.239, y = 289.835, z = 2434.242 }, rot = { x = 66.100, y = 10.185, z = 119.374 }, level = 27, area_id = 20 },
	-- 中
	{ config_id = 284015, gadget_id = 70230110, pos = { x = 141.419, y = 291.280, z = 2434.358 }, rot = { x = 321.674, y = 93.214, z = 137.513 }, level = 27, area_id = 20 },
	-- 左
	{ config_id = 284016, gadget_id = 70230110, pos = { x = 142.392, y = 290.607, z = 2434.923 }, rot = { x = 359.523, y = 63.916, z = 148.002 }, level = 27, area_id = 20 },
	-- 右
	{ config_id = 284017, gadget_id = 70230110, pos = { x = 140.317, y = 290.965, z = 2434.037 }, rot = { x = 302.002, y = 154.788, z = 89.008 }, level = 27, area_id = 20 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	-- 右
	{ config_id = 1284003, name = "GADGET_STATE_CHANGE_284003", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_284003", action = "action_EVENT_GADGET_STATE_CHANGE_284003", trigger_count = 0 },
	-- 石头炸了，刷锁的宝箱
	{ config_id = 1284008, name = "ANY_GADGET_DIE_284008", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_284008", action = "action_EVENT_ANY_GADGET_DIE_284008", trigger_count = 0 },
	-- 中
	{ config_id = 1284011, name = "GADGET_STATE_CHANGE_284011", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_284011", action = "action_EVENT_GADGET_STATE_CHANGE_284011", trigger_count = 0 },
	-- 左
	{ config_id = 1284012, name = "GADGET_STATE_CHANGE_284012", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_284012", action = "action_EVENT_GADGET_STATE_CHANGE_284012", trigger_count = 0 },
	-- 怪
	{ config_id = 1284018, name = "ANY_MONSTER_DIE_284018", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_284018", action = "action_EVENT_ANY_MONSTER_DIE_284018", trigger_count = 0 },
	{ config_id = 1284019, name = "GADGET_STATE_CHANGE_284019", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_284019", action = "action_EVENT_GADGET_STATE_CHANGE_284019", trigger_count = 0 }
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
		gadgets = { 284001, 284002, 284005, 284006, 284013, 284015, 284016, 284017 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_284003", "ANY_GADGET_DIE_284008", "GADGET_STATE_CHANGE_284011", "GADGET_STATE_CHANGE_284012", "ANY_MONSTER_DIE_284018", "GADGET_STATE_CHANGE_284019" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 284004 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { 284009 },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 4,
		-- description = ,
		monsters = { 284014 },
		gadgets = { 284010 },
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
function condition_EVENT_GADGET_STATE_CHANGE_284003(context, evt)
	-- 检测指定三态物件的grassState是否为对应状态，其中1为正常态、2为激化态、3为消亡态
	if 284002 ~= evt.param2 then
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
function action_EVENT_GADGET_STATE_CHANGE_284003(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133315284, 2)
	
	-- 将configid为 284017 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 284017, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_284008(context, evt)
	if 284001 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_284008(context, evt)
	-- 创建id为284007的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 284007 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_284011(context, evt)
	-- 检测指定三态物件的grassState是否为对应状态，其中1为正常态、2为激化态、3为消亡态
	if 284005 ~= evt.param2 then
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
function action_EVENT_GADGET_STATE_CHANGE_284011(context, evt)
	-- 添加suite3的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133315284, 3)
	
	-- 将configid为 284015 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 284015, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_284012(context, evt)
	-- 检测指定三态物件的grassState是否为对应状态，其中1为正常态、2为激化态、3为消亡态
	if 284006 ~= evt.param2 then
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
function action_EVENT_GADGET_STATE_CHANGE_284012(context, evt)
	-- 添加suite4的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133315284, 4)
	
	-- 将configid为 284016 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 284016, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_284018(context, evt)
	--判断死亡怪物的configid是否为 284009
	if evt.param1 ~= 284009 then
	    return false
	 end
	  
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_284018(context, evt)
	-- 将configid为 284013 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 284013, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_284019(context, evt)
	if GadgetState.GearStart ~= ScriptLib.GetGadgetStateByConfigId(context, 133315284, 284015) then
		return false
	end
	
	if GadgetState.GearStart ~= ScriptLib.GetGadgetStateByConfigId(context, 133315284, 284016) then
		return false
	end
	
	if GadgetState.GearStart ~= ScriptLib.GetGadgetStateByConfigId(context, 133315284, 284017) then
		return false
	end
	
	if GadgetState.GearStart ~= ScriptLib.GetGadgetStateByConfigId(context, 133315284, 284013) then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_284019(context, evt)
	-- 将configid为 284007 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 284007, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end