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
	{ config_id = 33001, gadget_id = 70310111, pos = { x = -1.919, y = 0.545, z = 24.911 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 33002, gadget_id = 70310111, pos = { x = -5.319, y = 1.334, z = 110.778 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 33003, gadget_id = 70310111, pos = { x = -23.630, y = 0.550, z = 162.994 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 33004, gadget_id = 70310111, pos = { x = -76.924, y = 0.505, z = 184.046 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 33005, gadget_id = 70310111, pos = { x = -81.456, y = -2.343, z = 276.956 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 33006, gadget_id = 70310111, pos = { x = -53.063, y = 1.638, z = 322.997 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 33007, gadget_id = 70310111, pos = { x = 3.111, y = 1.583, z = 192.221 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 33008, gadget_id = 70310111, pos = { x = -2.227, y = -2.077, z = 276.637 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 33009, gadget_id = 70310111, pos = { x = -3.051, y = 0.574, z = 343.855 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 33010, gadget_id = 70310111, pos = { x = 27.064, y = 1.718, z = 394.034 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 33011, gadget_id = 70310111, pos = { x = 35.422, y = 1.204, z = 245.136 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 33017, gadget_id = 70310111, pos = { x = 77.048, y = 0.571, z = 263.824 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 33018, gadget_id = 70310111, pos = { x = 77.580, y = -2.013, z = 356.719 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 33019, gadget_id = 70310111, pos = { x = 82.992, y = 1.586, z = 431.972 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 }
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
		gadgets = { 33001, 33002, 33003, 33004, 33005, 33006, 33007, 33008, 33009, 33010, 33011, 33017, 33018, 33019 },
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