-- 基础信息
local base_info = {
	group_id = 144001035
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 35001, monster_id = 21010101, pos = { x = 357.878, y = 120.697, z = 177.563 }, rot = { x = 19.716, y = 89.059, z = 358.052 }, level = 20, drop_tag = "丘丘人", disableWander = true, pose_id = 9003, area_id = 102 },
	{ config_id = 35002, monster_id = 21010101, pos = { x = 357.961, y = 120.637, z = 176.355 }, rot = { x = 8.102, y = 152.513, z = 15.158 }, level = 20, drop_tag = "丘丘人", disableWander = true, pose_id = 9002, area_id = 102 },
	{ config_id = 35003, monster_id = 21010201, pos = { x = 349.445, y = 123.294, z = 178.225 }, rot = { x = -0.003, y = 88.622, z = 359.884 }, level = 20, drop_tag = "丘丘人", area_id = 102 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
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
		monsters = { 35001, 35002, 35003 },
		gadgets = { },
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