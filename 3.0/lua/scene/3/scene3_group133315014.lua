-- 基础信息
local base_info = {
	group_id = 133315014
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 14001, monster_id = 25210301, pos = { x = -166.805, y = 230.157, z = 2296.583 }, rot = { x = 0.000, y = 209.310, z = 0.000 }, level = 27, drop_id = 1000100, affix = { 1006 }, title_id = 10101, special_name_id = 10134, area_id = 24 },
	{ config_id = 14004, monster_id = 25210101, pos = { x = -168.018, y = 230.012, z = 2293.763 }, rot = { x = 0.000, y = 232.527, z = 0.000 }, level = 27, drop_id = 1000100, affix = { 1007, 1009 }, title_id = 10100, special_name_id = 10132, area_id = 24 },
	{ config_id = 14005, monster_id = 25210401, pos = { x = -165.681, y = 230.430, z = 2294.147 }, rot = { x = 0.000, y = 246.754, z = 0.000 }, level = 27, drop_id = 1000100, affix = { 1006 }, title_id = 10101, special_name_id = 10133, area_id = 24 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1014003, name = "ANY_MONSTER_DIE_14003", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_14003", action = "action_EVENT_ANY_MONSTER_DIE_14003", trigger_count = 0 }
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
		monsters = { 14001, 14004, 14005 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_14003" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_14003(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_14003(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "7306125") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end