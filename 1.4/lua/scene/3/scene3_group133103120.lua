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
	{ config_id = 120001, gadget_id = 70210101, pos = { x = 537.266, y = 186.625, z = 1054.733 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 21, drop_tag = "搜刮点解谜人文璃月", area_id = 6 },
	{ config_id = 120002, gadget_id = 70210101, pos = { x = 500.394, y = 175.084, z = 1087.616 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 21, drop_tag = "搜刮点解谜破损璃月", area_id = 6 },
	{ config_id = 120003, gadget_id = 70210101, pos = { x = 511.301, y = 173.073, z = 1124.594 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 21, drop_tag = "搜刮点解谜破损璃月", area_id = 6 },
	{ config_id = 120004, gadget_id = 70210101, pos = { x = 562.513, y = 183.549, z = 1146.537 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 21, drop_tag = "搜刮点解谜人文璃月", area_id = 6 },
	{ config_id = 120005, gadget_id = 70210101, pos = { x = 569.999, y = 183.862, z = 1170.283 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 21, drop_tag = "搜刮点解谜人文璃月", area_id = 6 },
	{ config_id = 120006, gadget_id = 70210101, pos = { x = 558.267, y = 182.791, z = 1159.502 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 21, drop_tag = "搜刮点解谜人文璃月", area_id = 6 },
	{ config_id = 120007, gadget_id = 70210101, pos = { x = 717.490, y = 185.854, z = 1085.142 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 21, drop_tag = "搜刮点解谜人文璃月", area_id = 6 },
	{ config_id = 120008, gadget_id = 70210101, pos = { x = 703.732, y = 186.099, z = 1079.162 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 21, drop_tag = "搜刮点解谜遗物璃月", area_id = 6 },
	{ config_id = 120009, gadget_id = 70210101, pos = { x = 649.347, y = 197.324, z = 1256.951 }, rot = { x = 0.000, y = 174.235, z = 0.000 }, level = 21, drop_tag = "搜刮点解谜果蔬璃月", area_id = 6 },
	{ config_id = 120011, gadget_id = 70210101, pos = { x = 113.547, y = 223.624, z = 1121.509 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 21, drop_tag = "搜刮点解谜破损璃月", area_id = 6 }
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
		gadgets = { 120001, 120002, 120003, 120004, 120005, 120006, 120007, 120008, 120009, 120011 },
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