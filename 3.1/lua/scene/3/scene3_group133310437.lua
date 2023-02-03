-- 基础信息
local base_info = {
	group_id = 133310437
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 437001, monster_id = 28010202, pos = { x = -2682.254, y = 116.552, z = 4558.543 }, rot = { x = 0.000, y = 216.127, z = 0.000 }, level = 32, drop_tag = "采集动物", area_id = 28 },
	{ config_id = 437002, monster_id = 28030104, pos = { x = -2649.070, y = 95.720, z = 4604.042 }, rot = { x = 0.000, y = 338.567, z = 0.000 }, level = 32, drop_tag = "鸟类", pose_id = 2, area_id = 28 },
	{ config_id = 437003, monster_id = 28020108, pos = { x = -2696.635, y = 74.858, z = 4511.599 }, rot = { x = 0.000, y = 207.263, z = 0.000 }, level = 32, drop_tag = "走兽", area_id = 28 },
	{ config_id = 437004, monster_id = 28030104, pos = { x = -2654.391, y = 95.720, z = 4601.153 }, rot = { x = 0.000, y = 0.452, z = 0.000 }, level = 32, drop_tag = "鸟类", pose_id = 2, area_id = 28 }
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
		monsters = { 437001, 437002, 437003, 437004 },
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