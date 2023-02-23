<!DOCTYPE html>
<html>
<head>
	<title>Pokémon</title>
    <script src="script.js"></script>
</head>
<body>
	<header>
		<form method="get" action="recherche.php">
			<input type="text" name="search" placeholder="Recherche..."  autocomplete="off" value="<?php echo isset($_GET['search']) ? $_GET['search'] : ''; ?>">
			<button type="submit">Rechercher</button>
			<ul id="search-suggestions"></ul>
		</form>
	</header>
	<h1>Pokémon</h1>
	<?php
	// Connexion à la base de données
	include ('connect.php');
	// Récupération de l'élément correspondant à l'identifiant dans GET
	if (isset($_GET['id'])) {
		$id = intval($_GET['id']);
		$stmt = $conn->prepare('SELECT * FROM pokemon WHERE numero = :id');
		$stmt->bindValue(':id', $id, PDO::PARAM_INT);
		$stmt->execute();
		$pokemon = $stmt->fetch(PDO::FETCH_ASSOC);
	}
	
	// Affichage de l'élément
	if (isset($pokemon)) {
		echo '<h2>' . $pokemon['nom'] . '</h2>';
		echo '<p>Taille : ' . $pokemon['taille'] . '</p>';
		echo '<p>Poids : ' . $pokemon['poid'] . '</p>';
		echo '<p>Catégorie : ' . $pokemon['categorie'] . '</p>';
		echo '<p>Talent : ' . $pokemon['talent'] . '</p>';
		echo '<p>Type : ' . $pokemon['type'] . '</p>';
		echo '<p>Faiblesse : ' .$pokemon['faiblesse'] . '</p>';
	} else {
		echo '<p>Pokémon non trouvé.</p>';
	}
	?>
</body>
</html>