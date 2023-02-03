--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 568003, monster_id = 21011401, pos = { x = 844.784, y = 326.487, z = -492.623 }, rot = { x = 0.000, y = 318.511, z = 0.000 }, level = 30, drop_tag = "丘丘人", pose_id = 9011, climate_area_id = 1, area_id = 10 },
	{ config_id = 568004, monster_id = 21030501, pos = { x = 842.932, y = 326.964, z = -494.851 }, rot = { x = 0.000, y = 202.513, z = 0.000 }, level = 30, drop_tag = "丘丘萨满", disableWander = true, climate_area_id = 1, area_id = 10 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 568001, gadget_id = 70211001, pos = { x = 843.830, y = 326.615, z = -491.806 }, rot = { x = 0.803, y = 180.536, z = 9.760 }, level = 26, drop_tag = "雪山战斗低级蒙德", isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 10 }
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
		monsters = { 568003, 568004 },
		gadgets = { 568001 },
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