<?php

$servername = 'YOUR_HOST_NAME';
$username = 'YOUR_USERNAME';
$password = 'YOUR_PASSWORD';
$database = 'YOUR_DATABASE_NAME';

// Create connection
$conn = mysqli_connect($servername, $username, $password, $database);

// Check connection
if(!$conn) {
	die('Connection failed: ' . mysqli_connect_error());
}

$sql = 'select * from students';
$result = $conn->query($sql);

if($result->num_rows > 0) {
	while($row = $result->fetch_assoc()) {
		echo 'ID: ' . $row['id'] . ', First name: ' . $row['first_name'] . ', Last name: ' . $row['last_name'] . ', Score: ' . $row['score'] . '<br>';
	}
}

// Close connection
mysqli_close($conn);
