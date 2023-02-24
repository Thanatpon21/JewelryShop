<!doctype html>
<html lang="en">
  <head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <link href="https://fonts.googleapis.com/css?family=Roboto:300,400&display=swap" rel="stylesheet">

    <link rel="stylesheet" href="../../login-form-03/fonts/icomoon/style.css">

    <link rel="stylesheet" href="../../login-form-03/css/owl.carousel.min.css">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="../../login-form-03/css/bootstrap.min.css">
    
    <!-- Style -->
    <link rel="stylesheet" href="../../login-form-03/css/style.css">

    <title>Login Admin</title>
  </head>
  <body>
  

  <div class="half">
    <div class="bg order-1 order-md-2" style="background-image:url(images/%E0%B8%9B%E0%B8%81.jpg);"></div>
    <div class="contents order-2 order-md-1">

      <div class="container">
        <div class="row align-items-center justify-content-center">
          <div class="col-md-6">
            <div class="form-block">
              <div class="text-center mb-5">
              <h3>Login to <strong>Admin</strong></h3>
              <!-- <p class="mb-4">Lorem ipsum dolor sit amet elit. Sapiente sit aut eos consectetur adipisicing.</p> -->
              </div>
              <form action="#" method="post">
                <div class="form-group first">
                  <label for="username">Username</label>
                  <input type="text" class="form-control" placeholder="email@gmail.com" id="username">
                </div>
                <div class="form-group last mb-3">
                  <label for="password">Password</label>
                  <input type="password" class="form-control" placeholder="Your Password" id="password">
                </div>
                
                <div class="d-sm-flex mb-5 align-items-center">
                  <label class="control control--checkbox mb-3 mb-sm-0"><span class="caption">Remember me</span>
                    <input type="checkbox"/>
                    <div class="control__indicator"></div>
                  </label> 
                </div>

                <button id="Submit"  name="Submit" class="btn btn-primary" <a href="การเพิ่ม.php"> Login </a></button>
              </form>
              
<?php
if(isset($_POST['Submit'])){
	include("../connectdb.php");
	$sql = "SELECT * FROM `admin` where a_user ='{$_POST['usr']}' and a_pwd = '".md5($_POST['pwd'])."' LIMIT 1";
	$rs = mysqli_query($conn, $sql);
	$num = mysqli_num_rows($rs);
	//นับจำนวนว่าเจอการล็อกอินกี่แถวถ้าเจอจะเป็น1ไม่เจอเป็น0
	if ($num > 0){
		$data = mysqli_fetch_array($rs);
		$_SESSION['ses_id']= $data['a_id'] ;
		$_SESSION['ses_name']= $data['a_name'] ;
		
		echo "<script>";
		echo "window.location='admin.php'";
		echo "</script>";
	} else {
		echo "<script>";
		echo "alert('เข้าไม่ได้น้าค่าาา กรอกใหม่ค่าาาา');";
		echo "</script>";
	}
	
}

?>            </div>
          </div>
        </div>
      </div>
    </div>

    
  </div>
    
    

    <script src="../../login-form-03/js/jquery-3.3.1.min.js"></script>
    <script src="../../login-form-03/js/popper.min.js"></script>
    <script src="../../login-form-03/js/bootstrap.min.js"></script>
    <script src="../../login-form-03/js/main.js"></script>
  </body>
</html>