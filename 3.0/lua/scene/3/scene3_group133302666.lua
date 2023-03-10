-- 基础信息
local base_info = {
	group_id = 133302666
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 666001, monster_id = 20010101, pos = { x = -276.247, y = 168.478, z = 2399.394 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, drop_tag = "史莱姆", disableWander = true, pose_id = 201, area_id = 24 },
	{ config_id = 666002, monster_id = 20010101, pos = { x = -273.866, y = 168.448, z = 2402.479 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, drop_tag = "史莱姆", disableWander = true, pose_id = 201, area_id = 24 },
	{ config_id = 666003, monster_id = 28030404, pos = { x = -249.851, y = 179.044, z = 2392.099 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, drop_tag = "鸟类", area_id = 24 },
	{ config_id = 666004, monster_id = 28030404, pos = { x = -243.704, y = 178.352, z = 2396.174 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, drop_tag = "鸟类", area_id = 24 },
	{ config_id = 666005, monster_id = 28030404, pos = { x = -250.179, y = 179.838, z = 2385.101 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, drop_tag = "鸟类", area_id = 24 },
	{ config_id = 666006, monster_id = 28030404, pos = { x = -245.824, y = 180.350, z = 2383.473 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, drop_tag = "鸟类", area_id = 24 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 666007, gadget_id = 70210101, pos = { x = -294.021, y = 185.045, z = 2352.163 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 26, drop_tag = "搜刮点解谜通用须弥", isOneoff = true, persistent = true, area_id = 24 },
	{ config_id = 666008, gadget_id = 70210101, pos = { x = -338.974, y = 185.473, z = 2367.829 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 26, drop_tag = "搜刮点解谜通用须弥", isOneoff = true, persistent = true, area_id = 24 },
	{ config_id = 666009, gadget_id = 70210101, pos = { x = -360.778, y = 194.268, z = 2348.873 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 26, drop_tag = "搜刮点解谜通用须弥", isOneoff = true, persistent = true, area_id = 24 }
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
		monsters = { 666001, 666002, 666003, 666004, 666005, 666006 },
		gadgets = { 666007, 666008, 666009 },
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