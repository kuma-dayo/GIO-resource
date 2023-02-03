--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 69001, monster_id = 21030201, pos = { x = -590.968, y = 346.124, z = 558.158 }, rot = { x = 0.000, y = 31.828, z = 0.000 }, level = 24, drop_tag = "丘丘萨满", disableWander = true, pose_id = 9012 },
	{ config_id = 69005, monster_id = 21010701, pos = { x = -585.943, y = 345.378, z = 559.512 }, rot = { x = 0.000, y = 286.257, z = 0.000 }, level = 24, drop_tag = "丘丘人", disableWander = true },
	{ config_id = 69006, monster_id = 21010701, pos = { x = -591.159, y = 346.021, z = 563.723 }, rot = { x = 0.000, y = 216.077, z = 0.000 }, level = 24, drop_tag = "丘丘人", disableWander = true, pose_id = 9013 },
	{ config_id = 69007, monster_id = 21010701, pos = { x = -587.425, y = 345.063, z = 563.153 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 24, drop_tag = "丘丘人" }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 69002, gadget_id = 70211012, pos = { x = -589.739, y = 346.139, z = 556.272 }, rot = { x = 0.000, y = 26.629, z = 0.000 }, level = 21, drop_tag = "战斗中级璃月", state = GadgetState.ChestLocked, isOneoff = true, persistent = true },
	{ config_id = 69004, gadget_id = 70310004, pos = { x = -589.439, y = 346.284, z = 559.975 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 24, state = GadgetState.GearStart }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ name = "ANY_MONSTER_DIE_69003", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_69003", action = "action_EVENT_ANY_MONSTER_DIE_69003" }
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
		monsters = { 69001, 69005, 69006, 69007 },
		gadgets = { 69002, 69004 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_69003" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_69003(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_69003(context, evt)
	-- 将configid为 69002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 69002, GadgetState.Default) then
			return -1
		end 
	
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 4000, 3, 1) then
	      return -1
	    end
	
	return 0
end
