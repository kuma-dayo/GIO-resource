--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 361001, monster_id = 28010402, pos = { x = 523.901, y = 192.300, z = 663.167 }, rot = { x = 0.000, y = 51.020, z = 0.000 }, level = 36, drop_tag = "采集动物", pose_id = 1, area_id = 200 },
	{ config_id = 361002, monster_id = 28010402, pos = { x = 533.886, y = 192.300, z = 664.003 }, rot = { x = 0.000, y = 255.281, z = 0.000 }, level = 36, drop_tag = "采集动物", pose_id = 1, area_id = 200 },
	{ config_id = 361003, monster_id = 28010402, pos = { x = 533.550, y = 192.300, z = 662.674 }, rot = { x = 0.000, y = 286.371, z = 0.000 }, level = 36, drop_tag = "采集动物", pose_id = 1, area_id = 200 },
	{ config_id = 361004, monster_id = 28010402, pos = { x = 523.414, y = 192.300, z = 664.186 }, rot = { x = 0.000, y = 75.014, z = 0.000 }, level = 36, drop_tag = "采集动物", pose_id = 1, area_id = 200 }
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
		monsters = { 361001, 361002, 361003, 361004 },
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