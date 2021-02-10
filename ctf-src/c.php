<?php

session_start();

$inputText = $_POST['cipher'];
$inputOffset = 1;

$enc = Encipher($inputText, $inputOffset);
echo "$enc<br/>";

$dec = Decipher($enc, $inputOffset);
//echo "Dec: $dec";

function Cipher($ch, $key)
{
	if (!ctype_alpha($ch))
		return $ch;

	$offset = ord(ctype_upper($ch) ? 'A' : 'a');
	return chr(fmod(((ord($ch) + $key) - $offset), 26) + $offset);
}



function Encipher($input, $key)
{
	$output = "";

	$inputArr = str_split($input);
	foreach ($inputArr as $ch)
		$output .= Cipher($ch, $key);

	return $output;
}

function Decipher($input, $key)
{
	return Encipher($input, 26 - $key);
}


?>
