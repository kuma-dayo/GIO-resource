-- 基础信息
local base_info = {
	group_id = 133007047
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
	{ config_id = 47001, gadget_id = 70500000, pos = { x = 3044.372, y = 223.331, z = 594.624 }, rot = { x = 0.000, y = 214.414, z = 0.000 }, level = 1, point_type = 2004 },
	{ config_id = 47002, gadget_id = 70500000, pos = { x = 2927.130, y = 272.507, z = 530.224 }, rot = { x = 0.000, y = 217.575, z = 0.000 }, level = 28, point_type = 2001, area_id = 4 },
	{ config_id = 47003, gadget_id = 70500000, pos = { x = 2884.028, y = 224.619, z = 638.887 }, rot = { x = 0.000, y = 324.014, z = 0.000 }, level = 18, point_type = 2004, area_id = 4 },
	{ config_id = 47004, gadget_id = 70500000, pos = { x = 2935.563, y = 270.068, z = 610.116 }, rot = { x = 0.000, y = 207.001, z = 0.000 }, level = 1, point_type = 2007, area_id = 4 }
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
		gadgets = { 47001, 47002, 47003, 47004 },
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