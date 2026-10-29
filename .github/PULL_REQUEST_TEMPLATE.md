### Ce qui doit être vérifié dans une revue de code (au minimum)

La checklist ci-dessous ne concerne que le code modifié ou créée dans le pull request : 

- [ ] **Norme de codage :** respect du codingstyle, surtout pour le nom des variables
- [ ] **Lisibilité du code :** classes et méthodes petites, conditions compréhensibles, pas de code mort, pas de code commenté, noms appropriés
- [ ] **Factorisation :** pas de code dupliqué
- [ ] **Commentaires :** PHP docs à jour pour les méthodes et classes, pas de commentaires inutiles, tous les commentaires en anglais
- [ ] **Chaîne de caractères :** toutes les chaînes qui seront remontée à l’utilisateur final sont traduites, pas de chaînes en dur ce qui sont utilisées à plusieurs endroit
- [ ] **Configuration :** pas de dépendance à un environnement particulier, pas de dépendance à une version de PHP ou de Javascript (idéalement)
   - *Pour rappel,  pour la plupart des applis, on assure une dépendance à PHP 5.6 et ES5 minimum*
- [ ] **Gestion des erreurs :** traiter les exceptions en pensant à la fois à l’utilisateur final et au développeur qui lira les logs (informations différentes, wording différent, langue différente) 
- [ ] **Optimisation :** se contenter de ce qui saute aux yeux
- [ ] **Wording :** anglais correct, messages clairs et adaptés à l’auditoire
- [ ] **Sécurité :** vérifier que la sécurité a été prise en compte (bonnes pratiques, vulnérabilité connues, etc.)
