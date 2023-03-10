-- 基础信息
local base_info = {
	group_id = 133213519
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
	{ config_id = 519001, gadget_id = 70500000, pos = { x = -3904.536, y = 272.082, z = -3171.191 }, rot = { x = 339.432, y = 274.270, z = 4.026 }, level = 1, point_type = 1005, persistent = true, area_id = 12 },
	{ config_id = 519002, gadget_id = 70500000, pos = { x = -3902.549, y = 270.855, z = -3174.064 }, rot = { x = 0.000, y = 309.294, z = 333.586 }, level = 1, point_type = 1008, persistent = true, area_id = 12 },
	{ config_id = 519003, gadget_id = 70500000, pos = { x = -3909.166, y = 274.575, z = -3163.238 }, rot = { x = 0.000, y = 254.873, z = 0.000 }, level = 1, point_type = 1005, persistent = true, area_id = 12 },
	{ config_id = 519004, gadget_id = 70360001, pos = { x = -3902.283, y = 271.287, z = -3173.900 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, persistent = true, area_id = 12 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
}

-- 变量
variables = {
	{ config_id = 1, name = "GroupCompletion", value = 0, no_refresh = false }
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
		-- description = ,
		monsters = { },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = 在suite3内添加魔晶矿,
		monsters = { },
		gadgets = { 519001, 519002, 519003, 519004 },
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

require "V2_0/OreBlossomGroup"