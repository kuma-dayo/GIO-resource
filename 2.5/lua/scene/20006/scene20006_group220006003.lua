-- 基础信息
local base_info = {
	group_id = 220006003
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 15, monster_id = 21010501, pos = { x = 123.554, y = 39.497, z = 118.304 }, rot = { x = 0.000, y = 280.350, z = 0.000 }, level = 1, disableWander = true },
	{ config_id = 16, monster_id = 21010501, pos = { x = 88.661, y = 40.500, z = 114.722 }, rot = { x = 0.000, y = 285.950, z = 0.000 }, level = 1, disableWander = true },
	{ config_id = 17, monster_id = 21010301, pos = { x = 89.071, y = 39.498, z = 123.551 }, rot = { x = 0.000, y = 271.200, z = 0.000 }, level = 1, disableWander = true }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 132, gadget_id = 70320002, pos = { x = 94.410, y = 39.516, z = 128.820 }, rot = { x = 0.000, y = 178.700, z = 0.000 }, level = 1 },
	{ config_id = 133, gadget_id = 70320002, pos = { x = 79.316, y = 39.517, z = 114.178 }, rot = { x = 0.000, y = 357.800, z = 0.000 }, level = 1 },
	{ config_id = 134, gadget_id = 70320002, pos = { x = 116.893, y = 39.516, z = 113.868 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 165, gadget_id = 70220011, pos = { x = 89.924, y = 40.056, z = 112.739 }, rot = { x = 0.000, y = 329.852, z = 0.000 }, level = 1 }
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
		-- description = suite_1,
		monsters = { 15, 16, 17 },
		gadgets = { 132, 133, 134, 165 },
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