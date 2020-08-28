/// @desc split the given string using the delimeter
/// @author http://kishimotostudios.com/articles/input_text_gms/
/// @arg source string
/// @arg delimiter 
function split(argument0, argument1) {
	{
	  var delimiter = argument1;
	  var theString = argument0 + delimiter;

	  var delimiterLength = string_length(delimiter);
	  var count = string_count(delimiter, theString);
	  var position = 0;

	  var returnArray;
	  for (var i = 0; i < count; ++i)
	  {
	    position = string_pos(delimiter, theString) - 1;
	    returnArray[i] = string_copy(theString, 1, position);
	    theString = string_delete(theString, 1, position + delimiterLength);
	  }

	  return returnArray;
	}


}
