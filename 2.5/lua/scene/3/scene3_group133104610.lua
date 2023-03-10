-- 基础信息
local base_info = {
	group_id = 133104610
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
	{ config_id = 610003, npc_id = 20083, pos = { x = 917.777, y = 213.520, z = 342.633 }, rot = { x = 0.000, y = 133.799, z = 0.000 }, area_id = 5 }
}

-- 装置
gadgets = {
	{ config_id = 610001, gadget_id = 70710153, pos = { x = 917.695, y = 212.780, z = 342.698 }, rot = { x = 0.000, y = 134.562, z = 0.000 }, level = 16, area_id = 5 }
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
		gadgets = { 610001 },
		regions = { },
		triggers = { },
		npcs = { 610003 },
		rand_weight = 100,
		ban_refresh = true
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100,
		ban_refresh = true
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================