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
	{ config_id = 22001, gadget_id = 70500000, pos = { x = 423.955, y = 126.754, z = -512.780 }, rot = { x = 343.050, y = 294.994, z = 18.899 }, level = 1, point_type = 1001, area_id = 101 },
	{ config_id = 22002, gadget_id = 70500000, pos = { x = 435.958, y = 126.712, z = -510.050 }, rot = { x = 3.614, y = 244.434, z = 21.044 }, level = 1, point_type = 1001, area_id = 101 },
	{ config_id = 22003, gadget_id = 70500000, pos = { x = 437.996, y = 129.704, z = -501.501 }, rot = { x = 0.000, y = 0.000, z = 348.625 }, level = 1, point_type = 1001, area_id = 101 },
	{ config_id = 22004, gadget_id = 70500000, pos = { x = 433.894, y = 128.527, z = -508.189 }, rot = { x = 359.991, y = 131.509, z = 0.010 }, level = 1, point_type = 1002, area_id = 101 },
	{ config_id = 22005, gadget_id = 70500000, pos = { x = 438.682, y = 128.276, z = -504.586 }, rot = { x = 359.731, y = 326.371, z = 324.476 }, level = 1, point_type = 1002, area_id = 101 },
	{ config_id = 22006, gadget_id = 70500000, pos = { x = 436.305, y = 128.594, z = -505.501 }, rot = { x = 48.388, y = 169.097, z = 352.786 }, level = 1, point_type = 1002, area_id = 101 }
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
		gadgets = { 22001, 22002, 22003, 22004, 22005, 22006 },
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