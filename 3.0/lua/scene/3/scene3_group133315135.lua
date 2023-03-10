-- 基础信息
local base_info = {
	group_id = 133315135
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
	{ config_id = 135002, gadget_id = 70210101, pos = { x = 138.834, y = 152.336, z = 2905.274 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 26, drop_tag = "搜刮点解谜遗物须弥", isOneoff = true, persistent = true, area_id = 20 },
	{ config_id = 135005, gadget_id = 70210101, pos = { x = 122.678, y = 152.308, z = 2940.980 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 26, drop_tag = "搜刮点解谜通用须弥", isOneoff = true, persistent = true, area_id = 20 }
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
		{ config_id = 135001, gadget_id = 70217020, pos = { x = 120.979, y = 151.949, z = 2928.597 }, rot = { x = 0.000, y = 254.992, z = 0.000 }, level = 26, drop_tag = "摩拉石箱须弥", isOneoff = true, persistent = true, explore = { name = "chest", exp = 4 }, area_id = 20 }
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
		gadgets = { 135002, 135005 },
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