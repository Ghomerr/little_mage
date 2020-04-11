{
    "id": "89b37f63-04ae-45e4-8232-ac168afa89e2",
    "modelName": "GMObject",
    "mvc": "1.0",
    "name": "shootableObject",
    "eventList": [
        {
            "id": "5fefb69d-0a73-44d4-99cb-f090a42b7d69",
            "modelName": "GMEvent",
            "mvc": "1.0",
            "IsDnD": false,
            "collisionObjectId": "00000000-0000-0000-0000-000000000000",
            "enumb": 0,
            "eventtype": 8,
            "m_owner": "89b37f63-04ae-45e4-8232-ac168afa89e2"
        },
        {
            "id": "4b4d8f4d-f919-4ab0-b77c-f4fdcc66983b",
            "modelName": "GMEvent",
            "mvc": "1.0",
            "IsDnD": false,
            "collisionObjectId": "00000000-0000-0000-0000-000000000000",
            "enumb": 1,
            "eventtype": 3,
            "m_owner": "89b37f63-04ae-45e4-8232-ac168afa89e2"
        },
        {
            "id": "33b90255-b496-430f-8d32-fb00d5b9debe",
            "modelName": "GMEvent",
            "mvc": "1.0",
            "IsDnD": false,
            "collisionObjectId": "00000000-0000-0000-0000-000000000000",
            "enumb": 0,
            "eventtype": 0,
            "m_owner": "89b37f63-04ae-45e4-8232-ac168afa89e2"
        },
        {
            "id": "46ac331e-d31b-428c-85e4-82faa7c41a62",
            "modelName": "GMEvent",
            "mvc": "1.0",
            "IsDnD": false,
            "collisionObjectId": "00000000-0000-0000-0000-000000000000",
            "enumb": 0,
            "eventtype": 1,
            "m_owner": "89b37f63-04ae-45e4-8232-ac168afa89e2"
        },
        {
            "id": "ba616ce8-a8f0-4406-af8f-4ac933dd55bb",
            "modelName": "GMEvent",
            "mvc": "1.0",
            "IsDnD": false,
            "collisionObjectId": "00000000-0000-0000-0000-000000000000",
            "enumb": 0,
            "eventtype": 3,
            "m_owner": "89b37f63-04ae-45e4-8232-ac168afa89e2"
        }
    ],
    "maskSpriteId": "00000000-0000-0000-0000-000000000000",
    "overriddenProperties": null,
    "parentObjectId": "00000000-0000-0000-0000-000000000000",
    "persistent": false,
    "physicsAngularDamping": 0.1,
    "physicsDensity": 0.5,
    "physicsFriction": 0.2,
    "physicsGroup": 0,
    "physicsKinematic": false,
    "physicsLinearDamping": 0.1,
    "physicsObject": false,
    "physicsRestitution": 0.1,
    "physicsSensor": false,
    "physicsShape": 1,
    "physicsShapePoints": null,
    "physicsStartAwake": true,
    "properties": [
        {
            "id": "b073bea3-0ae2-4fd7-aaf1-abaaa2c9359a",
            "modelName": "GMObjectProperty",
            "mvc": "1.0",
            "listItems": null,
            "multiselect": false,
            "rangeEnabled": false,
            "rangeMax": 10,
            "rangeMin": 0,
            "resourceFilter": 1023,
            "value": "0",
            "varName": "isDying",
            "varType": 3
        },
        {
            "id": "2890c6d1-d742-4409-89cd-61d77080b726",
            "modelName": "GMObjectProperty",
            "mvc": "1.0",
            "listItems": null,
            "multiselect": false,
            "rangeEnabled": false,
            "rangeMax": 10,
            "rangeMin": 0,
            "resourceFilter": 1023,
            "value": "0",
            "varName": "isCollidable",
            "varType": 3
        },
        {
            "id": "c2302562-bcba-4df9-9293-b25e6de8fab4",
            "modelName": "GMObjectProperty",
            "mvc": "1.0",
            "listItems": null,
            "multiselect": false,
            "rangeEnabled": false,
            "rangeMax": 10,
            "rangeMin": 0,
            "resourceFilter": 1023,
            "value": "2",
            "varName": "hp",
            "varType": 0
        },
        {
            "id": "d41dbcc7-6e9e-4f35-9f3c-3646f15dad84",
            "modelName": "GMObjectProperty",
            "mvc": "1.0",
            "listItems": null,
            "multiselect": false,
            "rangeEnabled": false,
            "rangeMax": 10,
            "rangeMin": 0,
            "resourceFilter": 1023,
            "value": "5",
            "varName": "hitDelay",
            "varType": 1
        },
        {
            "id": "8693fe03-8db6-4e67-9b84-7759c18bc6ec",
            "modelName": "GMObjectProperty",
            "mvc": "1.0",
            "listItems": null,
            "multiselect": false,
            "rangeEnabled": false,
            "rangeMax": 10,
            "rangeMin": 0,
            "resourceFilter": 1023,
            "value": "whiteShader",
            "varName": "hitShader",
            "varType": 5
        },
        {
            "id": "5d8e79d4-4099-46da-9d39-08d89b1ef5ab",
            "modelName": "GMObjectProperty",
            "mvc": "1.0",
            "listItems": null,
            "multiselect": false,
            "rangeEnabled": false,
            "rangeMax": 10,
            "rangeMin": 0,
            "resourceFilter": 1023,
            "value": "0",
            "varName": "isPlayer",
            "varType": 3
        },
        {
            "id": "9dccba65-68bc-40b3-a167-e10c254dd900",
            "modelName": "GMObjectProperty",
            "mvc": "1.0",
            "listItems": null,
            "multiselect": false,
            "rangeEnabled": false,
            "rangeMax": 10,
            "rangeMin": 0,
            "resourceFilter": 1023,
            "value": "0",
            "varName": "isLivingEntity",
            "varType": 3
        },
        {
            "id": "5e44a1a6-0fcc-4684-9a10-f9a8bbc4ca79",
            "modelName": "GMObjectProperty",
            "mvc": "1.0",
            "listItems": null,
            "multiselect": false,
            "rangeEnabled": false,
            "rangeMax": 10,
            "rangeMin": 0,
            "resourceFilter": 1023,
            "value": "noone",
            "varName": "burstObject",
            "varType": 5
        }
    ],
    "solid": false,
    "spriteId": "00000000-0000-0000-0000-000000000000",
    "visible": true
}