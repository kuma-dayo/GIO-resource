-- 基础信息
local base_info = {
	group_id = 111101225
}

-- DEFS_MISCS
local	defs = {

		--左右旋转的SelectOptionID
		selectID_horizon = 54,

		--上下俯仰的SelectOptionID
		selectID_vertical = 55,

		--定义左右旋转的步长,key为传音花configID，value为旋转角对应的GadgetState
--GadgetState不可重复
		horizon_steps = {
			[225001] = {0, 102, 103, 104},
			[225006] = {0, 102, 103, 104},
		},

		--定义上下俯仰的步长,key为传音花configID，value为旋转角对应的GadgetState
--GadgetState不可重复
		vertical_steps = {
			[225003] = {0, 302, 303, 307},
			[225008] = {0, 308},
			[225007] = {0, 302, 303, 307},
			[225009] = {0, 308},
		}
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
	-- 小花-水平转动
	[225001] = { config_id = 225001, gadget_id = 70310167, pos = { x = 2212.781, y = 204.633, z = -1087.381 }, rot = { x = 0.000, y = 48.683, z = 0.000 }, level = 1, worktop_config = { init_options = { 54 } } },
	-- 小花-固定
	[225002] = { config_id = 225002, gadget_id = 70310170, pos = { x = 2214.582, y = 204.563, z = -1090.038 }, rot = { x = 0.000, y = 73.525, z = 0.000 }, level = 1 },
	-- 小花-仰角转动0,35,75
	[225003] = { config_id = 225003, gadget_id = 70310167, pos = { x = 2209.704, y = 205.147, z = -1086.577 }, rot = { x = 0.000, y = 352.697, z = 0.000 }, level = 1, worktop_config = { init_options = { 55 } } },
	-- 大花-固定-WindA
	[225004] = { config_id = 225004, gadget_id = 70310169, pos = { x = 2213.401, y = 204.239, z = -1096.359 }, rot = { x = 0.000, y = 120.878, z = 0.000 }, level = 1 },
	[225005] = { config_id = 225005, gadget_id = 70310171, pos = { x = 2209.525, y = 204.668, z = -1092.266 }, rot = { x = 0.000, y = 78.216, z = 0.000 }, level = 1, state = GadgetState.GearStart, interact_id = 64 },
	-- 大花-水平转动
	[225006] = { config_id = 225006, gadget_id = 70310166, pos = { x = 2208.751, y = 205.063, z = -1096.993 }, rot = { x = 0.000, y = 179.584, z = 0.000 }, level = 1, worktop_config = { init_options = { 54 } } },
	-- 大花-仰角转动0,35,75
	[225007] = { config_id = 225007, gadget_id = 70310166, pos = { x = 2204.607, y = 205.472, z = -1095.672 }, rot = { x = 0.000, y = 205.472, z = 0.000 }, level = 1, worktop_config = { init_options = { 55 } } },
	-- 小花-仰角转动0,45
	[225008] = { config_id = 225008, gadget_id = 70310167, pos = { x = 2206.623, y = 205.147, z = -1087.545 }, rot = { x = 0.000, y = 326.263, z = 0.000 }, level = 1, worktop_config = { init_options = { 55 } } },
	-- 大花-仰角转动0,45
	[225009] = { config_id = 225009, gadget_id = 70310166, pos = { x = 2201.018, y = 205.472, z = -1093.558 }, rot = { x = 0.000, y = 238.978, z = 0.000 }, level = 1, worktop_config = { init_options = { 55 } } }
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
		gadgets = { 225001, 225002, 225003, 225004, 225005, 225006, 225007, 225008, 225009 },
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

require "V2_8/TransferFlower"