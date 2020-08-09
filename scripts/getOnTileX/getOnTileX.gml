var xOffset = argument_count > 0 ? argument[0] : 1;
return (sign(image_xscale) ? ceil (x / gameManager.TILE_SIZE) + xOffset : floor(x / gameManager.TILE_SIZE) - xOffset) * gameManager.TILE_SIZE;