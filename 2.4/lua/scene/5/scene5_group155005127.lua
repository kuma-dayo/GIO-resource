--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 127001, monster_id = 20011001, pos = { x = 310.866, y = 145.090, z = 894.571 }, rot = { x = 0.000, y = 162.892, z = 0.000 }, level = 36, drop_tag = "史莱姆", disableWander = true, area_id = 200 },
	{ config_id = 127002, monster_id = 20011001, pos = { x = 308.995, y = 145.090, z = 894.564 }, rot = { x = 0.000, y = 186.536, z = 0.000 }, level = 36, drop_tag = "史莱姆", disableWander = true, area_id = 200 },
	{ config_id = 127003, monster_id = 20011001, pos = { x = 310.121, y = 145.090, z = 893.382 }, rot = { x = 0.000, y = 214.369, z = 0.000 }, level = 36, drop_tag = "史莱姆", disableWander = true, area_id = 200 }
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
		monsters = { 127001, 127002, 127003 },
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