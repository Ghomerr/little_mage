var yOffset = argument_count > 0 ? argument[0] : 0;
return (yOffset + ceil(y / gameManager.TILE_SIZE)) * gameManager.TILE_SIZE;