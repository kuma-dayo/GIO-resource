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
	{ config_id = 11001, gadget_id = 70290001, pos = { x = -152.251, y = 200.941, z = -541.259 }, rot = { x = 0.000, y = 224.942, z = 0.000 }, level = 32, area_id = 7 },
	{ config_id = 11002, gadget_id = 70500000, pos = { x = -152.546, y = 201.510, z = -541.531 }, rot = { x = 0.000, y = 224.950, z = 0.000 }, level = 32, point_type = 3002, owner = 11001, area_id = 7 },
	{ config_id = 11003, gadget_id = 70500000, pos = { x = -151.925, y = 201.796, z = -541.025 }, rot = { x = 0.000, y = 224.950, z = 0.000 }, level = 32, point_type = 3002, owner = 11001, area_id = 7 },
	{ config_id = 11004, gadget_id = 70500000, pos = { x = -152.368, y = 202.208, z = -540.997 }, rot = { x = 0.000, y = 224.950, z = 0.000 }, level = 32, point_type = 3002, owner = 11001, area_id = 7 },
	{ config_id = 11005, gadget_id = 70500000, pos = { x = -126.301, y = 200.547, z = -608.628 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, point_type = 2004, area_id = 7 },
	{ config_id = 11006, gadget_id = 70500000, pos = { x = -71.337, y = 205.452, z = -649.786 }, rot = { x = 0.000, y = 62.936, z = 0.000 }, level = 32, point_type = 2001, area_id = 7 },
	{ config_id = 11007, gadget_id = 70290003, pos = { x = -76.823, y = 221.298, z = -671.369 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, area_id = 7 },
	{ config_id = 11008, gadget_id = 70500000, pos = { x = -76.823, y = 221.401, z = -671.460 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, point_type = 3003, owner = 11007, area_id = 7 },
	{ config_id = 11009, gadget_id = 70500000, pos = { x = -76.823, y = 221.401, z = -671.268 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, point_type = 3003, owner = 11007, area_id = 7 }
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
		gadgets = { 11001, 11002, 11003, 11004, 11005, 11006, 11007, 11008, 11009 },
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