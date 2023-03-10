--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 255003, monster_id = 28010201, pos = { x = 276.460, y = 213.900, z = 208.402 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 19, drop_tag = "采集动物", area_id = 9 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 255001, gadget_id = 70211022, pos = { x = 280.323, y = 213.335, z = 213.945 }, rot = { x = 0.000, y = 353.836, z = 0.000 }, level = 16, drop_tag = "战斗高级璃月", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 9 },
	{ config_id = 255002, gadget_id = 70211022, pos = { x = 286.491, y = 213.407, z = 203.468 }, rot = { x = 0.000, y = 267.372, z = 0.000 }, level = 16, drop_tag = "战斗高级璃月", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 9 }
}

-- 区域
regions = {
	{ config_id = 255004, shape = RegionShape.SPHERE, radius = 3, pos = { x = 280.905, y = 213.900, z = 208.557 }, area_id = 9 },
	{ config_id = 255005, shape = RegionShape.SPHERE, radius = 3, pos = { x = 280.905, y = 213.900, z = 208.557 }, area_id = 9 }
}

-- 触发器
triggers = {
	{ config_id = 1255004, name = "ENTER_REGION_255004", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_255004", action = "action_EVENT_ENTER_REGION_255004" },
	{ config_id = 1255005, name = "ENTER_REGION_255005", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_255005", action = "action_EVENT_ENTER_REGION_255005" }
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
		monsters = { 255003 },
		gadgets = { 255001, 255002 },
		regions = { 255004, 255005 },
		triggers = { "ENTER_REGION_255004", "ENTER_REGION_255005" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ENTER_REGION_255004(context, evt)
	if evt.param1 ~= 255004 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_255004(context, evt)
	-- 将configid为 255001 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 255001, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_255005(context, evt)
	if evt.param1 ~= 255005 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_255005(context, evt)
	-- 将configid为 255002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 255002, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end