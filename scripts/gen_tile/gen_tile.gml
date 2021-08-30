/// @description Generate a tile to be stored in a map chunk
function gen_tile(
	tile_name,
	tile_sprite_index,
	tile_x,
	tile_y
){
	tile = ds_map_create();
	
	ds_map_add(tile, "name", tile_name);
	ds_map_add(tile, "sprite_index", tile_sprite_index);
	ds_map_add(tile, "x", tile_x);
	ds_map_add(tile, "y", tile_y);
	
	return tile;
}