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
	{ config_id = 1985, gadget_id = 70310006, pos = { x = 2080.356, y = 235.949, z = -596.167 }, rot = { x = 0.000, y = 19.580, z = 0.000 }, level = 15, state = GadgetState.GearStart, area_id = 3 },
	{ config_id = 1986, gadget_id = 70220013, pos = { x = 2078.385, y = 236.798, z = -592.110 }, rot = { x = 6.652, y = 46.927, z = 355.291 }, level = 15, area_id = 3 },
	{ config_id = 1988, gadget_id = 70220013, pos = { x = 2080.509, y = 236.625, z = -591.520 }, rot = { x = 3.650, y = 18.815, z = 352.715 }, level = 15, area_id = 3 },
	{ config_id = 1989, gadget_id = 70220014, pos = { x = 2075.870, y = 235.897, z = -598.731 }, rot = { x = 0.000, y = 297.188, z = 0.000 }, level = 15, area_id = 3 },
	{ config_id = 1990, gadget_id = 70220014, pos = { x = 2075.924, y = 235.633, z = -600.327 }, rot = { x = 0.000, y = 297.188, z = 0.000 }, level = 15, area_id = 3 }
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
		gadgets = { 1985, 1986, 1988, 1989, 1990 },
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