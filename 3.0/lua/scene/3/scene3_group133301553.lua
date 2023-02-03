-- 基础信息
local base_info = {
	group_id = 133301553
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 553004, monster_id = 24030101, pos = { x = -265.402, y = 244.899, z = 3903.943 }, rot = { x = 0.000, y = 301.379, z = 0.000 }, level = 27, drop_tag = "遗迹龙兽", pose_id = 102, area_id = 22 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 553002, gadget_id = 70211012, pos = { x = -269.236, y = 245.224, z = 3896.972 }, rot = { x = 0.000, y = 337.298, z = 0.000 }, level = 26, drop_tag = "战斗中级须弥", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, explore = { name = "chest", exp = 10 }, area_id = 22 },
	{ config_id = 553005, gadget_id = 70220109, pos = { x = -279.762, y = 247.453, z = 3880.385 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 22 },
	{ config_id = 553006, gadget_id = 70220109, pos = { x = -265.158, y = 242.065, z = 3890.583 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 22 },
	{ config_id = 553007, gadget_id = 70220109, pos = { x = -275.658, y = 245.010, z = 3888.458 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 22 },
	{ config_id = 553008, gadget_id = 70220109, pos = { x = -258.899, y = 242.110, z = 3896.586 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 22 },
	{ config_id = 553009, gadget_id = 70220109, pos = { x = -256.518, y = 243.131, z = 3906.964 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 22 },
	{ config_id = 553010, gadget_id = 70220109, pos = { x = -261.656, y = 244.106, z = 3915.291 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 22 },
	{ config_id = 553011, gadget_id = 70220109, pos = { x = -269.299, y = 246.405, z = 3910.344 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 22 },
	{ config_id = 553012, gadget_id = 70220109, pos = { x = -288.519, y = 249.368, z = 3897.207 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 22 },
	{ config_id = 553013, gadget_id = 70220109, pos = { x = -276.155, y = 247.303, z = 3900.827 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 22 },
	{ config_id = 553014, gadget_id = 70220109, pos = { x = -278.627, y = 246.260, z = 3869.174 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 22 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1553003, name = "ANY_MONSTER_DIE_553003", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_553003", action = "action_EVENT_ANY_MONSTER_DIE_553003" }
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
		monsters = { 553004 },
		gadgets = { 553002, 553005, 553006, 553007, 553008, 553009, 553010, 553011, 553012, 553013, 553014 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_553003" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_553003(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_553003(context, evt)
	-- 将configid为 553002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 553002, GadgetState.Default) then
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