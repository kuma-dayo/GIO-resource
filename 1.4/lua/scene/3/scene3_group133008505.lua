--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 505001, monster_id = 21010901, pos = { x = 948.032, y = 382.010, z = -888.423 }, rot = { x = 0.000, y = 332.754, z = 0.000 }, level = 30, drop_tag = "远程丘丘人", disableWander = true, climate_area_id = 1, area_id = 10 },
	{ config_id = 505004, monster_id = 21010901, pos = { x = 951.214, y = 384.961, z = -899.213 }, rot = { x = 0.000, y = 160.795, z = 0.000 }, level = 30, drop_tag = "远程丘丘人", disableWander = true, climate_area_id = 1, area_id = 10 },
	{ config_id = 505008, monster_id = 21011401, pos = { x = 954.809, y = 382.912, z = -896.215 }, rot = { x = 24.492, y = 27.279, z = 347.721 }, level = 30, drop_tag = "丘丘人", disableWander = true, pose_id = 9013, climate_area_id = 1, area_id = 10 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 505002, gadget_id = 70211012, pos = { x = 950.064, y = 383.912, z = -895.533 }, rot = { x = 351.127, y = 77.787, z = 5.057 }, level = 26, drop_tag = "雪山战斗中级蒙德", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 10 },
	{ config_id = 505005, gadget_id = 70310018, pos = { x = 952.149, y = 383.567, z = -895.181 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, state = GadgetState.GearStart, area_id = 10 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1505003, name = "ANY_MONSTER_DIE_505003", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_505003", action = "action_EVENT_ANY_MONSTER_DIE_505003" },
	{ config_id = 1505006, name = "MONSTER_BATTLE_505006", event = EventType.EVENT_MONSTER_BATTLE, source = "", condition = "condition_EVENT_MONSTER_BATTLE_505006", action = "action_EVENT_MONSTER_BATTLE_505006" }
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
		monsters = { 505008 },
		gadgets = { 505002, 505005 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_505003", "MONSTER_BATTLE_505006" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_505003(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_505003(context, evt)
	-- 将configid为 505002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 505002, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 4000, 3, 1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	return 0
end

-- 触发条件
function condition_EVENT_MONSTER_BATTLE_505006(context, evt)
	if 505008 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_MONSTER_BATTLE_505006(context, evt)
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 505001, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 505004, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	return 0
end