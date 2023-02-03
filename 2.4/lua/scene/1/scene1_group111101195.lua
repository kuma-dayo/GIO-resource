-- Trigger变量
local defs = {
	order = {195001,195002,195003},
	region_Enter = 195004,
	region_Leave = 195005
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
	{ config_id = 195001, gadget_id = 70800043, pos = { x = 2270.975, y = 240.953, z = -1356.216 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 195002, gadget_id = 70800043, pos = { x = 2258.726, y = 239.940, z = -1355.753 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 195003, gadget_id = 70800043, pos = { x = 2260.609, y = 239.819, z = -1342.240 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 }
}

-- 区域
regions = {
	{ config_id = 195004, shape = RegionShape.SPHERE, radius = 15, pos = { x = 2262.510, y = 239.662, z = -1349.660 } },
	{ config_id = 195005, shape = RegionShape.SPHERE, radius = 20, pos = { x = 2262.510, y = 239.662, z = -1349.660 } }
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
		monsters = { },
		gadgets = { },
		regions = { 195004, 195005 },
		triggers = { },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

require "V2_2/Ayesha"