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

-- 点位
points = {
	{ config_id = 21001, pos = { x = 177.806, y = 0.096, z = 166.910 }, rot = { x = 0.000, y = 0.000, z = 0.000 } },
	{ config_id = 21002, pos = { x = 143.099, y = 0.084, z = 151.062 }, rot = { x = 0.000, y = 0.000, z = 0.000 } },
	{ config_id = 21011, pos = { x = 208.197, y = 0.082, z = 156.398 }, rot = { x = 0.000, y = 0.000, z = 0.000 } },
	{ config_id = 21012, pos = { x = 237.012, y = 1.130, z = 199.073 }, rot = { x = 0.000, y = 0.000, z = 0.000 } },
	{ config_id = 21013, pos = { x = 235.357, y = 0.150, z = 241.233 }, rot = { x = 0.000, y = 0.000, z = 0.000 } },
	{ config_id = 21014, pos = { x = 244.515, y = 0.150, z = 244.791 }, rot = { x = 0.000, y = 0.000, z = 0.000 } },
	{ config_id = 21015, pos = { x = 242.852, y = 0.150, z = 235.385 }, rot = { x = 0.000, y = 0.000, z = 0.000 } },
	{ config_id = 21016, pos = { x = 287.686, y = 0.082, z = 236.807 }, rot = { x = 0.000, y = 0.000, z = 0.000 } },
	{ config_id = 21017, pos = { x = 320.024, y = 0.090, z = 245.141 }, rot = { x = 0.000, y = 0.000, z = 0.000 } },
	{ config_id = 21018, pos = { x = 314.945, y = 0.090, z = 238.290 }, rot = { x = 0.000, y = 0.000, z = 0.000 } },
	{ config_id = 21019, pos = { x = 325.198, y = 0.090, z = 237.160 }, rot = { x = 0.000, y = 0.000, z = 0.000 } },
	{ config_id = 21020, pos = { x = 92.339, y = -1.956, z = 50.127 }, rot = { x = 0.000, y = 0.000, z = 0.000 } },
	{ config_id = 21021, pos = { x = 79.879, y = 0.054, z = 84.957 }, rot = { x = 0.000, y = 0.000, z = 0.000 } },
	{ config_id = 21022, pos = { x = 75.418, y = 0.050, z = 76.826 }, rot = { x = 0.000, y = 0.000, z = 0.000 } },
	{ config_id = 21023, pos = { x = 84.905, y = 0.050, z = 76.795 }, rot = { x = 0.000, y = 0.000, z = 0.000 } },
	{ config_id = 21024, pos = { x = 128.568, y = 0.082, z = 76.574 }, rot = { x = 0.000, y = 0.000, z = 0.000 } },
	{ config_id = 21025, pos = { x = 156.333, y = -1.950, z = 36.317 }, rot = { x = 0.000, y = 0.000, z = 0.000 } },
	{ config_id = 21026, pos = { x = 165.518, y = 0.069, z = 1.229 }, rot = { x = 0.000, y = 0.000, z = 0.000 } },
	{ config_id = 21027, pos = { x = 158.458, y = 0.053, z = 5.238 }, rot = { x = 0.000, y = 0.000, z = 0.000 } },
	{ config_id = 21028, pos = { x = 157.496, y = 0.050, z = -5.023 }, rot = { x = 0.000, y = 0.000, z = 0.000 } },
	{ config_id = 21029, pos = { x = 242.598, y = 1.130, z = 128.755 }, rot = { x = 0.000, y = 0.000, z = 0.000 } },
	{ config_id = 21030, pos = { x = 196.779, y = 0.082, z = 158.591 }, rot = { x = 0.000, y = 0.000, z = 0.000 } },
	{ config_id = 21031, pos = { x = 282.270, y = -1.957, z = 156.548 }, rot = { x = 0.000, y = 0.000, z = 0.000 } },
	{ config_id = 21032, pos = { x = 240.058, y = 0.050, z = 165.218 }, rot = { x = 0.000, y = 0.000, z = 0.000 } },
	{ config_id = 21033, pos = { x = 235.207, y = 0.084, z = 158.331 }, rot = { x = 0.000, y = 0.000, z = 0.000 } },
	{ config_id = 21034, pos = { x = 244.540, y = 0.053, z = 157.970 }, rot = { x = 0.000, y = 0.000, z = 0.000 } }
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