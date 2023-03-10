-- 基础信息
local base_info = {
	group_id = 133105127
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 212, monster_id = 20010201, pos = { x = 1002.981, y = 251.130, z = -268.759 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 25, drop_tag = "大史莱姆", pose_id = 201, area_id = 9 },
	{ config_id = 239, monster_id = 20010201, pos = { x = 1048.865, y = 220.591, z = -112.351 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 25, drop_tag = "大史莱姆", pose_id = 201, area_id = 9 },
	{ config_id = 240, monster_id = 20010201, pos = { x = 792.921, y = 263.779, z = -350.197 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 25, drop_tag = "大史莱姆", pose_id = 201, area_id = 9 },
	{ config_id = 242, monster_id = 20010201, pos = { x = 768.642, y = 253.335, z = -168.048 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 25, drop_tag = "大史莱姆", pose_id = 201, area_id = 9 },
	{ config_id = 243, monster_id = 20010201, pos = { x = 647.310, y = 291.801, z = -319.096 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 25, drop_tag = "大史莱姆", pose_id = 201, area_id = 9 }
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
		monsters = { 212, 239, 240, 242, 243 },
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