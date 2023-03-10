-- 基础信息
local base_info = {
	group_id = 133302336
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
	{ config_id = 336001, gadget_id = 70300110, pos = { x = -322.182, y = 249.209, z = 2839.260 }, rot = { x = 0.000, y = 60.468, z = 0.000 }, level = 27, area_id = 24 },
	-- 防止卸载
	{ config_id = 336003, gadget_id = 70360286, pos = { x = -321.895, y = 248.539, z = 2839.548 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 24 },
	{ config_id = 336004, gadget_id = 71700432, pos = { x = -322.174, y = 248.539, z = 2839.307 }, rot = { x = 0.000, y = 18.808, z = 0.000 }, level = 27, area_id = 24 }
}

-- 区域
regions = {
	{ config_id = 336002, shape = RegionShape.SPHERE, radius = 50, pos = { x = -321.511, y = 248.539, z = 2839.564 }, area_id = 24 }
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
		gadgets = { 336003, 336004 },
		regions = { 336002 },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 336001 },
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