-- 基础信息
local base_info = {
	group_id = 144002035
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 35001, monster_id = 21010101, pos = { x = 478.052, y = 120.682, z = -525.104 }, rot = { x = 0.000, y = 279.668, z = 0.000 }, level = 20, drop_tag = "丘丘人", area_id = 101 },
	{ config_id = 35003, monster_id = 21010101, pos = { x = 480.259, y = 120.739, z = -522.825 }, rot = { x = 0.000, y = 279.668, z = 0.000 }, level = 20, drop_tag = "丘丘人", area_id = 101 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 35002, gadget_id = 70220050, pos = { x = 481.102, y = 119.643, z = -527.648 }, rot = { x = 0.000, y = 0.000, z = 334.523 }, level = 1, area_id = 101 },
	{ config_id = 35004, gadget_id = 70220051, pos = { x = 482.903, y = 119.618, z = -527.597 }, rot = { x = 41.283, y = 0.000, z = 0.000 }, level = 1, area_id = 101 }
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
		monsters = { 35001, 35003 },
		gadgets = { 35002, 35004 },
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