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
	{ config_id = 223001, gadget_id = 70500000, pos = { x = -234.295, y = 221.894, z = 422.083 }, rot = { x = 352.684, y = 356.593, z = 31.769 }, level = 36, point_type = 1001, area_id = 200 },
	{ config_id = 223002, gadget_id = 70500000, pos = { x = -234.990, y = 221.699, z = 422.293 }, rot = { x = 0.732, y = 277.118, z = 2.070 }, level = 36, point_type = 1001, area_id = 200 },
	{ config_id = 223003, gadget_id = 70500000, pos = { x = -200.966, y = 178.984, z = 498.348 }, rot = { x = 337.500, y = 71.017, z = 39.183 }, level = 36, point_type = 1001, area_id = 200 },
	{ config_id = 223004, gadget_id = 70500000, pos = { x = -105.802, y = 180.750, z = 499.638 }, rot = { x = 304.841, y = 192.008, z = 18.672 }, level = 36, point_type = 1001, area_id = 200 },
	{ config_id = 223005, gadget_id = 70500000, pos = { x = -199.088, y = 178.865, z = 499.157 }, rot = { x = 21.514, y = 308.499, z = 336.638 }, level = 36, point_type = 1001, area_id = 200 },
	{ config_id = 223006, gadget_id = 70500000, pos = { x = -106.329, y = 180.801, z = 500.032 }, rot = { x = 330.890, y = 203.781, z = 351.379 }, level = 36, point_type = 1001, area_id = 200 },
	{ config_id = 223007, gadget_id = 70500000, pos = { x = -232.647, y = 222.994, z = 413.429 }, rot = { x = 335.659, y = 30.455, z = 17.441 }, level = 36, point_type = 1001, area_id = 200 },
	{ config_id = 223008, gadget_id = 70500000, pos = { x = -235.035, y = 221.726, z = 421.298 }, rot = { x = 344.213, y = 23.711, z = 23.533 }, level = 36, point_type = 1001, area_id = 200 },
	{ config_id = 223009, gadget_id = 70500000, pos = { x = -233.021, y = 222.689, z = 412.829 }, rot = { x = 0.000, y = 314.929, z = 0.000 }, level = 36, point_type = 1001, area_id = 200 }
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
		gadgets = { 223001, 223002, 223003, 223004, 223005, 223006, 223007, 223008, 223009 },
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