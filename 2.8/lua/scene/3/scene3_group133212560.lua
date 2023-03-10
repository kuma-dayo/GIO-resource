-- 基础信息
local base_info = {
	group_id = 133212560
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 560001, monster_id = 20011001, pos = { x = -3651.853, y = 212.167, z = -1607.211 }, rot = { x = 0.000, y = 140.190, z = 0.000 }, level = 27, drop_tag = "史莱姆", area_id = 13 },
	{ config_id = 560002, monster_id = 20011001, pos = { x = -3648.978, y = 211.915, z = -1603.796 }, rot = { x = 0.000, y = 130.734, z = 0.000 }, level = 27, drop_tag = "史莱姆", area_id = 13 },
	{ config_id = 560003, monster_id = 20011001, pos = { x = -3649.467, y = 212.057, z = -1606.488 }, rot = { x = 0.000, y = 127.318, z = 0.000 }, level = 27, drop_tag = "史莱姆", area_id = 13 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
}

-- 区域
regions = {
	{ config_id = 560004, shape = RegionShape.SPHERE, radius = 7, pos = { x = -3650.216, y = 214.520, z = -1605.732 }, area_id = 13 }
}

-- 触发器
triggers = {
	{ config_id = 1560004, name = "ENTER_REGION_560004", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_560004", action = "action_EVENT_ENTER_REGION_560004" }
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
		regions = { 560004 },
		triggers = { "ENTER_REGION_560004" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 560001, 560002, 560003 },
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
function condition_EVENT_ENTER_REGION_560004(context, evt)
	if evt.param1 ~= 560004 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_560004(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133212560, 2)
	
	return 0
end