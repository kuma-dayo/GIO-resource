--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 1152, monster_id = 28030401, pos = { x = 2381.177, y = 214.041, z = -1082.604 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_tag = "鸟类", pose_id = 2, area_id = 1 },
	{ config_id = 1153, monster_id = 28030401, pos = { x = 2381.769, y = 214.157, z = -1081.379 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_tag = "鸟类", pose_id = 2, area_id = 1 },
	{ config_id = 1154, monster_id = 28030401, pos = { x = 2381.438, y = 214.025, z = -1080.621 }, rot = { x = 0.000, y = 135.464, z = 0.000 }, level = 1, drop_tag = "鸟类", pose_id = 2, area_id = 1 },
	{ config_id = 1155, monster_id = 28030401, pos = { x = 2379.033, y = 213.457, z = -1080.234 }, rot = { x = 0.000, y = 113.736, z = 0.000 }, level = 1, drop_tag = "鸟类", pose_id = 2, area_id = 1 }
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
		monsters = { 1152, 1153, 1154, 1155 },
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