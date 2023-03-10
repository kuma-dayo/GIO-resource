-- 基础信息
local base_info = {
	group_id = 133223203
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 203001, monster_id = 28030306, pos = { x = -5864.352, y = 203.127, z = -2727.151 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 33, drop_tag = "鸟类", pose_id = 3, climate_area_id = 7, area_id = 18 },
	{ config_id = 203002, monster_id = 28030306, pos = { x = -5862.806, y = 202.772, z = -2726.613 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 33, drop_tag = "鸟类", pose_id = 3, climate_area_id = 7, area_id = 18 }
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
		monsters = { 203001, 203002 },
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