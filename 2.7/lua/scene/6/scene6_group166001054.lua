-- 基础信息
local base_info = {
	group_id = 166001054
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
	{ config_id = 54005, npc_id = 2158, pos = { x = 1090.573, y = 962.640, z = 679.213 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, area_id = 300 },
	{ config_id = 54007, npc_id = 2158, pos = { x = 180.870, y = 458.598, z = 593.142 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, area_id = 300 }
}

-- 装置
gadgets = {
	{ config_id = 54003, gadget_id = 70360001, pos = { x = 450.780, y = 378.237, z = 523.272 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, area_id = 300 },
	{ config_id = 54004, gadget_id = 70130004, pos = { x = 1090.579, y = 962.276, z = 679.311 }, rot = { x = 0.000, y = 295.193, z = 0.000 }, level = 32, area_id = 300 },
	{ config_id = 54006, gadget_id = 70130004, pos = { x = 180.749, y = 457.367, z = 593.036 }, rot = { x = 0.000, y = 258.849, z = 0.000 }, level = 36, area_id = 300 }
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
		{ config_id = 54001, npc_id = 2617, pos = { x = 1088.537, y = 961.417, z = 679.624 }, rot = { x = 0.000, y = 235.011, z = 0.000 }, area_id = 300 },
		{ config_id = 54002, npc_id = 2617, pos = { x = 182.871, y = 457.422, z = 592.631 }, rot = { x = 0.000, y = 18.773, z = 0.000 }, area_id = 300 }
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
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = 上层营地,
		monsters = { },
		gadgets = { 54003, 54004 },
		regions = { },
		triggers = { },
		npcs = { 54005 },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = 下层营地,
		monsters = { },
		gadgets = { 54006 },
		regions = { },
		triggers = { },
		npcs = { 54007 },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================