-- 基础信息
local base_info = {
	group_id = 133302410
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 410003, monster_id = 20011201, pos = { x = -571.543, y = 346.088, z = 2169.639 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, drop_tag = "史莱姆", disableWander = true, area_id = 24 },
	{ config_id = 410004, monster_id = 26090701, pos = { x = -576.025, y = 346.119, z = 2173.006 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, drop_tag = "蕈兽", pose_id = 104, area_id = 24 },
	{ config_id = 410005, monster_id = 26090701, pos = { x = -577.030, y = 345.941, z = 2168.878 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, drop_tag = "蕈兽", pose_id = 104, area_id = 24 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 410001, gadget_id = 70290009, pos = { x = -573.672, y = 346.094, z = 2170.310 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 24 },
	{ config_id = 410002, gadget_id = 70500000, pos = { x = -573.672, y = 346.094, z = 2170.310 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, point_type = 3005, owner = 410001, area_id = 24 }
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
		monsters = { 410003, 410004, 410005 },
		gadgets = { 410001, 410002 },
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