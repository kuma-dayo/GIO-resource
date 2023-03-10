-- 基础信息
local base_info = {
	group_id = 177008044
}

-- DEFS_MISCS
regionID=44001
DarkLevel=6

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
}

-- 区域
regions = {
	{ config_id = 44001, shape = RegionShape.POLYGON, pos = { x = -566.147, y = 353.000, z = 135.613 }, height = 494.000, point_array = { { x = -970.413, y = -171.013 }, { x = -956.792, y = 39.264 }, { x = -784.636, y = 358.529 }, { x = -626.069, y = 593.706 }, { x = -508.274, y = 731.428 }, { x = -404.688, y = 548.740 }, { x = -276.275, y = 459.088 }, { x = -248.958, y = 408.205 }, { x = -273.589, y = 283.110 }, { x = -333.561, y = 252.850 }, { x = -357.107, y = 79.609 }, { x = -161.881, y = -400.983 }, { x = -756.103, y = -460.202 } }, area_id = 210 }
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
		regions = { 44001 },
		triggers = { },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

require "V2_5/DarkPressure"