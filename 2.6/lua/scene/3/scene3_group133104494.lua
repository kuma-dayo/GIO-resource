-- 基础信息
local base_info = {
	group_id = 133104494
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 494002, monster_id = 20011201, pos = { x = -142.619, y = 285.574, z = 64.980 }, rot = { x = 0.000, y = 203.586, z = 0.000 }, level = 19, drop_tag = "史莱姆", area_id = 7 },
	{ config_id = 494003, monster_id = 20011201, pos = { x = -141.132, y = 285.461, z = 69.948 }, rot = { x = 0.000, y = 136.638, z = 0.000 }, level = 19, drop_tag = "史莱姆", area_id = 7 },
	{ config_id = 494004, monster_id = 20011201, pos = { x = -138.605, y = 285.006, z = 65.800 }, rot = { x = 0.000, y = 144.243, z = 0.000 }, level = 19, drop_tag = "史莱姆", area_id = 7 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
}

-- 区域
regions = {
	{ config_id = 494001, shape = RegionShape.SPHERE, radius = 5, pos = { x = -140.573, y = 285.214, z = 67.190 }, area_id = 7 }
}

-- 触发器
triggers = {
	{ config_id = 1494001, name = "ENTER_REGION_494001", event = EventType.EVENT_ENTER_REGION, source = "1", condition = "condition_EVENT_ENTER_REGION_494001", action = "action_EVENT_ENTER_REGION_494001" }
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
		gadgets = { },
		regions = { 494001 },
		triggers = { "ENTER_REGION_494001" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ENTER_REGION_494001(context, evt)
	if evt.param1 ~= 494001 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_494001(context, evt)
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 494002, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 494003, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 494004, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	return 0
end