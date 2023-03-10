-- 基础信息
local base_info = {
	group_id = 111101221
}

-- DEFS_MISCS
local defs = {
	--按想要的解谜顺序, 填子装置的config_id
	branch_gadgets = {221002, 221003, 221004}, 
	--主装置的config_id,可填一个或多个
	main_gadget = {221001}, 
	--重置倒计时秒数
	limit_time = {30}, 
	--这组解谜在哪个suit里
	puzzle_suit = 1
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
	{ config_id = 221001, gadget_id = 70220079, pos = { x = 2896.925, y = 278.933, z = -1464.541 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 221002, gadget_id = 70220080, pos = { x = 2892.958, y = 280.680, z = -1456.225 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 221003, gadget_id = 70220081, pos = { x = 2884.721, y = 280.026, z = -1457.785 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 221004, gadget_id = 70220082, pos = { x = 2889.201, y = 278.111, z = -1466.590 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 221005, gadget_id = 70590025, pos = { x = 2889.418, y = 281.268, z = -1451.414 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 221006, gadget_id = 70590025, pos = { x = 2891.328, y = 281.155, z = -1452.628 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 221007, gadget_id = 70590025, pos = { x = 2888.629, y = 281.511, z = -1449.657 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 }
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
		monsters = { },
		gadgets = { 221001, 221002, 221003, 221004 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = 可删除，测试用龙血矿石,
		monsters = { },
		gadgets = { 221005, 221006, 221007 },
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

require "V2_3/WinterCampDevice"