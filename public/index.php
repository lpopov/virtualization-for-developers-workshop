<?php
$mysqli = new mysqli("localhost", "vagrant", "vagrant", "vagrant");

/* check connection */
if ($mysqli->connect_errno) {
    printf("Connect failed: %s\n", $mysqli->connect_error);
    exit();
}

/* Select queries return a resultset */
if ($result = $mysqli->query("SELECT * FROM items ")) {
    printf("Select returned %d rows.\n", $result->num_rows);
    
    foreach($result as $row){
        var_dump($row);
    }

    /* free result set */
    $result->close();
}

$mysqli->close();