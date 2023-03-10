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
	{ config_id = 213001, shape = RegionShape.CYLINDER, radius = 20, pos = { x = 2925.366, y = 269.874, z = -1281.414 }, height = 10.000, vision_type_list = { 1 } },
	{ config_id = 213002, shape = RegionShape.POLYGON, pos = { x = 2899.893, y = 270.302, z = -1265.321 }, height = 40.862, point_array = { { x = 2885.332, y = -1265.638 }, { x = 2889.574, y = -1247.776 }, { x = 2910.406, y = -1257.725 }, { x = 2907.511, y = -1267.328 }, { x = 2914.455, y = -1279.419 }, { x = 2897.250, y = -1282.865 } }, vision_type_list = { 2 } },
	{ config_id = 213003, shape = RegionShape.POLYGON, pos = { x = 2889.974, y = 270.930, z = -1258.537 }, height = 41.965, point_array = { { x = 2912.986, y = -1240.316 }, { x = 2913.644, y = -1276.758 }, { x = 2878.917, y = -1269.226 }, { x = 2866.305, y = -1244.964 } }, vision_type_list = { 3 } },
	{ config_id = 213004, shape = RegionShape.POLYGON, pos = { x = 2875.970, y = 268.737, z = -1291.981 }, height = 49.188, point_array = { { x = 2858.950, y = -1311.105 }, { x = 2877.060, y = -1295.804 }, { x = 2849.232, y = -1298.273 }, { x = 2859.171, y = -1289.206 }, { x = 2856.759, y = -1271.445 }, { x = 2879.521, y = -1273.434 }, { x = 2900.283, y = -1262.924 }, { x = 2895.663, y = -1282.212 }, { x = 2902.707, y = -1303.864 }, { x = 2889.262, y = -1303.683 }, { x = 2874.590, y = -1321.037 } }, vision_type_list = { 4 } },
	{ config_id = 213005, shape = RegionShape.POLYGON, pos = { x = 2932.971, y = 268.074, z = -1317.165 }, height = 43.753, point_array = { { x = 2915.141, y = -1325.740 }, { x = 2928.442, y = -1346.805 }, { x = 2934.722, y = -1325.357 }, { x = 2950.801, y = -1332.328 }, { x = 2949.704, y = -1305.027 }, { x = 2930.171, y = -1287.526 }, { x = 2918.862, y = -1304.468 } }, vision_type_list = { 5 } },
	{ config_id = 213006, shape = RegionShape.CYLINDER, radius = 20, pos = { x = 2897.950, y = 269.872, z = -1320.385 }, height = 10.000, vision_type_list = { 6 } },
	{ config_id = 213007, shape = RegionShape.POLYGON, pos = { x = 2935.128, y = 268.273, z = -1318.136 }, height = 43.207, point_array = { { x = 2922.986, y = -1341.296 }, { x = 2960.019, y = -1338.324 }, { x = 2948.898, y = -1311.264 }, { x = 2928.696, y = -1294.977 }, { x = 2910.238, y = -1316.554 } }, vision_type_list = { 7 } },
	{ config_id = 213008, shape = RegionShape.CYLINDER, radius = 15, pos = { x = 2904.982, y = 269.331, z = -1349.237 }, height = 10.000, vision_type_list = { 8 } },
	{ config_id = 213009, shape = RegionShape.POLYGON, pos = { x = 2872.504, y = 266.018, z = -1331.857 }, height = 47.712, point_array = { { x = 2871.396, y = -1352.377 }, { x = 2889.412, y = -1360.750 }, { x = 2881.135, y = -1341.808 }, { x = 2892.047, y = -1317.595 }, { x = 2856.896, y = -1302.964 }, { x = 2868.707, y = -1323.987 }, { x = 2852.961, y = -1331.164 } }, vision_type_list = { 9 } },
	{ config_id = 213010, shape = RegionShape.POLYGON, pos = { x = 2951.388, y = 264.550, z = -1345.318 }, height = 48.329, point_array = { { x = 2951.282, y = -1355.070 }, { x = 2933.844, y = -1335.629 }, { x = 2944.058, y = -1328.348 }, { x = 2949.657, y = -1307.326 }, { x = 2968.932, y = -1305.292 }, { x = 2961.731, y = -1320.369 }, { x = 2966.901, y = -1369.479 }, { x = 2947.418, y = -1385.343 } }, vision_type_list = { 3 } },
	{ config_id = 213011, shape = RegionShape.POLYGON, pos = { x = 2868.196, y = 271.795, z = -1254.489 }, height = 43.454, point_array = { { x = 2854.867, y = -1267.969 }, { x = 2862.089, y = -1249.764 }, { x = 2849.653, y = -1235.860 }, { x = 2873.421, y = -1239.014 }, { x = 2880.933, y = -1234.859 }, { x = 2880.719, y = -1251.043 }, { x = 2886.740, y = -1262.589 }, { x = 2871.243, y = -1274.119 } }, vision_type_list = { 6 } }
}

-- 触发器
triggers = {
	{ config_id = 1213008, name = "ENTER_REGION_213008", event = EventType.EVENT_ENTER_REGION, source = "", condition = "", action = "" }
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
		regions = { 213001, 213002, 213003, 213004, 213005, 213006, 213007, 213008, 213009, 213010, 213011 },
		triggers = { "ENTER_REGION_213008" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================