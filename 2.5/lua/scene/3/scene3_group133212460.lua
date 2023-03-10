-- 基础信息
local base_info = {
	group_id = 133212460
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 460001, gadget_id = 70220069, pos = { x = -4032.869, y = 197.748, z = -2367.369 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 13 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
}

-- 点位
points = {
	{ config_id = 460002, pos = { x = -4031.515, y = 198.286, z = -2373.367 }, rot = { x = 0.000, y = 315.673, z = 0.000 }, area_id = 13, tag = 8 },
	{ config_id = 460003, pos = { x = -4038.957, y = 197.702, z = -2371.479 }, rot = { x = 0.000, y = 59.277, z = 0.000 }, area_id = 13, tag = 8 },
	{ config_id = 460004, pos = { x = -4039.298, y = 197.912, z = -2367.862 }, rot = { x = 0.000, y = 89.046, z = 0.000 }, area_id = 13, tag = 8 },
	{ config_id = 460005, pos = { x = -4035.394, y = 197.867, z = -2374.223 }, rot = { x = 0.000, y = 24.989, z = 0.000 }, area_id = 13, tag = 8 },
	{ config_id = 460006, pos = { x = -4038.029, y = 198.531, z = -2362.899 }, rot = { x = 0.000, y = 151.129, z = 0.000 }, area_id = 13, tag = 8 }
}

-- 变量
variables = {
}

-- 怪物随机池
monster_pools = {
	{ pool_id = 1004, rand_weight = 100 },
	{ pool_id = 1005, rand_weight = 100 },
	{ pool_id = 1006, rand_weight = 100 },
	{ pool_id = 1007, rand_weight = 100 }
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
		monsters = { },
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

require "V2_0/TreasureMapEventV2"