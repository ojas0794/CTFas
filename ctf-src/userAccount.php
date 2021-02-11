<?php
//start session
session_start();

require('config.php');

if(isset($_POST['forgotSubmit'])){
    //check whether email is empty
    if(!empty($_POST['username']) && !empty($_POST['card']) && !empty($_POST['newpass']) && !empty($_POST['confpass'])) {
         
        $username = $_POST['username'];
        $card = $_POST['card'];
        $newpass = $_POST['newpass'];
        $confpass = $_POST['confpass'];
        $sql = "SELECT * FROM users WHERE username='$username' AND card = '$card'";
        $result = mysqli_query($conn, $sql);

        if (mysqli_num_rows($result) > 0) {
        // output data of each row
            while($row = mysqli_fetch_assoc($result)) {
                if($newpass == $confpass){

                    $respass = password_hash($newpass, PASSWORD_DEFAULT);

                    $update = "UPDATE users SET password='$respass' WHERE username ='$username'";
                    if ($conn->query($update) === TRUE) {
                    echo "Record updated successfully";
                    } else {
                    echo "Error updating record: " . $conn->error;
                    }
                }
            }
        } else {
        echo "0 results";
        }
        

    }
}

?>