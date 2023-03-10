--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 120001, monster_id = 21010201, pos = { x = -4771.523, y = 202.977, z = -4715.777 }, rot = { x = 0.000, y = 81.950, z = 0.000 }, level = 30, drop_tag = "丘丘人", area_id = 14 },
	{ config_id = 120003, monster_id = 21010501, pos = { x = -4747.597, y = 206.264, z = -4703.582 }, rot = { x = 0.000, y = 299.450, z = 0.000 }, level = 30, drop_tag = "远程丘丘人", pose_id = 32, area_id = 14 },
	{ config_id = 120005, monster_id = 21010601, pos = { x = -4757.952, y = 206.350, z = -4668.001 }, rot = { x = 0.000, y = 90.786, z = 0.000 }, level = 30, drop_tag = "丘丘人", pose_id = 9002, area_id = 14 },
	{ config_id = 120009, monster_id = 21010201, pos = { x = -4771.837, y = 206.433, z = -4646.776 }, rot = { x = 0.000, y = 248.270, z = 0.000 }, level = 30, drop_tag = "丘丘人", area_id = 14 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 120004, gadget_id = 70310006, pos = { x = -4752.333, y = 205.160, z = -4670.232 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 14 },
	{ config_id = 120007, gadget_id = 70220013, pos = { x = -4761.218, y = 206.353, z = -4667.350 }, rot = { x = 0.000, y = 12.780, z = 0.000 }, level = 30, area_id = 14 },
	{ config_id = 120008, gadget_id = 70220025, pos = { x = -4758.087, y = 206.352, z = -4667.625 }, rot = { x = 87.160, y = 52.092, z = 350.538 }, level = 30, area_id = 14 },
	{ config_id = 120011, gadget_id = 70500000, pos = { x = -4756.876, y = 206.343, z = -4670.328 }, rot = { x = 280.277, y = 228.362, z = 47.873 }, level = 30, point_type = 3002, area_id = 14 },
	{ config_id = 120012, gadget_id = 70500000, pos = { x = -4757.185, y = 206.345, z = -4670.221 }, rot = { x = 280.277, y = 125.839, z = 47.873 }, level = 30, point_type = 3002, area_id = 14 },
	{ config_id = 120013, gadget_id = 70500000, pos = { x = -4757.618, y = 206.347, z = -4670.688 }, rot = { x = 280.277, y = 359.488, z = 47.873 }, level = 30, point_type = 3002, area_id = 14 },
	{ config_id = 120014, gadget_id = 70310010, pos = { x = -4796.246, y = 206.026, z = -4724.066 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 14 }
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
	monsters = {
		{ config_id = 120006, monster_id = 21010201, pos = { x = -4759.849, y = 206.353, z = -4670.198 }, rot = { x = 0.000, y = 32.996, z = 0.000 }, level = 30, drop_tag = "丘丘人", pose_id = 9003, area_id = 14 }
	},
	gadgets = {
		{ config_id = 120002, gadget_id = 70300090, pos = { x = -4784.354, y = 206.983, z = -4708.425 }, rot = { x = 0.000, y = 315.648, z = 0.000 }, level = 30, area_id = 14 },
		{ config_id = 120010, gadget_id = 70220014, pos = { x = -4760.716, y = 206.353, z = -4665.705 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 14 }
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
		monsters = { 120001, 120003, 120005, 120009 },
		gadgets = { 120004, 120007, 120008, 120011, 120012, 120013, 120014 },
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