--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 140002, monster_id = 20010101, pos = { x = -156.255, y = 216.551, z = 1037.464 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, drop_tag = "史莱姆", pose_id = 201, area_id = 6 },
	{ config_id = 140003, monster_id = 20010201, pos = { x = -158.245, y = 216.332, z = 1037.242 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, drop_tag = "大史莱姆", pose_id = 201, area_id = 6 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 140007, gadget_id = 70211011, pos = { x = -154.505, y = 216.914, z = 1034.085 }, rot = { x = 5.498, y = 312.992, z = 5.225 }, level = 26, drop_tag = "战斗中级璃月", isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 6 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1140006, name = "ANY_MONSTER_DIE_140006", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_140006", action = "action_EVENT_ANY_MONSTER_DIE_140006" }
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
		monsters = { 140002, 140003 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_140006" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_140006(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_140006(context, evt)
	-- 创建id为140007的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 140007 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end