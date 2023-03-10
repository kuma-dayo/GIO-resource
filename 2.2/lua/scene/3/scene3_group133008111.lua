--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 111002, monster_id = 23010601, pos = { x = 1372.439, y = 268.821, z = -621.595 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, drop_tag = "先遣队", disableWander = true, climate_area_id = 1, area_id = 10 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 111001, gadget_id = 70211001, pos = { x = 1363.458, y = 266.487, z = -631.788 }, rot = { x = 334.586, y = 6.095, z = 346.888 }, level = 26, drop_tag = "雪山战斗低级蒙德", isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 10 }
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
		monsters = { 111002 },
		gadgets = { 111001 },
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