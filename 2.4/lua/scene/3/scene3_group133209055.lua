--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 55003, monster_id = 28030102, pos = { x = -2615.624, y = 200.000, z = -3915.092 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, drop_tag = "鸟类", pose_id = 2, area_id = 11 },
	{ config_id = 55004, monster_id = 28030102, pos = { x = -2602.553, y = 200.698, z = -3943.136 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, drop_tag = "鸟类", pose_id = 2, area_id = 11 },
	{ config_id = 55005, monster_id = 28030102, pos = { x = -2600.395, y = 200.086, z = -3953.580 }, rot = { x = 0.000, y = 123.060, z = 0.000 }, level = 27, drop_tag = "鸟类", pose_id = 2, area_id = 11 }
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
		monsters = { 55003, 55004, 55005 },
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