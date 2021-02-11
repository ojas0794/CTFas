<?php

$conn = mysqli_connect("ctf-db_1","root","","register");

if (mysqli_connect_errno())
  {
  echo "Failed to connect to MySQL: " . mysqli_connect_error();
  }

?>