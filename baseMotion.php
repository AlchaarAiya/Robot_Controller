<?PHP 

$host="localhost";
$user="root";
$pwd="";
$db="robotarm";

$state = NULL;

if (isset($_POST["l"]))
    $state = "left";
else if(isset($_POST["r"]))
    $state = "right";
else if(isset($_POST["f"]))
    $state = "forward";
else if(isset($_POST["b"]))
    $state = "backward";
else if(isset($_POST["stop"]))
    $state = "stop";
 
    
if($state != NULL)
{   
    $con = mysqli_connect($host, $user, $pwd, $db);

    $query = "INSERT INTO baseState (motion) VALUES ('$state')";

    if ($con->query($query) === TRUE) 
    {
        echo "<script>alert('Base Motion Values Saved Successfully');</script>";
        echo "<script>window.location='BaseController.html';</script>";

    } 
    else 
    {
        echo "Error: " . $query . "<br>" . $con->error . " <hr>";
    }
}
else
{
    echo "<script>alert('Error Ocuured! Kindly try again later');</script>";
    echo "<script>window.location='BaseController.html';</script>";
}

?>