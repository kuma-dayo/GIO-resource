-- 基础信息
local base_info = {
	group_id = 166001499
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 499004, monster_id = 28050301, pos = { x = 437.901, y = 379.800, z = 669.218 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, drop_tag = "采集动物", area_id = 300 },
	{ config_id = 499005, monster_id = 28050301, pos = { x = 426.494, y = 380.669, z = 673.201 }, rot = { x = 0.000, y = 36.521, z = 0.000 }, level = 36, drop_tag = "采集动物", area_id = 300 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 499003, gadget_id = 70310185, pos = { x = 429.248, y = 379.966, z = 675.667 }, rot = { x = 354.746, y = 168.954, z = 3.473 }, level = 36, persistent = true, interact_id = 87, area_id = 300 },
	{ config_id = 499006, gadget_id = 70290324, pos = { x = 468.834, y = 374.122, z = 674.619 }, rot = { x = 16.561, y = 3.839, z = 11.575 }, level = 36, area_id = 300 },
	{ config_id = 499007, gadget_id = 70290324, pos = { x = 474.509, y = 371.955, z = 689.678 }, rot = { x = 4.857, y = 1.451, z = 354.165 }, level = 36, area_id = 300 },
	{ config_id = 499008, gadget_id = 70290324, pos = { x = 466.864, y = 369.260, z = 693.745 }, rot = { x = 19.419, y = 316.426, z = 346.520 }, level = 36, area_id = 300 },
	{ config_id = 499009, gadget_id = 70290323, pos = { x = 473.513, y = 372.928, z = 685.564 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, area_id = 300 },
	{ config_id = 499010, gadget_id = 70290323, pos = { x = 420.782, y = 380.789, z = 659.363 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, area_id = 300 }
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
		{ config_id = 499001, gadget_id = 70500000, pos = { x = 413.516, y = 385.286, z = 643.650 }, rot = { x = 4.551, y = 294.062, z = 350.514 }, level = 36, point_type = 1001, area_id = 300 },
		{ config_id = 499002, gadget_id = 70500000, pos = { x = 409.666, y = 384.724, z = 644.813 }, rot = { x = 9.942, y = 359.671, z = 356.223 }, level = 36, point_type = 1001, area_id = 300 }
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
		monsters = { 499004, 499005 },
		gadgets = { 499003, 499006, 499007, 499008, 499009, 499010 },
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