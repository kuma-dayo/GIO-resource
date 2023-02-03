-- 基础信息
local base_info = {
	group_id = 133310584
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
	{ config_id = 584001, gadget_id = 70330254, pos = { x = -2837.406, y = 298.809, z = 4775.853 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, area_id = 28 },
	{ config_id = 584002, gadget_id = 70330254, pos = { x = -2893.503, y = 297.354, z = 4736.273 }, rot = { x = 0.000, y = 161.845, z = 0.000 }, level = 32, area_id = 28 },
	{ config_id = 584003, gadget_id = 70330254, pos = { x = -2762.793, y = 294.093, z = 4812.950 }, rot = { x = 0.000, y = 227.344, z = 0.000 }, level = 32, area_id = 28 }
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
		gadgets = { 584001, 584002, 584003 },
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