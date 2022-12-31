<?php


require "./ConnectionMySQL.php" ;


if (isset($_POST['soumettre'])){
    $utilisateur = (isset($_POST['identifiant'])) ? $_POST['identifiant'] : null;
    $password = (isset($_POST['motDePasse'])) ? $_POST['motDePasse'] : null;
}

if(!empty($utilisateur)&&!empty($password)){






$NomPE = $_POST['NomPE'];
$note = $_POST['note'];
$coef = $_POST['coef'];
$Dates = $_POST['Dates'];
$bts = $_POST['bts'];
$epreuves = $_POST['epreuves'];
$Appreciation = $_POST['Appreciation'];

$connection = getConnection();
$statement = $connection->prepare("INSERT INTO NOTE(NomPE,note,coef,Dates,bts,epreuves,Appreciation) VALUES(NomPE,:note,:coef,:Dates,:bts,:epreuves,:Appreciation)");


$statement->bindParam(':NomE', $NomE, PDO::PARAM_STR);
$statement->bindParam(':note', $note, PDO::PARAM_STR);
$statement->bindParam(':coef', $coef, PDO::PARAM_STR);
$statement->bindParam(':Dates', $dates, PDO::PARAM_STR);
$statement->bindParam(':bts', $bts, PDO::PARAM_STR);
$statement->bindParam(':epreuves', $epreuves, PDO::PARAM_STR);
$statement->bindParam(':Appreciation', $Appreciation, PDO::PARAM_STR);



$statement->execute() ;
$_SESSION['utilisateur']=$utilisateur ;
$_SESSION['estValide']=true ;
echo '<script type="text/javascript">alert("Note ajoutée"); </script>';

exit();


}

else
{
    echo '<script type="text/javascript">alert("Vous devez remplir tous les champs"); </script>';
    session_destroy();
   
    exit();
    }