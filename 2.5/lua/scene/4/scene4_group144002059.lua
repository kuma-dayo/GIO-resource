-- 基础信息
local base_info = {
	group_id = 144002059
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
	{ config_id = 59002, gadget_id = 70710449, pos = { x = 134.317, y = 121.217, z = -166.241 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 101 }
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
	monsters = {
		{ config_id = 59001, monster_id = 25090101, pos = { x = 134.317, y = 121.217, z = -166.241 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, affix = { 5023 }, pose_id = 1001, area_id = 101 }
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
		gadgets = { 59002 },
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