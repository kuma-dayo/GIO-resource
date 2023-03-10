-- 基础信息
local base_info = {
	group_id = 133301720
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 720001, monster_id = 26120201, pos = { x = -831.920, y = -41.800, z = 3175.203 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, drop_tag = "大蕈兽", disableWander = true, pose_id = 201, area_id = 23 },
	{ config_id = 720002, monster_id = 26090501, pos = { x = -829.249, y = -36.104, z = 3151.247 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, drop_tag = "蕈兽", pose_id = 101, area_id = 23 },
	{ config_id = 720005, monster_id = 26090501, pos = { x = -835.891, y = -36.323, z = 3151.241 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, drop_tag = "蕈兽", pose_id = 101, area_id = 23 },
	{ config_id = 720006, monster_id = 26090501, pos = { x = -833.064, y = -38.422, z = 3153.094 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, drop_tag = "蕈兽", pose_id = 101, area_id = 23 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 720004, gadget_id = 70211104, pos = { x = -829.930, y = -42.707, z = 3167.233 }, rot = { x = 355.125, y = 203.507, z = 359.291 }, level = 26, drop_tag = "解谜低级须弥", state = GadgetState.ChestFrozen, showcutscene = true, isOneoff = true, persistent = true, explore = { name = "chest", exp = 10 }, area_id = 23 },
	{ config_id = 720008, gadget_id = 70220103, pos = { x = -825.295, y = -29.375, z = 3171.962 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 23 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1720003, name = "ANY_MONSTER_DIE_720003", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_720003", action = "action_EVENT_ANY_MONSTER_DIE_720003" },
	{ config_id = 1720007, name = "MONSTER_BATTLE_720007", event = EventType.EVENT_MONSTER_BATTLE, source = "", condition = "", action = "action_EVENT_MONSTER_BATTLE_720007" }
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
		monsters = { 720002, 720005, 720006 },
		gadgets = { 720004, 720008 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_720003", "MONSTER_BATTLE_720007" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 720001 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_720003" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_720003(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_720003(context, evt)
	-- 将configid为 720004 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 720004, GadgetState.Default) then
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

-- 触发操作
function action_EVENT_MONSTER_BATTLE_720007(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133301720, 2)
	
	return 0
end