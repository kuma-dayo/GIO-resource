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
	{ config_id = 383001, gadget_id = 70500000, pos = { x = 160.727, y = 305.708, z = 191.957 }, rot = { x = 5.623, y = 166.172, z = 331.712 }, level = 36, point_type = 1002, area_id = 200 },
	{ config_id = 383002, gadget_id = 70500000, pos = { x = 153.799, y = 304.224, z = 192.642 }, rot = { x = 6.719, y = 237.449, z = 38.280 }, level = 36, point_type = 1002, area_id = 200 },
	{ config_id = 383003, gadget_id = 70500000, pos = { x = 159.932, y = 305.454, z = 192.910 }, rot = { x = 5.206, y = 286.169, z = 21.556 }, level = 36, point_type = 1002, area_id = 200 },
	{ config_id = 383004, gadget_id = 70500000, pos = { x = 153.059, y = 304.194, z = 191.996 }, rot = { x = 0.000, y = 301.835, z = 10.468 }, level = 36, point_type = 1002, area_id = 200 },
	{ config_id = 383005, gadget_id = 70500000, pos = { x = 114.870, y = 295.441, z = 236.199 }, rot = { x = 349.307, y = 13.750, z = 37.173 }, level = 36, point_type = 1002, area_id = 200 },
	{ config_id = 383006, gadget_id = 70500000, pos = { x = 115.437, y = 295.975, z = 235.574 }, rot = { x = 346.723, y = 75.070, z = 353.210 }, level = 36, point_type = 1002, area_id = 200 },
	{ config_id = 383007, gadget_id = 70500000, pos = { x = 592.509, y = 190.440, z = 797.146 }, rot = { x = 9.259, y = 352.789, z = 358.834 }, level = 36, point_type = 1002, area_id = 200 },
	{ config_id = 383008, gadget_id = 70500000, pos = { x = 591.711, y = 190.606, z = 796.945 }, rot = { x = 11.155, y = 287.390, z = 359.506 }, level = 36, point_type = 1002, area_id = 200 },
	{ config_id = 383009, gadget_id = 70500000, pos = { x = 597.099, y = 189.444, z = 812.287 }, rot = { x = 0.000, y = 243.507, z = 351.579 }, level = 36, point_type = 1002, area_id = 200 },
	{ config_id = 383010, gadget_id = 70500000, pos = { x = 597.861, y = 189.243, z = 812.899 }, rot = { x = 0.000, y = 328.473, z = 0.000 }, level = 36, point_type = 1002, area_id = 200 }
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
		gadgets = { 383001, 383002, 383003, 383004, 383005, 383006, 383007, 383008, 383009, 383010 },
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