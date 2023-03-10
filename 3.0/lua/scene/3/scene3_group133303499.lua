-- 基础信息
local base_info = {
	group_id = 133303499
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 499001, monster_id = 21010101, pos = { x = -1516.957, y = 177.064, z = 3203.183 }, rot = { x = 0.000, y = 144.785, z = 0.000 }, level = 30, drop_tag = "丘丘人", pose_id = 9002, area_id = 23 },
	{ config_id = 499003, monster_id = 21020101, pos = { x = -1517.775, y = 177.530, z = 3190.326 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, drop_tag = "丘丘暴徒", pose_id = 401, area_id = 23 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 499002, gadget_id = 70300108, pos = { x = -1517.673, y = 177.213, z = 3203.005 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 23 },
	{ config_id = 499004, gadget_id = 70220013, pos = { x = -1516.696, y = 177.970, z = 3189.124 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 23 },
	{ config_id = 499005, gadget_id = 70217020, pos = { x = -1538.204, y = 201.707, z = 3179.190 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 26, drop_tag = "摩拉石箱须弥", isOneoff = true, persistent = true, explore = { name = "chest", exp = 4 }, area_id = 23 }
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
		monsters = { 499001, 499003 },
		gadgets = { 499002, 499004, 499005 },
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