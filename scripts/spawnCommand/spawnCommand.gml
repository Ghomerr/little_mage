/// @desc Spawn something with quantity
/// @arg args of the command : spawn <entity> (<quantity>)
function spawnCommand(argument0) {

	if (argument_count == 1 and array_length_1d(argument0) >= 2) {
	
		var spawnName = argument0[1];
	
		// Get quantity
		var qtyArray = getCommandQuantity(argument0);
		var quantity = max(1, min(qtyArray[0], 100));
		//var quantityString = qtyArray[1];
	
		// Get complete spawn data
		var entityIndex = 0;
		var entityLayer = 0;
	
		switch (spawnName) {
			case "apple":
				entityIndex = appleObject;
				entityLayer = global.projLayer;
				break;
		
			case "buffshroom":
				entityIndex = buffshroomObject;
				entityLayer = global.monstersLayer;
				break;
		
			case "crate":
				entityIndex = crate1Object;
				entityLayer = global.entitiesLayer;
				break;
			
			case "squirrel":
				entityIndex = squirrelObject;
				entityLayer = global.monstersLayer;
				break;
		}
	
		var spawnCounter = 0;
		if (entityIndex != 0 and entityLayer != 0) {
		
			var entityReference = noone;
			// If no instance exist yey, create one to use with() later
			if (!instance_exists(entityIndex)) {
				entityReference = instance_create_layer(-100, -100, entityLayer, entityIndex);
			} else {
				entityReference = instance_find(entityIndex, 0);
			}
		
			// Init position of the spawn
			with (playerObject) {
				var posX = getOnTileX();
				var posY = getOnTileY();
	
				if (quantity > 1) {
					// Compute rows and columns of the spawn
					var rowsNum = floor(quantity / 10) + 1;
					for (var row = 0 ; row < rowsNum ; row++) {
						for (var col = 0 ; col < 10 and spawnCounter < quantity; col++) {
							var deltaX = posX + sign(image_xscale) * col * gameManager.TILE_SIZE;
							var deltaY = posY - row * gameManager.TILE_SIZE;
							with (entityReference) {
								if (!place_meeting(deltaX, deltaY, wallObject)) {
									instance_create_layer(deltaX, deltaY, entityLayer, entityIndex);
									spawnCounter++;
								}
							}
						}
					}
				} else {
					// Spawn only on instance
					with (entityReference) {
						if (!place_meeting(posX, posY, wallObject)) {
							instance_create_layer(posX, posY, entityLayer, entityIndex);
							spawnCounter++;
						}
					}
				}
			}
		
			commandResultColor = c_yellow;
			commandResult = string(quantity) + " " + spawnName + (spawnCounter > 1 ? "s" : "") + " spawned";
		} else {
			commandResultColor = c_red;
			commandResult = "Unknown entity to spawn. Type help spawn to see the usage." ;
		}
	} else {
		commandResultColor = c_red;
		commandResult = "Invalid spawn arguments. Type help spawn to see the usage." ;
	}


}
