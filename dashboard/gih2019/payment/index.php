<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <meta http-equiv="X-UA-Compatible" content="ie=edge" />
    <link rel="stylesheet" href="index.css" />
    <script src="verify.js"></script>
    <title>Document</title>
  </head>
  <body>
    <div class="login-group">
      <div class="form">
        <h1>DashBoard</h1>
        <?php 
            include 'db.php';
            if(!include('db.php'))
            echo '<p>404</p>';
            $keyp = $_GET['no'];
            $dashdetail = "SELECT * FROM `park_log` WHERE v_no ='$keyp' ORDER BY `park_log`.`p_sr_no` DESC LIMIT 1";
            $resultdash = mysql_query( $dashdetail, $conn );
            	if(!$resultdash )
				{
				    echo '<h5>not found</h5>';
				
				}
				if(mysql_num_rows($resultdash)==0)
				{
				    echo '<h5>not record</h5>';
				
				}
				
            $row = mysql_fetch_assoc($resultdash);
            $vno = $row['v_no'];
            $entry = $row['start_time'];
            $loc = $row['location'];
            
            
            echo '<h4>Vehicle NO: '.$vno.'</h4>';
            echo '<h4>Entry Time: '.$entry.'</h4>';
            echo '<h4>Parking Location: '.$loc.'</h4>';
            
            $carspot = strtolower($loc);
            $frameurl = 'https://maps.mapwize.io/#/f/p/smartio_parking/entrance/t/p/smartio_parking/'.$carspot.'?k=e14faf182d481801&embed=true';
        ?>
        <h4 style='margin-top:5%'><a href='www.sal.edu.in/gih2019/payment'>Pay Now</a></h4>
        <iframe align="center" width="100%" height="100%" src="<? echo $frameurl; ?>"  
  frameborder="yes" scrolling="yes" name="myIframe" id="myIframe"> </iframe>
      </div>
    </div>
  </body>
  
</html>

</body>