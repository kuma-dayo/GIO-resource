-- 地图配置
scene_config = {
	begin_pos = { x = -3072.0, z = -3072.0 },
	size = { x = 6144.0, z = 6144.0 },
	born_pos = { x = -507.459, y = 299.350, z = 1375.713 },
	born_rot = { x = 0.000, y = 0.000, z = 0.000 },
	die_y = 105,
	vision_anchor = { x = -4000.0, z = -4000.0 }
}

-- 所有的区块
blocks = { 5001, 5002, 5003, 5004, 5005, 5006, 5007, 5008, 5009 }

-- 所有的区块范围坐标
block_rects = {
	{ min = { x = 1024.0, z = 1024.0 }, max = { x = 2048.0, z = 2048.0 } },
	{ min = { x = 1024.0, z = 0.0 }, max = { x = 2048.0, z = 1024.0 } },
	{ min = { x = 1024.0, z = -1024.0 }, max = { x = 2048.0, z = 0.0 } },
	{ min = { x = 0.0, z = 1024.0 }, max = { x = 1024.0, z = 2048.0 } },
	{ min = { x = 0.0, z = 0.0 }, max = { x = 1024.0, z = 1024.0 } },
	{ min = { x = 0.0, z = -1024.0 }, max = { x = 1024.0, z = 0.0 } },
	{ min = { x = -1024.0, z = 1024.0 }, max = { x = 0.0, z = 2048.0 } },
	{ min = { x = -1024.0, z = 0.0 }, max = { x = 0.0, z = 1024.0 } },
	{ min = { x = -1024.0, z = -1024.0 }, max = { x = 0.0, z = 0.0 } }
}

-- Dummy Points
dummy_points = { "dummy_points" }

-- Routes
routes_config = { "routes" }