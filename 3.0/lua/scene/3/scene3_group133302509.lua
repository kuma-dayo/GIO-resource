-- 基础信息
local base_info = {
	group_id = 133302509
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
	{ config_id = 509001, gadget_id = 70210101, pos = { x = -272.646, y = 289.867, z = 2138.051 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 26, drop_tag = "搜刮点解谜通用须弥", isOneoff = true, persistent = true, area_id = 24 },
	{ config_id = 509002, gadget_id = 70210101, pos = { x = -248.077, y = 291.534, z = 2153.393 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 26, drop_tag = "搜刮点解谜人文须弥", isOneoff = true, persistent = true, area_id = 24 },
	{ config_id = 509003, gadget_id = 70210101, pos = { x = -342.914, y = 261.769, z = 2216.608 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 26, drop_tag = "搜刮点解谜通用须弥", isOneoff = true, persistent = true, area_id = 24 },
	{ config_id = 509004, gadget_id = 70210101, pos = { x = -342.949, y = 262.428, z = 2208.154 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 26, drop_tag = "搜刮点解谜通用须弥", isOneoff = true, persistent = true, area_id = 24 },
	{ config_id = 509005, gadget_id = 70210101, pos = { x = -404.808, y = 284.803, z = 2169.465 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 26, drop_tag = "搜刮点解谜通用须弥", isOneoff = true, persistent = true, area_id = 24 },
	{ config_id = 509006, gadget_id = 70210101, pos = { x = -292.552, y = 277.510, z = 2163.991 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 26, drop_tag = "搜刮点解谜通用须弥", isOneoff = true, persistent = true, area_id = 24 }
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
		gadgets = { 509001, 509002, 509003, 509004, 509005, 509006 },
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