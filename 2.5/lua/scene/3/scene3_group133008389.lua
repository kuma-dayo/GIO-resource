-- 基础信息
local base_info = {
	group_id = 133008389
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
	{ config_id = 389001, gadget_id = 70210101, pos = { x = 1250.464, y = 383.105, z = -907.139 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 26, drop_tag = "搜刮点解谜破损蒙德", isOneoff = true, persistent = true, area_id = 10 },
	{ config_id = 389003, gadget_id = 70500000, pos = { x = 1250.751, y = 383.023, z = -907.440 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, point_type = 9208, isOneoff = true, persistent = true, area_id = 10 }
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
	end_suite = 2,
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
		gadgets = { 389001 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 389001, 389003 },
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