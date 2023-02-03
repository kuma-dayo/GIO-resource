-- 基础信息
local base_info = {
	group_id = 133301413
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 413001, monster_id = 25210303, pos = { x = -693.864, y = 260.754, z = 3277.159 }, rot = { x = 0.000, y = 260.438, z = 0.000 }, level = 33, drop_tag = "镀金旅团", disableWander = true, pose_id = 9007, area_id = 23 },
	{ config_id = 413004, monster_id = 25310101, pos = { x = -679.876, y = 261.784, z = 3268.762 }, rot = { x = 0.000, y = 121.703, z = 0.000 }, level = 33, drop_tag = "中级镀金旅团", disableWander = true, pose_id = 9003, area_id = 22 },
	{ config_id = 413005, monster_id = 25210202, pos = { x = -698.072, y = 261.007, z = 3275.708 }, rot = { x = 0.000, y = 155.968, z = 0.000 }, level = 33, drop_tag = "镀金旅团", disableWander = true, pose_id = 9004, area_id = 23 },
	{ config_id = 413018, monster_id = 25210302, pos = { x = -686.765, y = 261.323, z = 3256.342 }, rot = { x = 0.000, y = 162.803, z = 0.000 }, level = 33, drop_tag = "镀金旅团", disableWander = true, pose_id = 9007, area_id = 22 },
	{ config_id = 413022, monster_id = 25210401, pos = { x = -695.321, y = 260.594, z = 3261.288 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 33, drop_tag = "镀金旅团", disableWander = true, pose_id = 9503, area_id = 23 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 413006, gadget_id = 70217020, pos = { x = -677.766, y = 259.958, z = 3259.269 }, rot = { x = 0.000, y = 128.470, z = 0.000 }, level = 26, drop_tag = "摩拉石箱须弥", isOneoff = true, persistent = true, explore = { name = "chest", exp = 4 }, area_id = 22 },
	{ config_id = 413009, gadget_id = 70217020, pos = { x = -670.835, y = 241.020, z = 3252.337 }, rot = { x = 0.000, y = 187.968, z = 0.000 }, level = 26, drop_tag = "摩拉石箱须弥", isOneoff = true, persistent = true, explore = { name = "chest", exp = 4 }, area_id = 22 },
	{ config_id = 413015, gadget_id = 70210101, pos = { x = -672.928, y = 233.634, z = 3237.778 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 26, drop_tag = "搜刮点解谜遗物须弥", isOneoff = true, persistent = true, area_id = 22 },
	{ config_id = 413016, gadget_id = 70210101, pos = { x = -656.781, y = 231.841, z = 3227.574 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 26, drop_tag = "搜刮点解谜人文须弥", isOneoff = true, persistent = true, area_id = 22 },
	{ config_id = 413017, gadget_id = 70210101, pos = { x = -686.269, y = 245.303, z = 3237.742 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 26, drop_tag = "搜刮点解谜遗物须弥", isOneoff = true, persistent = true, area_id = 22 },
	{ config_id = 413019, gadget_id = 70220015, pos = { x = -685.050, y = 261.487, z = 3253.621 }, rot = { x = 278.809, y = 304.327, z = 103.994 }, level = 33, area_id = 22 },
	{ config_id = 413020, gadget_id = 70220015, pos = { x = -685.271, y = 262.288, z = 3253.647 }, rot = { x = 278.809, y = 304.327, z = 103.994 }, level = 33, area_id = 22 },
	{ config_id = 413021, gadget_id = 70210101, pos = { x = -683.727, y = 261.967, z = 3255.037 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 26, drop_tag = "搜刮点解谜遗物须弥", isOneoff = true, persistent = true, area_id = 22 },
	{ config_id = 413023, gadget_id = 70310006, pos = { x = -695.177, y = 260.760, z = 3262.625 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 33, state = GadgetState.GearStart, area_id = 23 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
}

-- 变量
variables = {
}

-- 废弃数据
garbages = {
	gadgets = {
		{ config_id = 413007, gadget_id = 70310001, pos = { x = -665.892, y = 241.106, z = 3247.811 }, rot = { x = 1.883, y = 0.012, z = 0.749 }, level = 33, area_id = 22 },
		{ config_id = 413008, gadget_id = 70310001, pos = { x = -673.050, y = 241.399, z = 3247.615 }, rot = { x = 6.057, y = 359.858, z = 357.312 }, level = 33, area_id = 22 }
	},
	triggers = {
		{ config_id = 1413003, name = "ANY_MONSTER_DIE_413003", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_413003", action = "action_EVENT_ANY_MONSTER_DIE_413003" }
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
		monsters = { 413001, 413004, 413005, 413018, 413022 },
		gadgets = { 413006, 413009, 413015, 413016, 413017, 413019, 413020, 413021, 413023 },
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