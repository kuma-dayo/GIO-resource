-- 基础信息
local base_info = {
	group_id = 144004132
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 132001, monster_id = 21020501, pos = { x = -353.791, y = 131.572, z = -642.647 }, rot = { x = 0.000, y = 240.811, z = 0.000 }, level = 20, drop_tag = "丘丘岩盔王", disableWander = true, pose_id = 401, area_id = 100 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 132002, gadget_id = 70211012, pos = { x = -353.574, y = 131.146, z = -646.905 }, rot = { x = 0.000, y = 270.935, z = 0.000 }, level = 26, drop_tag = "战斗中级群岛", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 100 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1132003, name = "ANY_MONSTER_DIE_132003", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_132003", action = "action_EVENT_ANY_MONSTER_DIE_132003" }
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
		monsters = { 132001 },
		gadgets = { 132002 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_132003" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_132003(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_132003(context, evt)
	-- 将configid为 132002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 132002, GadgetState.Default) then
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