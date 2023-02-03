--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 584001, gadget_id = 70710219, pos = { x = -3954.703, y = 241.069, z = -2187.126 }, rot = { x = 0.000, y = 38.110, z = 0.000 }, level = 1, area_id = 13 },
	{ config_id = 584002, gadget_id = 70710219, pos = { x = -3943.884, y = 237.939, z = -2179.349 }, rot = { x = 0.000, y = 51.094, z = 0.000 }, level = 1, area_id = 13 },
	{ config_id = 584003, gadget_id = 70710219, pos = { x = -3936.887, y = 234.852, z = -2167.740 }, rot = { x = 0.000, y = 7.153, z = 0.000 }, level = 1, area_id = 13 },
	{ config_id = 584005, gadget_id = 70710219, pos = { x = -3935.853, y = 232.244, z = -2157.156 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 13 },
	{ config_id = 584006, gadget_id = 70710219, pos = { x = -3930.950, y = 229.446, z = -2148.757 }, rot = { x = 1.882, y = 72.237, z = 349.165 }, level = 1, area_id = 13 },
	{ config_id = 584007, gadget_id = 70710219, pos = { x = -3919.200, y = 226.675, z = -2138.233 }, rot = { x = 0.000, y = 46.889, z = 0.000 }, level = 1, area_id = 13 },
	{ config_id = 584009, gadget_id = 70710219, pos = { x = -3910.646, y = 223.950, z = -2129.559 }, rot = { x = 0.000, y = 26.448, z = 0.000 }, level = 1, area_id = 13 }
}

-- 区域
regions = {
	{ config_id = 584004, shape = RegionShape.SPHERE, radius = 5, pos = { x = -3940.029, y = 237.456, z = -2174.190 }, area_id = 13 }
}

-- 触发器
triggers = {
	{ config_id = 1584004, name = "ENTER_REGION_584004", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_584004", action = "action_EVENT_ENTER_REGION_584004" }
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
		gadgets = { 584001, 584002, 584003 },
		regions = { 584004 },
		triggers = { "ENTER_REGION_584004" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 584005, 584006, 584007, 584009 },
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
function condition_EVENT_ENTER_REGION_584004(context, evt)
	if evt.param1 ~= 584004 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_584004(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133212584, 2)
	
	return 0
end