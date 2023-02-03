-- 基础信息
local base_info = {
	group_id = 250005002
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 5, monster_id = 21010701, pos = { x = 136.026, y = 4.000, z = -106.594 }, rot = { x = 0.000, y = 270.000, z = 0.000 }, level = 20, disableWander = true },
	{ config_id = 6, monster_id = 21010701, pos = { x = 133.393, y = 4.000, z = -110.322 }, rot = { x = 0.000, y = 270.000, z = 0.000 }, level = 20, disableWander = true },
	{ config_id = 7, monster_id = 21011001, pos = { x = 137.530, y = 4.000, z = -101.881 }, rot = { x = 0.000, y = 270.000, z = 0.000 }, level = 20, disableWander = true },
	{ config_id = 8, monster_id = 21030301, pos = { x = 140.349, y = 4.000, z = -106.766 }, rot = { x = 0.000, y = 270.000, z = 0.000 }, level = 20, disableWander = true },
	{ config_id = 9, monster_id = 21010301, pos = { x = 130.109, y = 4.000, z = -104.686 }, rot = { x = 0.000, y = 282.796, z = 0.000 }, level = 20, disableWander = true }
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
		monsters = { 5, 6, 7, 8, 9 },
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