<?php
session_start();
require('../connection.php');

//If your session isn't valid, it returns you to the login screen for protection
if(empty($_SESSION['candidate_id'])){
 header("location:../access-denied.php");
} 
//retrive candidate details from the tbcandidates table
$result=mysqli_query($con, "SELECT * FROM tbcandidates WHERE candidate_id = '$_SESSION[candidate_id]'");
if (mysqli_num_rows($result)<1){
    $result = null;
}
$row = mysqli_fetch_array($result);
if($row)
 {
 // get data from db
 $stdId = $row['candidate_id'];
 $candidateName = $row['candidate_name'];
 $email = $row['email'];
 }
?>
<?php
// updating sql query
if (isset($_POST['update'])){
$myId = addslashes( $_GET[id]);
$myName = addslashes( $_POST['candidateName'] ); //prevents types of SQL injection
$politicalParty = addslashes($_POST['party'] ); //prevents types of SQL injection
$speech = addslashes($_POST['speech'] ); //prevents types of SQL injection
$myEmail = $_POST['email'];

$sql = mysqli_query($con,"UPDATE tbCandidates SET candidate_name='$myName', candidate_email='$myEmail', candidate_speech = '$speech', candidate_party = '$politicalParty' WHERE candidate_id = '$myId'" );

// redirect back to profile
 header("Location: managecandidate.php");
}
?>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html><head>
<link href="../css/user_styles.css" rel="stylesheet" type="text/css" />
<script language="JavaScript" src="../js/user.js">
</script>
</head><body bgcolor="tan">

<center><b><font color = "brown" size="6">Simple PHP Polling System</font></b></center><br><br>
<div id="page">
<div id="header">
<h1>CANDIDATE PROFILE MANAGEMENT </h1>
<a href="candidatehome.php">Home</a> | <a href="candidaterefresh.php">Current Polls</a> | <a href="managecandidate.php">Manage My Profile</a> | <a href="changepasscandidate.php">Change Password</a>| <a href="../logout.php">Logout</a>
</div>
<div id="container">
<table border="0" width="620" align="center">
<CAPTION><h3>UPDATE PROFILE</h3></CAPTION>
<form action="managecandidate.php?id=<?php echo $_SESSION['candidate_id']; ?>" method="post" onsubmit="return updateProfile(this)">
<table align="center">
<tr><td>Full name:</td><td><input type="text" style="background-color:#999999; font-weight:bold;" name="candidateName" maxlength="100" value="<?php echo $row['candidate_name']; ?>"></td></tr>
<tr><td>A short speech about your candidacy:</td><td><input type="text" style="background-color:#999999; font-weight:bold;" name="speech" maxlength="100" value="<?php echo $row['candidate_speech']; ?>"></td></tr>
<tr><td>Political Party:</td><td><input type="text" style="background-color:#999999; font-weight:bold;" name="party" maxlength="100" value="<?php echo $row['candidate_party']; ?>"></td></tr>
<tr><td>Email Address:</td><td><input type="text" style="background-color:#999999; font-weight:bold;" name="email" maxlength="100" value="<?php echo $row['candidate_email']; ?>"></td></tr>
<tr><td>&nbsp;</td></td><td><input type="submit" name="update" value="Update Profile"></td></tr>
</table>
</form>
<hr>
</div>

<div id="footer">
<div class="bottom_addr">&copy; 2012 Simple PHP Polling System. All Rights Reserved</div>
</div>
</div>
</body></html>