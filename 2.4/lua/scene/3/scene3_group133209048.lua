--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 48005, monster_id = 28020505, pos = { x = -2597.278, y = 201.677, z = -3711.678 }, rot = { x = 0.000, y = 301.994, z = 0.000 }, level = 27, drop_tag = "走兽", pose_id = 13, area_id = 11 },
	{ config_id = 48020, monster_id = 28030102, pos = { x = -2423.207, y = 257.810, z = -3917.279 }, rot = { x = 0.000, y = 213.005, z = 0.000 }, level = 27, drop_tag = "鸟类", disableWander = true, pose_id = 2, area_id = 11 },
	{ config_id = 48021, monster_id = 28030102, pos = { x = -2417.493, y = 258.925, z = -3911.119 }, rot = { x = 0.000, y = 135.824, z = 0.000 }, level = 27, drop_tag = "鸟类", disableWander = true, pose_id = 2, area_id = 11 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 48001, gadget_id = 70210101, pos = { x = -2541.133, y = 201.212, z = -3655.028 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 26, drop_tag = "搜刮点解谜人文稻妻", isOneoff = true, persistent = true, area_id = 11 },
	{ config_id = 48002, gadget_id = 70210101, pos = { x = -2574.548, y = 202.235, z = -3667.493 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 26, drop_tag = "搜刮点解谜人文稻妻", area_id = 11 },
	{ config_id = 48007, gadget_id = 70210101, pos = { x = -2562.285, y = 202.490, z = -3755.934 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 26, drop_tag = "搜刮点解谜人文稻妻", isOneoff = true, persistent = true, area_id = 11 },
	{ config_id = 48008, gadget_id = 70210101, pos = { x = -2554.662, y = 202.322, z = -3746.845 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 26, drop_tag = "搜刮点解谜通用稻妻", area_id = 11 },
	{ config_id = 48009, gadget_id = 70210101, pos = { x = -2514.658, y = 201.069, z = -3766.200 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 26, drop_tag = "搜刮点解谜通用稻妻", area_id = 11 },
	{ config_id = 48010, gadget_id = 70210101, pos = { x = -2530.487, y = 202.186, z = -3784.191 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 26, drop_tag = "搜刮点解谜果蔬稻妻", area_id = 11 },
	{ config_id = 48011, gadget_id = 70210101, pos = { x = -2593.813, y = 211.810, z = -3780.594 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 26, drop_tag = "搜刮点解谜通用稻妻", area_id = 11 }
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
		monsters = { 48005, 48020, 48021 },
		gadgets = { 48001, 48002, 48007, 48008, 48009, 48010, 48011 },
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