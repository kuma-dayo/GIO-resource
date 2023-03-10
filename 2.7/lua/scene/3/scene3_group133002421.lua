-- 基础信息
local base_info = {
	group_id = 133002421
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 421001, monster_id = 23010101, pos = { x = 1506.654, y = 230.992, z = -352.116 }, rot = { x = 0.000, y = 316.320, z = 0.000 }, level = 19, drop_tag = "先遣队", disableWander = true, area_id = 3 },
	{ config_id = 421004, monster_id = 23010201, pos = { x = 1512.083, y = 230.755, z = -345.689 }, rot = { x = 0.000, y = 106.261, z = 0.000 }, level = 16, drop_tag = "先遣队", disableWander = true, pose_id = 9001, area_id = 3 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 421002, gadget_id = 70211012, pos = { x = 1505.574, y = 231.324, z = -357.914 }, rot = { x = 2.573, y = 359.626, z = 343.464 }, level = 26, drop_tag = "战斗中级蒙德", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 3 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1421003, name = "ANY_MONSTER_DIE_421003", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_421003", action = "action_EVENT_ANY_MONSTER_DIE_421003" }
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
		monsters = { 421001, 421004 },
		gadgets = { 421002 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_421003" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_421003(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_421003(context, evt)
	-- 将configid为 421002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 421002, GadgetState.Default) then
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