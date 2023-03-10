-- 基础信息
local base_info = {
	group_id = 199004127
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 127001, monster_id = 22010401, pos = { x = -277.240, y = 121.951, z = -663.191 }, rot = { x = 0.000, y = 233.178, z = 0.000 }, level = 20, drop_tag = "深渊法师", area_id = 400 },
	{ config_id = 127002, monster_id = 21011001, pos = { x = -280.202, y = 122.553, z = -667.184 }, rot = { x = 0.000, y = 3.972, z = 0.000 }, level = 20, drop_tag = "远程丘丘人", pose_id = 9003, area_id = 400 },
	{ config_id = 127003, monster_id = 21011001, pos = { x = -281.923, y = 122.831, z = -664.039 }, rot = { x = 0.000, y = 43.868, z = 0.000 }, level = 20, drop_tag = "远程丘丘人", pose_id = 9003, area_id = 400 },
	{ config_id = 127005, monster_id = 21010101, pos = { x = -284.093, y = 123.671, z = -665.245 }, rot = { x = 0.000, y = 166.651, z = 0.000 }, level = 20, drop_tag = "丘丘人", pose_id = 9016, area_id = 400 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 127004, gadget_id = 70310004, pos = { x = -279.043, y = 122.166, z = -664.012 }, rot = { x = 0.539, y = 359.938, z = 348.877 }, level = 1, area_id = 400 },
	{ config_id = 127006, gadget_id = 70210101, pos = { x = -283.253, y = 123.493, z = -665.613 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 16, drop_tag = "搜刮点解谜遗物群岛", persistent = true, area_id = 400 }
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
		monsters = { 127001, 127002, 127003, 127005 },
		gadgets = { 127004, 127006 },
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