<!DOCTYPE html>
<html>
<head>
	<title>Page d'accueil</title>
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
    <main>
    <section class="centrage">
            <h1>Les starter Pokémons</h1>
            <p>Cette page sert à rechercher les starters Pokémons et de trouver des informations sur eux tels que la taille, le poid, etc..</p>
        </section>
    </main>

	
</body>
</html>