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
	{ config_id = 29001, gadget_id = 70500000, pos = { x = 1678.181, y = 204.160, z = -2629.159 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, point_type = 1001, area_id = 2 },
	{ config_id = 29002, gadget_id = 70500000, pos = { x = 1671.860, y = 204.006, z = -2622.377 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, point_type = 1001, area_id = 2 },
	{ config_id = 29003, gadget_id = 70500000, pos = { x = 1697.030, y = 208.811, z = -2642.956 }, rot = { x = 29.423, y = 0.000, z = 0.000 }, level = 20, point_type = 1001, area_id = 2 },
	{ config_id = 29004, gadget_id = 70500000, pos = { x = 1698.513, y = 208.954, z = -2641.681 }, rot = { x = 0.000, y = 62.488, z = 0.000 }, level = 20, point_type = 1001, area_id = 2 },
	{ config_id = 29005, gadget_id = 70500000, pos = { x = 1681.126, y = 204.552, z = -2631.767 }, rot = { x = 0.000, y = 225.736, z = 0.000 }, level = 20, point_type = 1001, area_id = 2 },
	{ config_id = 29006, gadget_id = 70500000, pos = { x = 1700.757, y = 209.682, z = -2643.932 }, rot = { x = 0.000, y = 11.099, z = 345.324 }, level = 20, point_type = 1001, area_id = 2 },
	{ config_id = 29007, gadget_id = 70500000, pos = { x = 1607.090, y = 205.031, z = -2676.018 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, point_type = 2007, area_id = 2 },
	{ config_id = 29008, gadget_id = 70500000, pos = { x = 1672.215, y = 207.419, z = -2694.268 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, point_type = 2007, area_id = 2 },
	{ config_id = 29009, gadget_id = 70500000, pos = { x = 1682.423, y = 211.080, z = -2671.531 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, point_type = 2007, area_id = 2 },
	{ config_id = 29010, gadget_id = 70500000, pos = { x = 1665.759, y = 209.391, z = -2637.474 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, point_type = 2007, area_id = 2 },
	{ config_id = 29011, gadget_id = 70500000, pos = { x = 1670.742, y = 202.431, z = -2611.021 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, point_type = 2007, area_id = 2 },
	{ config_id = 29012, gadget_id = 70500000, pos = { x = 1597.454, y = 205.215, z = -2629.570 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, point_type = 2007, area_id = 2 },
	{ config_id = 29013, gadget_id = 70500000, pos = { x = 1615.998, y = 203.423, z = -2615.545 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, point_type = 2007, area_id = 2 },
	{ config_id = 29014, gadget_id = 70500000, pos = { x = 1626.700, y = 205.762, z = -2599.563 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, point_type = 2007, area_id = 2 }
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
		gadgets = { 29001, 29002, 29003, 29004, 29005, 29006, 29007, 29008, 29009, 29010, 29011, 29012, 29013, 29014 },
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