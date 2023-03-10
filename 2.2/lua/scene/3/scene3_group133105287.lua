--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 287001, monster_id = 21010901, pos = { x = 719.590, y = 255.306, z = -371.462 }, rot = { x = 0.000, y = 135.299, z = 0.000 }, level = 32, drop_id = 1000100, area_id = 9 },
	{ config_id = 287002, monster_id = 21010501, pos = { x = 731.682, y = 254.110, z = -367.471 }, rot = { x = 0.000, y = 233.598, z = 0.000 }, level = 1, drop_id = 1000100, area_id = 9 },
	{ config_id = 287003, monster_id = 21011001, pos = { x = 721.381, y = 252.495, z = -355.054 }, rot = { x = 0.000, y = 160.072, z = 0.000 }, level = 1, drop_id = 1000100, area_id = 9 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
}

-- 区域
regions = {
	{ config_id = 287004, shape = RegionShape.SPHERE, radius = 20, pos = { x = 725.665, y = 252.627, z = -368.705 }, area_id = 9 }
}

-- 触发器
triggers = {
	{ config_id = 1287004, name = "ENTER_REGION_287004", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_287004", action = "action_EVENT_ENTER_REGION_287004" }
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
		monsters = { },
		gadgets = { },
		regions = { 287004 },
		triggers = { "ENTER_REGION_287004" },
		rand_weight = 100,
		ban_refresh = true
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 287001, 287002, 287003 },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100,
		ban_refresh = true
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ENTER_REGION_287004(context, evt)
	if evt.param1 ~= 287004 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_287004(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133105287, 2)
	
	return 0
end