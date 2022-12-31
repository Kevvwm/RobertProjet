<?php
session_start();
require "./ConnectionMySQL.php" ;
// Si il y a une entrée 'soumettre' comme clef dans la variable superglobale $_POST
// alors on valorise $utilisateur à la valeur correspondante à la clef identifiant
// si elle existe et à null sinon
// Pareil pour $password
// Autrement dit: si l'utilisateur a entré du texte pour le champ de formulaire
// ce texte va dans la variable utilisateur
// Et si il a saisi quelque chose dans le champ motDePasse ce texte va dans le
// variable $password
// print_r($_POST);

if (isset($_POST['soumettre'])){
    $utilisateur = (isset($_POST['identifiant'])) ? $_POST['identifiant'] : null;
    $password = (isset($_POST['motDePasse'])) ? $_POST['motDePasse'] : null;
}

if(!empty($utilisateur)&&!empty($password)){

$sql = "select identifiant, motDePasse from comptes where identifiant= ?" ;
$connection = getConnection();
$instructions = $connection->prepare($sql);
$instructions->bindParam(1, $utilisateur, PDO::PARAM_STR);
//$instructions->bindParam(2, $password, PDO::PARAM_STR);
$instructions->execute();
$resultat = $instructions->fetchAll() ;

//print_r($resultat);
$loginValide=password_verify($password,$resultat[0]['motDePasse']);
// Récupération ici du hash du mot de passe en provenance de la BDD situé dans $resultat

// Vérification avec la fonction PHP password_verify

// Si vérification valide, on affiche que l'utilisateur est bien loggé
if ($loginValide){
$_SESSION['utilisateur']=$utilisateur ;
$_SESSION['estValide']=true ;
echo '<script type="text/javascript">alert("Utilisateur bien loggé"); </script>';  
header('Location: ../vues/EXO3_sessionsForEver.php');

}
else
{
session_destroy();
header('Location: ../vues/inscription.htm');    

}

}
else
{
session_destroy();
header('Location: ../vues/inscription.htm');    

}