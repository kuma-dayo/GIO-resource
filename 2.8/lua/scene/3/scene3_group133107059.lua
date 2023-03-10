-- 基础信息
local base_info = {
	group_id = 133107059
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 59001, monster_id = 21010601, pos = { x = -400.098, y = 321.903, z = 564.920 }, rot = { x = 27.870, y = 162.618, z = 15.333 }, level = 24, drop_tag = "丘丘人", disableWander = true, pose_id = 9010, area_id = 7 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 59003, gadget_id = 70220005, pos = { x = -401.756, y = 322.313, z = 564.375 }, rot = { x = 339.001, y = 9.457, z = 337.326 }, level = 24, area_id = 7 }
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
		monsters = { 59001 },
		gadgets = { 59003 },
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