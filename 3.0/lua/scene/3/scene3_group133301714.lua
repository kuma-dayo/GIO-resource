-- 基础信息
local base_info = {
	group_id = 133301714
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
	{ config_id = 714001, gadget_id = 70210101, pos = { x = -856.166, y = 37.223, z = 3254.060 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 26, drop_tag = "搜刮点解谜遗物须弥", isOneoff = true, persistent = true, area_id = 23 },
	{ config_id = 714002, gadget_id = 70210101, pos = { x = -848.340, y = 27.764, z = 3216.265 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 26, drop_tag = "搜刮点解谜遗物须弥", isOneoff = true, persistent = true, area_id = 23 },
	{ config_id = 714003, gadget_id = 70210101, pos = { x = -870.967, y = 26.232, z = 3193.635 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 26, drop_tag = "搜刮点解谜遗物须弥", isOneoff = true, persistent = true, area_id = 23 },
	{ config_id = 714004, gadget_id = 70210101, pos = { x = -920.475, y = 125.740, z = 3164.304 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 26, drop_tag = "搜刮点解谜遗物须弥", isOneoff = true, persistent = true, area_id = 23 },
	{ config_id = 714005, gadget_id = 70210101, pos = { x = -912.860, y = 68.654, z = 3219.117 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 26, drop_tag = "搜刮点解谜遗物须弥", isOneoff = true, persistent = true, area_id = 23 },
	{ config_id = 714006, gadget_id = 70210101, pos = { x = -845.101, y = 45.274, z = 3214.414 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 26, drop_tag = "搜刮点解谜遗物须弥", isOneoff = true, persistent = true, area_id = 23 },
	{ config_id = 714007, gadget_id = 70210101, pos = { x = -868.464, y = 34.913, z = 3234.819 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 26, drop_tag = "搜刮点解谜遗物须弥", isOneoff = true, persistent = true, area_id = 23 },
	{ config_id = 714008, gadget_id = 70210101, pos = { x = -825.056, y = 151.310, z = 3193.765 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 26, drop_tag = "搜刮点解谜遗物须弥", isOneoff = true, persistent = true, area_id = 23 }
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
		gadgets = { 714001, 714002, 714003, 714004, 714005, 714006, 714007, 714008 },
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