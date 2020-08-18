<?php
    $connect = new mysqli("localhost","root", "", "db_berita");
	if ($connect) {
	   // echo "database conect";
	} else {
	  //  echo "database error";
	}
?>