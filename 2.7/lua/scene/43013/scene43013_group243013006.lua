-- 基础信息
local base_info = {
	group_id = 243013006
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
		{ config_id = 6001, gadget_id = 70350215, pos = { x = 72.166, y = 40.049, z = -37.860 }, rot = { x = 0.000, y = 180.000, z = 0.000 }, level = 1 },
		{ config_id = 6002, gadget_id = 70350216, pos = { x = -3.620, y = 40.049, z = -69.258 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
		{ config_id = 6003, gadget_id = 70350218, pos = { x = -24.411, y = 40.029, z = -28.806 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 1 },
		{ config_id = 6004, gadget_id = 70350216, pos = { x = 11.289, y = 40.001, z = -35.640 }, rot = { x = 0.000, y = 180.000, z = 0.000 }, level = 1 },
		{ config_id = 6006, gadget_id = 70350218, pos = { x = -25.722, y = 40.003, z = -70.592 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 1 },
		{ config_id = 6007, gadget_id = 70350216, pos = { x = 100.702, y = 40.089, z = -52.620 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 1 },
		{ config_id = 6008, gadget_id = 70350215, pos = { x = -27.956, y = 39.999, z = -0.766 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 }
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