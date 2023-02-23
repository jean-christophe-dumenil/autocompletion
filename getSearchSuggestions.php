
	<?php
    // Connexion à la base de données
    include('connect.php');

    // Récupération du terme de recherche envoyé en POST
    $searchTerm = isset($_GET['searchTerm']) ? $_GET['searchTerm'] : '';

    // Requête pour récupérer les suggestions de recherche
    $stmt = $conn->prepare('SELECT nom FROM pokemon WHERE nom LIKE :searchTerm ');
    $stmt->bindValue(':searchTerm', '%' . $searchTerm . '%', PDO::PARAM_STR);
    $stmt->execute();
    $results = $stmt->fetchAll(PDO::FETCH_ASSOC);

    // Formatage des résultats en JSON
    $jsonResults = [];
    foreach ($results as $result) {
        $jsonResults[] = $result['nom'];
    }
    echo json_encode($jsonResults);
	?>


