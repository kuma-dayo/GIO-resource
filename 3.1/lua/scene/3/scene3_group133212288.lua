-- 基础信息
local base_info = {
	group_id = 133212288
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 288001, monster_id = 25010201, pos = { x = -3635.164, y = 236.441, z = -2328.361 }, rot = { x = 0.000, y = 210.628, z = 0.000 }, level = 27, drop_tag = "盗宝团", disableWander = true, affix = { 1101 }, pose_id = 9003, area_id = 13 },
	{ config_id = 288002, monster_id = 25010601, pos = { x = -3630.531, y = 235.815, z = -2332.383 }, rot = { x = 0.000, y = 209.589, z = 0.000 }, level = 27, drop_tag = "盗宝团", affix = { 1101 }, pose_id = 9003, area_id = 13 },
	{ config_id = 288003, monster_id = 25010701, pos = { x = -3625.126, y = 235.500, z = -2315.923 }, rot = { x = 0.000, y = 69.527, z = 0.000 }, level = 27, drop_tag = "盗宝团", affix = { 1101 }, pose_id = 9003, area_id = 13 }
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
		monsters = { 288001, 288002, 288003 },
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
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================