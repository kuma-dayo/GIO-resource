--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 30001, monster_id = 21010501, pos = { x = -718.499, y = 180.580, z = 9.723 }, rot = { x = 0.000, y = 146.419, z = 0.000 }, level = 1, drop_tag = "远程丘丘人", disableWander = true, pose_id = 9010, area_id = 103 },
	{ config_id = 30002, monster_id = 21011001, pos = { x = -732.889, y = 174.816, z = -15.911 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_tag = "远程丘丘人", disableWander = true, pose_id = 9002, area_id = 103 },
	{ config_id = 30003, monster_id = 21010901, pos = { x = -710.222, y = 175.410, z = 11.671 }, rot = { x = 0.000, y = 98.067, z = 0.000 }, level = 1, drop_tag = "远程丘丘人", disableWander = true, pose_id = 9003, area_id = 103 },
	{ config_id = 30004, monster_id = 21010201, pos = { x = -704.528, y = 167.244, z = -15.132 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_tag = "丘丘人", disableWander = true, pose_id = 9012, area_id = 103 },
	{ config_id = 30005, monster_id = 21010201, pos = { x = -701.668, y = 167.221, z = -11.951 }, rot = { x = 0.000, y = 238.174, z = 0.000 }, level = 1, drop_tag = "丘丘人", disableWander = true, pose_id = 9012, area_id = 103 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 30006, gadget_id = 70220049, pos = { x = -741.597, y = 168.537, z = -1.100 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 103 },
	{ config_id = 30007, gadget_id = 70220013, pos = { x = -735.612, y = 174.852, z = -12.592 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 103 },
	{ config_id = 30008, gadget_id = 70220014, pos = { x = -700.416, y = 167.253, z = -7.546 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 103 },
	{ config_id = 30012, gadget_id = 70220026, pos = { x = -743.075, y = 168.540, z = 1.833 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 103 },
	{ config_id = 30013, gadget_id = 70300085, pos = { x = -724.310, y = 180.504, z = 7.913 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 103 }
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
		monsters = { 30001, 30002, 30003, 30004, 30005 },
		gadgets = { 30006, 30007, 30008, 30012, 30013 },
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