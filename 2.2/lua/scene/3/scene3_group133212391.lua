--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 391001, monster_id = 28030306, pos = { x = -3730.736, y = 240.436, z = -2186.162 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, drop_tag = "鸟类", pose_id = 2, area_id = 13 },
	{ config_id = 391002, monster_id = 28030306, pos = { x = -3730.460, y = 240.933, z = -2183.159 }, rot = { x = 0.000, y = 219.475, z = 0.000 }, level = 27, drop_tag = "鸟类", pose_id = 2, area_id = 13 },
	{ config_id = 391004, monster_id = 28030306, pos = { x = -3748.126, y = 241.662, z = -2170.540 }, rot = { x = 0.000, y = 53.730, z = 0.000 }, level = 27, drop_tag = "鸟类", pose_id = 2, area_id = 13 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 391005, gadget_id = 70500000, pos = { x = -3737.552, y = 242.809, z = -2155.625 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, point_type = 2003, area_id = 13 },
	{ config_id = 391006, gadget_id = 70500000, pos = { x = -3736.343, y = 242.817, z = -2156.661 }, rot = { x = 0.000, y = 31.779, z = 0.000 }, level = 27, point_type = 2003, area_id = 13 },
	{ config_id = 391007, gadget_id = 70500000, pos = { x = -3737.655, y = 242.844, z = -2156.720 }, rot = { x = 0.000, y = 284.166, z = 0.000 }, level = 27, point_type = 2019, area_id = 13 }
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
		monsters = { 391001, 391002, 391004 },
		gadgets = { 391005, 391006, 391007 },
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