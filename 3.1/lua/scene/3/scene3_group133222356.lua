-- 基础信息
local base_info = {
	group_id = 133222356
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
	{ config_id = 356001, gadget_id = 70500000, pos = { x = -4347.403, y = 206.995, z = -4207.935 }, rot = { x = 0.000, y = 308.177, z = 0.000 }, level = 30, point_type = 2002, area_id = 14 },
	{ config_id = 356002, gadget_id = 70500000, pos = { x = -4349.439, y = 207.266, z = -4208.133 }, rot = { x = 0.000, y = 274.492, z = 0.000 }, level = 30, point_type = 2002, area_id = 14 }
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
		gadgets = { 356001, 356002 },
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