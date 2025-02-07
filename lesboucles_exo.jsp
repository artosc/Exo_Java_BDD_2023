<%@page contentType="text/html" pageEncoding="UTF-8"%>
<html>
<head>
<title>Boucles</title>
</head>
<body bgcolor=grey>
<h1>Exercices sur les boucles</h1>
<form action="#" method="post">
    <label for="inputValeur">Saisir le nombre d'étoiles : </label>
    <input type="text" id="inputValeur" name="valeur">
    <input type="submit" value="Afficher">
</form>

<%-- Récupération de la valeur saisie par l'utilisateur --%>
<% String valeur = request.getParameter("valeur"); %>
    
<%-- Vérification de l'existence de la valeur --%>
<% if (valeur != null && !valeur.isEmpty()) { %>

<%-- Boucle for pour afficher une ligne d'étoiles --%>
    <%int cpt = Integer.parseInt(valeur); %>
    <p>
    <% for (int i = 1; i <= cpt; i++) { %>
       <%= "*" %>
    <% } %>
    </p>

<h2>Exercice 1 : Le carré d'étoiles</h2>
<p>Ecrire le code afin de produire un carré d'étoile</p>


<% for  ( int i = 1; i <= cpt; i++ ) { %>
    <% for ( int j = 1; j <= cpt; j++) { %>
       <%="*"%>
    <% } %>
    </br>
<% } %>


<h2>Exercice 2 : Triangle rectangle gauche</h2>
<p>Ecrire le code afin de produire un triangle rectangle aligné sur la gauche</p>

<% for  (int m=0; m<cpt; m++ ) { %>
    <% for (int n=0; n<=m; n++) { %>
       <%= "*" %>
 <%   } %>
 </br>
<% } %>

<h2>Exercice 3 : Triangle rectangle inversé</h2>
<p>Ecrire le code afin de produire un triangle rectangle aligné sur la gauche</p>

<% for  (int k=cpt; k>0; k-- ) { %>
    <% for (int l=1; l<=k; l++) { %>
       <%="*"%>
 <% } %>
 </br>
<% } %>

<h2>Exercice 4 : Triangle rectangle 2</h2>
<p>Ecrire le code afin de produire un triangle rectangle aligné sur la droite</p>

<% for (int m = 0; m < cpt; m++) { %>
    <% for (int n=2 * (cpt - m); n>=0; n-- ) { %>
    &nbsp;
    <% } %>

    <% for (int o=0; o<=m; o++) { %>
    <%= "*" %>
    <% } %>
    
</br> 
<% } %>

<h2>Exercice 5 : Triangle isocele</h2>
<p>Ecrire le code afin de produire un triangle isocele</p>

<% for (int p=0; p<=cpt; p++) { %>
    <% for (int q=1; q<=cpt-p; q++ ) { %>
    &nbsp;
    <% } %>

    <% for (int r=1; r<=p; r++) { %>
    <%= "*" %>
    <% } %>
    
</br> 
<% } %>


<h2>Exercice 6 : Le demi losange</h2>
<p>Ecrire le code afin de produire un losange</p>
<% int s; %>
<% int t; %>
<% for ( s = 1; s <= cpt; s++) { %>
    <% for (t = 1; t <= s; t++ ) { %>
    <%= "*" %>
    <% } %>
    
</br> 
<% } %>

<% for  ( s = cpt - 1 ; s >= 1; s-- ) { %>
    <% for ( t = 1; t <= s; t++) { %>
       <%= "*" %>
 <% } %>
 </br>
<% } %>


<h2>Exercice 7 : La table de multiplication</h2>
<p>Ecrire le code afin de créser une table de multiplication</p>



<% } %>
<p><a href="index.html">Retour au sommaire</a></p>
</body>
</html>
