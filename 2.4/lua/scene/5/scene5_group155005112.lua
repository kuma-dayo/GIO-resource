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
	{ config_id = 112002, gadget_id = 70500000, pos = { x = 679.230, y = 244.875, z = 503.727 }, rot = { x = 340.958, y = 0.000, z = 6.050 }, level = 36, point_type = 1008, area_id = 200 },
	{ config_id = 112003, gadget_id = 70500000, pos = { x = 672.071, y = 244.319, z = 502.655 }, rot = { x = 340.958, y = 0.000, z = 6.050 }, level = 36, point_type = 1008, area_id = 200 },
	{ config_id = 112005, gadget_id = 70500000, pos = { x = 664.103, y = 243.215, z = 500.324 }, rot = { x = 19.842, y = 191.902, z = 357.925 }, level = 36, point_type = 1008, area_id = 200 }
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
		{ config_id = 112001, gadget_id = 70500000, pos = { x = 682.109, y = 244.188, z = 498.764 }, rot = { x = 350.098, y = 0.019, z = 1.644 }, level = 36, point_type = 1008, area_id = 200 },
		{ config_id = 112004, gadget_id = 70500000, pos = { x = 674.543, y = 244.488, z = 502.456 }, rot = { x = 19.842, y = 191.902, z = 357.925 }, level = 36, point_type = 1008, area_id = 200 }
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
		gadgets = { 112002, 112003, 112005 },
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