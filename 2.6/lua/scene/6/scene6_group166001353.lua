-- 基础信息
local base_info = {
	group_id = 166001353
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 353001, monster_id = 22010301, pos = { x = 950.988, y = 904.306, z = 659.730 }, rot = { x = 0.000, y = 127.872, z = 0.000 }, level = 36, drop_tag = "深渊法师", area_id = 300 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
}

-- 区域
regions = {
	{ config_id = 353004, shape = RegionShape.SPHERE, radius = 5, pos = { x = 950.383, y = 901.616, z = 659.056 }, area_id = 300 }
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
	    ScriptLib.AddExtraGroupSuite(context, 166001353, 2)
	
	return 0
end