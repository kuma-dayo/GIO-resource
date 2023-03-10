-- 地图配置
scene_config = {
	begin_pos = { x = 0.0, z = 0.0 },
	size = { x = 1024.0, z = 1024.0 },
	born_pos = { x = 777.090, y = 56.380, z = 923.411 },
	born_rot = { x = 0.000, y = 92.392, z = 0.000 },
	born_point_list = {
		{ pos = { x = 777.090, y = 56.380, z = 923.411 }, rot = { x = 0.000, y = 92.392, z = 0.000 } }
	},
	die_y = -20,
	vision_anchor = { x = 0.0, z = 0.0 }
}

-- 所有的区块
blocks = { 50081 }

-- 所有的区块范围坐标
block_rects = {
	{ min = { x = 0.0, z = 0.0 }, max = { x = 1024.0, z = 1024.0 } }
}

-- Dummy Points
dummy_points = { }

-- Routes
routes_config = { "routes" }