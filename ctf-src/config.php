<?php

$conn = mysqli_connect("ctf-db","root","","login");

if (mysqli_connect_errno())
  {
  echo "Failed to connect to MySQL: " . mysqli_connect_error();
  }

?>