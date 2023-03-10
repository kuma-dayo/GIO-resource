-- 基础信息
local base_info = {
	group_id = 199003039
}

-- DEFS_MISCS
local defs = {
    target_leveltag = 21,
    pos = {  x=-682, y=123, z=-19.6},
    rot = {x=0, y=0, z=1},
    radius = 2,
}

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
	[39001] = { config_id = 39001, gadget_id = 70310399, pos = { x = -678.196, y = 132.691, z = -26.888 }, rot = { x = 0.000, y = 165.786, z = 0.000 }, level = 20, area_id = 403 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1039002, name = "GROUP_LOAD_39002", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "", action = "action_EVENT_GROUP_LOAD_39002", trigger_count = 0 }
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
	end_suite = 2,
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
		gadgets = { 39001 },
		regions = { },
		triggers = { "GROUP_LOAD_39002" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { },
		regions = { },
		triggers = { "GROUP_LOAD_39002" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发操作
function action_EVENT_GROUP_LOAD_39002(context, evt)
	 if ScriptLib.GetHostQuestState(context,4007501)==2 or ScriptLib.GetHostQuestState(context,4007601)==2 then
	ScriptLib.RefreshGroup(context, { group_id = 199003039, suite = 2 })
	
	else
	ScriptLib.RefreshGroup(context, { group_id = 199003039, suite = 1 })
	
	end
	return 0
end

require "V2_8/MonaPortal"