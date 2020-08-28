function getHatFromStaffAngle() {
	var staffAngle = staffObject.image_angle;
	with (playerObject) {
		if (staffAngle > NAT_UI[WHEEL_UI.MIN] and staffAngle < NAT_UI[WHEEL_UI.MAX]) {
			return NAT_UI;	
		}
		if (staffAngle > ICE_UI[WHEEL_UI.MIN] and staffAngle < ICE_UI[WHEEL_UI.MAX]) {
			return ICE_UI;	
		}
		if (staffAngle > STO_UI[WHEEL_UI.MIN] and staffAngle < STO_UI[WHEEL_UI.MAX]) {
			return STO_UI;	
		}
		if (staffAngle > FIR_UI[WHEEL_UI.MIN] and staffAngle < FIR_UI[WHEEL_UI.MAX]) {
			return FIR_UI;	
		}
		if (staffAngle > DEA_UI[WHEEL_UI.MIN] and staffAngle < DEA_UI[WHEEL_UI.MAX]) {
			return DEA_UI;	
		}
		if (staffAngle > ELE_UI[WHEEL_UI.MIN] and staffAngle < ELE_UI[WHEEL_UI.MAX]) {
			return ELE_UI;	
		}
		if (staffAngle > WIN_UI[WHEEL_UI.MIN] and staffAngle < WIN_UI[WHEEL_UI.MAX]) {
			return WIN_UI;	
		}
		if (staffAngle > GRA_UI[WHEEL_UI.MIN] and staffAngle < GRA_UI[WHEEL_UI.MAX]) {
			return GRA_UI;	
		}
		return noone;
	}


}
