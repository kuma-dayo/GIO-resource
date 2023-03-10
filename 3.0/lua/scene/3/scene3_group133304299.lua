-- 基础信息
local base_info = {
	group_id = 133304299
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 299001, monster_id = 25310201, pos = { x = -1796.998, y = 223.501, z = 2955.862 }, rot = { x = 0.000, y = 304.034, z = 0.000 }, level = 30, drop_tag = "中级镀金旅团", pose_id = 1, area_id = 21, vision_level = VisionLevelType.VISION_LEVEL_LITTLE_REMOTE },
	{ config_id = 299002, monster_id = 25310301, pos = { x = -1795.973, y = 224.738, z = 2967.605 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, drop_tag = "中级镀金旅团", pose_id = 9003, area_id = 21 }
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
		monsters = { 299001, 299002 },
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