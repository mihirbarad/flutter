<?php


include('');
$firstname = $_POST['firstname'];
$email = $_POST['email'];

$sql = "insert into tbl_chairmen (firstname,email) values ('$firstname','$email')";
if (mysqli_query($con, $sql)) {

    echo json_encode(array('response' => "successfull"));
} else {
    echo json_encode(array('response' => "failed"));
}
mysqli_close($con);