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
	{ config_id = 1260, gadget_id = 70130001, pos = { x = 2203.686, y = 230.180, z = -770.503 }, rot = { x = 0.000, y = 160.000, z = 0.000 }, level = 2, area_id = 1 },
	{ config_id = 1263, gadget_id = 70130001, pos = { x = 2213.212, y = 220.000, z = -846.110 }, rot = { x = 0.000, y = 153.513, z = 0.000 }, level = 2, area_id = 1 },
	{ config_id = 1264, gadget_id = 70130001, pos = { x = 2322.050, y = 224.960, z = -848.630 }, rot = { x = 0.000, y = 182.359, z = 0.000 }, level = 2, area_id = 1 },
	{ config_id = 1265, gadget_id = 70130003, pos = { x = 2177.836, y = 233.592, z = -797.256 }, rot = { x = 0.000, y = 1.760, z = 0.000 }, level = 2, area_id = 1 },
	{ config_id = 1266, gadget_id = 70130003, pos = { x = 2172.156, y = 238.645, z = -876.336 }, rot = { x = 0.000, y = 9.680, z = 0.000 }, level = 2, area_id = 1 },
	{ config_id = 1267, gadget_id = 70130003, pos = { x = 2295.523, y = 234.012, z = -949.166 }, rot = { x = 0.000, y = 2.640, z = 0.000 }, level = 2, area_id = 1 },
	{ config_id = 1268, gadget_id = 70130003, pos = { x = 2361.886, y = 234.216, z = -860.885 }, rot = { x = 0.000, y = 6.600, z = 0.000 }, level = 2, area_id = 1 }
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
	rand_suite = true
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
		gadgets = { 1260, 1263, 1264, 1265, 1266, 1267, 1268 },
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