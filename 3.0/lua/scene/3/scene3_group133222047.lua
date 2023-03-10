-- 基础信息
local base_info = {
	group_id = 133222047
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 47009, monster_id = 28010105, pos = { x = -4535.733, y = 200.385, z = -4739.367 }, rot = { x = 0.000, y = 203.070, z = 0.000 }, level = 30, drop_tag = "采集动物", area_id = 14 },
	{ config_id = 47010, monster_id = 28010105, pos = { x = -4494.688, y = 200.613, z = -4731.641 }, rot = { x = 0.000, y = 136.923, z = 0.000 }, level = 30, drop_tag = "采集动物", area_id = 14 },
	{ config_id = 47011, monster_id = 28010105, pos = { x = -4518.717, y = 200.257, z = -4686.014 }, rot = { x = 0.000, y = 3.069, z = 0.000 }, level = 30, drop_tag = "采集动物", area_id = 14 },
	{ config_id = 47012, monster_id = 28010105, pos = { x = -4543.371, y = 200.441, z = -4696.116 }, rot = { x = 0.000, y = 37.405, z = 0.000 }, level = 30, drop_tag = "采集动物", area_id = 14 },
	{ config_id = 47013, monster_id = 28010105, pos = { x = -4567.595, y = 200.249, z = -4714.036 }, rot = { x = 0.000, y = 63.115, z = 0.000 }, level = 30, drop_tag = "采集动物", area_id = 14 },
	{ config_id = 47014, monster_id = 28010105, pos = { x = -4574.695, y = 200.145, z = -4718.185 }, rot = { x = 0.000, y = 76.575, z = 0.000 }, level = 30, drop_tag = "采集动物", area_id = 14 },
	{ config_id = 47018, monster_id = 28010105, pos = { x = -4503.033, y = 200.199, z = -4581.272 }, rot = { x = 0.000, y = 165.038, z = 0.000 }, level = 30, drop_tag = "采集动物", area_id = 14 },
	{ config_id = 47019, monster_id = 28010105, pos = { x = -4548.076, y = 200.445, z = -4596.062 }, rot = { x = 0.000, y = 258.360, z = 0.000 }, level = 30, drop_tag = "采集动物", area_id = 14 },
	{ config_id = 47020, monster_id = 28010105, pos = { x = -4492.891, y = 200.632, z = -4544.910 }, rot = { x = 0.000, y = 106.658, z = 0.000 }, level = 30, drop_tag = "采集动物", area_id = 14 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 47005, gadget_id = 70500000, pos = { x = -4480.564, y = 199.140, z = -4710.273 }, rot = { x = 0.000, y = 37.580, z = 0.000 }, level = 30, point_type = 2033, area_id = 14 },
	{ config_id = 47006, gadget_id = 70500000, pos = { x = -4500.800, y = 199.553, z = -4741.349 }, rot = { x = 0.000, y = 128.987, z = 0.000 }, level = 30, point_type = 2033, area_id = 14 },
	{ config_id = 47007, gadget_id = 70500000, pos = { x = -4514.754, y = 199.325, z = -4743.327 }, rot = { x = 0.000, y = 49.742, z = 0.000 }, level = 30, point_type = 2033, area_id = 14 },
	{ config_id = 47008, gadget_id = 70500000, pos = { x = -4566.763, y = 200.000, z = -4731.869 }, rot = { x = 0.000, y = 177.871, z = 0.000 }, level = 30, point_type = 2033, area_id = 14 },
	{ config_id = 47015, gadget_id = 70500000, pos = { x = -4557.179, y = 199.051, z = -4700.047 }, rot = { x = 0.000, y = 258.467, z = 0.000 }, level = 30, point_type = 2037, area_id = 14 },
	{ config_id = 47016, gadget_id = 70500000, pos = { x = -4544.866, y = 198.803, z = -4686.781 }, rot = { x = 0.000, y = 37.816, z = 0.000 }, level = 30, point_type = 2037, area_id = 14 },
	{ config_id = 47017, gadget_id = 70500000, pos = { x = -4507.744, y = 198.790, z = -4679.211 }, rot = { x = 0.000, y = 303.249, z = 0.000 }, level = 30, point_type = 2037, area_id = 14 }
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
		{ config_id = 47001, monster_id = 26010301, pos = { x = -4491.730, y = 200.810, z = -4722.975 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, drop_tag = "骗骗花", area_id = 14 },
		{ config_id = 47002, monster_id = 26010301, pos = { x = -4514.406, y = 200.630, z = -4732.989 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, drop_tag = "骗骗花", area_id = 14 },
		{ config_id = 47003, monster_id = 26010301, pos = { x = -4528.209, y = 200.932, z = -4738.886 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, drop_tag = "骗骗花", area_id = 14 },
		{ config_id = 47004, monster_id = 26010301, pos = { x = -4484.373, y = 200.460, z = -4688.235 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, drop_tag = "骗骗花", area_id = 14 }
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
		monsters = { 47009, 47010, 47011, 47012, 47013, 47014, 47018, 47019, 47020 },
		gadgets = { 47005, 47006, 47007, 47008, 47015, 47016, 47017 },
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