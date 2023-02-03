-- 基础信息
local base_info = {
	group_id = 133301411
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 411002, gadget_id = 70330199, pos = { x = -708.989, y = 232.843, z = 3157.194 }, rot = { x = 21.819, y = 112.187, z = 0.606 }, level = 33, state = GadgetState.GearStop, isOneoff = true, persistent = true, area_id = 22 },
	{ config_id = 411004, gadget_id = 70330199, pos = { x = -686.500, y = 227.432, z = 3145.537 }, rot = { x = 357.995, y = 324.351, z = 4.027 }, level = 33, state = GadgetState.GearStop, isOneoff = true, persistent = true, area_id = 22 },
	{ config_id = 411005, gadget_id = 70330199, pos = { x = -689.817, y = 227.851, z = 3125.649 }, rot = { x = 19.555, y = 274.602, z = 353.113 }, level = 33, state = GadgetState.GearStop, isOneoff = true, persistent = true, area_id = 22 },
	{ config_id = 411006, gadget_id = 70290010, pos = { x = -693.478, y = 227.707, z = 3118.826 }, rot = { x = 7.249, y = 14.282, z = 21.008 }, level = 33, area_id = 22 },
	{ config_id = 411007, gadget_id = 70330216, pos = { x = -686.470, y = 227.684, z = 3145.833 }, rot = { x = 0.000, y = 130.746, z = 0.000 }, level = 33, area_id = 22 },
	{ config_id = 411011, gadget_id = 70211001, pos = { x = -704.550, y = 231.524, z = 3153.649 }, rot = { x = 0.000, y = 113.401, z = 0.000 }, level = 26, drop_tag = "战斗低级须弥", isOneoff = true, persistent = true, explore = { name = "chest", exp = 10 }, area_id = 22 },
	{ config_id = 411016, gadget_id = 70500000, pos = { x = -693.478, y = 227.707, z = 3118.826 }, rot = { x = 7.249, y = 14.282, z = 21.008 }, level = 33, point_type = 3006, owner = 411006, area_id = 22 },
	{ config_id = 411017, gadget_id = 70290010, pos = { x = -691.158, y = 226.765, z = 3131.869 }, rot = { x = 2.613, y = 0.302, z = 13.191 }, level = 33, area_id = 22 },
	{ config_id = 411018, gadget_id = 70500000, pos = { x = -691.158, y = 226.765, z = 3131.869 }, rot = { x = 2.613, y = 0.302, z = 13.191 }, level = 33, point_type = 3006, owner = 411017, area_id = 22 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1411010, name = "GADGET_STATE_CHANGE_411010", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_411010", action = "action_EVENT_GADGET_STATE_CHANGE_411010", trigger_count = 0 }
}

-- 变量
variables = {
}

-- 废弃数据
garbages = {
	gadgets = {
		{ config_id = 411008, gadget_id = 70290009, pos = { x = -708.801, y = 232.486, z = 3156.935 }, rot = { x = 0.000, y = 31.623, z = 0.000 }, level = 33, area_id = 22 },
		{ config_id = 411015, gadget_id = 70500000, pos = { x = -708.801, y = 232.486, z = 3156.935 }, rot = { x = 0.000, y = 31.623, z = 0.000 }, level = 33, point_type = 3005, owner = 411008, area_id = 22 }
	},
	triggers = {
		{ config_id = 1411001, name = "GADGET_STATE_CHANGE_411001", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_411001", action = "action_EVENT_GADGET_STATE_CHANGE_411001", trigger_count = 0 },
		{ config_id = 1411003, name = "GADGET_STATE_CHANGE_411003", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_411003", action = "action_EVENT_GADGET_STATE_CHANGE_411003", trigger_count = 0 },
		{ config_id = 1411009, name = "GADGET_STATE_CHANGE_411009", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_411009", action = "action_EVENT_GADGET_STATE_CHANGE_411009", trigger_count = 0 },
		{ config_id = 1411012, name = "GADGET_STATE_CHANGE_411012", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_411012", action = "action_EVENT_GADGET_STATE_CHANGE_411012", trigger_count = 0 },
		{ config_id = 1411013, name = "GADGET_STATE_CHANGE_411013", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_411013", action = "action_EVENT_GADGET_STATE_CHANGE_411013", trigger_count = 0 },
		{ config_id = 1411014, name = "GADGET_STATE_CHANGE_411014", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_411014", action = "action_EVENT_GADGET_STATE_CHANGE_411014", trigger_count = 0 }
	}
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
		gadgets = { 411002, 411004, 411005, 411006, 411007, 411016, 411017, 411018 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_411010" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 411011 },
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
function condition_EVENT_GADGET_STATE_CHANGE_411010(context, evt)
	-- 检测指定三态物件的grassState是否为对应状态，其中1为正常态、2为激化态、3为消亡态
	if 411002 ~= evt.param2 then
		return false
	end
	if 3<1 or 3>3 then
	  return false
	end
	if 3 == 1 and 0 ~= evt.param1 then
	  return false
	end
	if 3 == 2 and 200 ~= evt.param1 then
	  return false
	end
	if 3 == 3 and 300 ~= evt.param1 and 301 ~= evt.param1 then
	  return false
	end
	
	
	-- 检测指定三态物件的grassState是否为对应状态，其中1为正常态、2为激化态、3为消亡态
	if 411004 ~= evt.param2 then
		return false
	end
	if 3<1 or 3>3 then
	  return false
	end
	if 3 == 1 and 0 ~= evt.param1 then
	  return false
	end
	if 3 == 2 and 200 ~= evt.param1 then
	  return false
	end
	if 3 == 3 and 300 ~= evt.param1 and 301 ~= evt.param1 then
	  return false
	end
	
	
	-- 检测指定三态物件的grassState是否为对应状态，其中1为正常态、2为激化态、3为消亡态
	if 411005 ~= evt.param2 then
		return false
	end
	if 3<1 or 3>3 then
	  return false
	end
	if 3 == 1 and 0 ~= evt.param1 then
	  return false
	end
	if 3 == 2 and 200 ~= evt.param1 then
	  return false
	end
	if 3 == 3 and 300 ~= evt.param1 and 301 ~= evt.param1 then
	  return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_411010(context, evt)
	-- 创建id为411011的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 411011 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end