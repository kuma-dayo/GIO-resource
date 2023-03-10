-- 基础信息
local base_info = {
	group_id = 133213524
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
	{ config_id = 524001, gadget_id = 70500000, pos = { x = -3313.627, y = 216.678, z = -3432.175 }, rot = { x = 0.000, y = 277.439, z = 0.000 }, level = 1, point_type = 1008, persistent = true, area_id = 12 },
	{ config_id = 524002, gadget_id = 70500000, pos = { x = -3310.547, y = 215.026, z = -3417.903 }, rot = { x = 0.000, y = 222.784, z = 0.000 }, level = 1, point_type = 1008, persistent = true, area_id = 12 },
	{ config_id = 524003, gadget_id = 70360001, pos = { x = -3313.651, y = 217.164, z = -3432.338 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, persistent = true, area_id = 12 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
}

-- 变量
variables = {
	{ name = "GroupCompletion", value = 0, no_refresh = false }
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
		gadgets = { 524001, 524002, 524003 },
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