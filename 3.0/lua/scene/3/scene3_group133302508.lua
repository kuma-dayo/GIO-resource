-- 基础信息
local base_info = {
	group_id = 133302508
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 508001, monster_id = 28030313, pos = { x = -154.731, y = 225.158, z = 2487.258 }, rot = { x = 0.000, y = 281.575, z = 0.000 }, level = 27, drop_tag = "鸟类", pose_id = 3, area_id = 24 },
	{ config_id = 508002, monster_id = 28030313, pos = { x = -123.943, y = 227.720, z = 2411.565 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, drop_tag = "鸟类", pose_id = 3, area_id = 24 },
	{ config_id = 508003, monster_id = 28030313, pos = { x = -106.853, y = 314.101, z = 2136.980 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, drop_tag = "鸟类", area_id = 20 },
	{ config_id = 508004, monster_id = 28030401, pos = { x = -83.724, y = 220.471, z = 2449.421 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, drop_tag = "鸟类", area_id = 20 },
	{ config_id = 508005, monster_id = 28030401, pos = { x = -85.266, y = 220.037, z = 2452.902 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, drop_tag = "鸟类", area_id = 20 },
	{ config_id = 508006, monster_id = 28030401, pos = { x = -87.047, y = 219.745, z = 2448.601 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, drop_tag = "鸟类", area_id = 20 },
	{ config_id = 508007, monster_id = 28030401, pos = { x = -227.838, y = 212.489, z = 2416.508 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, drop_tag = "鸟类", area_id = 24 },
	{ config_id = 508008, monster_id = 28030401, pos = { x = -232.037, y = 211.816, z = 2403.680 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, drop_tag = "鸟类", area_id = 24 },
	{ config_id = 508009, monster_id = 28030401, pos = { x = -235.471, y = 209.883, z = 2389.477 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, drop_tag = "鸟类", area_id = 24 },
	{ config_id = 508010, monster_id = 28020102, pos = { x = -191.823, y = 231.914, z = 2305.440 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, drop_tag = "走兽", area_id = 24 },
	{ config_id = 508011, monster_id = 28020102, pos = { x = -187.210, y = 197.275, z = 2415.420 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, drop_tag = "走兽", area_id = 24 },
	{ config_id = 508012, monster_id = 28020102, pos = { x = -11.690, y = 261.868, z = 2348.841 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, drop_tag = "走兽", area_id = 20 },
	{ config_id = 508013, monster_id = 28020102, pos = { x = -106.777, y = 326.796, z = 2229.281 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, drop_tag = "走兽", area_id = 20 },
	{ config_id = 508014, monster_id = 28030313, pos = { x = -119.315, y = 226.318, z = 2411.372 }, rot = { x = 0.000, y = 26.996, z = 0.000 }, level = 27, drop_tag = "鸟类", pose_id = 3, area_id = 24 },
	{ config_id = 508015, monster_id = 28030313, pos = { x = -118.783, y = 226.455, z = 2411.215 }, rot = { x = 0.000, y = 343.929, z = 0.000 }, level = 27, drop_tag = "鸟类", pose_id = 3, area_id = 24 },
	{ config_id = 508016, monster_id = 28020102, pos = { x = -146.069, y = 226.175, z = 2377.886 }, rot = { x = 0.000, y = 73.148, z = 0.000 }, level = 27, drop_tag = "走兽", area_id = 24 },
	{ config_id = 508017, monster_id = 28050106, pos = { x = -5.279, y = 263.869, z = 2346.663 }, rot = { x = 0.000, y = 105.687, z = 0.000 }, level = 27, drop_tag = "魔法生物", area_id = 20 },
	{ config_id = 508018, monster_id = 28050106, pos = { x = -7.023, y = 264.116, z = 2343.036 }, rot = { x = 0.000, y = 157.570, z = 0.000 }, level = 27, drop_tag = "魔法生物", area_id = 20 },
	{ config_id = 508019, monster_id = 28050106, pos = { x = 0.408, y = 260.706, z = 2340.138 }, rot = { x = 0.000, y = 107.366, z = 0.000 }, level = 27, drop_tag = "魔法生物", area_id = 20 }
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
		monsters = { 508001, 508002, 508003, 508004, 508005, 508006, 508007, 508008, 508009, 508010, 508011, 508012, 508013, 508014, 508015, 508016, 508017, 508018, 508019 },
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