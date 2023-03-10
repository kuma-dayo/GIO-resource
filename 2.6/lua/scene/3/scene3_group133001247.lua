-- 基础信息
local base_info = {
	group_id = 133001247
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 247002, monster_id = 20010501, pos = { x = 1597.682, y = 253.272, z = -1352.802 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 12, drop_tag = "史莱姆", area_id = 2 },
	{ config_id = 247003, monster_id = 20010501, pos = { x = 1600.302, y = 253.446, z = -1364.417 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 12, drop_tag = "史莱姆", area_id = 2 },
	{ config_id = 247004, monster_id = 20010501, pos = { x = 1602.562, y = 253.471, z = -1362.859 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 12, drop_tag = "史莱姆", area_id = 2 },
	{ config_id = 247005, monster_id = 20010501, pos = { x = 1595.921, y = 253.447, z = -1362.464 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 12, drop_tag = "史莱姆", area_id = 2 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
}

-- 区域
regions = {
	{ config_id = 247001, shape = RegionShape.SPHERE, radius = 60, pos = { x = 1601.702, y = 253.455, z = -1363.866 }, area_id = 2 }
}

-- 触发器
triggers = {
	{ config_id = 1247001, name = "ENTER_REGION_247001", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_247001", action = "action_EVENT_ENTER_REGION_247001" },
	{ config_id = 1247006, name = "QUEST_FINISH_247006", event = EventType.EVENT_QUEST_FINISH, source = "", condition = "condition_EVENT_QUEST_FINISH_247006", action = "action_EVENT_QUEST_FINISH_247006" }
}

-- 变量
variables = {
	{ name = "allow_spawn", value = 0, no_refresh = true }
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
		gadgets = { },
		regions = { 247001 },
		triggers = { "ENTER_REGION_247001", "QUEST_FINISH_247006" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 247002, 247003, 247004, 247005 },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ENTER_REGION_247001(context, evt)
	if evt.param1 ~= 247001 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	-- 判断变量"allow_spawn"为1
	if ScriptLib.GetGroupVariableValue(context, "allow_spawn") ~= 1 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_247001(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133001247, 2)
	
	return 0
end

-- 触发条件
function condition_EVENT_QUEST_FINISH_247006(context, evt)
	--检查ID为30803的任务的完成状态是否为1（1=完成，0=失败）
	--此事件需要配合Quest表使用，在Quest表里的完成执行中配置“通知group脚本”，则该任务完成后服务端会向对应的group发送通知，参数1填写场景ID，参数2填写group ID（如果不填则会通知所有group）
	
	--检查任务ID
	if 30803 ~= evt.param1 then
		return false
	end
	
	--检查任务成功状态
	if 1 ~= evt.param2 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_QUEST_FINISH_247006(context, evt)
	-- 将本组内变量名为 "allow_spawn" 的变量设置为 1
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "allow_spawn", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	return 0
end