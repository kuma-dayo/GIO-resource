-- 基础信息
local base_info = {
	group_id = 235808002
}

-- DEFS_MISCS
--ByTime配置内容

--fever进度升级节点
local fever_progress_table = {
    0,40,120,270,570,800
}
--各等级fever的下降速率
local fever_attenuation = {
    -1,-1,-2,-2,-3
}

local DungeonWeather = { 
    11039,11040,11041,11042
} 

--怪物潮
local monster_tide = {
    [1] = {2001,2002,2003,2004,2005,2006,2007,2008,2009,2010,2033,2034,2035,2036,2037,2048},
    [2] = {2011,2012,2013,2014,2015,2016,2017,2018,2019,2020,2049,2050,2051,2052,2053,2054},
    [3] = {2038,2039,2040,2041,2042,2043,2044,2045,2046,2047,2055,2056,2057,2058,2059,2080},
    [4] = {2082,2083,2094,2095,2096,2097,2098,2099,2100,2101,2102,2103,2104,2105,2106,2107}
}

--每轮怪物潮刷怪数量
local tide_suite_config = {
        [1] = {min=4,max=4},
        [2] = {min=4,max=4},
        [3] = {min=4,max=4},
        [4] = {min=4,max=4}
}

--精英怪
local elite = {
    [1] = {2030},
    [2] = {2031},
    [3] = {2031},
    [4] = {2081}
}

--精英怪创生点
local elite_born_points = {
    2022,2023,2024,2025,2026,2027,2028,2029
}

