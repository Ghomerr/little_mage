function getCommandQuantity(args) {
	// Get give quantity
	var quantityString = array_length(args) >= 3 ? args[2] : "1";
	var quantitySign = string_char_at(quantityString, 1) == "-" ? -1 : 1;
	quantityString = string_digits(quantityString);
	var quantity = quantitySign * (quantityString == "" ? 0 : real(quantityString));

	return [quantity, quantityString];
}
