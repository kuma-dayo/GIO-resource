-- 基础信息
local base_info = {
	group_id = 133004930
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
	{ config_id = 930001, gadget_id = 70290003, pos = { x = 2249.013, y = 240.534, z = -835.528 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, isOneoff = true, area_id = 1 },
	{ config_id = 930002, gadget_id = 70500000, pos = { x = 2249.013, y = 240.637, z = -835.619 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, point_type = 3003, isOneoff = true, owner = 930001, area_id = 1 },
	{ config_id = 930003, gadget_id = 70500000, pos = { x = 2249.013, y = 240.637, z = -835.427 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, point_type = 3003, isOneoff = true, owner = 930001, area_id = 1 }
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
		gadgets = { 930001, 930002, 930003 },
		regions = { },
		triggers = { },
		rand_weight = 100,
		ban_refresh = true
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================