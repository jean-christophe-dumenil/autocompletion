document.addEventListener("DOMContentLoaded", function () {
  // Sélectionner l'élément input de recherche
  const searchInput = document.querySelector('input[name="search"]');

  // Sélectionner l'élément ul pour afficher les résultats de la suggestion de recherche
  let searchSuggestions = document.querySelector('#search-suggestions');


  // Fonction pour récupérer les résultats de la suggestion de recherche
  const getSearchSuggestions = (searchTerm) => {
    // Envoyer une requête AJAX pour récupérer les résultats de la suggestion de recherche
    const xhr = new XMLHttpRequest();
    xhr.onreadystatechange = function() {
      if (this.readyState === XMLHttpRequest.DONE && this.status === 200) {
        // Transformer la réponse en JSON
        const results = JSON.parse(this.responseText);
        // Afficher les résultats de la suggestion de recherche
        showSearchSuggestions(results);
      }
    };
    xhr.open('GET', `getSearchSuggestions.php?searchTerm=${searchTerm}`);
    xhr.send();
  };

  // Fonction pour afficher les résultats de la suggestion de recherche
  const showSearchSuggestions = (results) => {
    // Vider la liste des suggestions de recherche
    searchSuggestions.innerHTML = '';
    if (results.length > 0) {
      // Créer un élément li pour la séparation
      const separator = document.createElement('li');
      separator.innerText = '----------------------';
      // Ajouter les résultats de la suggestion de recherche qui correspondent exactement à la recherche
      results.filter(result => result.toLowerCase().startsWith(searchInput.value.toLowerCase())).forEach(result => {
        const li = document.createElement('li');
        li.innerText = result;
        li.addEventListener('click', () => {
          // Définir la valeur de l'élément input de recherche pour l'élément cliqué
          searchInput.value = result;
          // Cacher la liste des suggestions de recherche
          searchSuggestions.style.display = 'none';
        });
        searchSuggestions.appendChild(li);
      });
      // Ajouter la séparation entre les résultats exacts et les résultats qui contiennent la recherche
      searchSuggestions.appendChild(separator);
      // Ajouter les résultats de la suggestion de recherche qui contiennent la recherche
      const filteredResults = results.filter(result => !result.toLowerCase().startsWith(searchInput.value.toLowerCase()));
      const sortedResults = filteredResults.sort((a, b) => {
        const nameA = a.toLowerCase();
        const nameB = b.toLowerCase();
        if (nameA.startsWith(searchInput.value.toLowerCase()) && !nameB.startsWith(searchInput.value.toLowerCase())) {
          return -1;
        } else if (!nameA.startsWith(searchInput.value.toLowerCase()) && nameB.startsWith(searchInput.value.toLowerCase())) {
          return 1;
        } else {
          return 0;
        }
      });
      sortedResults.forEach(result => {
        const li = document.createElement('li');
        li.innerText = result;
        li.addEventListener('click', () => {
          // Définir la valeur de l'élément input de recherche pour l'élément cliqué
          searchInput.value = result;
          // Cacher la liste des suggestions de recherche
          searchSuggestions.style.display = 'none';
        });
        searchSuggestions.appendChild(li);
      });
      // Afficher la liste des suggestions de recherche
      searchSuggestions.style.display = 'block';
    } else {
      // Cacher la liste des suggestions de recherche s'il n'y a pas de résultats
      searchSuggestions.style.display = 'none';
    }
  };


  // Écouter l'événement input sur l'élément input de recherche
  searchInput.addEventListener('keyup', () => {
    // Récupérer les résultats de la suggestion de recherche pour la valeur de l'élément input de recherche
    getSearchSuggestions(searchInput.value);
  });

  // Cacher la liste des suggestions de recherche quand on clique en dehors de l'élément input de recherche
  document.addEventListener('click', (event) => {
    if (!event.target.closest('form') && searchSuggestions.style.display.toLowerCase() === 'block') {
      searchSuggestions.style.display.display.toLowerCase() = 'none';
    }
  });

  // Remplir l'élément input de recherche avec la valeur du paramètre GET 'search' s'il existe
  const urlParams = new URLSearchParams(window.location.search);
  const searchParam = urlParams.get('searchTerm');
  if (searchParam) {
    searchInput.value = searchParam;
    getSearchSuggestions(searchParam);
  }
})
