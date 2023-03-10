-- 基础信息
local base_info = {
	group_id = 133220650
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
	{ config_id = 650006, npc_id = 30083, pos = { x = -3021.339, y = 217.236, z = -4342.256 }, rot = { x = 0.000, y = 18.748, z = 0.000 }, area_id = 11 }
}

-- 装置
gadgets = {
	{ config_id = 650004, gadget_id = 70290176, pos = { x = -3017.600, y = 217.264, z = -4342.680 }, rot = { x = 0.000, y = 255.000, z = 0.000 }, level = 1, area_id = 11 },
	{ config_id = 650005, gadget_id = 70290175, pos = { x = -3017.600, y = 217.264, z = -4342.680 }, rot = { x = 0.000, y = 255.000, z = 0.000 }, level = 1, persistent = true, area_id = 11 },
	{ config_id = 650008, gadget_id = 70290175, pos = { x = -3023.660, y = 217.234, z = -4346.110 }, rot = { x = 0.000, y = 75.000, z = 0.000 }, level = 1, persistent = true, area_id = 11 },
	{ config_id = 650009, gadget_id = 70290175, pos = { x = -3025.150, y = 217.226, z = -4339.930 }, rot = { x = 0.000, y = 75.000, z = 0.000 }, level = 1, persistent = true, area_id = 11 },
	{ config_id = 650010, gadget_id = 70290176, pos = { x = -3023.660, y = 217.234, z = -4346.110 }, rot = { x = 0.000, y = 75.000, z = 0.000 }, level = 1, area_id = 11 },
	{ config_id = 650011, gadget_id = 70290176, pos = { x = -3025.150, y = 217.226, z = -4339.930 }, rot = { x = 0.000, y = 75.000, z = 0.000 }, level = 1, area_id = 11 }
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

-- 废弃数据
garbages = {
	npcs = {
		{ config_id = 650007, npc_id = 30083, pos = { x = -3021.339, y = 217.236, z = -4342.256 }, rot = { x = 0.000, y = 18.748, z = 0.000 }, area_id = 11 }
	}
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
		gadgets = { 650004, 650010, 650011 },
		regions = { },
		triggers = { },
		npcs = { 650006 },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 650005, 650008, 650009 },
		regions = { },
		triggers = { },
		npcs = { 650006 },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================