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

-- 废弃数据
garbages = {
	gadgets = {
		{ config_id = 230001, gadget_id = 70290010, pos = { x = -3813.168, y = 263.198, z = -2291.985 }, rot = { x = 15.594, y = 359.023, z = 352.875 }, level = 27, area_id = 13 },
		{ config_id = 230002, gadget_id = 70500000, pos = { x = -3813.168, y = 263.198, z = -2291.985 }, rot = { x = 15.594, y = 359.023, z = 352.875 }, level = 27, point_type = 3006, owner = 230001, area_id = 13 },
		{ config_id = 230003, gadget_id = 70290010, pos = { x = -3771.491, y = 265.653, z = -2317.512 }, rot = { x = 0.000, y = 0.000, z = 345.379 }, level = 27, area_id = 13 },
		{ config_id = 230004, gadget_id = 70500000, pos = { x = -3771.491, y = 265.653, z = -2317.512 }, rot = { x = 0.000, y = 0.000, z = 345.379 }, level = 27, point_type = 3006, owner = 230003, area_id = 13 },
		{ config_id = 230005, gadget_id = 70290010, pos = { x = -3768.779, y = 264.333, z = -2322.677 }, rot = { x = 16.389, y = 81.787, z = 10.870 }, level = 27, area_id = 13 },
		{ config_id = 230006, gadget_id = 70500000, pos = { x = -3768.779, y = 264.333, z = -2322.677 }, rot = { x = 16.384, y = 81.786, z = 10.870 }, level = 27, point_type = 3006, owner = 230005, area_id = 13 },
		{ config_id = 230007, gadget_id = 70290010, pos = { x = -3770.064, y = 260.379, z = -2317.072 }, rot = { x = 16.561, y = 315.792, z = 344.635 }, level = 27, area_id = 13 },
		{ config_id = 230008, gadget_id = 70500000, pos = { x = -3770.064, y = 260.379, z = -2317.072 }, rot = { x = 16.566, y = 315.790, z = 344.633 }, level = 27, point_type = 3006, owner = 230007, area_id = 13 },
		{ config_id = 230009, gadget_id = 70290010, pos = { x = -3768.241, y = 264.447, z = -2318.916 }, rot = { x = 0.000, y = 0.000, z = 347.289 }, level = 27, area_id = 13 },
		{ config_id = 230010, gadget_id = 70500000, pos = { x = -3768.241, y = 264.447, z = -2318.916 }, rot = { x = 0.000, y = 0.000, z = 347.289 }, level = 27, point_type = 3006, owner = 230009, area_id = 13 }
	}
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
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================