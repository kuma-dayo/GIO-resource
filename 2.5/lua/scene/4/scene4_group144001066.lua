-- 基础信息
local base_info = {
	group_id = 144001066
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 66001, monster_id = 21010501, pos = { x = 764.614, y = 192.694, z = 277.553 }, rot = { x = 0.000, y = 187.953, z = 0.000 }, level = 20, drop_tag = "远程丘丘人", pose_id = 32, area_id = 102 },
	{ config_id = 66003, monster_id = 21010601, pos = { x = 759.991, y = 192.574, z = 296.691 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, drop_tag = "丘丘人", area_id = 102 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 66006, gadget_id = 70220011, pos = { x = 760.988, y = 192.522, z = 298.273 }, rot = { x = 0.000, y = 280.246, z = 0.000 }, level = 1, area_id = 102 }
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
		monsters = { 66001, 66003 },
		gadgets = { 66006 },
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