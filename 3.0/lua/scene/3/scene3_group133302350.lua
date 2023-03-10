-- 基础信息
local base_info = {
	group_id = 133302350
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
	{ config_id = 350001, gadget_id = 70210101, pos = { x = -244.746, y = 224.332, z = 3012.040 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 26, drop_tag = "搜刮点解谜人文须弥", isOneoff = true, persistent = true, area_id = 24 },
	{ config_id = 350002, gadget_id = 70210101, pos = { x = -198.803, y = 221.862, z = 3013.109 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 26, drop_tag = "搜刮点解谜通用须弥", isOneoff = true, persistent = true, area_id = 24 },
	{ config_id = 350003, gadget_id = 70210101, pos = { x = -221.365, y = 224.100, z = 3006.409 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 26, drop_tag = "搜刮点解谜通用须弥", isOneoff = true, persistent = true, area_id = 24 },
	{ config_id = 350004, gadget_id = 70210101, pos = { x = -146.454, y = 201.805, z = 2653.504 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 26, drop_tag = "搜刮点解谜人文须弥", isOneoff = true, persistent = true, area_id = 20 },
	{ config_id = 350005, gadget_id = 70210101, pos = { x = -119.205, y = 203.646, z = 2596.058 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 26, drop_tag = "搜刮点解谜人文须弥", isOneoff = true, persistent = true, area_id = 20 },
	{ config_id = 350006, gadget_id = 70210101, pos = { x = -144.719, y = 230.183, z = 2993.221 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 26, drop_tag = "搜刮点解谜通用须弥", isOneoff = true, persistent = true, area_id = 20 }
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
		gadgets = { 350001, 350002, 350003, 350004, 350005, 350006 },
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