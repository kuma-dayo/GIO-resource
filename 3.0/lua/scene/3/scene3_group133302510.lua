-- 基础信息
local base_info = {
	group_id = 133302510
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
	{ config_id = 510001, gadget_id = 70500000, pos = { x = -197.615, y = 308.434, z = 2128.360 }, rot = { x = 0.000, y = 126.097, z = 0.000 }, level = 27, point_type = 4014, isOneoff = true, explore = { name = "gather", exp = 30 }, area_id = 20 },
	{ config_id = 510002, gadget_id = 70220103, pos = { x = -197.615, y = 307.395, z = 2128.360 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 20 }
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
		{ config_id = 510003, gadget_id = 70330220, pos = { x = -230.370, y = 292.423, z = 2148.948 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 24 },
		{ config_id = 510004, gadget_id = 70330220, pos = { x = -168.908, y = 306.590, z = 2128.003 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 20 },
		{ config_id = 510005, gadget_id = 70330220, pos = { x = -138.239, y = 306.955, z = 2129.357 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 20 }
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
		gadgets = { 510001, 510002 },
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