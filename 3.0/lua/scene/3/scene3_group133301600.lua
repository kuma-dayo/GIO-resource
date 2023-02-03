-- 基础信息
local base_info = {
	group_id = 133301600
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
	{ config_id = 600006, gadget_id = 70211150, pos = { x = -792.147, y = 13.950, z = 3189.021 }, rot = { x = 357.765, y = 283.843, z = 359.447 }, level = 26, chest_drop_id = 21910055, drop_count = 1, isOneoff = true, persistent = true, explore = { name = "chest", exp = 10 }, area_id = 23 },
	{ config_id = 600008, gadget_id = 70211150, pos = { x = -631.340, y = -40.777, z = 3742.236 }, rot = { x = 0.784, y = 19.849, z = 357.835 }, level = 26, chest_drop_id = 21910057, drop_count = 1, isOneoff = true, persistent = true, explore = { name = "chest", exp = 10 }, area_id = 25 },
	{ config_id = 600009, gadget_id = 70211150, pos = { x = -530.518, y = -42.873, z = 3825.486 }, rot = { x = 357.700, y = 272.572, z = 359.895 }, level = 26, chest_drop_id = 21910058, drop_count = 1, isOneoff = true, persistent = true, explore = { name = "chest", exp = 10 }, area_id = 25 }
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

-- 废弃数据
garbages = {
	gadgets = {
		{ config_id = 600002, gadget_id = 70211150, pos = { x = -354.349, y = 216.575, z = 3368.124 }, rot = { x = 0.467, y = 168.239, z = 2.254 }, level = 26, chest_drop_id = 21910051, drop_count = 1, isOneoff = true, persistent = true, explore = { name = "chest", exp = 10 }, area_id = 22 }
	}
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
		gadgets = { 600006, 600008, 600009 },
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