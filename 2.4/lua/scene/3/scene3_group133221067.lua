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
	{ config_id = 67001, gadget_id = 70300105, pos = { x = -3299.856, y = 200.569, z = -4465.981 }, rot = { x = 0.000, y = 66.421, z = 0.000 }, level = 1, area_id = 11 },
	{ config_id = 67002, gadget_id = 71700226, pos = { x = -3295.546, y = 201.033, z = -4461.549 }, rot = { x = 0.000, y = 335.573, z = 0.000 }, level = 1, area_id = 11 },
	{ config_id = 67003, gadget_id = 70220064, pos = { x = -3295.770, y = 200.815, z = -4462.812 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 11 },
	{ config_id = 67004, gadget_id = 70220064, pos = { x = -3295.115, y = 200.757, z = -4462.646 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 11 },
	{ config_id = 67005, gadget_id = 70220062, pos = { x = -3295.304, y = 200.614, z = -4463.492 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 11 },
	{ config_id = 67006, gadget_id = 70220062, pos = { x = -3294.503, y = 200.786, z = -4462.078 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 11 },
	{ config_id = 67007, gadget_id = 70300092, pos = { x = -3293.390, y = 200.418, z = -4463.263 }, rot = { x = 9.047, y = 179.046, z = 359.965 }, level = 1, area_id = 11 },
	{ config_id = 67008, gadget_id = 70710409, pos = { x = -3295.630, y = 200.000, z = -4475.528 }, rot = { x = 0.000, y = 51.966, z = 0.000 }, level = 1, area_id = 11 }
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
		gadgets = { 67001, 67002, 67003, 67004, 67005, 67006, 67007, 67008 },
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