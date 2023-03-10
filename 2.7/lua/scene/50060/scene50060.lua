-- 地图配置
scene_config = {
	begin_pos = { x = -512.0, z = -512.0 },
	size = { x = 1024.0, z = 1024.0 },
	born_pos = { x = -3.841, y = 13.005, z = 9.019 },
	born_rot = { x = 0.000, y = 90.000, z = 0.000 },
	die_y = -100,
	vision_anchor = { x = -1000.0, z = -1000.0 }
}

-- 所有的区块
blocks = { 50060 }

-- 所有的区块范围坐标
block_rects = {
	{ min = { x = -512.0, z = -512.0 }, max = { x = 512.0, z = 512.0 } }
}

-- Dummy Points
dummy_points = { }

-- Routes
routes_config = { "routes" }