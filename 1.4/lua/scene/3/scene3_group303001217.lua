--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 967, monster_id = 28030401, pos = { x = 1571.244, y = 290.041, z = -1153.728 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, pose_id = 2 },
	{ config_id = 968, monster_id = 28030401, pos = { x = 1570.270, y = 290.122, z = -1155.186 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, pose_id = 2 },
	{ config_id = 969, monster_id = 28030401, pos = { x = 1570.287, y = 290.059, z = -1152.805 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, pose_id = 2 },
	{ config_id = 970, monster_id = 28030401, pos = { x = 1569.016, y = 290.189, z = -1155.960 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, pose_id = 2 },
	{ config_id = 971, monster_id = 28030401, pos = { x = 1569.204, y = 290.176, z = -1154.538 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, pose_id = 2 }
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
		monsters = { 968, 970, 971 },
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
