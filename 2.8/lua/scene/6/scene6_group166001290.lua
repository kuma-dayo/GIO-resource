-- 基础信息
local base_info = {
	group_id = 166001290
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
	{ config_id = 290001, gadget_id = 70290212, pos = { x = 460.483, y = 179.882, z = 748.753 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, persistent = true, interact_id = 88, area_id = 300 },
	{ config_id = 290002, gadget_id = 70290218, pos = { x = 452.329, y = 180.493, z = 723.708 }, rot = { x = 18.599, y = 356.598, z = 339.443 }, level = 36, state = GadgetState.GearStart, persistent = true, area_id = 300 },
	{ config_id = 290003, gadget_id = 70290218, pos = { x = 457.243, y = 180.659, z = 762.615 }, rot = { x = 10.883, y = 243.570, z = 8.052 }, level = 36, state = GadgetState.GearStart, persistent = true, area_id = 300 },
	{ config_id = 290004, gadget_id = 70290218, pos = { x = 460.181, y = 180.487, z = 763.333 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, state = GadgetState.GearStart, persistent = true, area_id = 300 },
	{ config_id = 290005, gadget_id = 70290218, pos = { x = 475.118, y = 180.429, z = 740.956 }, rot = { x = 358.733, y = 22.619, z = 8.354 }, level = 36, state = GadgetState.GearStart, persistent = true, area_id = 300 },
	{ config_id = 290006, gadget_id = 70211001, pos = { x = 463.028, y = 180.070, z = 747.543 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 26, drop_tag = "战斗低级璃月", isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 300 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1290007, name = "ANY_GADGET_DIE_290007", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_290007", action = "action_EVENT_ANY_GADGET_DIE_290007" },
	{ config_id = 1290008, name = "GADGET_STATE_CHANGE_290008", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_290008", action = "action_EVENT_GADGET_STATE_CHANGE_290008" }
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
		gadgets = { 290001 },
		regions = { },
		triggers = { "ANY_GADGET_DIE_290007", "GADGET_STATE_CHANGE_290008" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_290007(context, evt)
	-- 判断指定group组剩余gadget数量是否是1 
	if ScriptLib.CheckRemainGadgetCountByGroupId(context, {group_id = 166001290}) ~= 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_290007(context, evt)
	-- 创建id为290006的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 290006 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_290008(context, evt)
	if 290001 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_290008(context, evt)
	-- 创建id为290002的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 290002 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	-- 创建id为290003的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 290003 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	-- 创建id为290004的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 290004 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	-- 创建id为290005的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 290005 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end