--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 11001, monster_id = 28020510, pos = { x = 2301.520, y = 250.106, z = -762.089 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 2, drop_id = 1000100, pose_id = 12, area_id = 1 },
	{ config_id = 11002, monster_id = 28020513, pos = { x = 2299.977, y = 249.990, z = -762.321 }, rot = { x = 0.000, y = 5.040, z = 0.000 }, level = 2, drop_id = 1000100, pose_id = 13, area_id = 1 },
	{ config_id = 11003, monster_id = 28020511, pos = { x = 2298.763, y = 249.990, z = -761.321 }, rot = { x = 0.000, y = 95.780, z = 0.000 }, level = 2, drop_id = 1000100, pose_id = 13, area_id = 1 }
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
		monsters = { 11001, 11002, 11003 },
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