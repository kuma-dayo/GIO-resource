-- 基础信息
local base_info = {
	group_id = 220008007
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
	{ config_id = 363, gadget_id = 70220013, pos = { x = 539.509, y = -63.142, z = 195.681 }, rot = { x = 0.000, y = 275.794, z = 0.000 }, level = 1 },
	{ config_id = 364, gadget_id = 70220013, pos = { x = 539.018, y = -59.832, z = 186.448 }, rot = { x = 0.000, y = 8.749, z = 0.000 }, level = 1 }
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
		monsters = { },
		gadgets = { 363, 364 },
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