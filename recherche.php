<!DOCTYPE html>
<html>
<head>
	<title>Résultats de recherche</title>
    <script src="script.js"></script>
</head>
<body>
	<header>
		<form method="get" action="recherche.php">
			<input type="text" name="search" placeholder="Recherche..." autocomplete="off" value="<?php echo isset($_GET['search']) ? $_GET['search'] : ''; ?>">
			<button type="submit">Rechercher</button>
      		<!-- Ajouter un élément ul pour afficher les résultats de la suggestion de recherche -->
	    	<ul id="search-suggestions"></ul>
		</form>
	</header>
	<h1>Résultats de recherche</h1>
	<?php
	// Connexion à la base de données
	include ('connect.php');
	
	// Récupération des résultats de la recherche
	$search = isset($_GET['search']) ? $_GET['search'] : '';
	$stmt = $conn->prepare('SELECT * FROM pokemon WHERE nom LIKE :search ORDER BY LOCATE(:search, nom)');
	$stmt->bindValue(':search', '%' . $search . '%', PDO::PARAM_STR);
	$stmt->execute();
	$results = $stmt->fetchAll(PDO::FETCH_ASSOC);

	// Affichage des résultats
	if (!empty($results)) {
		echo '<ul>';
		foreach ($results as $index => $result) {
			if ($index == 0) {
				echo '<li class="first-result"><a href="element.php?id=' . $result['numero'] . '">' . $result['nom'] . '</a></li>';
			} else {
				echo '<li><a href="element.php?id=' . $result['numero'] . '">' . $result['nom'] . '</a></li>';
			}
		}
		echo '</ul>';
	} else {
		echo '<p>Aucun Pokémon trouvé pour cette recherche.</p>';
	}
	?>
</body>
</html>
