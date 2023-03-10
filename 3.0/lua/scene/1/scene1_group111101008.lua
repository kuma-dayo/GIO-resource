-- 基础信息
local base_info = {
	group_id = 111101008
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
	{ config_id = 8001, gadget_id = 70330243, pos = { x = 2381.025, y = 294.848, z = -1612.835 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 8002, gadget_id = 70330239, pos = { x = 2376.622, y = 294.612, z = -1613.496 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 8003, gadget_id = 70330237, pos = { x = 2371.262, y = 294.136, z = -1614.157 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 8004, gadget_id = 70330236, pos = { x = 2365.235, y = 294.212, z = -1615.333 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 8005, gadget_id = 70330235, pos = { x = 2357.217, y = 293.207, z = -1618.115 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 8006, gadget_id = 70330234, pos = { x = 2358.801, y = 290.157, z = -1608.205 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 8007, gadget_id = 70310205, pos = { x = 2369.682, y = 292.099, z = -1605.781 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 }
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
		gadgets = { 8001, 8002, 8003, 8004, 8005, 8006, 8007 },
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