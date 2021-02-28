<?php

session_start();

@$Email = $_POST['uemail'];
@$password = $_POST['psw'];
@$submit = $_POST['submit'];

if($submit)
{

	if(@$Email && @$password)
	{
		@$connect = mysqli_connect("localhost","root","","charity") or die("couldn't connect!");
		@$query = mysqli_query($connect , "SELECT * FROM `ngo_details` WHERE `email`='$Email' AND `Permission`='1'");
		@$numrows = mysqli_num_rows($query);

		if(@$numrows != 0)
		{
			while(@$row = mysqli_fetch_assoc(@$query))
			{
				@$dbemail = $row['email'];
				@$dbpassword = $row['password'];
				@$dbname =  $row['name'];
				@$dbad =  $row['address'];
				@$dbcontact =  $row['contact_ngo'];
				@$dbtype =  $row['type'];
			}
			if (@$dbemail == @$Email && @$dbpassword == @$password)
			{	
				$_SESSION['name']=$dbname;
				$_SESSION['email']=$dbemail;
				$_SESSION['address']=$dbad;
				$_SESSION['contact']=$dbcontact;
				$_SESSION['type']=$dbtype;
				echo '<script type="text/javascript">
						alert("successfully logged in");
						location="NGO_homepage.php";
						</script>';
			}
			else
			{
				echo '<script type="text/javascript">
						alert("incorrect credential");
						location="NGO_login.html";
						</script>';
			}

		}
		else
		{
				@$query001 = mysqli_query($connect , "SELECT * FROM `ngo_details` WHERE `email`='$Email' AND `Permission`='0'");
				@$numrows1 = mysqli_num_rows($query001);
				if(@$numrows1 != 0)
				{
				echo '<script type="text/javascript">
						alert("Email id not verified");
						location="NGO_login.html";
						</script>';
				}
				else
				{
				echo '<script type="text/javascript">
						alert("the admin does not exist");
						location="NGO_login.html";
						</script>';

				}

		}		
	}
	else
	{
		echo '<script>alert("please enter a username and password")</script>';		
	}

}

?>
