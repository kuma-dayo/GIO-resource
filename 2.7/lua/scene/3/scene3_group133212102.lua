-- 基础信息
local base_info = {
	group_id = 133212102
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 102002, monster_id = 25080301, pos = { x = -3748.661, y = 243.415, z = -2159.738 }, rot = { x = 1.029, y = 208.905, z = 354.450 }, level = 27, drop_tag = "浪人武士", affix = { 1101 }, pose_id = 1003, area_id = 13 },
	{ config_id = 102003, monster_id = 25100101, pos = { x = -3769.770, y = 240.368, z = -2160.930 }, rot = { x = 0.000, y = 168.903, z = 0.000 }, level = 27, drop_tag = "高阶武士", affix = { 1101 }, pose_id = 1002, area_id = 13 },
	{ config_id = 102007, monster_id = 25080301, pos = { x = -3763.472, y = 242.350, z = -2149.793 }, rot = { x = 0.000, y = 251.512, z = 0.000 }, level = 27, drop_tag = "浪人武士", affix = { 1101 }, pose_id = 1004, area_id = 13 }
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
		{ config_id = 102001, monster_id = 25080301, pos = { x = -3690.575, y = 244.531, z = -2233.185 }, rot = { x = 0.000, y = 257.192, z = 0.000 }, level = 27, drop_tag = "浪人武士", disableWander = true, affix = { 1101 }, pose_id = 1004, area_id = 13 }
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
		monsters = { 102002, 102003, 102007 },
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