<!DOCTYPE html>
<html>
    <?php
    include 'db.php';
    ?>
    <head>
  <meta http-equiv="refresh" content="5">
</head>
        <style>
                .square {
                  height: 50px;
                  width: 50px;
                  background-color: #555;
                }

                .sample{
                    color: green;
                }
                .sample{
                    color: green;
                }
                </style>
<body>

<h2>Parking Slot Availability Status</h2>

 
<div >
    <?php
		$i=1;
	    $SQLSELECT = "SELECT * FROM park_space";
		$result_set =  mysql_query($SQLSELECT, $conn);
		while($row = mysql_fetch_array($result_set))
		{
		?>
       
       <?php 
       
         
       if($row[is_active]==1) 
       {
       echo "<div style=color:red>".$row['spot']  ."Parking spot not available</div>";
       }
       else
       {
       
       
      echo "<div style=color:green>". $row['spot']  ." Parking spot available</div>";
       }
       ?>
       </div>
			
		<?php
	    $i++;}
	    ?>
   
</div>
</body>
</html>