-- 基础信息
local base_info = {
	group_id = 133102788
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 788001, monster_id = 26030101, pos = { x = 1086.207, y = 200.539, z = 774.136 }, rot = { x = 0.000, y = 350.758, z = 0.000 }, level = 19, drop_tag = "幼岩龙蜥", disableWander = true, area_id = 6 },
	{ config_id = 788002, monster_id = 26030101, pos = { x = 1542.921, y = 200.433, z = 1077.953 }, rot = { x = 0.000, y = 96.899, z = 0.000 }, level = 19, drop_tag = "幼岩龙蜥", disableWander = true, area_id = 5 }
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
		monsters = { 788001, 788002 },
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