--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 147001, monster_id = 21011201, pos = { x = -2695.486, y = 241.734, z = -4412.386 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, drop_id = 1000100, disableWander = true, pose_id = 9010, area_id = 11 },
	{ config_id = 147002, monster_id = 21011201, pos = { x = -2697.944, y = 241.317, z = -4406.936 }, rot = { x = 0.000, y = 131.630, z = 0.000 }, level = 27, drop_id = 1000100, disableWander = true, pose_id = 9010, area_id = 11 },
	{ config_id = 147003, monster_id = 21020201, pos = { x = -2694.656, y = 241.788, z = -4406.736 }, rot = { x = 0.000, y = 209.177, z = 0.000 }, level = 27, drop_id = 1000100, disableWander = true, affix = { 1006 }, isElite = true, area_id = 11 },
	{ config_id = 147004, monster_id = 21030101, pos = { x = -2691.672, y = 242.297, z = -4407.989 }, rot = { x = 0.000, y = 235.717, z = 0.000 }, level = 27, drop_id = 1000100, disableWander = true, area_id = 11 }
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
	{ config_id = 1147005, name = "ANY_MONSTER_DIE_147005", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_147005", action = "action_EVENT_ANY_MONSTER_DIE_147005", trigger_count = 0 }
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
		monsters = { 147001, 147002, 147003, 147004 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_147005" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_147005(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_147005(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "2201605") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	return 0
end