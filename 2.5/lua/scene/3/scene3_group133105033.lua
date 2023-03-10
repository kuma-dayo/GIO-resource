-- 基础信息
local base_info = {
	group_id = 133105033
}

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
	{ config_id = 33001, gadget_id = 70500000, pos = { x = 680.327, y = 210.191, z = -940.748 }, rot = { x = 0.000, y = 89.573, z = 0.000 }, level = 30, point_type = 2031, area_id = 10 },
	{ config_id = 33002, gadget_id = 70500000, pos = { x = 662.917, y = 201.469, z = -776.811 }, rot = { x = 0.000, y = 81.866, z = 0.000 }, level = 30, point_type = 2031, area_id = 10 },
	{ config_id = 33003, gadget_id = 70500000, pos = { x = 686.509, y = 202.737, z = -827.364 }, rot = { x = 0.000, y = 239.239, z = 0.000 }, level = 30, point_type = 2031, area_id = 10 },
	{ config_id = 33004, gadget_id = 70500000, pos = { x = 733.843, y = 222.231, z = -864.221 }, rot = { x = 0.000, y = 45.236, z = 0.000 }, level = 30, point_type = 2007, area_id = 10 },
	{ config_id = 33005, gadget_id = 70500000, pos = { x = 689.757, y = 205.912, z = -900.076 }, rot = { x = 0.000, y = 99.809, z = 0.000 }, level = 30, point_type = 2031, area_id = 10 },
	{ config_id = 33006, gadget_id = 70500000, pos = { x = 631.376, y = 200.431, z = -851.340 }, rot = { x = 0.000, y = 232.622, z = 0.000 }, level = 30, point_type = 2031, area_id = 10 },
	{ config_id = 33007, gadget_id = 70500000, pos = { x = 644.962, y = 201.109, z = -925.997 }, rot = { x = 0.000, y = 216.643, z = 0.000 }, level = 30, point_type = 2031, area_id = 10 },
	{ config_id = 33008, gadget_id = 70500000, pos = { x = 729.282, y = 201.210, z = -1017.668 }, rot = { x = 0.000, y = 343.011, z = 0.000 }, level = 30, point_type = 2031, area_id = 10 },
	{ config_id = 33009, gadget_id = 70500000, pos = { x = 651.844, y = 204.184, z = -811.213 }, rot = { x = 0.000, y = 256.326, z = 0.000 }, level = 30, point_type = 2031, area_id = 10 },
	{ config_id = 33010, gadget_id = 70500000, pos = { x = 675.471, y = 201.816, z = -811.307 }, rot = { x = 0.000, y = 244.689, z = 0.000 }, level = 30, point_type = 2007, area_id = 10 },
	{ config_id = 33011, gadget_id = 70500000, pos = { x = 686.389, y = 202.431, z = -1003.112 }, rot = { x = 0.000, y = 341.379, z = 0.000 }, level = 30, point_type = 2031, area_id = 10 },
	{ config_id = 33012, gadget_id = 70500000, pos = { x = 700.610, y = 205.038, z = -866.702 }, rot = { x = 0.000, y = 123.045, z = 0.000 }, level = 30, point_type = 2031, area_id = 10 }
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
		gadgets = { 33001, 33002, 33003, 33004, 33005, 33006, 33007, 33008, 33009, 33010, 33011, 33012 },
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