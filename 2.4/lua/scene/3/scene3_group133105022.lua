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
	{ config_id = 22001, gadget_id = 70290002, pos = { x = 386.704, y = 202.143, z = -64.067 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 19, area_id = 9 },
	{ config_id = 22002, gadget_id = 70500000, pos = { x = 385.633, y = 203.761, z = -63.353 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 19, point_type = 3011, owner = 22001, area_id = 9 },
	{ config_id = 22003, gadget_id = 70500000, pos = { x = 387.574, y = 204.771, z = -65.078 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 19, point_type = 3011, owner = 22001, area_id = 9 },
	{ config_id = 22004, gadget_id = 70500000, pos = { x = 386.747, y = 205.051, z = -62.686 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 19, point_type = 3011, owner = 22001, area_id = 9 },
	{ config_id = 22005, gadget_id = 70290003, pos = { x = 266.798, y = 208.693, z = -73.381 }, rot = { x = 0.000, y = 275.217, z = 0.000 }, level = 19, area_id = 9 },
	{ config_id = 22006, gadget_id = 70500000, pos = { x = 266.889, y = 208.796, z = -73.390 }, rot = { x = 0.000, y = 275.219, z = 0.000 }, level = 19, point_type = 3003, owner = 22005, area_id = 9 },
	{ config_id = 22007, gadget_id = 70500000, pos = { x = 266.698, y = 208.796, z = -73.372 }, rot = { x = 0.000, y = 275.219, z = 0.000 }, level = 19, point_type = 3003, owner = 22005, area_id = 9 },
	{ config_id = 22008, gadget_id = 70290003, pos = { x = 427.940, y = 206.397, z = -1.350 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 19, area_id = 9 },
	{ config_id = 22009, gadget_id = 70500000, pos = { x = 427.940, y = 206.500, z = -1.441 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 19, point_type = 3003, owner = 22008, area_id = 9 },
	{ config_id = 22010, gadget_id = 70500000, pos = { x = 427.940, y = 206.500, z = -1.249 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 19, point_type = 3003, owner = 22008, area_id = 9 },
	{ config_id = 22011, gadget_id = 70500000, pos = { x = 407.548, y = 201.872, z = -110.393 }, rot = { x = 0.000, y = 12.681, z = 0.000 }, level = 19, point_type = 2004, area_id = 9 },
	{ config_id = 22012, gadget_id = 70500000, pos = { x = 260.132, y = 200.585, z = -31.192 }, rot = { x = 0.000, y = 180.540, z = 0.000 }, level = 19, point_type = 2001, area_id = 9 },
	{ config_id = 22013, gadget_id = 70500000, pos = { x = 262.735, y = 201.001, z = -75.450 }, rot = { x = 0.000, y = 293.315, z = 0.000 }, level = 19, point_type = 2004, area_id = 9 },
	{ config_id = 22014, gadget_id = 70290001, pos = { x = 393.872, y = 202.924, z = -81.345 }, rot = { x = 0.000, y = 128.474, z = 0.000 }, level = 19, area_id = 9 },
	{ config_id = 22015, gadget_id = 70500000, pos = { x = 394.175, y = 203.493, z = -81.607 }, rot = { x = 0.000, y = 128.474, z = 0.000 }, level = 19, point_type = 3002, owner = 22014, area_id = 9 },
	{ config_id = 22016, gadget_id = 70500000, pos = { x = 393.602, y = 203.779, z = -81.047 }, rot = { x = 0.000, y = 128.474, z = 0.000 }, level = 19, point_type = 3002, owner = 22014, area_id = 9 },
	{ config_id = 22017, gadget_id = 70500000, pos = { x = 393.624, y = 204.191, z = -81.490 }, rot = { x = 0.000, y = 128.474, z = 0.000 }, level = 19, point_type = 3002, owner = 22014, area_id = 9 }
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
		gadgets = { 22001, 22002, 22003, 22004, 22005, 22006, 22007, 22008, 22009, 22010, 22011, 22012, 22013, 22014, 22015, 22016, 22017 },
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