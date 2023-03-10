-- 基础信息
local base_info = {
	group_id = 220000024
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 39, monster_id = 21010601, pos = { x = 68.850, y = 6.016, z = 63.322 }, rot = { x = 0.000, y = 121.068, z = 0.000 }, level = 1, disableWander = true },
	{ config_id = 40, monster_id = 21010301, pos = { x = 77.822, y = 0.500, z = 44.013 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, disableWander = true },
	{ config_id = 41, monster_id = 21010301, pos = { x = 79.941, y = 0.500, z = 62.707 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, disableWander = true }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 65, gadget_id = 70211011, pos = { x = 71.650, y = 6.521, z = 58.503 }, rot = { x = 0.000, y = 276.807, z = 0.000 }, level = 1, drop_tag = "战斗中级蒙德", isOneoff = true }
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
		monsters = { 39, 40, 41 },
		gadgets = { 65 },
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