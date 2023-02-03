-- 基础信息
local base_info = {
	group_id = 133304121
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 121001, monster_id = 21011001, pos = { x = -1068.673, y = 258.244, z = 2403.961 }, rot = { x = 0.000, y = 270.968, z = 0.000 }, level = 30, drop_tag = "远程丘丘人", disableWander = true, pose_id = 9013, area_id = 21 },
	{ config_id = 121007, monster_id = 21020201, pos = { x = -1072.167, y = 257.822, z = 2400.770 }, rot = { x = 0.000, y = 37.317, z = 0.000 }, level = 27, drop_tag = "丘丘暴徒", area_id = 21 },
	{ config_id = 121009, monster_id = 21010501, pos = { x = -1064.925, y = 265.359, z = 2420.463 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, drop_tag = "远程丘丘人", pose_id = 9010, area_id = 21 },
	{ config_id = 121012, monster_id = 21030201, pos = { x = -1065.546, y = 258.380, z = 2406.781 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, drop_tag = "丘丘萨满", area_id = 21 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 121002, gadget_id = 70211002, pos = { x = -1062.095, y = 256.406, z = 2398.778 }, rot = { x = 0.000, y = 149.066, z = 0.000 }, level = 26, drop_tag = "战斗低级须弥", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, explore = { name = "chest", exp = 10 }, area_id = 21 },
	{ config_id = 121004, gadget_id = 70220013, pos = { x = -1071.916, y = 271.303, z = 2417.700 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 21 },
	{ config_id = 121005, gadget_id = 70220013, pos = { x = -1088.562, y = 274.228, z = 2405.544 }, rot = { x = 0.000, y = 346.095, z = 0.000 }, level = 30, area_id = 21 },
	{ config_id = 121006, gadget_id = 70220014, pos = { x = -1060.881, y = 264.993, z = 2415.815 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 21 },
	{ config_id = 121008, gadget_id = 70220108, pos = { x = -1070.908, y = 259.269, z = 2405.981 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 21 },
	{ config_id = 121010, gadget_id = 70220005, pos = { x = -1066.220, y = 265.693, z = 2421.507 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 21 },
	{ config_id = 121011, gadget_id = 70220107, pos = { x = -1066.734, y = 259.038, z = 2408.011 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 21 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1121003, name = "ANY_MONSTER_DIE_121003", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_121003", action = "action_EVENT_ANY_MONSTER_DIE_121003", trigger_count = 0 }
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
		monsters = { 121001, 121007, 121009, 121012 },
		gadgets = { 121002, 121004, 121005, 121006, 121008, 121010, 121011 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_121003" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_121003(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_121003(context, evt)
	-- 将configid为 121002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 121002, GadgetState.Default) then
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