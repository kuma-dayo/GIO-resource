-- 基础信息
local base_info = {
	group_id = 133303507
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 507001, monster_id = 28061301, pos = { x = -1940.664, y = 295.892, z = 3418.583 }, rot = { x = 0.000, y = 164.210, z = 0.000 }, level = 30, drop_tag = "驮兽镀金旅团", pose_id = 2, area_id = 23 },
	{ config_id = 507002, monster_id = 28061301, pos = { x = -1933.955, y = 294.655, z = 3412.507 }, rot = { x = 0.000, y = 311.164, z = 0.000 }, level = 30, drop_tag = "驮兽镀金旅团", pose_id = 1, area_id = 23 },
	{ config_id = 507003, monster_id = 25210102, pos = { x = -1936.966, y = 294.957, z = 3414.194 }, rot = { x = 0.000, y = 103.054, z = 0.000 }, level = 30, drop_tag = "镀金旅团", pose_id = 9001, area_id = 23 }
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
		monsters = { 507001, 507002, 507003 },
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