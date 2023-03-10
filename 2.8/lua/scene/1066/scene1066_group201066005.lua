-- 基础信息
local base_info = {
	group_id = 201066005
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
	{ config_id = 5001, gadget_id = 70710676, pos = { x = -5.377, y = 1.006, z = 2.721 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, room = 1 },
	{ config_id = 5002, gadget_id = 70710453, pos = { x = -4.670, y = 1.006, z = 2.273 }, rot = { x = 0.000, y = 343.754, z = 0.000 }, level = 1, room = 1 },
	{ config_id = 5003, gadget_id = 70360001, pos = { x = -4.714, y = 1.006, z = 2.638 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, room = 1 },
	{ config_id = 5006, gadget_id = 70710456, pos = { x = -5.212, y = 1.006, z = 2.429 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, room = 1 },
	{ config_id = 5007, gadget_id = 70710452, pos = { x = -4.892, y = 1.006, z = 2.691 }, rot = { x = 0.000, y = 37.563, z = 0.000 }, level = 1, room = 1 },
	{ config_id = 5009, gadget_id = 70710454, pos = { x = -5.377, y = 1.006, z = 2.713 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, room = 1 },
	{ config_id = 5010, gadget_id = 70710454, pos = { x = -4.497, y = 1.002, z = 2.793 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, room = 1 },
	{ config_id = 5011, gadget_id = 70710496, pos = { x = -4.899, y = 1.006, z = 2.427 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, room = 1 },
	{ config_id = 5015, gadget_id = 70710676, pos = { x = -4.466, y = 1.006, z = 2.726 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, room = 1 }
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
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 5002, 5003, 5006, 5007, 5009, 5010 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { },
		gadgets = { 5001, 5011, 5015 },
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