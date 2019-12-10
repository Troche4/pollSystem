<?php
require('../connection.php');

session_start();
//If your session isn't valid, it returns you to the login screen for protection
if(empty($_SESSION['candidate_id'])){
 header("location:../access-denied.php");
}
?>
<html><head>
<link href="../css/user_styles.css" rel="stylesheet" type="text/css" />
</head><body bgcolor="tan">

<center><b><font color = "brown" size="6">Simple PHP Polling System</font></b></center><br><br>
<div id="page">
<div id="header">
<h1>CANDIDATE HOME </h1>
<a href="candidatehome.php">Home</a> | <a href="candidaterefresh.php">Current Polls</a> | <a href="managecandidate.php">Manage My Profile</a> | <a href="changepasscandidate.php">Change Password</a>| <a href="../logout.php">Logout</a>
</div>
<div id="container">
<p> Click a link above to do some stuff.</p>
</div>
<div id="footer">
<div class="bottom_addr">&copy; 2012 Simple PHP Polling System. All Rights Reserved</div>
</div>
</div>
</body></html>