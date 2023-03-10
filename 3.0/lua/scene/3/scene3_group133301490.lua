-- 基础信息
local base_info = {
	group_id = 133301490
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
	-- 水坝优化
	{ config_id = 490001, shape = RegionShape.POLYGON, pos = { x = -480.793, y = 178.888, z = 3247.004 }, height = 77.395, point_array = { { x = -437.914, y = 3208.062 }, { x = -448.704, y = 3230.837 }, { x = -452.674, y = 3286.129 }, { x = -460.882, y = 3296.986 }, { x = -464.933, y = 3313.282 }, { x = -488.597, y = 3335.711 }, { x = -511.048, y = 3325.483 }, { x = -518.748, y = 3313.117 }, { x = -523.672, y = 3297.489 }, { x = -509.579, y = 3280.376 }, { x = -499.749, y = 3230.830 }, { x = -487.240, y = 3187.046 }, { x = -470.297, y = 3158.297 }, { x = -440.171, y = 3163.178 } }, area_id = 22, vision_type_list = { 33010005 } },
	-- 森之里幻梦门优化
	{ config_id = 490002, shape = RegionShape.POLYGON, pos = { x = -266.680, y = 260.241, z = 3551.326 }, height = 160.422, point_array = { { x = -119.423, y = 3568.347 }, { x = -141.498, y = 3634.846 }, { x = -192.256, y = 3643.070 }, { x = -210.785, y = 3657.279 }, { x = -262.107, y = 3660.437 }, { x = -281.952, y = 3635.935 }, { x = -352.561, y = 3625.410 }, { x = -410.755, y = 3600.308 }, { x = -413.937, y = 3532.131 }, { x = -397.508, y = 3476.802 }, { x = -354.648, y = 3449.610 }, { x = -284.766, y = 3455.481 }, { x = -229.505, y = 3445.495 }, { x = -136.843, y = 3442.215 }, { x = -136.834, y = 3492.220 } }, area_id = 29, vision_type_list = { 33010004 } },
	-- 凋零之森地表优化
	{ config_id = 490003, shape = RegionShape.POLYGON, pos = { x = -658.930, y = 159.391, z = 3886.427 }, height = 118.782, point_array = { { x = -661.327, y = 3675.593 }, { x = -735.362, y = 3752.524 }, { x = -737.043, y = 3787.518 }, { x = -749.144, y = 3831.102 }, { x = -783.990, y = 3875.360 }, { x = -807.128, y = 3905.188 }, { x = -754.639, y = 4093.841 }, { x = -661.455, y = 4114.053 }, { x = -574.139, y = 4088.316 }, { x = -514.912, y = 3929.419 }, { x = -510.732, y = 3867.011 }, { x = -560.532, y = 3731.915 }, { x = -603.521, y = 3678.149 }, { x = -610.134, y = 3660.958 }, { x = -629.096, y = 3658.802 } }, area_id = 25, vision_type_list = { 33010006 } },
	-- 凋零之森第一层优化
	{ config_id = 490004, shape = RegionShape.POLYGON, pos = { x = -558.000, y = 50.000, z = 3848.976 }, height = 100.000, point_array = { { x = -671.986, y = 4020.613 }, { x = -589.130, y = 4052.487 }, { x = -509.885, y = 4034.590 }, { x = -478.861, y = 3960.082 }, { x = -433.459, y = 3807.135 }, { x = -529.323, y = 3645.465 }, { x = -682.540, y = 3650.431 }, { x = -674.127, y = 3834.514 } }, area_id = 25, vision_type_list = { 33010007 } },
	-- 凋零之森-蘑菇洞山顶优化
	{ config_id = 490005, shape = RegionShape.POLYGON, pos = { x = -883.502, y = 333.089, z = 3284.374 }, height = 141.300, point_array = { { x = -959.338, y = 3231.333 }, { x = -883.220, y = 3165.248 }, { x = -758.950, y = 3280.965 }, { x = -832.108, y = 3403.500 }, { x = -1008.055, y = 3364.214 } }, area_id = 23, vision_type_list = { 33010018 } },
	-- 凋零之森第三层优化
	{ config_id = 490006, shape = RegionShape.POLYGON, pos = { x = -700.390, y = -144.344, z = 3920.801 }, height = 168.688, point_array = { { x = -776.570, y = 3770.793 }, { x = -727.464, y = 3735.043 }, { x = -589.393, y = 3725.991 }, { x = -548.765, y = 3896.771 }, { x = -524.855, y = 4106.793 }, { x = -794.998, y = 4115.610 }, { x = -875.925, y = 3958.109 }, { x = -872.075, y = 3851.594 } }, area_id = 25, vision_type_list = { 33010009 } },
	-- 哨塔1优化
	{ config_id = 490007, shape = RegionShape.POLYGON, pos = { x = -391.740, y = 295.297, z = 4006.083 }, height = 163.463, point_array = { { x = -341.888, y = 4003.332 }, { x = -365.010, y = 4058.234 }, { x = -441.591, y = 4033.276 }, { x = -435.182, y = 3965.530 }, { x = -410.188, y = 3953.934 }, { x = -372.617, y = 3982.235 } }, area_id = 22, vision_type_list = { 33040002 } },
	-- 哨塔2优化
	{ config_id = 490008, shape = RegionShape.POLYGON, pos = { x = -1030.158, y = 323.313, z = 4010.442 }, height = 104.732, point_array = { { x = -933.025, y = 4019.631 }, { x = -1021.443, y = 4104.285 }, { x = -1123.996, y = 4037.356 }, { x = -1127.291, y = 3976.627 }, { x = -1089.792, y = 3941.224 }, { x = -1077.269, y = 3932.997 }, { x = -991.151, y = 3916.599 } }, area_id = 23, vision_type_list = { 33010010 } },
	-- 哨塔1优化2
	{ config_id = 490009, shape = RegionShape.POLYGON, pos = { x = -343.164, y = 264.561, z = 3938.780 }, height = 59.123, point_array = { { x = -327.393, y = 3891.770 }, { x = -389.494, y = 3943.873 }, { x = -349.102, y = 3985.790 }, { x = -321.934, y = 3975.358 }, { x = -327.328, y = 3933.079 }, { x = -296.834, y = 3911.788 } }, area_id = 22, vision_type_list = { 33010011 } },
	-- 哨塔野外
	{ config_id = 490010, shape = RegionShape.POLYGON, pos = { x = -260.689, y = 241.304, z = 3917.383 }, height = 65.279, point_array = { { x = -310.543, y = 3875.644 }, { x = -331.507, y = 3923.550 }, { x = -316.659, y = 3940.171 }, { x = -249.004, y = 3959.121 }, { x = -189.871, y = 3935.559 }, { x = -227.974, y = 3897.015 } }, area_id = 22, vision_type_list = { 33010012 } },
	-- 小女孩洞优化
	{ config_id = 490011, shape = RegionShape.POLYGON, pos = { x = -372.730, y = 136.677, z = 3905.352 }, height = 126.646, point_array = { { x = -447.521, y = 3899.030 }, { x = -454.973, y = 3922.765 }, { x = -455.085, y = 3959.843 }, { x = -366.731, y = 3967.525 }, { x = -290.374, y = 3909.718 }, { x = -357.813, y = 3854.940 }, { x = -431.414, y = 3843.178 }, { x = -442.914, y = 3869.065 } }, area_id = 22, vision_type_list = { 33010013 } },
	-- 哨塔1交界
	{ config_id = 490012, shape = RegionShape.POLYGON, pos = { x = -470.381, y = 260.799, z = 3965.875 }, height = 148.952, point_array = { { x = -423.008, y = 3948.570 }, { x = -398.080, y = 3882.875 }, { x = -382.660, y = 3824.728 }, { x = -466.914, y = 3835.389 }, { x = -486.211, y = 3875.485 }, { x = -548.186, y = 4067.770 }, { x = -558.101, y = 4107.023 }, { x = -525.652, y = 4098.579 }, { x = -434.764, y = 4087.585 }, { x = -438.443, y = 4019.736 } }, area_id = 22, vision_type_list = { 33010014 } },
	-- 40体动线洞
	{ config_id = 490013, shape = RegionShape.POLYGON, pos = { x = -217.330, y = 116.034, z = 3923.381 }, height = 90.211, point_array = { { x = -283.713, y = 3926.939 }, { x = -185.008, y = 3858.321 }, { x = -152.423, y = 3912.910 }, { x = -132.035, y = 3928.844 }, { x = -151.825, y = 3988.442 }, { x = -198.887, y = 3988.223 }, { x = -271.781, y = 3960.711 }, { x = -283.390, y = 3963.770 }, { x = -296.103, y = 3966.255 }, { x = -302.625, y = 3961.314 }, { x = -296.108, y = 3955.489 } }, area_id = 22, vision_type_list = { 33010015 } },
	-- 蕈兽BOSS下面
	{ config_id = 490014, shape = RegionShape.POLYGON, pos = { x = -111.747, y = 50.262, z = 3866.112 }, height = 79.476, point_array = { { x = -71.134, y = 3844.745 }, { x = -54.384, y = 3886.493 }, { x = -92.153, y = 3939.436 }, { x = -135.274, y = 3925.435 }, { x = -169.110, y = 3889.245 }, { x = -115.635, y = 3792.788 } }, area_id = 22, vision_type_list = { 33010016 } },
	-- 凋零之森愚人众优化
	{ config_id = 490015, shape = RegionShape.POLYGON, pos = { x = -170.547, y = 276.728, z = 3998.746 }, height = 146.545, point_array = { { x = -185.730, y = 4095.446 }, { x = -257.396, y = 3959.494 }, { x = -89.413, y = 3902.045 }, { x = -83.697, y = 4066.216 } }, area_id = 22, vision_type_list = { 33010017 } },
	-- 凋零之森-蘑菇山顶
	{ config_id = 490016, shape = RegionShape.POLYGON, pos = { x = -823.656, y = 275.015, z = 3442.993 }, height = 87.409, point_array = { { x = -767.666, y = 3442.739 }, { x = -816.073, y = 3383.927 }, { x = -879.647, y = 3438.833 }, { x = -841.876, y = 3502.059 } }, area_id = 23, vision_type_list = { 33010018 } },
	-- 凋零之森-毒蘑菇
	{ config_id = 490017, shape = RegionShape.POLYGON, pos = { x = -902.592, y = 225.578, z = 3557.989 }, height = 70.094, point_array = { { x = -920.303, y = 3595.086 }, { x = -946.270, y = 3568.246 }, { x = -884.286, y = 3520.891 }, { x = -858.914, y = 3532.090 }, { x = -861.203, y = 3588.441 } }, area_id = 23, vision_type_list = { 33010019 } },
	-- 凋零之森-森之里外
	{ config_id = 490018, shape = RegionShape.POLYGON, pos = { x = -341.213, y = 267.304, z = 3336.493 }, height = 111.647, point_array = { { x = -306.798, y = 3220.125 }, { x = -231.349, y = 3242.867 }, { x = -236.154, y = 3304.993 }, { x = -251.293, y = 3359.940 }, { x = -323.708, y = 3409.750 }, { x = -372.707, y = 3452.862 }, { x = -421.005, y = 3445.657 }, { x = -451.077, y = 3413.879 }, { x = -392.049, y = 3350.517 }, { x = -338.479, y = 3302.702 } }, area_id = 22, vision_type_list = { 33010020 } },
	-- 凋零之森-森之里入口
	{ config_id = 490019, shape = RegionShape.POLYGON, pos = { x = -183.314, y = 263.024, z = 3322.801 }, height = 82.440, point_array = { { x = -153.591, y = 3270.759 }, { x = -151.608, y = 3246.959 }, { x = -182.805, y = 3227.492 }, { x = -218.772, y = 3235.126 }, { x = -228.277, y = 3313.629 }, { x = -200.378, y = 3396.798 }, { x = -195.063, y = 3408.105 }, { x = -174.979, y = 3418.110 }, { x = -138.352, y = 3396.768 } }, area_id = 29, vision_type_list = { 33010021 } },
	-- 凋零之森-森之里内部
	{ config_id = 490020, shape = RegionShape.POLYGON, pos = { x = -165.968, y = 256.919, z = 3531.021 }, height = 101.859, point_array = { { x = -128.815, y = 3381.044 }, { x = -79.025, y = 3473.157 }, { x = -78.287, y = 3680.999 }, { x = -172.716, y = 3676.680 }, { x = -242.799, y = 3616.070 }, { x = -253.648, y = 3535.698 }, { x = -244.587, y = 3429.161 } }, area_id = 29, vision_type_list = { 33010022 } },
	-- 凋零之森-森之里出口
	{ config_id = 490021, shape = RegionShape.POLYGON, pos = { x = -353.514, y = 217.897, z = 3513.629 }, height = 75.733, point_array = { { x = -392.642, y = 3457.160 }, { x = -363.224, y = 3446.950 }, { x = -306.941, y = 3464.710 }, { x = -279.507, y = 3477.384 }, { x = -291.524, y = 3522.396 }, { x = -310.450, y = 3579.285 }, { x = -363.985, y = 3580.308 }, { x = -427.521, y = 3494.701 } }, area_id = 29, vision_type_list = { 33010023 } },
	-- 凋零之森-蘑菇洞停车场
	{ config_id = 490022, shape = RegionShape.POLYGON, pos = { x = -940.672, y = 247.500, z = 3260.016 }, height = 115.000, point_array = { { x = -948.999, y = 3230.067 }, { x = -919.667, y = 3195.551 }, { x = -897.109, y = 3208.913 }, { x = -877.361, y = 3234.099 }, { x = -871.619, y = 3262.148 }, { x = -872.957, y = 3290.027 }, { x = -907.065, y = 3324.481 }, { x = -1009.725, y = 3292.251 } }, area_id = 23, vision_type_list = { 33010024 } },
	-- 凋零之森-遗迹洞
	{ config_id = 490023, shape = RegionShape.POLYGON, pos = { x = -755.315, y = 130.000, z = 3418.869 }, height = 80.000, point_array = { { x = -779.423, y = 3467.283 }, { x = -811.688, y = 3393.911 }, { x = -802.538, y = 3364.667 }, { x = -757.844, y = 3353.975 }, { x = -730.792, y = 3366.880 }, { x = -698.943, y = 3392.871 }, { x = -703.984, y = 3483.762 } }, area_id = 23, vision_type_list = { 33010025 } },
	-- 凋零之森-宝藏室洞
	{ config_id = 490024, shape = RegionShape.POLYGON, pos = { x = -309.427, y = 202.505, z = 3318.085 }, height = 67.455, point_array = { { x = -241.779, y = 3403.448 }, { x = -187.647, y = 3215.604 }, { x = -303.457, y = 3192.914 }, { x = -323.859, y = 3209.315 }, { x = -370.131, y = 3208.981 }, { x = -368.923, y = 3241.038 }, { x = -357.574, y = 3327.513 }, { x = -407.329, y = 3337.691 }, { x = -420.936, y = 3363.753 }, { x = -431.207, y = 3391.358 }, { x = -410.359, y = 3418.185 }, { x = -369.517, y = 3443.256 } }, area_id = 22, vision_type_list = { 33010026 } },
	-- 蕈兽BOSS上面
	{ config_id = 490025, shape = RegionShape.POLYGON, pos = { x = -125.459, y = 80.262, z = 3882.885 }, height = 139.477, point_array = { { x = -62.519, y = 3835.693 }, { x = -42.257, y = 3880.531 }, { x = -59.242, y = 3944.173 }, { x = -96.412, y = 3983.328 }, { x = -167.586, y = 3975.455 }, { x = -205.069, y = 3963.053 }, { x = -203.487, y = 3926.248 }, { x = -208.661, y = 3873.097 }, { x = -134.029, y = 3782.442 } }, area_id = 22, vision_type_list = { 33010027 } },
	-- 凋零之森-宝藏室洞XQ
	{ config_id = 490026, shape = RegionShape.POLYGON, pos = { x = -285.443, y = 202.212, z = 3304.146 }, height = 59.823, point_array = { { x = -336.101, y = 3286.415 }, { x = -327.468, y = 3319.509 }, { x = -307.852, y = 3336.829 }, { x = -270.723, y = 3340.500 }, { x = -267.644, y = 3346.585 }, { x = -244.900, y = 3350.637 }, { x = -234.785, y = 3329.230 }, { x = -247.982, y = 3293.282 }, { x = -273.965, y = 3257.656 } }, area_id = 22, vision_type_list = { 33010030 } },
	-- 凋零之森-一次性地城
	{ config_id = 490027, shape = RegionShape.POLYGON, pos = { x = -819.705, y = 73.719, z = 3347.353 }, height = 167.438, point_array = { { x = -826.519, y = 3411.540 }, { x = -820.297, y = 3410.749 }, { x = -815.333, y = 3407.688 }, { x = -799.376, y = 3371.021 }, { x = -758.983, y = 3283.167 }, { x = -880.428, y = 3296.482 }, { x = -868.048, y = 3355.429 }, { x = -839.269, y = 3391.225 } }, area_id = 23, vision_type_list = { 33010028 } },
	-- 凋零之森-蘑菇洞上层
	{ config_id = 490028, shape = RegionShape.POLYGON, pos = { x = -873.806, y = 151.500, z = 3198.982 }, height = 157.000, point_array = { { x = -854.494, y = 3073.085 }, { x = -937.159, y = 3098.723 }, { x = -975.534, y = 3151.652 }, { x = -953.927, y = 3249.573 }, { x = -772.077, y = 3324.879 }, { x = -781.572, y = 3164.954 } }, area_id = 23, vision_type_list = { 33010031 } },
	-- 凋零之森-蘑菇洞小圈
	{ config_id = 490029, shape = RegionShape.POLYGON, pos = { x = -867.146, y = -19.603, z = 3212.728 }, height = 180.795, point_array = { { x = -893.992, y = 3160.695 }, { x = -900.683, y = 3176.306 }, { x = -894.289, y = 3199.969 }, { x = -892.684, y = 3249.149 }, { x = -876.826, y = 3241.790 }, { x = -840.458, y = 3266.524 }, { x = -833.609, y = 3190.192 }, { x = -846.891, y = 3158.932 }, { x = -871.826, y = 3160.370 } }, area_id = 23, vision_type_list = { 33010032 } },
	-- 凋零之森-蘑菇洞中层
	{ config_id = 490030, shape = RegionShape.POLYGON, pos = { x = -873.806, y = 55.500, z = 3198.982 }, height = 37.000, point_array = { { x = -854.494, y = 3073.085 }, { x = -937.159, y = 3098.723 }, { x = -975.534, y = 3151.652 }, { x = -953.927, y = 3249.573 }, { x = -772.077, y = 3324.879 }, { x = -781.572, y = 3164.954 } }, area_id = 23, vision_type_list = { 33010037 } },
	-- 凋零之森-蘑菇洞下层
	{ config_id = 490031, shape = RegionShape.POLYGON, pos = { x = -873.806, y = 24.500, z = 3198.982 }, height = 25.000, point_array = { { x = -854.494, y = 3073.085 }, { x = -937.159, y = 3098.723 }, { x = -975.534, y = 3151.652 }, { x = -953.927, y = 3249.573 }, { x = -772.077, y = 3324.879 }, { x = -781.572, y = 3164.954 } }, area_id = 23, vision_type_list = { 33010038 } },
	-- 恒常机关
	{ config_id = 490032, shape = RegionShape.POLYGON, pos = { x = -899.274, y = 5.760, z = 3158.294 }, height = 56.987, point_array = { { x = -940.608, y = 3147.187 }, { x = -940.485, y = 3108.376 }, { x = -861.641, y = 3103.264 }, { x = -857.941, y = 3118.809 }, { x = -872.170, y = 3170.374 }, { x = -899.544, y = 3213.325 }, { x = -917.135, y = 3201.485 } }, area_id = 23, vision_type_list = { 33010033 } },
	-- 停车场雷boss
	{ config_id = 490033, shape = RegionShape.POLYGON, pos = { x = -824.850, y = 216.118, z = 3160.296 }, height = 52.237, point_array = { { x = -839.239, y = 3090.863 }, { x = -828.049, y = 3090.891 }, { x = -802.848, y = 3113.307 }, { x = -789.538, y = 3110.405 }, { x = -783.705, y = 3119.684 }, { x = -772.392, y = 3142.802 }, { x = -776.718, y = 3180.087 }, { x = -810.897, y = 3197.111 }, { x = -862.698, y = 3229.729 }, { x = -877.309, y = 3198.533 } }, area_id = 23, vision_type_list = { 33010034 } },
	-- 蘑菇洞地下死域
	{ config_id = 490034, shape = RegionShape.POLYGON, pos = { x = -833.082, y = 47.000, z = 3338.717 }, height = 54.000, point_array = { { x = -800.475, y = 3305.168 }, { x = -810.703, y = 3304.343 }, { x = -811.914, y = 3312.140 }, { x = -844.867, y = 3310.753 }, { x = -865.689, y = 3339.834 }, { x = -857.228, y = 3357.593 }, { x = -832.495, y = 3373.091 }, { x = -801.310, y = 3313.552 } }, area_id = 23, vision_type_list = { 33010035 } },
	-- 蘑菇洞底下传送门
	{ config_id = 490035, shape = RegionShape.POLYGON, pos = { x = -813.307, y = -10.201, z = 3159.353 }, height = 119.598, point_array = { { x = -831.506, y = 3101.711 }, { x = -851.354, y = 3109.149 }, { x = -856.387, y = 3115.278 }, { x = -842.161, y = 3178.798 }, { x = -831.215, y = 3216.994 }, { x = -772.874, y = 3207.517 }, { x = -770.226, y = 3187.493 }, { x = -808.850, y = 3120.842 } }, area_id = 23, vision_type_list = { 33010036 } },
	-- 毒气丘丘人
	{ config_id = 490036, shape = RegionShape.POLYGON, pos = { x = -414.218, y = 245.755, z = 3312.877 }, height = 73.487, point_array = { { x = -429.710, y = 3385.741 }, { x = -449.993, y = 3383.406 }, { x = -468.066, y = 3361.451 }, { x = -463.316, y = 3306.824 }, { x = -444.416, y = 3256.982 }, { x = -417.800, y = 3240.014 }, { x = -386.174, y = 3246.451 }, { x = -363.871, y = 3266.834 }, { x = -360.369, y = 3309.028 }, { x = -371.543, y = 3334.419 } }, area_id = 22, vision_type_list = { 33010039 } },
	-- 镀金
	{ config_id = 490037, shape = RegionShape.POLYGON, pos = { x = -483.953, y = 222.595, z = 3424.539 }, height = 78.501, point_array = { { x = -550.680, y = 3413.886 }, { x = -509.678, y = 3378.055 }, { x = -449.261, y = 3387.690 }, { x = -429.044, y = 3405.804 }, { x = -417.225, y = 3415.835 }, { x = -419.431, y = 3444.730 }, { x = -438.437, y = 3471.022 }, { x = -537.406, y = 3463.808 } }, area_id = 22, vision_type_list = { 33010040 } }
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
		regions = { 490001, 490002, 490003, 490004, 490005, 490006, 490007, 490008, 490009, 490010, 490011, 490012, 490013, 490014, 490015, 490016, 490017, 490018, 490019, 490020, 490021, 490022, 490023, 490024, 490025, 490026, 490027, 490028, 490029, 490030, 490031, 490032, 490033, 490034, 490035, 490036, 490037 },
		triggers = { },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================