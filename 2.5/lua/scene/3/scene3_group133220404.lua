-- 基础信息
local base_info = {
	group_id = 133220404
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 404001, monster_id = 20011101, pos = { x = -2837.490, y = 200.000, z = -4464.348 }, rot = { x = 0.000, y = 208.338, z = 0.000 }, level = 27, drop_tag = "大史莱姆", area_id = 11 },
	{ config_id = 404002, monster_id = 20011101, pos = { x = -2837.675, y = 200.000, z = -4457.540 }, rot = { x = 0.000, y = 219.650, z = 0.000 }, level = 27, drop_tag = "大史莱姆", area_id = 11 },
	{ config_id = 404003, monster_id = 20011101, pos = { x = -2844.810, y = 200.000, z = -4462.979 }, rot = { x = 0.000, y = 285.239, z = 0.000 }, level = 27, drop_tag = "大史莱姆", area_id = 11 }
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
		monsters = { 404001, 404002, 404003 },
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