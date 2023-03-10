-- 基础信息
local base_info = {
	group_id = 133303354
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 354004, monster_id = 21010101, pos = { x = -1515.994, y = 128.157, z = 3354.063 }, rot = { x = 0.000, y = 217.042, z = 0.000 }, level = 30, drop_tag = "丘丘人", pose_id = 9016, area_id = 23 },
	{ config_id = 354005, monster_id = 21020101, pos = { x = -1512.700, y = 128.323, z = 3352.568 }, rot = { x = 0.000, y = 291.635, z = 0.000 }, level = 30, drop_tag = "丘丘暴徒", pose_id = 401, area_id = 23 },
	{ config_id = 354006, monster_id = 21010101, pos = { x = -1519.607, y = 128.449, z = 3353.512 }, rot = { x = 0.000, y = 131.287, z = 0.000 }, level = 30, drop_tag = "丘丘人", pose_id = 9016, area_id = 23 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 354002, gadget_id = 70330199, pos = { x = -1517.666, y = 128.352, z = 3351.141 }, rot = { x = 0.000, y = 0.000, z = 353.918 }, level = 30, state = GadgetState.GearStop, isOneoff = true, persistent = true, area_id = 23 },
	{ config_id = 354007, gadget_id = 70217020, pos = { x = -1517.548, y = 128.723, z = 3351.735 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 26, drop_tag = "摩拉石箱须弥", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, explore = { name = "chest", exp = 4 }, area_id = 23 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1354003, name = "GADGET_STATE_CHANGE_354003", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_354003", action = "action_EVENT_GADGET_STATE_CHANGE_354003" }
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
		monsters = { 354004, 354005, 354006 },
		gadgets = { 354002, 354007 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_354003" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_354003(context, evt)
	-- 检测指定三态物件的grassState是否为对应状态，其中1为正常态、2为激化态、3为消亡态
	if 354002 ~= evt.param2 then
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
function action_EVENT_GADGET_STATE_CHANGE_354003(context, evt)
	-- 将configid为 354007 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 354007, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end