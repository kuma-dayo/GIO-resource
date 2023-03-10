-- 基础信息
local base_info = {
	group_id = 133108251
}

-- Trigger变量
local defs = {
	group_id = 133108251,
	num_monster = 2
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
}

-- 区域
regions = {
}

-- 触发器
triggers = {
}

-- 变量
variables = {
	{ name = "challengeStart", value = 0, no_refresh = false },
	{ name = "challengeSuccess", value = 0, no_refresh = false },
	{ name = "hasReward", value = 0, no_refresh = true },
	{ name = "giveReward", value = 0, no_refresh = false }
}

-- 废弃数据
garbages = {
	monsters = {
		{ config_id = 251001, monster_id = 20060401, pos = { x = -182.565, y = 200.000, z = -1135.130 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, drop_id = 1000100, disableWander = true, affix = { 5155 }, pose_id = 101, area_id = 7 },
		{ config_id = 251002, monster_id = 20060101, pos = { x = -185.387, y = 200.007, z = -1139.181 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, drop_id = 1000100, disableWander = true, affix = { 5155 }, pose_id = 101, area_id = 7 }
	},
	gadgets = {
		{ config_id = 251004, gadget_id = 70800060, pos = { x = -185.537, y = 200.000, z = -1134.188 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 7 }
	},
	regions = {
		{ config_id = 251007, shape = RegionShape.SPHERE, radius = 50, pos = { x = -184.081, y = 199.848, z = -1137.169 }, area_id = 7 },
		{ config_id = 251008, shape = RegionShape.SPHERE, radius = 70, pos = { x = -184.039, y = 199.848, z = -1137.238 }, area_id = 7 }
	},
	triggers = {
		{ config_id = 1251003, name = "GROUP_LOAD_251003", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_251003", action = "action_EVENT_GROUP_LOAD_251003", trigger_count = 0 },
		{ config_id = 1251005, name = "GROUP_LOAD_251005", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "condition_EVENT_GROUP_LOAD_251005", action = "action_EVENT_GROUP_LOAD_251005", trigger_count = 0 },
		{ config_id = 1251007, name = "ENTER_REGION_251007", event = EventType.EVENT_ENTER_REGION, source = "1", condition = "condition_EVENT_ENTER_REGION_251007", action = "action_EVENT_ENTER_REGION_251007", trigger_count = 0 },
		{ config_id = 1251008, name = "LEAVE_REGION_251008", event = EventType.EVENT_LEAVE_REGION, source = "1", condition = "condition_EVENT_LEAVE_REGION_251008", action = "action_EVENT_LEAVE_REGION_251008", trigger_count = 0 },
		{ config_id = 1251010, name = "SELECT_OPTION_251010", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_251010", action = "action_EVENT_SELECT_OPTION_251010", trigger_count = 0 },
		{ config_id = 1251011, name = "VARIABLE_CHANGE_251011", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_251011", action = "action_EVENT_VARIABLE_CHANGE_251011", trigger_count = 0 },
		{ config_id = 1251012, name = "CHALLENGE_FAIL_251012", event = EventType.EVENT_CHALLENGE_FAIL, source = "2210", condition = "", action = "action_EVENT_CHALLENGE_FAIL_251012", trigger_count = 0 },
		{ config_id = 1251013, name = "CHALLENGE_SUCCESS_251013", event = EventType.EVENT_CHALLENGE_SUCCESS, source = "2210", condition = "", action = "action_EVENT_CHALLENGE_SUCCESS_251013", trigger_count = 0 }
	}
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
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 4,
		-- description = ,
		monsters = { },
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