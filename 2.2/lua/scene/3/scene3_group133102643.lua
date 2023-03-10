--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 643001, monster_id = 20010801, pos = { x = 1081.001, y = 200.025, z = 709.168 }, rot = { x = 0.000, y = 105.117, z = 0.000 }, level = 22, drop_tag = "史莱姆", area_id = 6 },
	{ config_id = 643005, monster_id = 26010101, pos = { x = 1084.221, y = 200.009, z = 712.663 }, rot = { x = 0.000, y = 71.669, z = 0.000 }, level = 19, drop_tag = "骗骗花", area_id = 6 },
	{ config_id = 643006, monster_id = 20010801, pos = { x = 1078.552, y = 200.302, z = 712.746 }, rot = { x = 0.000, y = 181.655, z = 0.000 }, level = 22, drop_tag = "史莱姆", area_id = 6 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 643002, gadget_id = 70211012, pos = { x = 1081.109, y = 200.179, z = 712.839 }, rot = { x = 357.317, y = 271.574, z = 359.926 }, level = 16, drop_tag = "战斗中级璃月", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 6 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1643003, name = "ANY_MONSTER_DIE_643003", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_643003", action = "action_EVENT_ANY_MONSTER_DIE_643003" }
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
		monsters = { 643001, 643005, 643006 },
		gadgets = { 643002 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_643003" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_643003(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_643003(context, evt)
	-- 将configid为 643002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 643002, GadgetState.Default) then
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