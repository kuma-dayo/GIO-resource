--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 867, monster_id = 28030401, pos = { x = 1762.367, y = 249.812, z = -1177.386 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, pose_id = 2 },
	{ config_id = 868, monster_id = 28030401, pos = { x = 1761.392, y = 250.051, z = -1178.844 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, pose_id = 2 },
	{ config_id = 869, monster_id = 28030401, pos = { x = 1761.411, y = 249.969, z = -1176.463 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, pose_id = 2 },
	{ config_id = 870, monster_id = 28030401, pos = { x = 1760.140, y = 250.311, z = -1179.618 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, pose_id = 2 },
	{ config_id = 871, monster_id = 28030401, pos = { x = 1760.327, y = 250.190, z = -1178.196 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, pose_id = 2 }
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
		monsters = { 868, 869, 871 },
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
