-- 基础信息
local base_info = {
	group_id = 144003002
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
	{ config_id = 2001, gadget_id = 70500000, pos = { x = -258.976, y = 125.046, z = 452.997 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, point_type = 2001, area_id = 103 },
	{ config_id = 2002, gadget_id = 70500000, pos = { x = -207.526, y = 135.133, z = 442.926 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, point_type = 2001, area_id = 103 },
	{ config_id = 2003, gadget_id = 70500000, pos = { x = -250.422, y = 119.413, z = 384.246 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, point_type = 2033, area_id = 103 },
	{ config_id = 2004, gadget_id = 70500000, pos = { x = -248.560, y = 118.325, z = 376.803 }, rot = { x = 0.000, y = 280.386, z = 0.000 }, level = 1, point_type = 2033, area_id = 103 }
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
		monsters = { },
		gadgets = { 2001, 2002, 2003, 2004 },
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