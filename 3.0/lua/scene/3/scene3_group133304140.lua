-- 基础信息
local base_info = {
	group_id = 133304140
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
	{ config_id = 140001, gadget_id = 70330197, pos = { x = -1179.252, y = 211.975, z = 2293.525 }, rot = { x = 0.000, y = 227.406, z = 0.000 }, level = 30, area_id = 21 },
	{ config_id = 140002, gadget_id = 70330197, pos = { x = -1395.393, y = 204.822, z = 2510.809 }, rot = { x = 0.000, y = 43.089, z = 0.000 }, level = 30, area_id = 21 },
	{ config_id = 140003, gadget_id = 70330197, pos = { x = -1367.666, y = 193.446, z = 2474.456 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 21 },
	{ config_id = 140004, gadget_id = 70330197, pos = { x = -1188.531, y = 202.991, z = 2335.851 }, rot = { x = 0.000, y = 54.280, z = 0.000 }, level = 30, area_id = 21 },
	{ config_id = 140005, gadget_id = 70330197, pos = { x = -1197.642, y = 224.483, z = 2375.688 }, rot = { x = 0.000, y = 19.094, z = 0.000 }, level = 30, area_id = 21 }
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
		gadgets = { 140001, 140002, 140003, 140004, 140005 },
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