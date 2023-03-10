-- 基础信息
local base_info = {
	group_id = 133212038
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 38001, monster_id = 25080301, pos = { x = -3796.928, y = 216.000, z = -2575.912 }, rot = { x = 0.000, y = 241.456, z = 0.000 }, level = 27, drop_tag = "浪人武士", disableWander = true, affix = { 1101 }, pose_id = 1006, area_id = 13 },
	{ config_id = 38004, monster_id = 25080301, pos = { x = -3820.085, y = 217.998, z = -2578.774 }, rot = { x = 0.000, y = 210.804, z = 0.000 }, level = 27, drop_tag = "浪人武士", affix = { 1101 }, pose_id = 1, area_id = 13 },
	{ config_id = 38005, monster_id = 25080301, pos = { x = -3812.311, y = 218.480, z = -2569.337 }, rot = { x = 0.000, y = 141.535, z = 0.000 }, level = 27, drop_tag = "浪人武士", affix = { 1101 }, pose_id = 1005, area_id = 13 },
	{ config_id = 38006, monster_id = 25080301, pos = { x = -3804.459, y = 216.733, z = -2579.296 }, rot = { x = 0.000, y = 321.199, z = 0.000 }, level = 27, drop_tag = "浪人武士", affix = { 1101 }, pose_id = 1004, area_id = 13 },
	{ config_id = 38007, monster_id = 25100101, pos = { x = -3802.526, y = 216.996, z = -2574.413 }, rot = { x = 0.000, y = 159.850, z = 0.000 }, level = 27, drop_tag = "高阶武士", affix = { 1101 }, pose_id = 1002, area_id = 13 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 38002, gadget_id = 70211002, pos = { x = -3801.219, y = 216.360, z = -2578.037 }, rot = { x = 0.000, y = 354.934, z = 353.335 }, level = 26, drop_tag = "战斗低级稻妻", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 13 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1038003, name = "ANY_MONSTER_DIE_38003", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_38003", action = "action_EVENT_ANY_MONSTER_DIE_38003" }
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
		monsters = { 38001, 38004, 38005, 38006, 38007 },
		gadgets = { 38002 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_38003" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_38003(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_38003(context, evt)
	-- 将configid为 38002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 38002, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 4001, 3, 1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	return 0
end