local defs = {
        group_id = 235808002,
        worktop_id = 2021, --操作台对应的configID
        game_time = 240, --挑战时间
        minion_tide_interval = 60, --怪物潮轮替时间间隔
        elite_interval = 15, --精英怪刷新间隔
        environment_suite = 3, --环境灯光所在的Suite
        elite_tide_interval = 60, --精英怪物潮更换间隔
        gallery_id = 15002, --使用的Gallery
        noswitch_punishment_interval = 25, --换人惩罚时间
        switch_team_fever = 30, --换人增加热度值
        air_wall = 2093 --场内空气墙对应的ConfigID
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	[2001] = { config_id = 2001, monster_id = 20011101, pos = { x = 30.369, y = 3.170, z = 112.691 }, rot = { x = 0.000, y = 180.000, z = 0.000 }, level = 1, disableWander = true, affix = { 5137 }, kill_score = 15 },
	[2002] = { config_id = 2002, monster_id = 20011101, pos = { x = 34.017, y = 3.170, z = 112.691 }, rot = { x = 0.000, y = 180.000, z = 0.000 }, level = 1, disableWander = true, affix = { 5137 }, kill_score = 15 },
	[2003] = { config_id = 2003, monster_id = 21010201, pos = { x = 27.660, y = 3.170, z = 112.691 }, rot = { x = 0.000, y = 180.000, z = 0.000 }, level = 1, disableWander = true, affix = { 5137 }, kill_score = 10 },
	[2004] = { config_id = 2004, monster_id = 21010201, pos = { x = 37.340, y = 3.170, z = 112.691 }, rot = { x = 0.000, y = 180.000, z = 0.000 }, level = 1, disableWander = true, affix = { 5137 }, kill_score = 10 },
	[2005] = { config_id = 2005, monster_id = 20011101, pos = { x = 42.320, y = 3.160, z = 101.398 }, rot = { x = 0.000, y = 270.000, z = 0.000 }, level = 1, disableWander = true, affix = { 5137 }, kill_score = 15 },
	[2006] = { config_id = 2006, monster_id = 20011101, pos = { x = 42.367, y = 3.160, z = 104.144 }, rot = { x = 0.000, y = 270.000, z = 0.000 }, level = 1, disableWander = true, affix = { 5137 }, kill_score = 15 },
	[2007] = { config_id = 2007, monster_id = 21010701, pos = { x = 42.117, y = 3.160, z = 98.067 }, rot = { x = 0.000, y = 270.000, z = 0.000 }, level = 1, disableWander = true, affix = { 5137 }, kill_score = 10 },
	[2008] = { config_id = 2008, monster_id = 21010701, pos = { x = 42.130, y = 3.160, z = 107.608 }, rot = { x = 0.000, y = 270.000, z = 0.000 }, level = 1, disableWander = true, affix = { 5137 }, kill_score = 10 },
	[2009] = { config_id = 2009, monster_id = 20011101, pos = { x = 22.264, y = 3.160, z = 101.398 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 1, disableWander = true, affix = { 5137 }, kill_score = 15 },
	[2010] = { config_id = 2010, monster_id = 20011101, pos = { x = 22.311, y = 3.160, z = 104.144 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 1, disableWander = true, affix = { 5137 }, kill_score = 15 },
	[2011] = { config_id = 2011, monster_id = 20050603, pos = { x = 30.369, y = 3.170, z = 112.691 }, rot = { x = 0.000, y = 180.000, z = 0.000 }, level = 1, disableWander = true, affix = { 5137 }, kill_score = 15 },
	[2012] = { config_id = 2012, monster_id = 20050603, pos = { x = 34.017, y = 3.170, z = 112.691 }, rot = { x = 0.000, y = 180.000, z = 0.000 }, level = 1, disableWander = true, affix = { 5137 }, kill_score = 15 },
	[2013] = { config_id = 2013, monster_id = 20050703, pos = { x = 27.660, y = 3.170, z = 112.691 }, rot = { x = 0.000, y = 180.000, z = 0.000 }, level = 1, disableWander = true, affix = { 5137 }, kill_score = 15 },
	[2014] = { config_id = 2014, monster_id = 20050703, pos = { x = 37.340, y = 3.170, z = 112.691 }, rot = { x = 0.000, y = 180.000, z = 0.000 }, level = 1, disableWander = true, affix = { 5137 }, kill_score = 15 },
	[2015] = { config_id = 2015, monster_id = 20011001, pos = { x = 42.320, y = 3.160, z = 101.398 }, rot = { x = 0.000, y = 270.000, z = 0.000 }, level = 1, disableWander = true, affix = { 5137 }, kill_score = 5 },
	[2016] = { config_id = 2016, monster_id = 20011001, pos = { x = 42.367, y = 3.160, z = 104.144 }, rot = { x = 0.000, y = 270.000, z = 0.000 }, level = 1, disableWander = true, affix = { 5137 }, kill_score = 5 },
	[2017] = { config_id = 2017, monster_id = 20050603, pos = { x = 42.117, y = 3.160, z = 98.067 }, rot = { x = 0.000, y = 270.000, z = 0.000 }, level = 1, disableWander = true, affix = { 5137 }, kill_score = 15 },
	[2018] = { config_id = 2018, monster_id = 20050603, pos = { x = 42.130, y = 3.160, z = 107.608 }, rot = { x = 0.000, y = 270.000, z = 0.000 }, level = 1, disableWander = true, affix = { 5137 }, kill_score = 15 },
	[2019] = { config_id = 2019, monster_id = 20050703, pos = { x = 22.264, y = 3.160, z = 101.398 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 1, disableWander = true, affix = { 5137 }, kill_score = 15 },
	[2020] = { config_id = 2020, monster_id = 20050703, pos = { x = 22.311, y = 3.160, z = 104.144 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 1, disableWander = true, affix = { 5137 }, kill_score = 15 },
	-- 第一轮精英怪
	[2030] = { config_id = 2030, monster_id = 22010301, pos = { x = 30.755, y = 3.150, z = 115.534 }, rot = { x = 0.000, y = 180.000, z = 0.000 }, level = 1, disableWander = true, affix = { 5137 }, kill_score = 40 },
	-- 第二轮精英怪
	[2031] = { config_id = 2031, monster_id = 20050502, pos = { x = 34.580, y = 3.150, z = 115.234 }, rot = { x = 0.000, y = 180.000, z = 0.000 }, level = 1, disableWander = true, affix = { 5137 }, kill_score = 15 },
	-- 第三轮精英怪
	[2032] = { config_id = 2032, monster_id = 20050802, pos = { x = 26.273, y = 3.150, z = 115.982 }, rot = { x = 0.000, y = 180.000, z = 0.000 }, level = 1, disableWander = true, affix = { 5137 }, kill_score = 15 },
	[2033] = { config_id = 2033, monster_id = 21010501, pos = { x = 22.464, y = 3.160, z = 98.067 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 1, disableWander = true, affix = { 5137 }, kill_score = 10 },
	[2034] = { config_id = 2034, monster_id = 21010501, pos = { x = 22.477, y = 3.160, z = 107.608 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 1, disableWander = true, affix = { 5137 }, kill_score = 10 },
	[2035] = { config_id = 2035, monster_id = 20011101, pos = { x = 30.369, y = 3.170, z = 92.614 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, disableWander = true, affix = { 5137 }, kill_score = 15 },
	[2036] = { config_id = 2036, monster_id = 20011101, pos = { x = 34.017, y = 3.170, z = 92.614 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, disableWander = true, affix = { 5137 }, kill_score = 15 },
	[2037] = { config_id = 2037, monster_id = 21010601, pos = { x = 27.660, y = 3.170, z = 92.614 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, disableWander = true, affix = { 5137 }, kill_score = 10 },
	[2038] = { config_id = 2038, monster_id = 20050203, pos = { x = 30.369, y = 3.170, z = 112.691 }, rot = { x = 0.000, y = 180.000, z = 0.000 }, level = 1, disableWander = true, affix = { 5137 }, kill_score = 15 },
	[2039] = { config_id = 2039, monster_id = 20050203, pos = { x = 34.017, y = 3.170, z = 112.691 }, rot = { x = 0.000, y = 180.000, z = 0.000 }, level = 1, disableWander = true, affix = { 5137 }, kill_score = 15 },
	[2040] = { config_id = 2040, monster_id = 20050302, pos = { x = 27.660, y = 3.170, z = 112.691 }, rot = { x = 0.000, y = 180.000, z = 0.000 }, level = 1, disableWander = true, affix = { 5137 }, kill_score = 15 },
	[2041] = { config_id = 2041, monster_id = 20050302, pos = { x = 37.340, y = 3.170, z = 112.691 }, rot = { x = 0.000, y = 180.000, z = 0.000 }, level = 1, disableWander = true, affix = { 5137 }, kill_score = 15 },
	[2042] = { config_id = 2042, monster_id = 20050403, pos = { x = 42.320, y = 3.160, z = 101.398 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, disableWander = true, affix = { 5137 }, kill_score = 15 },
	[2043] = { config_id = 2043, monster_id = 20050403, pos = { x = 42.367, y = 3.160, z = 104.144 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, disableWander = true, affix = { 5137 }, kill_score = 15 },
	[2044] = { config_id = 2044, monster_id = 20050203, pos = { x = 42.117, y = 3.160, z = 98.067 }, rot = { x = 0.000, y = 270.000, z = 0.000 }, level = 1, disableWander = true, affix = { 5137 }, kill_score = 15 },
	[2045] = { config_id = 2045, monster_id = 20050302, pos = { x = 42.130, y = 3.160, z = 107.608 }, rot = { x = 0.000, y = 270.000, z = 0.000 }, level = 1, disableWander = true, affix = { 5137 }, kill_score = 15 },
	[2046] = { config_id = 2046, monster_id = 20050302, pos = { x = 22.264, y = 3.160, z = 101.398 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 1, disableWander = true, affix = { 5137 }, kill_score = 15 },
	[2047] = { config_id = 2047, monster_id = 20050403, pos = { x = 22.311, y = 3.160, z = 104.144 }, rot = { x = 0.000, y = 180.000, z = 0.000 }, level = 1, disableWander = true, affix = { 5137 }, kill_score = 15 },
	[2048] = { config_id = 2048, monster_id = 21010601, pos = { x = 37.339, y = 3.170, z = 92.614 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, disableWander = true, affix = { 5137 }, kill_score = 10 },
	[2049] = { config_id = 2049, monster_id = 20011001, pos = { x = 22.464, y = 3.160, z = 98.067 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 1, disableWander = true, affix = { 5137 }, kill_score = 5 },
	[2050] = { config_id = 2050, monster_id = 20011001, pos = { x = 22.477, y = 3.160, z = 107.608 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 1, disableWander = true, affix = { 5137 }, kill_score = 5 },
	[2051] = { config_id = 2051, monster_id = 20011001, pos = { x = 30.369, y = 3.170, z = 92.614 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, disableWander = true, affix = { 5137 }, kill_score = 5 },
	[2052] = { config_id = 2052, monster_id = 20011001, pos = { x = 34.017, y = 3.170, z = 92.614 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, disableWander = true, affix = { 5137 }, kill_score = 5 },
	[2053] = { config_id = 2053, monster_id = 20050703, pos = { x = 27.660, y = 3.170, z = 92.614 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, disableWander = true, affix = { 5137 }, kill_score = 15 },
	[2054] = { config_id = 2054, monster_id = 20050603, pos = { x = 37.339, y = 3.170, z = 92.614 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, disableWander = true, affix = { 5137 }, kill_score = 15 },
	[2055] = { config_id = 2055, monster_id = 20050203, pos = { x = 22.464, y = 3.160, z = 98.067 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 1, disableWander = true, affix = { 5137 }, kill_score = 15 },
	[2056] = { config_id = 2056, monster_id = 20050203, pos = { x = 22.477, y = 3.160, z = 107.608 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 1, disableWander = true, affix = { 5137 }, kill_score = 15 },
	[2057] = { config_id = 2057, monster_id = 20050203, pos = { x = 30.369, y = 3.170, z = 92.614 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, disableWander = true, affix = { 5137 }, kill_score = 15 },
	[2058] = { config_id = 2058, monster_id = 20050203, pos = { x = 34.017, y = 3.170, z = 92.614 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, disableWander = true, affix = { 5137 }, kill_score = 15 },
	[2059] = { config_id = 2059, monster_id = 20050403, pos = { x = 27.660, y = 3.170, z = 92.614 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 1, disableWander = true, affix = { 5137 }, kill_score = 15 },
	[2080] = { config_id = 2080, monster_id = 20050302, pos = { x = 37.339, y = 3.170, z = 92.614 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, disableWander = true, affix = { 5137 }, kill_score = 15 },
	-- 第四轮精英怪
	[2081] = { config_id = 2081, monster_id = 26050601, pos = { x = 39.089, y = 3.150, z = 115.249 }, rot = { x = 0.000, y = 180.000, z = 0.000 }, level = 1, disableWander = true, affix = { 5137 }, kill_score = 85 },
	[2082] = { config_id = 2082, monster_id = 26051101, pos = { x = 30.369, y = 3.170, z = 112.691 }, rot = { x = 0.000, y = 180.000, z = 0.000 }, level = 1, disableWander = true, affix = { 5137 }, kill_score = 40 },
	[2083] = { config_id = 2083, monster_id = 26051101, pos = { x = 34.017, y = 3.170, z = 112.691 }, rot = { x = 0.000, y = 180.000, z = 0.000 }, level = 1, disableWander = true, affix = { 5137 }, kill_score = 40 },
	[2094] = { config_id = 2094, monster_id = 26050901, pos = { x = 27.660, y = 3.170, z = 112.691 }, rot = { x = 0.000, y = 180.000, z = 0.000 }, level = 1, disableWander = true, affix = { 5137 }, kill_score = 40 },
	[2095] = { config_id = 2095, monster_id = 26050901, pos = { x = 37.340, y = 3.170, z = 112.691 }, rot = { x = 0.000, y = 180.000, z = 0.000 }, level = 1, disableWander = true, affix = { 5137 }, kill_score = 40 },
	[2096] = { config_id = 2096, monster_id = 26050901, pos = { x = 42.320, y = 3.160, z = 101.398 }, rot = { x = 0.000, y = 270.000, z = 0.000 }, level = 1, disableWander = true, affix = { 5137 }, kill_score = 40 },
	[2097] = { config_id = 2097, monster_id = 26051101, pos = { x = 42.367, y = 3.160, z = 104.144 }, rot = { x = 0.000, y = 270.000, z = 0.000 }, level = 1, disableWander = true, affix = { 5137 }, kill_score = 40 },
	[2098] = { config_id = 2098, monster_id = 26050901, pos = { x = 42.117, y = 3.160, z = 98.067 }, rot = { x = 0.000, y = 270.000, z = 0.000 }, level = 1, disableWander = true, affix = { 5137 }, kill_score = 40 },
	[2099] = { config_id = 2099, monster_id = 26051101, pos = { x = 42.130, y = 3.160, z = 107.608 }, rot = { x = 0.000, y = 270.000, z = 0.000 }, level = 1, disableWander = true, affix = { 5137 }, kill_score = 40 },
	[2100] = { config_id = 2100, monster_id = 26050901, pos = { x = 22.264, y = 3.160, z = 101.398 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 1, disableWander = true, affix = { 5137 }, kill_score = 40 },
	[2101] = { config_id = 2101, monster_id = 26050901, pos = { x = 22.311, y = 3.160, z = 104.144 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 1, disableWander = true, affix = { 5137 }, kill_score = 40 },
	[2102] = { config_id = 2102, monster_id = 26051101, pos = { x = 22.464, y = 3.160, z = 98.067 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 1, disableWander = true, affix = { 5137 }, kill_score = 40 },
	[2103] = { config_id = 2103, monster_id = 26051101, pos = { x = 22.477, y = 3.160, z = 107.608 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 1, disableWander = true, affix = { 5137 }, kill_score = 40 },
	[2104] = { config_id = 2104, monster_id = 26051101, pos = { x = 30.369, y = 3.170, z = 92.614 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, disableWander = true, affix = { 5137 }, kill_score = 40 },
	[2105] = { config_id = 2105, monster_id = 26051101, pos = { x = 34.017, y = 3.170, z = 92.614 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, disableWander = true, affix = { 5137 }, kill_score = 40 },
	[2106] = { config_id = 2106, monster_id = 26050901, pos = { x = 27.660, y = 3.170, z = 92.614 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 1, disableWander = true, affix = { 5137 }, kill_score = 40 },
	[2107] = { config_id = 2107, monster_id = 26050901, pos = { x = 37.339, y = 3.170, z = 92.614 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, disableWander = true, affix = { 5137 }, kill_score = 40 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	[2021] = { config_id = 2021, gadget_id = 70360010, pos = { x = 32.330, y = 2.738, z = 102.940 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	[2060] = { config_id = 2060, gadget_id = 70350306, pos = { x = 52.126, y = 5.575, z = 83.326 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	[2061] = { config_id = 2061, gadget_id = 70350306, pos = { x = 12.676, y = 5.526, z = 83.403 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	[2062] = { config_id = 2062, gadget_id = 70350306, pos = { x = 52.076, y = 5.471, z = 122.762 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	[2063] = { config_id = 2063, gadget_id = 70350306, pos = { x = 12.694, y = 5.606, z = 122.658 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	[2064] = { config_id = 2064, gadget_id = 70350307, pos = { x = 72.500, y = 3.880, z = 128.613 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	[2065] = { config_id = 2065, gadget_id = 70350307, pos = { x = 72.500, y = 3.880, z = 120.362 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	[2066] = { config_id = 2066, gadget_id = 70350307, pos = { x = 72.500, y = 3.880, z = 112.100 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	[2067] = { config_id = 2067, gadget_id = 70350307, pos = { x = 72.500, y = 3.880, z = 103.452 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	[2068] = { config_id = 2068, gadget_id = 70350307, pos = { x = 72.500, y = 3.880, z = 95.008 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	[2069] = { config_id = 2069, gadget_id = 70350307, pos = { x = 72.500, y = 3.880, z = 86.675 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	[2070] = { config_id = 2070, gadget_id = 70350307, pos = { x = -8.822, y = 3.880, z = 128.635 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	[2071] = { config_id = 2071, gadget_id = 70350307, pos = { x = -8.190, y = 3.880, z = 120.665 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	[2072] = { config_id = 2072, gadget_id = 70350307, pos = { x = -8.190, y = 3.880, z = 112.100 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	[2073] = { config_id = 2073, gadget_id = 70350307, pos = { x = -8.219, y = 3.880, z = 103.701 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	[2074] = { config_id = 2074, gadget_id = 70350307, pos = { x = -8.048, y = 3.880, z = 95.018 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	[2075] = { config_id = 2075, gadget_id = 70350307, pos = { x = -8.262, y = 3.880, z = 86.753 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	[2076] = { config_id = 2076, gadget_id = 70350306, pos = { x = 24.650, y = 10.805, z = 141.543 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	[2077] = { config_id = 2077, gadget_id = 70350306, pos = { x = 40.050, y = 10.799, z = 141.513 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	[2078] = { config_id = 2078, gadget_id = 70350306, pos = { x = 27.317, y = 8.059, z = 75.224 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	[2079] = { config_id = 2079, gadget_id = 70350306, pos = { x = 37.346, y = 8.064, z = 75.197 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	[2084] = { config_id = 2084, gadget_id = 70350308, pos = { x = 38.094, y = 18.788, z = 141.013 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	[2085] = { config_id = 2085, gadget_id = 70350308, pos = { x = 26.571, y = 18.756, z = 141.058 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	[2086] = { config_id = 2086, gadget_id = 70350308, pos = { x = -10.671, y = 26.712, z = 147.351 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	[2087] = { config_id = 2087, gadget_id = 70350308, pos = { x = 77.800, y = 26.831, z = 147.602 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	[2088] = { config_id = 2088, gadget_id = 70350308, pos = { x = 85.879, y = 26.886, z = 139.648 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	[2089] = { config_id = 2089, gadget_id = 70350308, pos = { x = -18.976, y = 26.894, z = 139.460 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	[2090] = { config_id = 2090, gadget_id = 70350309, pos = { x = 0.000, y = 0.000, z = 0.000 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	[2091] = { config_id = 2091, gadget_id = 70350307, pos = { x = 72.500, y = 3.880, z = 77.711 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	[2092] = { config_id = 2092, gadget_id = 70350307, pos = { x = -8.250, y = 3.880, z = 77.760 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	[2093] = { config_id = 2093, gadget_id = 70950010, pos = { x = 32.433, y = 3.320, z = 83.429 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 }
}

-- 区域
regions = {
	[2108] = { config_id = 2108, shape = RegionShape.CUBIC, size = { x = 20.000, y = 10.000, z = 20.000 }, pos = { x = 32.328, y = 3.150, z = 102.927 } }
}

-- 触发器
triggers = {
}

-- 点位
points = {
	{ config_id = 2022, pos = { x = 33.683, y = 3.180, z = 117.522 }, rot = { x = 0.000, y = 181.863, z = 0.000 } },
	{ config_id = 2023, pos = { x = 42.218, y = 3.170, z = 112.782 }, rot = { x = 0.000, y = 226.869, z = 0.000 } },
	{ config_id = 2024, pos = { x = 42.345, y = 3.170, z = 93.119 }, rot = { x = 0.000, y = 320.864, z = 0.000 } },
	{ config_id = 2025, pos = { x = 32.416, y = 3.150, z = 89.591 }, rot = { x = 0.000, y = 0.000, z = 0.000 } },
	{ config_id = 2026, pos = { x = 22.432, y = 3.170, z = 92.933 }, rot = { x = 0.000, y = 42.073, z = 0.000 } },
	{ config_id = 2027, pos = { x = 22.387, y = 3.170, z = 112.777 }, rot = { x = 0.000, y = 130.101, z = 0.000 } },
	{ config_id = 2028, pos = { x = 17.851, y = 3.150, z = 102.404 }, rot = { x = 0.000, y = 90.000, z = 0.000 } },
	{ config_id = 2029, pos = { x = 45.382, y = 3.150, z = 102.574 }, rot = { x = 0.000, y = 270.000, z = 0.000 } }
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
		gadgets = { 2021 },
		regions = { 2108 },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = 放所有的精英怪和精英怪创生点,
		monsters = { 2030, 2031, 2032, 2081 },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = 放场景氛围物件,
		monsters = { },
		gadgets = { 2060, 2061, 2062, 2063, 2064, 2065, 2066, 2067, 2068, 2069, 2070, 2071, 2072, 2073, 2074, 2075, 2076, 2077, 2078, 2079, 2084, 2085, 2086, 2087, 2088, 2089, 2090, 2091, 2092 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 4,
		-- description = 怪物潮第一波,
		monsters = { 2001, 2002, 2003, 2004, 2005, 2006, 2007, 2008, 2009, 2010, 2033, 2034, 2035, 2036, 2037, 2048 },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 5,
		-- description = 怪物潮第二波,
		monsters = { 2011, 2012, 2013, 2014, 2015, 2016, 2017, 2018, 2019, 2020, 2049, 2050, 2051, 2052, 2053, 2054 },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 6,
		-- description = 怪物潮第三波,
		monsters = { 2038, 2039, 2040, 2041, 2042, 2043, 2044, 2045, 2046, 2047, 2055, 2056, 2057, 2058, 2059, 2080 },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 7,
		-- description = 怪物潮第四波,
		monsters = { 2082, 2083, 2094, 2095, 2096, 2097, 2098, 2099, 2100, 2101, 2102, 2103, 2104, 2105, 2106, 2107 },
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

require "V2_5/FightingStage_ByTime"