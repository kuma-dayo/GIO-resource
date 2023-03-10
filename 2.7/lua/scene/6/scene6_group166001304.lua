-- 基础信息
local base_info = {
	group_id = 166001304
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
	{ config_id = 304001, gadget_id = 70290309, pos = { x = 1082.231, y = 920.774, z = 566.535 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, area_id = 300 },
	{ config_id = 304002, gadget_id = 70290309, pos = { x = 957.058, y = 716.569, z = 252.125 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, area_id = 300 },
	{ config_id = 304003, gadget_id = 70290309, pos = { x = 973.806, y = 732.039, z = 209.259 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, area_id = 300 },
	{ config_id = 304005, gadget_id = 70290309, pos = { x = 1155.719, y = 740.983, z = 408.446 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, area_id = 300 },
	{ config_id = 304006, gadget_id = 70290309, pos = { x = 823.162, y = 714.579, z = 298.401 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, area_id = 300 },
	{ config_id = 304007, gadget_id = 70290309, pos = { x = 703.265, y = 734.196, z = 224.617 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, area_id = 300 },
	{ config_id = 304008, gadget_id = 70290309, pos = { x = 840.939, y = 745.504, z = 184.597 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, area_id = 300 },
	{ config_id = 304009, gadget_id = 70290309, pos = { x = 886.940, y = 723.293, z = 302.568 }, rot = { x = 322.479, y = 356.384, z = 10.620 }, level = 36, area_id = 300 }
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
		gadgets = { 304001, 304002, 304003, 304005, 304006, 304007, 304008, 304009 },
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