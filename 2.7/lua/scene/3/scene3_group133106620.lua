-- 基础信息
local base_info = {
	group_id = 133106620
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 620001, monster_id = 20011001, pos = { x = -481.095, y = 130.500, z = 1870.405 }, rot = { x = 0.000, y = 183.128, z = 0.000 }, level = 36, drop_tag = "史莱姆", area_id = 19 },
	{ config_id = 620002, monster_id = 20011001, pos = { x = -479.608, y = 130.500, z = 1869.180 }, rot = { x = 0.000, y = 282.332, z = 0.000 }, level = 36, drop_tag = "史莱姆", area_id = 19 },
	{ config_id = 620003, monster_id = 20011001, pos = { x = -482.578, y = 130.500, z = 1869.272 }, rot = { x = 0.000, y = 90.804, z = 0.000 }, level = 36, drop_tag = "史莱姆", area_id = 19 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
}

-- 区域
regions = {
	{ config_id = 620004, shape = RegionShape.SPHERE, radius = 7, pos = { x = -481.105, y = 130.500, z = 1869.203 }, area_id = 19 }
}

-- 触发器
triggers = {
	{ config_id = 1620004, name = "ENTER_REGION_620004", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_620004", action = "action_EVENT_ENTER_REGION_620004" }
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
		regions = { 620004 },
		triggers = { "ENTER_REGION_620004" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 620001, 620002, 620003 },
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
function condition_EVENT_ENTER_REGION_620004(context, evt)
	if evt.param1 ~= 620004 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_620004(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133106620, 2)
	
	return 0
end