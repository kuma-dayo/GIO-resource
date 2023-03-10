-- 基础信息
local base_info = {
	group_id = 166001170
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 170001, monster_id = 25010301, pos = { x = 958.528, y = 730.373, z = 278.549 }, rot = { x = 0.000, y = 91.158, z = 0.000 }, level = 36, drop_tag = "盗宝团", pose_id = 9007, area_id = 300 },
	{ config_id = 170002, monster_id = 25010501, pos = { x = 954.695, y = 730.704, z = 277.972 }, rot = { x = 0.000, y = 93.923, z = 0.000 }, level = 36, drop_tag = "盗宝团", pose_id = 9004, area_id = 300 },
	{ config_id = 170003, monster_id = 25010201, pos = { x = 957.369, y = 730.475, z = 280.690 }, rot = { x = 0.000, y = 119.687, z = 0.000 }, level = 36, drop_tag = "盗宝团", pose_id = 9002, area_id = 300 }
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
	rand_suite = true
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
		monsters = { 170001, 170002 },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 170001, 170003 },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { 170001, 170002, 170003 },
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