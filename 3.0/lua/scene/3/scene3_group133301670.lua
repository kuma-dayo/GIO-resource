-- 基础信息
local base_info = {
	group_id = 133301670
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
	{ config_id = 670001, gadget_id = 70230101, pos = { x = -32.424, y = 248.349, z = 3445.360 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 29 },
	{ config_id = 670002, gadget_id = 70230106, pos = { x = -56.327, y = 196.434, z = 3437.230 }, rot = { x = 0.000, y = 95.371, z = 0.000 }, level = 27, area_id = 29 }
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
		gadgets = { 670001, 670002 },
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