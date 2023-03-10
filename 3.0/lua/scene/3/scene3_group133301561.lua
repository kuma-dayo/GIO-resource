-- 基础信息
local base_info = {
	group_id = 133301561
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 561001, monster_id = 28020313, pos = { x = -910.252, y = 199.378, z = 3761.909 }, rot = { x = 0.000, y = 325.653, z = 0.000 }, level = 33, drop_tag = "走兽", area_id = 23 },
	{ config_id = 561002, monster_id = 28020313, pos = { x = -920.983, y = 200.997, z = 3742.519 }, rot = { x = 0.000, y = 195.818, z = 0.000 }, level = 33, drop_tag = "走兽", area_id = 23 },
	{ config_id = 561003, monster_id = 28020313, pos = { x = -937.404, y = 207.351, z = 3748.749 }, rot = { x = 0.000, y = 51.344, z = 0.000 }, level = 33, drop_tag = "走兽", area_id = 23 }
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
		monsters = { 561001, 561002, 561003 },
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