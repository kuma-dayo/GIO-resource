-- 基础信息
local base_info = {
	group_id = 133301706
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 706010, monster_id = 28050106, pos = { x = -628.827, y = -39.994, z = 3742.656 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 33, drop_tag = "魔法生物", area_id = 25 },
	{ config_id = 706011, monster_id = 28050106, pos = { x = -635.241, y = -39.012, z = 3743.773 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 33, drop_tag = "魔法生物", area_id = 25 },
	{ config_id = 706012, monster_id = 28050106, pos = { x = -629.915, y = -39.138, z = 3743.413 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 33, drop_tag = "魔法生物", area_id = 25 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 706001, gadget_id = 70500000, pos = { x = -526.274, y = -41.370, z = 3822.271 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 33, point_type = 1001, area_id = 25 },
	{ config_id = 706002, gadget_id = 70500000, pos = { x = -533.657, y = -41.860, z = 3831.122 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 33, point_type = 1001, area_id = 25 },
	{ config_id = 706003, gadget_id = 70500000, pos = { x = -537.972, y = -42.314, z = 3820.834 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 33, point_type = 1002, area_id = 25 },
	{ config_id = 706004, gadget_id = 70500000, pos = { x = -527.166, y = -42.253, z = 3828.529 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 33, point_type = 1002, area_id = 25 },
	{ config_id = 706005, gadget_id = 70500000, pos = { x = -531.582, y = -42.425, z = 3830.119 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 33, point_type = 1003, area_id = 25 },
	{ config_id = 706006, gadget_id = 70500000, pos = { x = -535.207, y = -42.985, z = 3823.491 }, rot = { x = 0.000, y = 197.632, z = 0.000 }, level = 33, point_type = 1003, area_id = 25 },
	{ config_id = 706007, gadget_id = 70500000, pos = { x = -529.464, y = -41.428, z = 3832.248 }, rot = { x = 359.448, y = 67.851, z = 358.637 }, level = 33, point_type = 1001, area_id = 25 },
	{ config_id = 706008, gadget_id = 70500000, pos = { x = -527.829, y = -37.025, z = 3814.263 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 33, point_type = 1003, area_id = 25 },
	{ config_id = 706009, gadget_id = 70500000, pos = { x = -528.093, y = -36.158, z = 3811.924 }, rot = { x = 0.000, y = 67.576, z = 0.000 }, level = 33, point_type = 1003, area_id = 25 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1706014, name = "GROUP_LOAD_706014", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_706014", action = "action_EVENT_GROUP_LOAD_706014", trigger_count = 0 }
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
		gadgets = { 706001, 706002, 706003, 706004, 706005, 706006, 706007, 706008, 706009 },
		regions = { },
		triggers = { "GROUP_LOAD_706014" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 706010, 706011, 706012 },
		gadgets = { 706001, 706002, 706003, 706004, 706005, 706006, 706007, 706008, 706009 },
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
function condition_EVENT_GROUP_LOAD_706014(context, evt)
	if ScriptLib.GetDeathZoneStatus(context,0) == 0 then
	
	return true
	
	end
	
	
	return false
end

-- 触发操作
function action_EVENT_GROUP_LOAD_706014(context, evt)
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 133301706, suite = 2 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	return 0
end

require "V3_0/DeathFieldStandard"