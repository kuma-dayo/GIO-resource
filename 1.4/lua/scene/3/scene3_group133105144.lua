--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 49, monster_id = 21010201, pos = { x = 615.349, y = 220.208, z = -448.718 }, rot = { x = 0.000, y = 324.159, z = 0.000 }, level = 22, drop_tag = "丘丘人", area_id = 9 },
	{ config_id = 50, monster_id = 21010401, pos = { x = 616.116, y = 220.263, z = -446.001 }, rot = { x = 0.000, y = 324.259, z = 0.000 }, level = 22, drop_tag = "远程丘丘人", disableWander = true, area_id = 9 },
	{ config_id = 51, monster_id = 21010501, pos = { x = 610.466, y = 220.106, z = -448.541 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 22, drop_tag = "远程丘丘人", pose_id = 9003, area_id = 9 },
	{ config_id = 52, monster_id = 21010301, pos = { x = 606.247, y = 219.379, z = -425.833 }, rot = { x = 0.000, y = 232.775, z = 0.000 }, level = 22, drop_tag = "丘丘人", pose_id = 9003, area_id = 9 }
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
		monsters = { 49, 50, 51, 52 },
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