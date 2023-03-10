-- 基础信息
local base_info = {
	group_id = 133301724
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 724001, monster_id = 26090101, pos = { x = -156.187, y = 313.417, z = 3533.728 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, drop_tag = "蕈兽", pose_id = 102, area_id = 29 },
	{ config_id = 724002, monster_id = 26090101, pos = { x = -157.422, y = 313.727, z = 3528.353 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, drop_tag = "蕈兽", pose_id = 102, area_id = 29 },
	{ config_id = 724003, monster_id = 26090101, pos = { x = -154.992, y = 313.786, z = 3532.101 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, drop_tag = "蕈兽", pose_id = 104, area_id = 29 },
	{ config_id = 724004, monster_id = 26120301, pos = { x = -157.720, y = 312.464, z = 3532.470 }, rot = { x = 0.000, y = 214.225, z = 0.000 }, level = 27, drop_tag = "大蕈兽", pose_id = 102, area_id = 29 }
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
		monsters = { 724001, 724002, 724003, 724004 },
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