-- 基础信息
local base_info = {
	group_id = 155008167
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
}

-- 区域
regions = {
	-- 孤岛两座
	{ config_id = 167001, shape = RegionShape.CUBIC, size = { x = 200.000, y = 150.000, z = 300.000 }, pos = { x = -508.375, y = 225.063, z = 460.935 }, area_id = 200, vision_type_list = { 50080001 } },
	-- 丘丘人山上层
	{ config_id = 167002, shape = RegionShape.POLYGON, pos = { x = -311.409, y = 263.179, z = 367.294 }, height = 56.357, point_array = { { x = -286.867, y = 455.880 }, { x = -399.881, y = 447.858 }, { x = -398.159, y = 306.752 }, { x = -273.596, y = 278.708 }, { x = -228.823, y = 279.843 }, { x = -222.936, y = 372.231 } }, area_id = 200, vision_type_list = { 50080002 } },
	-- 神殿上层
	{ config_id = 167003, shape = RegionShape.POLYGON, pos = { x = -170.809, y = 275.000, z = 412.459 }, height = 90.000, point_array = { { x = -264.927, y = 510.707 }, { x = -259.335, y = 431.636 }, { x = -217.475, y = 372.936 }, { x = -226.190, y = 279.248 }, { x = -76.691, y = 290.080 }, { x = -77.751, y = 535.097 }, { x = -168.230, y = 545.670 } }, area_id = 200, vision_type_list = { 50080003 } },
	-- 神殿下层
	{ config_id = 167004, shape = RegionShape.POLYGON, pos = { x = -170.809, y = 165.000, z = 412.459 }, height = 130.000, point_array = { { x = -264.927, y = 510.707 }, { x = -259.335, y = 431.636 }, { x = -217.475, y = 372.936 }, { x = -226.190, y = 279.248 }, { x = -76.691, y = 290.080 }, { x = -77.751, y = 535.097 }, { x = -168.230, y = 545.670 } }, area_id = 200, vision_type_list = { 50080004 } },
	-- 遗迹区主体
	{ config_id = 167005, shape = RegionShape.POLYGON, pos = { x = -171.080, y = 179.828, z = 201.463 }, height = 159.656, point_array = { { x = -37.276, y = 287.503 }, { x = -240.150, y = 281.263 }, { x = -304.883, y = 188.060 }, { x = -235.008, y = 115.423 }, { x = -181.277, y = 141.910 }, { x = -94.296, y = 128.705 }, { x = -38.859, y = 142.692 } }, area_id = 200, vision_type_list = { 50080006 } },
	-- 遗迹区登陆
	{ config_id = 167006, shape = RegionShape.POLYGON, pos = { x = -145.076, y = 175.664, z = 79.683 }, height = 151.328, point_array = { { x = -233.707, y = 115.806 }, { x = -194.936, y = 137.450 }, { x = -168.228, y = 141.236 }, { x = -94.963, y = 129.110 }, { x = 32.582, y = 24.831 }, { x = -36.817, y = -35.248 }, { x = -288.926, y = 86.774 }, { x = -322.734, y = 159.989 }, { x = -304.329, y = 194.613 } }, area_id = 200, vision_type_list = { 50080005 } },
	-- 神殿三等分之一
	{ config_id = 167007, shape = RegionShape.POLYGON, pos = { x = -121.673, y = 235.208, z = 289.865 }, height = 69.583, point_array = { { x = -14.269, y = 212.584 }, { x = -59.655, y = 365.844 }, { x = -229.077, y = 367.146 }, { x = -214.800, y = 231.234 } }, area_id = 200, vision_type_list = { 50080007 } },
	-- 神殿三等分之二
	{ config_id = 167008, shape = RegionShape.POLYGON, pos = { x = -149.478, y = 258.434, z = 374.341 }, height = 83.132, point_array = { { x = -78.344, y = 417.500 }, { x = -84.447, y = 325.869 }, { x = -220.081, y = 330.773 }, { x = -220.612, y = 422.814 } }, area_id = 200, vision_type_list = { 50080008 } },
	-- 神殿三等分之三
	{ config_id = 167009, shape = RegionShape.POLYGON, pos = { x = -169.677, y = 260.445, z = 488.658 }, height = 79.110, point_array = { { x = -249.132, y = 518.674 }, { x = -238.355, y = 432.929 }, { x = -91.449, y = 435.321 }, { x = -90.222, y = 544.386 } }, area_id = 200, vision_type_list = { 50080009 } },
	-- 丘丘人山下层
	{ config_id = 167010, shape = RegionShape.POLYGON, pos = { x = -311.409, y = 192.500, z = 367.294 }, height = 85.000, point_array = { { x = -286.867, y = 455.880 }, { x = -399.881, y = 447.858 }, { x = -398.159, y = 306.752 }, { x = -273.596, y = 278.708 }, { x = -228.823, y = 279.843 }, { x = -222.936, y = 372.231 } }, area_id = 200, vision_type_list = { 50080010 } }
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
		gadgets = { },
		regions = { 167001, 167002, 167003, 167004, 167005, 167006, 167007, 167008, 167009, 167010 },
		triggers = { },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================