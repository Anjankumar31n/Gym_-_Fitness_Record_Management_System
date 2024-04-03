<?php
session_start();
if (!isset($_SESSION["userID"])) {
    header("Location: doctor.login.php");
    exit();
}
?>

<!DOCTYPE html>
<html lang="en" dir="ltr">

<head>
    <meta charset="utf-8">
    <link rel="apple-touch-icon" sizes="180x180" href="Resource/favicon/apple-touch-icon.png">
    <link rel="icon" type="image/png" sizes="32x32" href="Resource/logo.png">
    <link rel="icon" type="image/png" sizes="16x16" href="Resource/logo.png">
    <link rel="manifest" href="Resource/favicon/site.webmanifest">
    <link rel="stylesheet" type="text/css" href="css/pedit_style.css">
        <title>Edit</title>
</head>

<body>
    <div class="top_img"><img src="Resource/logo12.jpg"></div>
    <div class="navigation-bar" style="text-align: center">
        <a href="udashboard.php">Home</a>
        <a href="urecords.php">Records </a>
        <!--<a href="dsearch.php">Search</a>-->
        <a href="uinsert.php">Insert</a>
        <a class='logout' href="logout.php">Logout</a>
    </div>
    <div class='welcome'>
        <h2 class='welcome_mssg'>Contact Information Edit</h2>
    </div>

    <div class="wrapper">
        <div class="container">
            <form class="ci_edit_form" action="user_info_edit.php" method="post">
                <input type="text" name="ads" placeholder="Enter New Address"><br>
                <input type="text" name="pho" placeholder="Enter New Contact Number"><br>
                <input type="text" name="mail" placeholder="Enter New Email">
                <input type="submit" name="info-submit" value="Save">
            </form>
        </div>
    </div>

    <?php
    require "connection.php";
    if (isset($_POST["info-submit"])) {
        $uid = $_SESSION["userID"];
        $ads = $_POST["ads"];
        $ctc = $_POST["pho"];
        $mail = $_POST["mail"];

        $updateFields = array();

        if (!empty($ads)) {
            $updateFields[] = "addrass = '$ads'";
        }
        if (!empty($ctc)) {
            $updateFields[] = "phone = '$ctc'";
        }
        if (!empty($mail)) {
            $updateFields[] = "email = '$mail'";
        }

        $updateQuery = "UPDATE user SET " . implode(", ", $updateFields) . " WHERE u_id = '$uid'";
        $is_updated = mysqli_query($conn, $updateQuery);
        
        echo "UID: $uid, Address: $ads, Phone: $ctc, Email: $mail";


        if ($is_updated) {
            echo "<p class='alert'>Information Updated Successfully</p>";
        } else {
            echo "<p class='alert'>Error updating information</p>";
        }
    }
    ?>

    <div class="footer"></div>
</body>

</html>
