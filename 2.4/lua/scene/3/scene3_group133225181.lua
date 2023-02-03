--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 181001, monster_id = 28030401, pos = { x = -6739.318, y = 204.522, z = -2630.895 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 33, drop_tag = "鸟类", area_id = 18 },
	{ config_id = 181002, monster_id = 28030401, pos = { x = -6737.897, y = 203.292, z = -2632.791 }, rot = { x = 0.000, y = 293.312, z = 0.000 }, level = 33, drop_tag = "鸟类", area_id = 18 },
	{ config_id = 181003, monster_id = 28030102, pos = { x = -6763.762, y = 200.281, z = -2645.990 }, rot = { x = 0.000, y = 291.765, z = 0.000 }, level = 33, drop_tag = "鸟类", area_id = 18 },
	{ config_id = 181004, monster_id = 28030102, pos = { x = -6783.472, y = 203.317, z = -2706.114 }, rot = { x = 352.137, y = 252.290, z = 336.806 }, level = 33, drop_tag = "鸟类", area_id = 18 }
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
		monsters = { 181001, 181002, 181003, 181004 },
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