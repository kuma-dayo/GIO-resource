-- 基础信息
local base_info = {
	group_id = 133220666
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
		{ config_id = 666001, gadget_id = 70500000, pos = { x = -2326.344, y = 166.245, z = -4818.309 }, rot = { x = 0.000, y = 345.955, z = 0.000 }, level = 27, point_type = 1008, area_id = 11 },
		{ config_id = 666002, gadget_id = 70500000, pos = { x = -2328.887, y = 167.425, z = -4816.478 }, rot = { x = 0.000, y = 59.309, z = 0.000 }, level = 27, point_type = 1008, area_id = 11 },
		{ config_id = 666003, gadget_id = 70500000, pos = { x = -2282.958, y = 145.932, z = -4830.878 }, rot = { x = 0.000, y = 233.356, z = 0.000 }, level = 27, point_type = 2036, area_id = 11 },
		{ config_id = 666004, gadget_id = 70500000, pos = { x = -2299.521, y = 159.739, z = -4809.624 }, rot = { x = 0.000, y = 16.749, z = 0.000 }, level = 27, point_type = 2036, area_id = 11 },
		{ config_id = 666005, gadget_id = 70500000, pos = { x = -2276.920, y = 153.739, z = -4857.196 }, rot = { x = 351.247, y = 221.805, z = 1.682 }, level = 27, point_type = 2036, area_id = 11 }
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