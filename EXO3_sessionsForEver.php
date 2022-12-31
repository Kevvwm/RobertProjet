<?php
session_start();
if ( isset($_SESSION['utilisateur']) && isset($_SESSION['estValide'])
&& $_SESSION['estValide'] == true )
{
echo "Bonjour Mme / Mr $_SESSION[utilisateur] Vous etes sur votre session<BR>";

echo "Cette page vous sert a mettre les notes de vos eleves <BR>";
header('Location: ../vues/note.html'); 
}
else {
echo "Les brigands cherchant à accéder à des ressources protégées <BR>";
echo "Seront sévèrement chatiés <BR>";
echo 'Soyez raisonnables et identifiez vous ! <a href="inscription.htm"> Login </a>';
}

session_destroy();

?>