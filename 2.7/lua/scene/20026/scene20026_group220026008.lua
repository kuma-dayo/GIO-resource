-- 基础信息
local base_info = {
	group_id = 220026008
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 16, monster_id = 21010501, pos = { x = -68.969, y = -32.418, z = 83.712 }, rot = { x = 0.000, y = 232.660, z = 0.000 }, level = 1, disableWander = true, pose_id = 32 },
	{ config_id = 17, monster_id = 21011001, pos = { x = -68.981, y = -32.428, z = 94.665 }, rot = { x = 0.000, y = 225.043, z = 0.000 }, level = 1, pose_id = 32 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 86, gadget_id = 70220014, pos = { x = -69.358, y = -32.532, z = 85.322 }, rot = { x = 0.000, y = 354.944, z = 0.000 }, level = 1 },
	{ config_id = 87, gadget_id = 70220013, pos = { x = -67.323, y = -32.532, z = 85.532 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 }
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
		monsters = { 16, 17 },
		gadgets = { 86, 87 },
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