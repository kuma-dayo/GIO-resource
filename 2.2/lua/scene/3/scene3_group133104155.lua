-- DEFS_MISCS
local regionsearch_region_id = 3104001

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 155001, monster_id = 20050701, pos = { x = 300.093, y = 205.532, z = 683.897 }, rot = { x = 0.000, y = 160.468, z = 0.000 }, level = 1, drop_tag = "魔法生物", affix = { 5010, 5011 }, pose_id = 3, area_id = 9 },
	{ config_id = 155004, monster_id = 20050601, pos = { x = 255.646, y = 200.000, z = 657.548 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_tag = "魔法生物", affix = { 5010, 5011 }, pose_id = 3, area_id = 9 }
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
		monsters = { 155001, 155004 },
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

require "Activity_Endora"