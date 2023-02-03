-- 基础信息
local base_info = {
	group_id = 133303163
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 163001, gadget_id = 70330219, pos = { x = -1219.602, y = 204.633, z = 3396.985 }, rot = { x = 0.000, y = 264.465, z = 0.000 }, level = 30, area_id = 23 },
	{ config_id = 163002, gadget_id = 70330219, pos = { x = -1229.371, y = 202.130, z = 3414.000 }, rot = { x = 0.000, y = 8.492, z = 0.000 }, level = 30, area_id = 23 },
	{ config_id = 163003, gadget_id = 70330219, pos = { x = -1239.364, y = 202.543, z = 3373.208 }, rot = { x = 0.000, y = 298.312, z = 0.000 }, level = 30, area_id = 23 },
	{ config_id = 163004, gadget_id = 70211102, pos = { x = -1228.868, y = 204.353, z = 3398.214 }, rot = { x = 0.000, y = 300.839, z = 0.000 }, level = 26, drop_tag = "解谜低级须弥", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, vision_level = VisionLevelType.VISION_LEVEL_NORMAL, explore = { name = "chest", exp = 10 }, area_id = 23 },
	{ config_id = 163006, gadget_id = 70310198, pos = { x = -1237.195, y = 203.082, z = 3401.702 }, rot = { x = 0.000, y = 138.595, z = 0.000 }, level = 30, area_id = 23 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1163005, name = "ANY_GADGET_DIE_163005", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_163005", action = "action_EVENT_ANY_GADGET_DIE_163005" }
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
		monsters = { },
		gadgets = { 163001, 163002, 163003, 163004, 163006 },
		regions = { },
		triggers = { "ANY_GADGET_DIE_163005" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_163005(context, evt)
	-- 判断剩余怪物数量是否是2
	if ScriptLib.GetGroupMonsterCount(context) ~= 2 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_163005(context, evt)
	-- 将configid为 163004 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 163004, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end