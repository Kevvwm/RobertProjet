<?php
session_start();

require "./ConnectionMySQL.php" ;


if (isset($_POST['soumettre'])){
    $utilisateur = (isset($_POST['identifiant'])) ? $_POST['identifiant'] : null;
    $password = (isset($_POST['motDePasse'])) ? $_POST['motDePasse'] : null;
}

if(!empty($utilisateur)&&!empty($password)){


$hashDuMotDePasse = password_hash($password, PASSWORD_DEFAULT);

$email = $_POST['email'];
$CmotDePasse = $_POST['CmotDePasse'];
$nom = $_POST['nom'];
$prenom = $_POST['prenom'];


$connection = getConnection();
$statement = $connection->prepare("INSERT INTO COMPTES(identifiant,motDePasse,email,CmotDePasse,nom,prenom) VALUES(:identifiant,:motDePasse,:email,:CmotDePasse,:nom,:prenom)");

$statement->bindParam(':identifiant', $utilisateur, PDO::PARAM_STR);
$statement->bindParam(':motDePasse', $hashDuMotDePasse, PDO::PARAM_STR);
$statement->bindParam(':email', $email, PDO::PARAM_STR);
$statement->bindParam(':CmotDePasse', $hashDuMotDePasse, PDO::PARAM_STR);
$statement->bindParam(':nom', $nom, PDO::PARAM_STR);
$statement->bindParam(':prenom', $prenom, PDO::PARAM_STR);



$statement->execute() ;
$_SESSION['utilisateur']=$utilisateur ;
$_SESSION['estValide']=true ;

header('Location: http://localhost/kwang/vues/inscription.htm') ;
exit();


}

else
{
    echo '<script type="text/javascript">alert("Vous devez remplir tous les champs"); </script>';
    session_destroy();
    header('Location: ../vues/EXO1_FormulaireEnregistrement.html');    
    exit();
    }