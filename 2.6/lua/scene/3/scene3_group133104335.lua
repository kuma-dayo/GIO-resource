-- 基础信息
local base_info = {
	group_id = 133104335
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 335001, monster_id = 25010301, pos = { x = 299.152, y = 221.721, z = 256.140 }, rot = { x = 7.595, y = 52.093, z = 3.567 }, level = 19, drop_tag = "盗宝团", disableWander = true, pose_id = 9006, area_id = 9 },
	{ config_id = 335002, monster_id = 25010501, pos = { x = 300.096, y = 222.181, z = 257.237 }, rot = { x = 4.004, y = 148.299, z = 13.045 }, level = 19, drop_tag = "盗宝团", disableWander = true, pose_id = 9006, area_id = 9 }
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
		monsters = { 335001, 335002 },
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