<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <meta http-equiv="X-UA-Compatible" content="ie=edge" />
    <link rel="stylesheet" href="index.css" />
    <title>Dashboard</title>
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
        
       <!-- <h4 style='margin-top:5%'><a href='gih2019/payment'>Pay Now</a></h4>-->
       
       <button id="myBtn">Pay Now</button>

        <!-- The Modal -->
        <div id="myModal" class="modal">
        
          <!-- Modal content -->
          <div class="modal-content">
            <span class="close">&times;</span>
            <?php
                echo '<h4>Vehicle NO: '.$vno.'</h4>';
                date_default_timezone_set('Aisa/Kolkata');

                // Then call the date functions
                $date2 = date('Y-m-d H:i:s',strtotime('+5 hour 30 minutes'));
                $diff = strtotime($date2)-strtotime($entry);
                $minutes = floor($diff/60);
                echo '<h4>time:  '.$minutes.' Minutes</h4>';
                $amount = round($minutes * 1);
                echo '<h4>Total amount: &#8377;'.$amount.'</h4>';
            ?>
            <form action="/purchase" method="POST">
            <!-- Note that the amount is in its subunit value = 599 -->
            <script
                src="https://checkout.razorpay.com/v1/checkout.js"
                data-key="rzp_test_jpNOE0QyzzNLoF"
                data-amount="<?echo $amount;?>" // The amount is shown in currency subunits. Actual amount is ₹599.
                data-order_id="<?echo $amount;?>" // Pass the order ID if you are using Razorpay Orders.
                data-currency="INR" // Optional. Same as Order currency
                data-buttontext="Pay with Razorpay"
                data-name="Merchant Name"
                data-description="Purchase Description"
                data-image="https://your-awesome-site.com/your_logo.jpg"
                data-prefill.name="Gaurav Kumar"
                data-prefill.email="test@test.com"
                data-theme.color="#F37254"
            ></script>
            <input type="hidden" value="Hidden Element" name="hidden">
            </form>
          </div>
        
        </div>
        
        <iframe align="center" width="100%" height="100%" src="<? echo $frameurl; ?>"  
  frameborder="yes" scrolling="yes" name="myIframe" id="myIframe"> </iframe>
      </div>
    </div>
    
    <script>
// Get the modal
var modal = document.getElementById('myModal');

// Get the button that opens the modal
var btn = document.getElementById("myBtn");

// Get the <span> element that closes the modal
var span = document.getElementsByClassName("close")[0];

// When the user clicks the button, open the modal 
btn.onclick = function() {
  modal.style.display = "block";
}

// When the user clicks on <span> (x), close the modal
span.onclick = function() {
  modal.style.display = "none";
}

// When the user clicks anywhere outside of the modal, close it
window.onclick = function(event) {
  if (event.target == modal) {
    modal.style.display = "none";
  }
}
</script>
  </body>
  
</html>

</body>