-- 基础信息
local base_info = {
	group_id = 133106419
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 419001, monster_id = 25010201, pos = { x = -346.078, y = 300.197, z = 1602.783 }, rot = { x = 0.000, y = 193.364, z = 0.000 }, level = 36, drop_tag = "盗宝团", pose_id = 9003, area_id = 19 },
	{ config_id = 419002, monster_id = 25010701, pos = { x = -354.469, y = 300.129, z = 1610.006 }, rot = { x = 0.000, y = 262.096, z = 0.000 }, level = 36, drop_tag = "盗宝团", pose_id = 9002, area_id = 19 },
	{ config_id = 419003, monster_id = 25010201, pos = { x = -343.354, y = 300.175, z = 1611.824 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, drop_tag = "盗宝团", area_id = 19 },
	{ config_id = 419004, monster_id = 25010201, pos = { x = -343.667, y = 300.227, z = 1603.098 }, rot = { x = 0.000, y = 225.830, z = 0.000 }, level = 36, drop_tag = "盗宝团", pose_id = 9006, area_id = 19 }
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
		monsters = { 419001, 419002, 419003, 419004 },
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