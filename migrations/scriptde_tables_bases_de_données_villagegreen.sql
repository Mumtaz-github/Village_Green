

drop database if EXISTS villagegreen;
CREATE DATABASE  villagegreen;

USE villagegreen;



CREATE TABLE categorie(
   categorie_id INT AUTO_INCREMENT,
   nom VARCHAR(50) ,
   parent_id INT,
   PRIMARY KEY(categorie_id),
   FOREIGN KEY(parent_id) REFERENCES categorie(categorie_id)
);

CREATE TABLE fournisseur(
   fournisseur_id INT AUTO_INCREMENT,
   nom VARCHAR(50) ,
   prenom_fournisseur VARCHAR(100) ,
   telephone_fournisseur VARCHAR(50) ,
   adresse_fournisseur VARCHAR(100) ,
   ville_fournisseur VARCHAR(100) ,
   cp_fournisseur VARCHAR(5) ,
   PRIMARY KEY(fournisseur_id)
);

CREATE TABLE tableaubord(
   tableaubord_id INT AUTO_INCREMENT,
   nom_tableaubord VARCHAR(50) ,
   valeur_tableaubord DECIMAL(8,2)  ,
   date_tableaubord DATETIME,
   produits_plus_vendus VARCHAR(50) ,
   volume_ventes VARCHAR(50) ,
   date_range DATETIME,
   PRIMARY KEY(tableaubord_id)
);

CREATE TABLE produit(
   produit_id INT,
   nom_produit VARCHAR(100) ,
   prix_vente DECIMAL(8,2) ,
   prix_achat DECIMAL(8,2) ,
   stock_quantite VARCHAR(250) ,
   description_courte VARCHAR(250) ,
   description_longue VARCHAR(250) ,
   reference_fournisseur VARCHAR(250) ,
   url_photo VARCHAR(255) ,
   produit_actif BOOLEAN DEFAULT TRUE,
   categorie_id INT NOT NULL,
   PRIMARY KEY(produit_id),
   FOREIGN KEY(categorie_id) REFERENCES categorie(categorie_id)
);

CREATE TABLE commercial(
   commercial_id INT,
   nom_com VARCHAR(50) ,
   prenom_com VARCHAR(50) ,
   telephone_com VARCHAR(5) ,
   email_com VARCHAR(100) ,
   adresse_com VARCHAR(100) ,
   cp_com VARCHAR(5) ,
   ville_com VARCHAR(100) ,
   paye_com VARCHAR(50) ,
   tableaubord_id INT NOT NULL,
   PRIMARY KEY(commercial_id),
   FOREIGN KEY(tableaubord_id) REFERENCES tableaubord(tableaubord_id)
);

CREATE TABLE client(
   client_id INT AUTO_INCREMENT,
   nom_acheteur VARCHAR(50) ,
   prenom_acheteur VARCHAR(50) ,
   telephone CHAR(10) ,
   typeclient VARCHAR(50) ,
   email VARCHAR(100) ,
   cp VARCHAR(50) ,
   ville VARCHAR(50) ,
   adresse_client VARCHAR(255) ,
   hash_mot_de_passe VARCHAR(100) ,
   coefficient DECIMAL(4,2)  ,
   commercial_id INT NOT NULL,
   PRIMARY KEY(client_id),
   FOREIGN KEY(commercial_id) REFERENCES commercial(commercial_id)
);

CREATE TABLE commande(
   commande_id INT AUTO_INCREMENT,
   date_commande DATETIME,
   statut_commande DECIMAL(4,2)  ,
   montant_total_comnd DECIMAL(8,2)  ,
   id_facture INT ,
   date_facture DATETIME,
   adresse_facturation VARCHAR(100) ,
   statut_paiement VARCHAR(50) ,
   date_paiement DATETIME,
   methode_paiement VARCHAR(50) ,
   adresse_livraison VARCHAR(100) ,
   client_id INT NOT NULL,
   PRIMARY KEY(commande_id),
   FOREIGN KEY(client_id) REFERENCES client(client_id)
);

CREATE TABLE bonLivraison(
   bon_livraison_id INT AUTO_INCREMENT,
   date_livraison DATETIME,
   adresse_livraison VARCHAR(100) ,
   commande_id INT NOT NULL,
   PRIMARY KEY(bon_livraison_id),
   FOREIGN KEY(commande_id) REFERENCES commande(commande_id)
);

CREATE TABLE fournit(
   produit_id INT,
   fournisseur_id INT,
   PRIMARY KEY(produit_id, fournisseur_id),
   FOREIGN KEY(produit_id) REFERENCES produit(produit_id),
   FOREIGN KEY(fournisseur_id) REFERENCES fournisseur(fournisseur_id)
);

CREATE TABLE contient(
   produit_id INT,
   commande_id INT,
   quantite INT,
   prix DECIMAL(8,2)  ,
   PRIMARY KEY(produit_id, commande_id),
   FOREIGN KEY(produit_id) REFERENCES produit(produit_id),
   FOREIGN KEY(commande_id) REFERENCES commande(commande_id)
);

CREATE TABLE livre(
   produit_id INT,
   bon_livraison_id INT,
   quantite INT ,
   PRIMARY KEY(produit_id, bon_livraison_id),
   FOREIGN KEY(produit_id) REFERENCES produit(produit_id),
   FOREIGN KEY(bon_livraison_id) REFERENCES bonLivraison(bon_livraison_id)
);



