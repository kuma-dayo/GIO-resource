--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 314006, monster_id = 20010501, pos = { x = 1784.060, y = 200.371, z = 124.879 }, rot = { x = 0.000, y = 242.730, z = 0.000 }, level = 15, drop_tag = "史莱姆", area_id = 5 },
	{ config_id = 314007, monster_id = 20010501, pos = { x = 1784.502, y = 200.449, z = 122.517 }, rot = { x = 0.000, y = 281.628, z = 0.000 }, level = 15, drop_tag = "史莱姆", area_id = 5 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
}

-- 区域
regions = {
	{ config_id = 314005, shape = RegionShape.SPHERE, radius = 5, pos = { x = 1785.372, y = 200.523, z = 123.079 }, area_id = 5 }
}

-- 触发器
triggers = {
	{ config_id = 1314005, name = "ENTER_REGION_314005", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_314005", action = "action_EVENT_ENTER_REGION_314005" }
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
		regions = { 314005 },
		triggers = { "ENTER_REGION_314005" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = suite_2,
		monsters = { 314006, 314007 },
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
function condition_EVENT_ENTER_REGION_314005(context, evt)
	if evt.param1 ~= 314005 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_314005(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133102314, 2)
	
	return 0
end