<?php 
// Include the database config file 
include_once 'dbConfig.php'; 
 
if(!empty($_POST["drpt_id"]))
{ 
    if(!empty($_POST["doctor_slno"]))
    {
        if(!empty($_POST["app_date"]))
    {

        // Fetch state data based on the specific country 
    $query = "SELECT a.patient_slno,a.patient_name FROM `tbl_patient` a inner join patient_app_details b on a.patient_slno=b.patient_slno WHERE b.doctor_slno=".$_POST['doctor_slno']."   and b.dept_id = ".$_POST['drpt_id']."  and b.app_date = '".$_POST['app_date']."'"; 

//echo $query ;
    //SELECT a.patient_slno,a.patient_name FROM `tbl_patient` a inner join patient_app_details b on a.patient_slno=b.patient_slno where b.app_date=now()
    $result = $db->query($query); 
     
    // Generate HTML of state options list 
    if($result->num_rows > 0){ 
        echo '<option value="">Select Patient</option>'; 
        while($row = $result->fetch_assoc()){  
            echo '<option value="'.$row['patient_slno'].'">'.$row['patient_name'].'</option>'; 
        } 
    }else{ 
        echo '<option value="">Data not available</option>'; 
    }
    }
     
}

}


?>