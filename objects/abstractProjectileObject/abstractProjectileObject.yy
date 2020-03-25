{
    "id": "7f34e096-7366-457c-817b-7dcf13435218",
    "modelName": "GMObject",
    "mvc": "1.0",
    "name": "abstractProjectileObject",
    "eventList": [
        {
            "id": "beccbc5a-5213-4d85-9f60-f017eb4ec225",
            "modelName": "GMEvent",
            "mvc": "1.0",
            "IsDnD": false,
            "collisionObjectId": "00000000-0000-0000-0000-000000000000",
            "enumb": 0,
            "eventtype": 3,
            "m_owner": "7f34e096-7366-457c-817b-7dcf13435218"
        },
        {
            "id": "90672f65-d35c-4ece-bf0b-a37897a2fce6",
            "modelName": "GMEvent",
            "mvc": "1.0",
            "IsDnD": false,
            "collisionObjectId": "00000000-0000-0000-0000-000000000000",
            "enumb": 0,
            "eventtype": 0,
            "m_owner": "7f34e096-7366-457c-817b-7dcf13435218"
        },
        {
            "id": "774b01f1-dc6e-4da5-8d61-d1c945202ec2",
            "modelName": "GMEvent",
            "mvc": "1.0",
            "IsDnD": false,
            "collisionObjectId": "00000000-0000-0000-0000-000000000000",
            "enumb": 1,
            "eventtype": 3,
            "m_owner": "7f34e096-7366-457c-817b-7dcf13435218"
        },
        {
            "id": "1b370b03-3475-4e7a-97fb-a0d141d863ba",
            "modelName": "GMEvent",
            "mvc": "1.0",
            "IsDnD": false,
            "collisionObjectId": "00000000-0000-0000-0000-000000000000",
            "enumb": 0,
            "eventtype": 8,
            "m_owner": "7f34e096-7366-457c-817b-7dcf13435218"
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
            "id": "fabbc6f1-b136-4eab-ba62-366e45479963",
            "modelName": "GMObjectProperty",
            "mvc": "1.0",
            "listItems": null,
            "multiselect": false,
            "rangeEnabled": false,
            "rangeMax": 10,
            "rangeMin": 0,
            "resourceFilter": 1023,
            "value": "4",
            "varName": "DEFAULT_SPEED",
            "varType": 0
        },
        {
            "id": "c0b99a0b-f7b3-4284-8ddd-a8062a4c58a7",
            "modelName": "GMObjectProperty",
            "mvc": "1.0",
            "listItems": null,
            "multiselect": false,
            "rangeEnabled": false,
            "rangeMax": 10,
            "rangeMin": 0,
            "resourceFilter": 1023,
            "value": "0",
            "varName": "BACKUP_SPEED",
            "varType": 0
        },
        {
            "id": "cfff63a4-6ea8-49c9-a4e4-ace4e21add26",
            "modelName": "GMObjectProperty",
            "mvc": "1.0",
            "listItems": null,
            "multiselect": false,
            "rangeEnabled": false,
            "rangeMax": 10,
            "rangeMin": 0,
            "resourceFilter": 1023,
            "value": "0",
            "varName": "GRV",
            "varType": 0
        },
        {
            "id": "54afb833-16b1-446a-a6de-c5edf1d0146a",
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
        },
        {
            "id": "0b78330d-4bae-464b-a3f3-2c5abc1b3cce",
            "modelName": "GMObjectProperty",
            "mvc": "1.0",
            "listItems": null,
            "multiselect": false,
            "rangeEnabled": false,
            "rangeMax": 10,
            "rangeMin": 0,
            "resourceFilter": 1023,
            "value": "noone",
            "varName": "onEntityBurstObject",
            "varType": 5
        },
        {
            "id": "9a62caa3-0f43-4e92-9ced-037540617723",
            "modelName": "GMObjectProperty",
            "mvc": "1.0",
            "listItems": null,
            "multiselect": false,
            "rangeEnabled": false,
            "rangeMax": 10,
            "rangeMin": 0,
            "resourceFilter": 1023,
            "value": "noone",
            "varName": "sound",
            "varType": 5
        },
        {
            "id": "acf9cb41-2572-4950-9ae3-94096bfd6b84",
            "modelName": "GMObjectProperty",
            "mvc": "1.0",
            "listItems": null,
            "multiselect": false,
            "rangeEnabled": false,
            "rangeMax": 10,
            "rangeMin": 0,
            "resourceFilter": 1023,
            "value": "noone",
            "varName": "shooter",
            "varType": 0
        },
        {
            "id": "66cb98b9-03ba-44f4-b4e7-591fbeeb6b29",
            "modelName": "GMObjectProperty",
            "mvc": "1.0",
            "listItems": null,
            "multiselect": false,
            "rangeEnabled": false,
            "rangeMax": 10,
            "rangeMin": 0,
            "resourceFilter": 1023,
            "value": "0",
            "varName": "isFalling",
            "varType": 3
        },
        {
            "id": "9acd0d96-462b-4f40-8f80-4e03c8487562",
            "modelName": "GMObjectProperty",
            "mvc": "1.0",
            "listItems": null,
            "multiselect": false,
            "rangeEnabled": false,
            "rangeMax": 10,
            "rangeMin": 0,
            "resourceFilter": 1023,
            "value": "0",
            "varName": "FALLING_GRV",
            "varType": 0
        },
        {
            "id": "3ea05729-2787-4e90-8f89-a22102e8688f",
            "modelName": "GMObjectProperty",
            "mvc": "1.0",
            "listItems": null,
            "multiselect": false,
            "rangeEnabled": false,
            "rangeMax": 10,
            "rangeMin": 0,
            "resourceFilter": 1023,
            "value": "0",
            "varName": "STEP_ANGLE",
            "varType": 0
        }
    ],
    "solid": false,
    "spriteId": "00000000-0000-0000-0000-000000000000",
    "visible": true
}