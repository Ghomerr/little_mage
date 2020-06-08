var spawnUsage = "Usage: spawn [apple|buffshroom|crate|squirrel] (quantity)";

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
	
	// Init position of the spawn
	with (playerObject) {
		var posX = (sign(image_xscale) ? ceil (x / 16) + 1 : floor(x / 16) - 1) * 16;
		var posY = y - 16;
	
		if (quantity > 1) {
		
			// Compute rows and columns of the spawn
			var spawnCounter = 0;
			var rowsNum = floor(quantity / 10) + 1;
		
			for (var row = 0 ; row < rowsNum ; row++) {
				for (var col = 0 ; col < 10 and spawnCounter < quantity; col++) {
					var deltaX = posX + sign(image_xscale) * col * 16;
					var deltaY = posY - row * 16;
					instance_create_layer(deltaX, deltaY, entityLayer, entityIndex);
					spawnCounter++;
				}
			}
		
		} else {
			// Spawn only on instance
			instance_create_layer(posX, posY, entityLayer, entityIndex);
		}
	}
		
	commandResultColor = c_yellow;
	commandResult = string(quantity) + " " + spawnName + (quantity > 1 ? "s" : "") + " spawned";
	
} else {
	commandResultColor = c_red;
	commandResult = "Invalid spawn arguments. " + spawnUsage;
}