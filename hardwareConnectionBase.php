<?PHP 

    $host="localhost";
    $user="root";
    $pwd="";
    $db="robotarm";

    $con = mysqli_connect($host, $user, $pwd, $db);

    $query1 = "SELECT * FROM basestate WHERE ID=(SELECT MAX(ID) FROM basestate)";

    $result1 = mysqli_query($con, $query1);
    
    if($row = mysqli_fetch_assoc($result1))
        echo $row['motion']."<br/>";
    

?>