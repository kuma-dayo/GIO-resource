-- 基础信息
local base_info = {
	group_id = 177005172
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 172001, monster_id = 21010201, pos = { x = 362.322, y = 120.466, z = 955.049 }, rot = { x = 0.000, y = 309.553, z = 0.000 }, level = 36, drop_tag = "丘丘人", disableWander = true, pose_id = 9002, area_id = 210 },
	{ config_id = 172003, monster_id = 21010201, pos = { x = 358.300, y = 120.704, z = 952.346 }, rot = { x = 0.000, y = 117.157, z = 0.000 }, level = 36, drop_tag = "丘丘人", disableWander = true, pose_id = 9002, area_id = 210 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 172002, gadget_id = 70310006, pos = { x = 359.967, y = 120.593, z = 954.092 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, state = GadgetState.GearStart, area_id = 210 }
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
		monsters = { 172001, 172003 },
		gadgets = { 172002 },
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