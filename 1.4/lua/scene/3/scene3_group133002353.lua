--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 353001, monster_id = 20010401, pos = { x = 1804.765, y = 257.036, z = -680.489 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 10, drop_tag = "大史莱姆", area_id = 3 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
}

-- 区域
regions = {
	{ config_id = 353004, shape = RegionShape.SPHERE, radius = 5, pos = { x = 1806.267, y = 256.655, z = -680.381 }, area_id = 3 }
}

-- 触发器
triggers = {
	{ config_id = 1353004, name = "ENTER_REGION_353004", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_353004", action = "action_EVENT_ENTER_REGION_353004" }
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
		regions = { 353004 },
		triggers = { "ENTER_REGION_353004" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 353001 },
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
function condition_EVENT_ENTER_REGION_353004(context, evt)
	if evt.param1 ~= 353004 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_353004(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133002353, 2)
	
	return 0
end