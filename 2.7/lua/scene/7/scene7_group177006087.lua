-- 基础信息
local base_info = {
	group_id = 177006087
}

-- Trigger变量
local defs = {
	groupID = 177006087,
	gadget_teleport = 87001,
	pointarray_move = 700600018
}

-- DEFS_MISCS
function TeleportAction(context,pointarray_id,routelist)
	
	--context, uid, pointarrayid, pointindex, speed, SFX
	ScriptLib.MoveAvatarByPointArray(context, context.uid, pointarray_id, routelist, {speed=10}, "{\"MarkType\":2,\"IgnoreCollisionWhenEnter\":true}") 
end

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
	{ config_id = 87001, gadget_id = 70290275, pos = { x = -485.031, y = 215.674, z = 399.675 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, area_id = 210 }
}

-- 区域
regions = {
	{ config_id = 87002, shape = RegionShape.SPHERE, radius = 2, pos = { x = -485.031, y = 215.674, z = 399.675 }, area_id = 210 }
}

-- 触发器
triggers = {
	{ config_id = 1087002, name = "ENTER_REGION_87002", event = EventType.EVENT_ENTER_REGION, source = "1", condition = "condition_EVENT_ENTER_REGION_87002", action = "action_EVENT_ENTER_REGION_87002", trigger_count = 0, forbid_guest = false }
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
		gadgets = { 87001 },
		regions = { 87002 },
		triggers = { "ENTER_REGION_87002" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ENTER_REGION_87002(context, evt)
	if evt.param1 ~= 87002 then return false end
	
	-- 判断角色数量不少于0
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_87002(context, evt)
	TeleportAction(context,defs.pointarray_move,{1,2})
	return 0
end