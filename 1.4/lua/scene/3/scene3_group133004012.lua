--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 10, monster_id = 22010201, pos = { x = 2874.364, y = 219.965, z = -104.248 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, drop_tag = "深渊法师" },
	{ config_id = 23, monster_id = 21030101, pos = { x = 2876.733, y = 219.137, z = -102.452 }, rot = { x = 0.000, y = 333.133, z = 0.000 }, level = 20, drop_tag = "丘丘萨满" }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 41, gadget_id = 70211012, pos = { x = 2872.145, y = 218.652, z = -98.488 }, rot = { x = 0.000, y = 144.065, z = 0.000 }, level = 23, drop_tag = "战斗中级蒙德", state = GadgetState.ChestLocked, isOneoff = true, persistent = true }
}

-- 区域
regions = {
	{ config_id = 26, shape = RegionShape.SPHERE, radius = 10, pos = { x = 2873.121, y = 218.987, z = -100.087 } }
}

-- 触发器
triggers = {
	{ name = "ENTER_REGION_26", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_26", action = "action_EVENT_ENTER_REGION_26" },
	{ name = "ANY_MONSTER_DIE_59", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_59", action = "action_EVENT_ANY_MONSTER_DIE_59" }
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
	rand_suite = true
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
		gadgets = { 41 },
		regions = { 26 },
		triggers = { "ENTER_REGION_26", "ANY_MONSTER_DIE_59" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ENTER_REGION_26(context, evt)
	if evt.param1 ~= 26 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_26(context, evt)
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 10, delay_time = 0 }) then
	  return -1
	end
	
	-- 将configid为 41 的物件更改为状态 GadgetState.ChestLocked
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 41, GadgetState.ChestLocked) then
			return -1
		end 
	
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 23, delay_time = 0 }) then
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_59(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_59(context, evt)
	-- 解锁目标41
	if 0 ~= ScriptLib.ChangeGroupGadget(context, { config_id = 41, state = GadgetState.Default }) then
		return -1
	end
	
	return 0
end
