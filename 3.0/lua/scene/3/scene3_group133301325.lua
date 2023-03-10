-- 基础信息
local base_info = {
	group_id = 133301325
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 325002, monster_id = 25010701, pos = { x = -523.281, y = 190.492, z = 3358.012 }, rot = { x = 0.000, y = 43.861, z = 0.000 }, level = 33, drop_tag = "盗宝团", pose_id = 9002, area_id = 22 },
	{ config_id = 325008, monster_id = 25020201, pos = { x = -524.131, y = 190.023, z = 3361.789 }, rot = { x = 0.000, y = 319.097, z = 0.000 }, level = 33, drop_tag = "盗宝团", pose_id = 9005, area_id = 22 },
	{ config_id = 325009, monster_id = 26090901, pos = { x = -522.079, y = 190.554, z = 3360.798 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 33, drop_tag = "蕈兽", pose_id = 101, area_id = 22 },
	{ config_id = 325010, monster_id = 26090901, pos = { x = -520.417, y = 190.994, z = 3357.798 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 33, drop_tag = "蕈兽", pose_id = 101, area_id = 22 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 325006, gadget_id = 70220052, pos = { x = -553.995, y = 190.730, z = 3356.628 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 33, area_id = 22 }
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
		{ config_id = 325001, monster_id = 28061201, pos = { x = -639.607, y = 214.875, z = 3356.986 }, rot = { x = 0.000, y = 181.237, z = 0.000 }, level = 33, drop_tag = "驮兽盗宝团", disableWander = true, pose_id = 1, area_id = 22 }
	},
	gadgets = {
		{ config_id = 325003, gadget_id = 70220015, pos = { x = -595.360, y = 177.265, z = 3426.801 }, rot = { x = 274.788, y = 92.092, z = 267.790 }, level = 33, area_id = 22 },
		{ config_id = 325004, gadget_id = 70220015, pos = { x = -572.120, y = 172.886, z = 3454.566 }, rot = { x = 274.790, y = 250.492, z = 267.790 }, level = 33, area_id = 22 },
		{ config_id = 325005, gadget_id = 70220015, pos = { x = -572.107, y = 173.624, z = 3454.555 }, rot = { x = 275.477, y = 219.095, z = 284.960 }, level = 33, area_id = 22 },
		{ config_id = 325007, gadget_id = 70220015, pos = { x = -576.629, y = 176.889, z = 3446.006 }, rot = { x = 275.476, y = 60.695, z = 284.960 }, level = 33, area_id = 22 }
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
		monsters = { 325002, 325008, 325009, 325010 },
		gadgets = { 325006 },
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