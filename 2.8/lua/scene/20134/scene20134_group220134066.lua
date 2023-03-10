-- 基础信息
local base_info = {
	group_id = 220134066
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
	{ config_id = 66001, gadget_id = 70211001, pos = { x = 345.778, y = 666.096, z = -1475.830 }, rot = { x = 0.000, y = 206.794, z = 0.000 }, level = 16, drop_tag = "战斗低级群岛", isOneoff = true, persistent = true },
	{ config_id = 66002, gadget_id = 70211001, pos = { x = 356.994, y = 651.141, z = -1507.864 }, rot = { x = 0.000, y = 294.805, z = 0.000 }, level = 16, drop_tag = "战斗低级群岛", isOneoff = true, persistent = true },
	{ config_id = 66003, gadget_id = 70211001, pos = { x = 418.023, y = 637.449, z = -1534.072 }, rot = { x = 0.000, y = 294.805, z = 0.000 }, level = 16, drop_tag = "战斗低级群岛", isOneoff = true, persistent = true }
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
		gadgets = { 66001, 66002, 66003 },
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