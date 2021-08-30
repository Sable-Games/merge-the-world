/// @description Draw world map
for (var xx = 0; xx < ds_grid_width(world_map); xx++) {
	for (var yy = 0; yy < ds_grid_height(world_map); yy++) {
		chunk = ds_grid_get(world_map, xx, yy);
		
		for (var chunk_x = 0; chunk_x < ds_grid_width(chunk); chunk_x++) {
			for (var chunk_y = 0; chunk_y < ds_grid_height(chunk); chunk_y++) {
				tile = ds_grid_get(chunk, chunk_x, chunk_y);
				draw_sprite(
					ds_map_find_value(tile, "sprite_index"),
					0,
					chunk_x * xx * 64,
					chunk_y * yy * 64
				);
			}
		}
	}
}