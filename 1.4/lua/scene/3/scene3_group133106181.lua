--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 181001, monster_id = 20010401, pos = { x = -834.134, y = 215.675, z = 665.750 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, drop_tag = "大史莱姆", area_id = 8 },
	{ config_id = 181002, monster_id = 20010301, pos = { x = -831.717, y = 217.447, z = 660.408 }, rot = { x = 0.000, y = 319.874, z = 0.000 }, level = 32, drop_tag = "史莱姆", area_id = 8 },
	{ config_id = 181003, monster_id = 20010301, pos = { x = -825.263, y = 216.355, z = 664.801 }, rot = { x = 0.000, y = 59.688, z = 0.000 }, level = 32, drop_tag = "史莱姆", area_id = 8 }
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
		monsters = { 181001, 181002, 181003 },
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