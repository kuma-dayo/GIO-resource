-- 基础信息
local base_info = {
	group_id = 133302582
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 582002, monster_id = 21011601, pos = { x = -1024.950, y = 225.313, z = 2701.620 }, rot = { x = 0.000, y = 93.188, z = 0.000 }, level = 27, drop_tag = "丘丘人", pose_id = 9003, area_id = 24 },
	{ config_id = 582003, monster_id = 21010601, pos = { x = -1024.470, y = 225.219, z = 2702.900 }, rot = { x = 0.000, y = 103.609, z = 0.000 }, level = 27, drop_tag = "丘丘人", pose_id = 9003, area_id = 24 },
	{ config_id = 582007, monster_id = 28060602, pos = { x = -1015.588, y = 221.520, z = 2742.273 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, drop_tag = "走兽", pose_id = 3, area_id = 24 },
	{ config_id = 582008, monster_id = 28061402, pos = { x = -1026.131, y = 225.758, z = 2702.845 }, rot = { x = 0.000, y = 13.593, z = 0.000 }, level = 27, drop_tag = "驮兽丘丘人", pose_id = 2, area_id = 24 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 582001, gadget_id = 70330216, pos = { x = -1022.066, y = 221.792, z = 2718.653 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 24 },
	{ config_id = 582004, gadget_id = 70330216, pos = { x = -1012.177, y = 221.397, z = 2745.025 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 24 }
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
		monsters = { 582002, 582003, 582007, 582008 },
		gadgets = { 582001, 582004 },
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