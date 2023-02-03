-- 基础信息
local base_info = {
	group_id = 133301715
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 715001, monster_id = 26090101, pos = { x = -927.513, y = 42.950, z = 3163.840 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, drop_tag = "蕈兽", pose_id = 105, area_id = 23 },
	{ config_id = 715002, monster_id = 26090101, pos = { x = -921.868, y = 42.950, z = 3172.339 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, drop_tag = "蕈兽", pose_id = 104, area_id = 23 },
	{ config_id = 715003, monster_id = 26090101, pos = { x = -922.717, y = 43.217, z = 3177.331 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, drop_tag = "蕈兽", pose_id = 104, area_id = 23 },
	{ config_id = 715004, monster_id = 26090101, pos = { x = -929.982, y = 42.950, z = 3178.031 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, drop_tag = "蕈兽", pose_id = 102, area_id = 23 },
	{ config_id = 715005, monster_id = 26120301, pos = { x = -925.757, y = 42.950, z = 3174.274 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, drop_tag = "大蕈兽", pose_id = 101, area_id = 23 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 715007, gadget_id = 70290153, pos = { x = -929.824, y = 22.861, z = 3174.417 }, rot = { x = 359.213, y = 107.308, z = 359.395 }, level = 30, isOneoff = true, persistent = true, area_id = 23 }
}

-- 区域
regions = {
	{ config_id = 715008, shape = RegionShape.CYLINDER, radius = 110, pos = { x = -924.016, y = 48.517, z = 3171.724 }, height = 30.000, area_id = 23 }
}

-- 触发器
triggers = {
	{ config_id = 1715006, name = "MONSTER_BATTLE_715006", event = EventType.EVENT_MONSTER_BATTLE, source = "", condition = "", action = "action_EVENT_MONSTER_BATTLE_715006" },
	{ config_id = 1715008, name = "ENTER_REGION_715008", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_715008", action = "action_EVENT_ENTER_REGION_715008", trigger_count = 0 }
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
		monsters = { 715005 },
		gadgets = { 715007 },
		regions = { 715008 },
		triggers = { "MONSTER_BATTLE_715006", "ENTER_REGION_715008" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 715001, 715002, 715003, 715004 },
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

-- 触发操作
function action_EVENT_MONSTER_BATTLE_715006(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133301715, 2)
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_715008(context, evt)
	if evt.param1 ~= 715008 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_715008(context, evt)
		-- 永久关闭CongfigId的Gadget，需要和Groups的RefreshWithBlock标签搭配
		if 0 ~= ScriptLib.KillEntityByConfigId(context, { config_id = 715007 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_entity_by_configId")
		    return -1
		end
		
	
	return 0
end