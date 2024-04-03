<?php
require 'connection.php';
session_start();

if (isset($_SESSION["userID"])) {
    header("Location: aregister.php");
    exit();
}

if ($_SERVER["REQUEST_METHOD"] == "POST") {
    // Validate input fields
    if (empty($_POST["userID"]) || empty($_POST["email"]) || empty($_POST["npass"]) || empty($_POST["cpass"])) {
        header("Location: forgot.php?error=emptyfields");
        exit();
    } else {
        $userID = $_POST["userID"];
        $email = $_POST["email"];
        $newPassword = $_POST["npass"];
        $confirmPassword = $_POST["cpass"];

        // Check if new password matches confirm password
        if ($newPassword !== $confirmPassword) {
            header("Location: user_pass.php?error=passwordmismatch");
            exit();
        }else {
            $selectQuery = "SELECT u_id FROM user WHERE email = '$email'";
            $result = mysqli_query($conn, $selectQuery);
            
            if ($result) {
                // Check if a row is returned
                if (mysqli_num_rows($result) > 0) {
                    $updateQuery = "UPDATE user_login SET password=' $newPassword ' WHERE u_id = ' $userID'";
                     $is_updated = mysqli_query($conn, $updateQuery);
        
                    if ($is_updated) {
                    echo "<p class='alert'>Information Updated Successfully</p>";
                     } else {
                         echo "<p class='alert'>Error updating information</p>";
                    }
                } else {
                    // No user found with the provided email
                    echo "<p class='alert'>User not found</p>";
                }  
     }
} 
}
}else {
    header("Location: forgot.php");
    exit();
}
?>
