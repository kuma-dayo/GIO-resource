-- 基础信息
local base_info = {
	group_id = 199004125
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 125001, monster_id = 20060301, pos = { x = -420.252, y = 120.593, z = -642.669 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, drop_tag = "飘浮灵", pose_id = 101, area_id = 400 },
	{ config_id = 125002, monster_id = 20060301, pos = { x = -422.247, y = 120.126, z = -648.229 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, drop_tag = "飘浮灵", pose_id = 101, area_id = 400 },
	{ config_id = 125003, monster_id = 20060301, pos = { x = -426.002, y = 120.205, z = -640.370 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, drop_tag = "飘浮灵", pose_id = 101, area_id = 400 }
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
		monsters = { 125001, 125002, 125003 },
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