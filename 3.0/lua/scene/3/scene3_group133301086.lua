-- 基础信息
local base_info = {
	group_id = 133301086
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 86001, monster_id = 21010301, pos = { x = -176.967, y = 249.545, z = 3358.659 }, rot = { x = 0.000, y = 55.009, z = 0.000 }, level = 27, drop_tag = "丘丘人", pose_id = 9012, area_id = 29 },
	{ config_id = 86002, monster_id = 21010101, pos = { x = -172.530, y = 251.038, z = 3359.864 }, rot = { x = 0.000, y = 210.235, z = 0.000 }, level = 27, drop_tag = "丘丘人", pose_id = 9012, area_id = 29 },
	{ config_id = 86003, monster_id = 21020701, pos = { x = -175.695, y = 253.005, z = 3393.254 }, rot = { x = 0.000, y = 151.153, z = 0.000 }, level = 27, drop_tag = "丘丘暴徒", disableWander = true, pose_id = 401, area_id = 29 },
	{ config_id = 86004, monster_id = 21010101, pos = { x = -173.957, y = 251.915, z = 3355.344 }, rot = { x = 0.000, y = 294.042, z = 0.000 }, level = 27, drop_tag = "丘丘人", pose_id = 9012, area_id = 29 },
	{ config_id = 86007, monster_id = 21011601, pos = { x = -174.052, y = 253.308, z = 3393.689 }, rot = { x = 0.000, y = 157.242, z = 0.000 }, level = 27, drop_tag = "丘丘人", disableWander = true, pose_id = 9003, area_id = 29 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 86005, gadget_id = 70300107, pos = { x = -174.580, y = 250.212, z = 3358.965 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, state = GadgetState.GearStart, area_id = 29 },
	{ config_id = 86006, gadget_id = 70217020, pos = { x = -173.258, y = 254.020, z = 3399.018 }, rot = { x = 359.880, y = 337.438, z = 359.709 }, level = 26, drop_tag = "摩拉石箱须弥", isOneoff = true, persistent = true, explore = { name = "chest", exp = 4 }, area_id = 29 },
	{ config_id = 86008, gadget_id = 70220013, pos = { x = -166.360, y = 254.656, z = 3388.666 }, rot = { x = 0.000, y = 338.266, z = 0.000 }, level = 27, area_id = 29 },
	{ config_id = 86009, gadget_id = 70220013, pos = { x = -164.760, y = 254.988, z = 3390.793 }, rot = { x = 0.000, y = 0.000, z = 359.428 }, level = 27, area_id = 29 },
	{ config_id = 86010, gadget_id = 70300086, pos = { x = -195.482, y = 248.743, z = 3394.942 }, rot = { x = 4.935, y = 15.224, z = 9.020 }, level = 27, area_id = 29 },
	{ config_id = 86011, gadget_id = 70500000, pos = { x = -184.178, y = 249.162, z = 3395.549 }, rot = { x = 0.000, y = 87.811, z = 0.000 }, level = 27, point_type = 9131, area_id = 29 },
	{ config_id = 86012, gadget_id = 70500000, pos = { x = -184.098, y = 249.253, z = 3396.253 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, point_type = 9131, area_id = 29 },
	{ config_id = 86013, gadget_id = 70500000, pos = { x = -182.024, y = 250.541, z = 3401.173 }, rot = { x = 0.000, y = 22.445, z = 0.000 }, level = 27, point_type = 9131, area_id = 29 },
	{ config_id = 86014, gadget_id = 70310006, pos = { x = -172.508, y = 253.211, z = 3389.487 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, state = GadgetState.GearStart, area_id = 29 }
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
		monsters = { 86001, 86002, 86003, 86004, 86007 },
		gadgets = { 86005, 86006, 86008, 86009, 86010, 86011, 86012, 86013, 86014 },
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