--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 526001, gadget_id = 70500000, pos = { x = -3968.452, y = 165.496, z = -847.405 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, point_type = 9276, area_id = 17 },
	{ config_id = 526002, gadget_id = 70710136, pos = { x = -3968.532, y = 165.499, z = -847.438 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 17 },
	{ config_id = 526003, gadget_id = 70710136, pos = { x = -3971.472, y = 168.445, z = -879.717 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 17 },
	{ config_id = 526004, gadget_id = 70500000, pos = { x = -3971.514, y = 168.519, z = -879.544 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, point_type = 9275, area_id = 17 },
	{ config_id = 526005, gadget_id = 70710136, pos = { x = -3999.067, y = 173.075, z = -892.131 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 17 },
	{ config_id = 526006, gadget_id = 70500000, pos = { x = -3999.073, y = 173.075, z = -892.161 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, point_type = 9277, area_id = 17 }
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
		monsters = { },
		gadgets = { 526001, 526002, 526003, 526004, 526005, 526006 },
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