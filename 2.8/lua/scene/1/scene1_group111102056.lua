-- 基础信息
local base_info = {
	group_id = 111102056
}

-- Trigger变量
local defs = {
	father_challenge_id = 2010034,
	worktop_id = 61001,
	elite_interval = 10,
	challenge_time = 600,
	change_stage_interval = 30,
	airwall = 56001,
	time_challenge_id = 2010036,
	kill_monster_challenge_id = 2010035
}

-- DEFS_MISCS
local monster_tide_config = 
{
    [1] = {pool_id = 21002,total_num = 100000, min = 5,max = 5},
    [2] = {pool_id = 21002,total_num = 100000, min = 5,max = 5},
}

local elite_list = 
{
    [1] = {56026,56027},
    [2] = {56028,56029},
    [3] = {56030,56031},
    [4] = {56032,56033,56034,56035},
    [5] = {56036},
    [6] = {56037}
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 56026, monster_id = 21020201, pos = { x = 1602.538, y = 286.236, z = -1114.153 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_tag = "丘丘暴徒" },
	{ config_id = 56027, monster_id = 21020201, pos = { x = 1605.936, y = 286.236, z = -1113.753 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_tag = "丘丘暴徒" },
	{ config_id = 56028, monster_id = 21020201, pos = { x = 1609.620, y = 286.354, z = -1114.091 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_tag = "丘丘暴徒" },
	{ config_id = 56029, monster_id = 21020301, pos = { x = 1602.914, y = 286.205, z = -1121.162 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_tag = "丘丘暴徒" },
	{ config_id = 56030, monster_id = 21020301, pos = { x = 1606.018, y = 286.247, z = -1121.318 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_tag = "丘丘暴徒" },
	{ config_id = 56031, monster_id = 21020301, pos = { x = 1609.347, y = 286.330, z = -1120.868 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_tag = "丘丘暴徒" },
	{ config_id = 56032, monster_id = 20010601, pos = { x = 1600.839, y = 286.258, z = -1114.961 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_tag = "大史莱姆" },
	{ config_id = 56033, monster_id = 20010601, pos = { x = 1600.765, y = 286.236, z = -1117.843 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_tag = "大史莱姆" },
	{ config_id = 56034, monster_id = 20010901, pos = { x = 1610.215, y = 286.314, z = -1115.630 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_tag = "大史莱姆" },
	{ config_id = 56035, monster_id = 20010901, pos = { x = 1609.964, y = 286.300, z = -1118.157 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_tag = "大史莱姆" },
	{ config_id = 56036, monster_id = 23020101, pos = { x = 1603.893, y = 286.236, z = -1117.003 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_tag = "债务处理人" },
	{ config_id = 56037, monster_id = 22030101, pos = { x = 1607.498, y = 286.280, z = -1116.709 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_tag = "深渊使徒", pose_id = 101 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 56001, gadget_id = 70380234, pos = { x = 1605.391, y = 286.236, z = -1115.677 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
}

-- 点位
points = {
	{ config_id = 56038, pos = { x = 1601.179, y = 286.283, z = -1112.638 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, tag = 1 },
	{ config_id = 56039, pos = { x = 1605.454, y = 286.236, z = -1111.724 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, tag = 1 },
	{ config_id = 56040, pos = { x = 1609.453, y = 286.444, z = -1112.156 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, tag = 1 },
	{ config_id = 56041, pos = { x = 1602.115, y = 286.205, z = -1121.562 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, tag = 1 },
	{ config_id = 56042, pos = { x = 1605.525, y = 286.204, z = -1122.047 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, tag = 1 },
	{ config_id = 56043, pos = { x = 1610.601, y = 286.330, z = -1122.156 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, tag = 1 }
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
		gadgets = { },
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

require "V2_8/V2_8ArenaChallenge_Quest"