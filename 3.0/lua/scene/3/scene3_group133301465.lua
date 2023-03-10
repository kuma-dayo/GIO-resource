-- 基础信息
local base_info = {
	group_id = 133301465
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 465001, monster_id = 21011001, pos = { x = -160.734, y = 258.961, z = 3290.677 }, rot = { x = 0.000, y = 288.181, z = 0.000 }, level = 27, drop_tag = "远程丘丘人", disableWander = true, pose_id = 9003, area_id = 29 },
	{ config_id = 465002, monster_id = 21010301, pos = { x = -189.151, y = 253.167, z = 3309.349 }, rot = { x = 0.000, y = 188.922, z = 0.000 }, level = 27, drop_tag = "丘丘人", disableWander = true, pose_id = 9002, area_id = 29 },
	{ config_id = 465003, monster_id = 21010701, pos = { x = -171.935, y = 253.619, z = 3312.152 }, rot = { x = 0.000, y = 10.946, z = 0.000 }, level = 27, drop_tag = "丘丘人", area_id = 29 },
	{ config_id = 465010, monster_id = 21010101, pos = { x = -163.146, y = 259.416, z = 3329.104 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, drop_tag = "丘丘人", pose_id = 9016, area_id = 29 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 465004, gadget_id = 70310006, pos = { x = -184.584, y = 251.249, z = 3304.059 }, rot = { x = 0.000, y = 8.762, z = 0.000 }, level = 27, area_id = 29 },
	{ config_id = 465005, gadget_id = 70300086, pos = { x = -191.297, y = 252.291, z = 3301.308 }, rot = { x = 0.000, y = 0.000, z = 3.967 }, level = 27, area_id = 29 },
	{ config_id = 465006, gadget_id = 70300088, pos = { x = -168.966, y = 257.243, z = 3301.806 }, rot = { x = 353.660, y = 122.286, z = 3.251 }, level = 27, area_id = 29 },
	{ config_id = 465007, gadget_id = 70220026, pos = { x = -159.906, y = 258.791, z = 3292.173 }, rot = { x = 0.000, y = 354.182, z = 0.000 }, level = 27, area_id = 29 },
	{ config_id = 465008, gadget_id = 70220026, pos = { x = -184.049, y = 257.463, z = 3310.315 }, rot = { x = 0.000, y = 354.182, z = 0.000 }, level = 27, area_id = 29 },
	{ config_id = 465009, gadget_id = 70220026, pos = { x = -189.983, y = 253.164, z = 3310.203 }, rot = { x = 1.032, y = 5.791, z = 0.304 }, level = 27, area_id = 29 },
	{ config_id = 465011, gadget_id = 70217020, pos = { x = -159.967, y = 260.652, z = 3330.552 }, rot = { x = 0.000, y = 26.713, z = 0.000 }, level = 26, drop_tag = "摩拉石箱须弥", isOneoff = true, persistent = true, explore = { name = "chest", exp = 4 }, area_id = 29 },
	{ config_id = 465012, gadget_id = 70500000, pos = { x = -168.542, y = 256.618, z = 3345.120 }, rot = { x = 0.000, y = 226.817, z = 336.230 }, level = 27, point_type = 1001, area_id = 29 },
	{ config_id = 465013, gadget_id = 70500000, pos = { x = -168.199, y = 256.955, z = 3342.976 }, rot = { x = 340.341, y = 296.574, z = 16.959 }, level = 27, point_type = 1001, area_id = 29 },
	{ config_id = 465014, gadget_id = 70500000, pos = { x = -169.919, y = 255.802, z = 3343.244 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, point_type = 1002, area_id = 29 },
	{ config_id = 465015, gadget_id = 70300088, pos = { x = -177.795, y = 255.708, z = 3329.155 }, rot = { x = 2.857, y = 35.962, z = 6.527 }, level = 27, area_id = 29 },
	{ config_id = 465016, gadget_id = 70300088, pos = { x = -168.138, y = 254.207, z = 3390.977 }, rot = { x = 352.943, y = 141.709, z = 0.964 }, level = 27, area_id = 29 },
	{ config_id = 465017, gadget_id = 70500000, pos = { x = -184.975, y = 247.652, z = 3385.942 }, rot = { x = 0.000, y = 318.274, z = 0.000 }, level = 27, point_type = 1002, area_id = 29 },
	{ config_id = 465018, gadget_id = 70500000, pos = { x = -182.893, y = 248.295, z = 3383.774 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, point_type = 1002, area_id = 29 }
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
		monsters = { 465001, 465002, 465003, 465010 },
		gadgets = { 465004, 465005, 465006, 465007, 465008, 465009, 465011, 465012, 465013, 465014, 465015, 465016, 465017, 465018 },
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