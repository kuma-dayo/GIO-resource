-- 基础信息
local base_info = {
	group_id = 133302607
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
	{ config_id = 607001, gadget_id = 71700439, pos = { x = -288.807, y = 247.924, z = 2790.857 }, rot = { x = 0.000, y = 236.507, z = 0.000 }, level = 1, area_id = 24 },
	{ config_id = 607002, gadget_id = 71700440, pos = { x = -288.808, y = 247.924, z = 2790.858 }, rot = { x = 0.000, y = 236.507, z = 0.000 }, level = 1, area_id = 24 },
	{ config_id = 607003, gadget_id = 71700441, pos = { x = -288.807, y = 248.193, z = 2790.857 }, rot = { x = 0.000, y = 236.507, z = 0.000 }, level = 1, area_id = 24 }
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
		gadgets = { 607001, 607003 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 607002 },
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