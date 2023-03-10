--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 406001, monster_id = 23010101, pos = { x = 1397.820, y = 309.678, z = -1270.668 }, rot = { x = 0.000, y = 169.415, z = 0.000 }, level = 10, disableWander = true },
	{ config_id = 406004, monster_id = 23010601, pos = { x = 1402.935, y = 308.673, z = -1270.811 }, rot = { x = 0.000, y = 357.373, z = 0.000 }, level = 15, disableWander = true },
	{ config_id = 406005, monster_id = 23010301, pos = { x = 1392.638, y = 310.649, z = -1280.391 }, rot = { x = 0.000, y = 138.080, z = 0.000 }, level = 10, disableWander = true }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 406002, gadget_id = 70211022, pos = { x = 1401.709, y = 308.905, z = -1267.203 }, rot = { x = 359.086, y = 180.099, z = 10.618 }, level = 6, drop_tag = "战斗高级蒙德", state = GadgetState.ChestLocked, isOneoff = true, persistent = true }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ name = "ANY_MONSTER_DIE_406003", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_406003", action = "action_EVENT_ANY_MONSTER_DIE_406003" }
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
		monsters = { 406001, 406004, 406005 },
		gadgets = { 406002 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_406003" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_406003(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_406003(context, evt)
	-- 将configid为 406002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 406002, GadgetState.Default) then
			return -1
		end 
	
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 4001, 3, 1) then
	      return -1
	    end
	
	return 0
end
