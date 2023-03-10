-- 基础信息
local base_info = {
	group_id = 155005089
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
	{ config_id = 89001, gadget_id = 70500000, pos = { x = 632.610, y = 246.891, z = 610.261 }, rot = { x = 21.268, y = 0.000, z = 0.000 }, level = 36, point_type = 1008, area_id = 200 },
	{ config_id = 89003, gadget_id = 70500000, pos = { x = 637.252, y = 247.027, z = 609.203 }, rot = { x = 356.917, y = 191.919, z = 352.989 }, level = 36, point_type = 1008, area_id = 200 },
	{ config_id = 89007, gadget_id = 70500000, pos = { x = 653.302, y = 248.990, z = 598.203 }, rot = { x = 358.052, y = 7.268, z = 340.675 }, level = 36, point_type = 1002, area_id = 200 }
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
		{ config_id = 89002, gadget_id = 70500000, pos = { x = 635.331, y = 246.942, z = 610.115 }, rot = { x = 359.275, y = 269.046, z = 8.557 }, level = 36, point_type = 1008, area_id = 200 },
		{ config_id = 89004, gadget_id = 70500000, pos = { x = 630.110, y = 246.838, z = 611.035 }, rot = { x = 14.390, y = 354.611, z = 346.495 }, level = 36, point_type = 1001, area_id = 200 },
		{ config_id = 89005, gadget_id = 70500000, pos = { x = 629.451, y = 246.937, z = 615.319 }, rot = { x = 28.221, y = 55.936, z = 351.098 }, level = 36, point_type = 1001, area_id = 200 },
		{ config_id = 89006, gadget_id = 70500000, pos = { x = 636.338, y = 247.194, z = 622.418 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, point_type = 1002, area_id = 200 }
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
		gadgets = { 89001, 89003, 89007 },
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