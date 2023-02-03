-- 基础信息
local base_info = {
	group_id = 133303352
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 352005, monster_id = 21010101, pos = { x = -1453.968, y = 278.800, z = 3868.624 }, rot = { x = 0.000, y = 10.168, z = 0.000 }, level = 30, drop_tag = "丘丘人", pose_id = 9012, area_id = 23 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 352002, gadget_id = 70330199, pos = { x = -1452.757, y = 278.423, z = 3872.580 }, rot = { x = 358.664, y = 239.138, z = 359.323 }, level = 30, state = GadgetState.GearStop, isOneoff = true, persistent = true, area_id = 23 },
	{ config_id = 352004, gadget_id = 70217020, pos = { x = -1453.175, y = 278.551, z = 3872.402 }, rot = { x = 0.000, y = 237.335, z = 0.000 }, level = 26, drop_tag = "摩拉石箱须弥", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, explore = { name = "chest", exp = 4 }, area_id = 23 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1352003, name = "GADGET_STATE_CHANGE_352003", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_352003", action = "action_EVENT_GADGET_STATE_CHANGE_352003" }
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
		monsters = { 352005 },
		gadgets = { 352002, 352004 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_352003" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_352003(context, evt)
	-- 检测指定三态物件的grassState是否为对应状态，其中1为正常态、2为激化态、3为消亡态
	if 352002 ~= evt.param2 then
		return false
	end
	if 1<1 or 1>3 then
	  return false
	end
	if 1 == 1 and 0 ~= evt.param1 then
	  return false
	end
	if 1 == 2 and 200 ~= evt.param1 then
	  return false
	end
	if 1 == 3 and 300 ~= evt.param1 and 301 ~= evt.param1 then
	  return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_352003(context, evt)
	-- 将configid为 352004 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 352004, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end