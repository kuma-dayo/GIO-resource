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
	{ config_id = 397001, gadget_id = 70310006, pos = { x = 1853.743, y = 204.234, z = -250.497 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 10, area_id = 3 },
	{ config_id = 397002, gadget_id = 70310001, pos = { x = 1849.954, y = 207.383, z = -266.877 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 10, area_id = 3 },
	{ config_id = 397003, gadget_id = 70310001, pos = { x = 1847.868, y = 205.788, z = -253.334 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 10, area_id = 3 },
	{ config_id = 397004, gadget_id = 70220014, pos = { x = 1861.065, y = 204.771, z = -253.385 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 10, area_id = 3 },
	{ config_id = 397005, gadget_id = 70220014, pos = { x = 1861.052, y = 205.154, z = -254.543 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 10, area_id = 3 },
	{ config_id = 397006, gadget_id = 70220014, pos = { x = 1860.174, y = 204.689, z = -253.999 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 10, area_id = 3 },
	{ config_id = 397007, gadget_id = 70300089, pos = { x = 1851.436, y = 204.317, z = -252.675 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 10, area_id = 3 },
	{ config_id = 397008, gadget_id = 70300089, pos = { x = 1854.221, y = 205.275, z = -260.216 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 10, area_id = 3 }
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
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 397001, 397002, 397003, 397004, 397005, 397006, 397007, 397008 },
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