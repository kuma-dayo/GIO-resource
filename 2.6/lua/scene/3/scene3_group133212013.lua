-- 基础信息
local base_info = {
	group_id = 133212013
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 13001, monster_id = 25070101, pos = { x = -3964.978, y = 247.866, z = -2208.408 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, drop_tag = "盗宝团", affix = { 1101 }, area_id = 13 }
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

-- 废弃数据
garbages = {
	monsters = {
		{ config_id = 13002, monster_id = 25080101, pos = { x = -4227.170, y = 199.629, z = -2516.636 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, drop_tag = "浪人武士", affix = { 1101 }, pose_id = 1, area_id = 13 },
		{ config_id = 13003, monster_id = 25080101, pos = { x = -4230.094, y = 200.371, z = -2517.888 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, drop_tag = "浪人武士", affix = { 1101 }, pose_id = 1, area_id = 13 }
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
		monsters = { 13001 },
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