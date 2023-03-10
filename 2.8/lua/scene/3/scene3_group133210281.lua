-- 基础信息
local base_info = {
	group_id = 133210281
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
	{ config_id = 281001, gadget_id = 70330064, pos = { x = -3744.665, y = 131.541, z = -750.276 }, rot = { x = 354.920, y = 167.591, z = 352.984 }, level = 30, interact_id = 35, area_id = 17 }
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
		{ config_id = 281002, gadget_id = 70290101, pos = { x = -3759.460, y = 126.884, z = -781.859 }, rot = { x = 5.800, y = 127.990, z = 355.490 }, level = 30, state = GadgetState.GearStart, area_id = 17 },
		{ config_id = 281003, gadget_id = 70290101, pos = { x = -3819.411, y = 104.645, z = -822.145 }, rot = { x = 1.818, y = 3.778, z = 5.775 }, level = 30, state = GadgetState.GearStart, area_id = 17 }
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
		gadgets = { 281001 },
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