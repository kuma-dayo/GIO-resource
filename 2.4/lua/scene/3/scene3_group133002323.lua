--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 323010, monster_id = 20010301, pos = { x = 1848.896, y = 201.324, z = -94.286 }, rot = { x = 0.000, y = 186.494, z = 0.000 }, level = 10, drop_tag = "史莱姆", area_id = 3 },
	{ config_id = 323011, monster_id = 20010301, pos = { x = 1850.830, y = 201.539, z = -85.582 }, rot = { x = 0.000, y = 186.494, z = 0.000 }, level = 10, drop_tag = "史莱姆", area_id = 5 },
	{ config_id = 323012, monster_id = 20010401, pos = { x = 1846.407, y = 201.202, z = -91.671 }, rot = { x = 0.000, y = 105.009, z = 0.000 }, level = 10, drop_tag = "大史莱姆", disableWander = true, area_id = 3 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 323005, gadget_id = 70220019, pos = { x = 1829.142, y = 190.865, z = -97.468 }, rot = { x = 0.000, y = 11.368, z = 0.000 }, level = 10, area_id = 3 },
	{ config_id = 323007, gadget_id = 70220005, pos = { x = 1835.227, y = 203.156, z = -99.082 }, rot = { x = 0.000, y = 66.256, z = 0.000 }, level = 10, area_id = 3 },
	{ config_id = 323008, gadget_id = 70220005, pos = { x = 1835.429, y = 203.178, z = -98.147 }, rot = { x = 0.000, y = 66.256, z = 0.000 }, level = 10, area_id = 3 },
	{ config_id = 323009, gadget_id = 70220005, pos = { x = 1835.387, y = 203.983, z = -98.635 }, rot = { x = 0.000, y = 66.256, z = 0.000 }, level = 10, area_id = 3 }
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
		monsters = { 323010, 323011, 323012 },
		gadgets = { 323005, 323007, 323008, 323009 },
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