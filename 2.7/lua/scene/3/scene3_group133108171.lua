-- 基础信息
local base_info = {
	group_id = 133108171
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
	{ config_id = 171001, gadget_id = 70220042, pos = { x = -397.581, y = 201.800, z = -721.239 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 2, area_id = 7 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
}

-- 点位
points = {
	{ config_id = 171004, pos = { x = -393.256, y = 201.667, z = -722.855 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, area_id = 7, tag = 4 },
	{ config_id = 171005, pos = { x = -396.767, y = 200.645, z = -725.182 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, area_id = 7, tag = 4 },
	{ config_id = 171006, pos = { x = -402.062, y = 200.981, z = -723.254 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, area_id = 7, tag = 4 },
	{ config_id = 171007, pos = { x = -400.360, y = 200.494, z = -728.196 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, area_id = 7, tag = 4 },
	{ config_id = 171008, pos = { x = -391.814, y = 200.616, z = -726.110 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, area_id = 7, tag = 4 }
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

require "TreasureMapEvent"