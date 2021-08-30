/// @description Generates world chunks and the tiles within them
function gen_world_map(map_width, map_height, chunk_width, chunk_height){
	world_map = ds_grid_create(map_width, map_height);
	
	for (var map_x = 0; map_x < map_width; map_x++) {
		for (var map_y = 0; map_y < map_height; map_y++) {
			chunk = ds_grid_create(chunk_width, chunk_height);
			
			for (var chunk_x = 0; chunk_x < chunk_width; chunk_x++) {
				for (var chunk_y = 0; chunk_y < chunk_height; chunk_y++) {
					fill_tile = gen_tile("Void", , chunk_x, chunk_y);
					ds_grid_add(chunk, chunk_x, chunk_y, fill_tile);
				}
			}
			
			ds_grid_add(world_map, map_x, map_y, chunk);
		}
	}
	
	return world_map;
}