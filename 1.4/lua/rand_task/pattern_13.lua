--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 13001, monster_id = 23030101, pos = { x = 1.111, y = -0.173, z = -1.417 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_tag = "召唤师", disableWander = true, affix = { 9002 }, area_id = 1 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
}

-- 区域
regions = {
	{ config_id = 13011, shape = RegionShape.SPHERE, radius = 50, pos = { x = -0.126, y = -0.002, z = 0.026 }, area_id = 1 }
}

-- 触发器
triggers = {
	{ config_id = 1013010, name = "ANY_MONSTER_DIE_13010", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_13010", action = "action_EVENT_ANY_MONSTER_DIE_13010" },
	{ config_id = 1013011, name = "ENTER_REGION_13011", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_13011", action = "action_EVENT_ENTER_REGION_13011", forbid_guest = false }
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
	rand_suite = true
}

--================================================================
-- 
-- 小组配置
-- 
--================================================================

suites = {
	{
		-- suite_id = 1,
		-- description = suite_2,
		monsters = { 13001 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_13010" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_13010(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_13010(context, evt)
	-- 设置操作台选项
	
	    ScriptLib.FinishRandTask(context, 13, true)
	
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_13011(context, evt)
	if evt.param1 ~= 13011 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_13011(context, evt)
	-- 调用提示id为 1110013 的提示UI，会显示在屏幕中央偏下位置，id索引自 ReminderData表格
	if 0 ~= ScriptLib.ShowReminder(context, 1110013) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui")
		return -1
	end
	
	return 0
end