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
	{ config_id = 478001, gadget_id = 70220099, pos = { x = -5982.807, y = 166.286, z = -2773.131 }, rot = { x = 353.119, y = 137.526, z = 3.644 }, level = 33, area_id = 18 },
	{ config_id = 478002, gadget_id = 70220099, pos = { x = -6028.426, y = 164.564, z = -2829.069 }, rot = { x = 4.167, y = 166.986, z = 4.437 }, level = 33, area_id = 18 },
	{ config_id = 478003, gadget_id = 70220099, pos = { x = -6001.258, y = 164.393, z = -2813.022 }, rot = { x = 351.083, y = 90.739, z = 345.261 }, level = 33, area_id = 18 },
	{ config_id = 478004, gadget_id = 70220099, pos = { x = -5998.662, y = 164.034, z = -2805.815 }, rot = { x = 355.470, y = 135.369, z = 10.461 }, level = 33, area_id = 18 },
	{ config_id = 478005, gadget_id = 70220099, pos = { x = -5969.930, y = 168.024, z = -2755.188 }, rot = { x = 351.620, y = 67.873, z = 346.581 }, level = 33, area_id = 18 },
	{ config_id = 478008, gadget_id = 70220099, pos = { x = -5961.091, y = 167.648, z = -2762.620 }, rot = { x = 21.575, y = 308.794, z = 347.954 }, level = 33, area_id = 18 },
	{ config_id = 478009, gadget_id = 70220099, pos = { x = -6007.000, y = 163.948, z = -2761.066 }, rot = { x = 357.892, y = 56.872, z = 359.405 }, level = 33, area_id = 18 },
	{ config_id = 478010, gadget_id = 70220099, pos = { x = -6003.145, y = 155.165, z = -2746.505 }, rot = { x = 9.035, y = 45.001, z = 11.232 }, level = 33, area_id = 18 }
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
		gadgets = { 478001, 478002, 478003, 478004, 478005, 478008, 478009, 478010 },
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