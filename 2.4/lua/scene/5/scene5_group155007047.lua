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
	{ config_id = 47005, gadget_id = 70500000, pos = { x = -62.220, y = 196.355, z = 1535.830 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, point_type = 2037, area_id = 200 },
	{ config_id = 47006, gadget_id = 70500000, pos = { x = -44.106, y = 196.600, z = 1551.291 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, point_type = 2001, area_id = 200 },
	{ config_id = 47007, gadget_id = 70500000, pos = { x = -43.696, y = 198.472, z = 1573.594 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, point_type = 2001, area_id = 200 },
	{ config_id = 47008, gadget_id = 70500000, pos = { x = -87.145, y = 196.700, z = 1554.255 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, point_type = 2001, area_id = 200 },
	{ config_id = 47009, gadget_id = 70500000, pos = { x = -100.648, y = 196.496, z = 1501.416 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, point_type = 2037, area_id = 200 },
	{ config_id = 47010, gadget_id = 70500000, pos = { x = -103.359, y = 196.412, z = 1518.205 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, point_type = 2037, area_id = 200 },
	{ config_id = 47011, gadget_id = 70500000, pos = { x = -90.843, y = 196.057, z = 1514.444 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, point_type = 2037, area_id = 200 },
	{ config_id = 47012, gadget_id = 70500000, pos = { x = -147.763, y = 196.150, z = 1446.690 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, point_type = 2037, area_id = 200 },
	{ config_id = 47013, gadget_id = 70500000, pos = { x = -137.106, y = 196.209, z = 1447.922 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, point_type = 2037, area_id = 200 },
	{ config_id = 47014, gadget_id = 70500000, pos = { x = -170.138, y = 196.159, z = 1451.667 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, point_type = 2037, area_id = 200 }
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
		{ config_id = 47001, monster_id = 28010301, pos = { x = -71.216, y = 196.600, z = 1541.395 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, drop_tag = "采集动物", area_id = 200 },
		{ config_id = 47002, monster_id = 28010301, pos = { x = -61.555, y = 196.183, z = 1561.359 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, drop_tag = "采集动物", area_id = 200 },
		{ config_id = 47003, monster_id = 28010301, pos = { x = -25.679, y = 196.600, z = 1547.377 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, drop_tag = "采集动物", area_id = 200 },
		{ config_id = 47004, monster_id = 28010301, pos = { x = -47.166, y = 196.600, z = 1523.464 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, drop_tag = "采集动物", area_id = 200 }
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
		gadgets = { 47005, 47006, 47007, 47008, 47009, 47010, 47011, 47012, 47013, 47014 },
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