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
	{ config_id = 41001, gadget_id = 70220017, pos = { x = 722.115, y = 121.368, z = 218.939 }, rot = { x = 10.601, y = 287.457, z = 0.000 }, level = 1, area_id = 102 },
	{ config_id = 41002, gadget_id = 70220013, pos = { x = 719.528, y = 120.706, z = 220.717 }, rot = { x = 7.796, y = 0.000, z = 6.405 }, level = 1, area_id = 102 },
	{ config_id = 41004, gadget_id = 70300086, pos = { x = 740.827, y = 119.740, z = 231.142 }, rot = { x = 340.013, y = 7.914, z = 335.753 }, level = 1, area_id = 102 },
	{ config_id = 41006, gadget_id = 70310001, pos = { x = 731.445, y = 120.196, z = 226.684 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, state = GadgetState.GearStart, area_id = 102 },
	{ config_id = 41007, gadget_id = 70220013, pos = { x = 685.848, y = 120.343, z = 296.902 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 102 },
	{ config_id = 41011, gadget_id = 70300089, pos = { x = 704.514, y = 119.557, z = 265.847 }, rot = { x = 17.586, y = 0.000, z = 0.000 }, level = 1, area_id = 102 },
	{ config_id = 41012, gadget_id = 70300108, pos = { x = 706.643, y = 119.997, z = 253.844 }, rot = { x = 11.407, y = 256.059, z = 63.414 }, level = 1, area_id = 102 },
	{ config_id = 41013, gadget_id = 70300086, pos = { x = 722.317, y = 119.406, z = 263.764 }, rot = { x = 83.132, y = 359.978, z = 33.917 }, level = 1, area_id = 102 },
	{ config_id = 41029, gadget_id = 70290057, pos = { x = 673.055, y = 120.000, z = 281.702 }, rot = { x = 0.000, y = 97.628, z = 0.000 }, level = 1, area_id = 102 },
	{ config_id = 41031, gadget_id = 70290057, pos = { x = 695.265, y = 119.641, z = 227.700 }, rot = { x = 0.000, y = 218.723, z = 0.000 }, level = 1, area_id = 102 },
	{ config_id = 41032, gadget_id = 70290057, pos = { x = 753.585, y = 119.718, z = 335.044 }, rot = { x = 0.000, y = 214.375, z = 0.000 }, level = 1, area_id = 102 },
	{ config_id = 41033, gadget_id = 70290057, pos = { x = 739.253, y = 119.667, z = 334.691 }, rot = { x = 0.000, y = 185.309, z = 0.000 }, level = 1, area_id = 102 },
	{ config_id = 41035, gadget_id = 70290061, pos = { x = 684.843, y = 120.000, z = 234.970 }, rot = { x = 0.000, y = 233.726, z = 0.000 }, level = 1, area_id = 102 },
	{ config_id = 41036, gadget_id = 70290061, pos = { x = 672.850, y = 120.000, z = 267.296 }, rot = { x = 0.000, y = 254.293, z = 0.000 }, level = 1, area_id = 102 },
	{ config_id = 41039, gadget_id = 70290057, pos = { x = 795.919, y = 119.808, z = 243.792 }, rot = { x = 0.000, y = 271.235, z = 0.000 }, level = 1, area_id = 102 },
	{ config_id = 41040, gadget_id = 70290061, pos = { x = 794.057, y = 119.216, z = 228.558 }, rot = { x = 0.000, y = 120.021, z = 11.202 }, level = 1, area_id = 102 }
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
		gadgets = { 41001, 41002, 41004, 41006, 41007, 41011, 41012, 41013, 41029, 41031, 41032, 41033, 41035, 41036, 41039, 41040 },
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