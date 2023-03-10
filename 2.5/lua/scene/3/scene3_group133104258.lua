-- 基础信息
local base_info = {
	group_id = 133104258
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
	{ config_id = 258001, gadget_id = 70210101, pos = { x = 914.341, y = 209.422, z = 315.160 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 16, drop_tag = "搜刮点解谜人文璃月", isOneoff = true, persistent = true, area_id = 5 },
	{ config_id = 258002, gadget_id = 70210101, pos = { x = 911.917, y = 209.199, z = 314.127 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 16, drop_tag = "搜刮点解谜果蔬璃月", isOneoff = true, persistent = true, area_id = 5 }
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
	end_suite = 2,
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
		gadgets = { 258001, 258002 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = suite_2,
		monsters = { },
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