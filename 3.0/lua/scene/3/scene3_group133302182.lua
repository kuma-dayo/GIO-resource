-- 基础信息
local base_info = {
	group_id = 133302182
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 182001, monster_id = 25210401, pos = { x = -28.043, y = 230.249, z = 2457.348 }, rot = { x = 0.000, y = 242.676, z = 0.000 }, level = 27, drop_tag = "镀金旅团", pose_id = 9512, area_id = 20 },
	{ config_id = 182004, monster_id = 25210401, pos = { x = -29.972, y = 230.239, z = 2456.613 }, rot = { x = 0.000, y = 66.566, z = 0.000 }, level = 27, drop_tag = "镀金旅团", pose_id = 9511, area_id = 20 },
	{ config_id = 182005, monster_id = 25210201, pos = { x = -38.836, y = 227.373, z = 2466.109 }, rot = { x = 0.000, y = 147.558, z = 0.000 }, level = 27, drop_tag = "镀金旅团", pose_id = 9503, area_id = 20 },
	{ config_id = 182006, monster_id = 25210301, pos = { x = -29.823, y = 228.228, z = 2465.760 }, rot = { x = 0.000, y = 352.692, z = 0.000 }, level = 27, drop_tag = "镀金旅团", area_id = 20 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 182002, gadget_id = 70211151, pos = { x = -27.033, y = 230.045, z = 2460.700 }, rot = { x = 0.000, y = 321.110, z = 0.000 }, level = 26, chest_drop_id = 21910071, drop_count = 1, state = GadgetState.ChestLocked, isOneoff = true, persistent = true, explore = { name = "chest", exp = 10 }, area_id = 20 },
	{ config_id = 182007, gadget_id = 70310479, pos = { x = -22.531, y = 230.414, z = 2460.481 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, state = GadgetState.GearStart, area_id = 20 },
	{ config_id = 182008, gadget_id = 70310479, pos = { x = -41.155, y = 227.549, z = 2461.810 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, state = GadgetState.GearStart, area_id = 20 },
	{ config_id = 182009, gadget_id = 70220128, pos = { x = -29.131, y = 230.250, z = 2456.796 }, rot = { x = 8.729, y = 343.248, z = 0.001 }, level = 27, area_id = 20 },
	{ config_id = 182010, gadget_id = 70220048, pos = { x = -27.394, y = 230.878, z = 2451.725 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 20 },
	{ config_id = 182011, gadget_id = 70220048, pos = { x = -29.485, y = 230.833, z = 2451.100 }, rot = { x = 0.000, y = 306.015, z = 0.000 }, level = 27, area_id = 20 },
	{ config_id = 182012, gadget_id = 70220051, pos = { x = -43.658, y = 226.608, z = 2464.607 }, rot = { x = 330.254, y = 0.001, z = 16.457 }, level = 27, area_id = 20 },
	{ config_id = 182013, gadget_id = 70220050, pos = { x = -43.665, y = 226.568, z = 2465.407 }, rot = { x = 5.315, y = 0.331, z = 7.125 }, level = 27, area_id = 20 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1182003, name = "ANY_MONSTER_DIE_182003", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_182003", action = "action_EVENT_ANY_MONSTER_DIE_182003" }
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
		monsters = { 182001, 182004, 182005, 182006 },
		gadgets = { 182002, 182007, 182008, 182009, 182010, 182011, 182012, 182013 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_182003" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_182003(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_182003(context, evt)
	-- 将configid为 182002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 182002, GadgetState.Default) then
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