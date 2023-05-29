--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 26, monster_id = 28030201, pos = { x = 1440.833, y = 313.660, z = 441.690 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 16, drop_tag = "鸟类", area_id = 5 },
	{ config_id = 27, monster_id = 28030201, pos = { x = 1813.954, y = 385.947, z = 691.914 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 18, drop_tag = "鸟类", area_id = 5 },
	{ config_id = 28, monster_id = 28030201, pos = { x = 1632.216, y = 463.609, z = 491.807 }, rot = { x = 0.000, y = 78.775, z = 0.000 }, level = 18, drop_tag = "鸟类", area_id = 5 },
	{ config_id = 29, monster_id = 28030201, pos = { x = 1576.818, y = 361.630, z = 631.992 }, rot = { x = 0.000, y = 3.037, z = 0.000 }, level = 18, drop_tag = "鸟类", area_id = 5 },
	{ config_id = 31, monster_id = 28030201, pos = { x = 1915.520, y = 401.210, z = 504.711 }, rot = { x = 0.000, y = 277.458, z = 0.000 }, level = 18, drop_tag = "鸟类", area_id = 5 },
	{ config_id = 32, monster_id = 28030201, pos = { x = 1427.658, y = 316.075, z = 181.103 }, rot = { x = 0.000, y = 14.006, z = 0.000 }, level = 16, drop_tag = "鸟类", area_id = 5 }
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
		monsters = { 26, 27, 28, 29, 31, 32 },
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