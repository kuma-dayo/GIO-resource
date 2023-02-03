--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 156001, monster_id = 24010101, pos = { x = -240.221, y = 192.621, z = 110.386 }, rot = { x = 0.000, y = 92.229, z = 0.000 }, level = 36, drop_tag = "遗迹守卫", disableWander = true, pose_id = 101, area_id = 200 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 156002, gadget_id = 70211002, pos = { x = -243.165, y = 193.408, z = 108.023 }, rot = { x = 16.501, y = 154.282, z = 15.586 }, level = 16, drop_tag = "战斗低级稻妻", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 200 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1156003, name = "ANY_MONSTER_DIE_156003", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_156003", action = "action_EVENT_ANY_MONSTER_DIE_156003" }
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
		monsters = { 156001 },
		gadgets = { 156002 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_156003" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_156003(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_156003(context, evt)
	-- 将configid为 156002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 156002, GadgetState.Default) then
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