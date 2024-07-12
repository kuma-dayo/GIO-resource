--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 1012, monster_id = 20011201, pos = { x = 2929.323, y = 234.589, z = -1699.827 }, rot = { x = 0.000, y = 273.424, z = 0.000 }, level = 24, drop_tag = "史莱姆", disableWander = true, area_id = 1 },
	{ config_id = 1013, monster_id = 20011201, pos = { x = 2926.872, y = 234.528, z = -1696.559 }, rot = { x = 0.000, y = 195.573, z = 0.000 }, level = 24, drop_tag = "史莱姆", disableWander = true, area_id = 1 },
	{ config_id = 1014, monster_id = 20011201, pos = { x = 2924.667, y = 234.398, z = -1700.681 }, rot = { x = 0.000, y = 55.239, z = 0.000 }, level = 24, drop_tag = "史莱姆", disableWander = true, area_id = 1 }
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
	rand_suite = true
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
		monsters = { 1012, 1013, 1014 },
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