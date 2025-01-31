use villagegreen;

INSERT INTO categorie (nom, parent_id)
VALUES
('Guitares', NULL), 
('Batteries', NULL),
('Pianos et claviers', NULL),
('Microphones', NULL),
('Instruments à cordes', NULL),
('Saxophones', NULL),
('Percussions', NULL),
('Accessoires de musique', NULL),
('Amplificateurs', NULL),
('Cymbales', NULL),
('Guitares électriques', 1),
('Guitares acoustiques', 1),
('Batteries électroniques', 2),
('Batteries acoustiques', 2),
('Pianos numériques', 3),
('Claviers MIDI', 3),
('Accessoires de guitare', 8),
('Pédales d’effets', 8),
('Câbles audio', 8),
('Haut-parleurs', 8);

 
INSERT INTO produit(produit_id, nom_produit, prix_vente, prix_achat, stock_quantite, description_courte, description_longue, reference_fournisseur, url_photo, categorie_id)
VALUES
(1, 'Guitare Électrique Fender Stratocaster', 1299.99, 899.50, '50', 'Guitare électrique de haute qualité', 'Guitare Fender Stratocaster, un instrument légendaire pour les guitaristes professionnels et amateurs. Son son clair et puissant est idéal pour différents styles musicaux.', 'FEN-STRAT-001', 'https://exemple.com/photos/guitare_fender_stratocaster.jpg', 1),
(2, 'Batterie Acoustique Pearl Export', 799.99, 530.75, '30', 'Batterie acoustique Pearl', 'Set de batterie acoustique Pearl Export avec caisse claire, toms, cymbales et pédale de grosse caisse. Idéale pour les batteurs débutants et intermédiaires.', 'PEARL-EXP-002', 'https://exemple.com/photos/batterie_pearl_export.jpg', 2),
(3, 'Clavier Yamaha P-125', 599.99, 400.30, '100', 'Clavier numérique Yamaha', 'Clavier numérique Yamaha P-125 avec 88 touches et un son exceptionnel, idéal pour les pianistes débutants et avancés.', 'YAM-P125-003', 'https://exemple.com/photos/clavier_yamaha_p125.jpg', 3),
(4, 'Ampli Guitare Marshall MG50', 499.99, 350.25, '75', 'Amplificateur de guitare', 'Amplificateur Marshall MG50 avec puissance de 50 watts. Parfait pour les répétitions et concerts en petit groupe.', 'MAR-MG50-004', 'https://exemple.com/photos/ampli_marshall_mg50.jpg', 1),
(5, 'Microphone Shure SM7B', 399.99, 250.00, '120', 'Microphone dynamique', 'Microphone dynamique Shure SM7B, idéal pour l’enregistrement de voix et podcasts. Un des choix les plus populaires parmi les professionnels du son.', 'SHUR-SM7B-005', 'https://exemple.com/photos/micro_shure_sm7b.jpg', 4),
(6, 'Piano Numérique Roland FP-30X', 749.99, 530.00, '45', 'Piano numérique Roland', 'Piano numérique Roland FP-30X avec sonorités réalistes et un clavier à 88 touches pour les pianistes de tous niveaux.', 'ROL-FP30X-006', 'https://exemple.com/photos/piano_roland_fp30x.jpg', 3),
(7, 'Violoncelle Suzuki V40', 899.99, 600.00, '20', 'Violoncelle de qualité', 'Violoncelle Suzuki V40 avec un son riche et profond, parfait pour les musiciens en développement.', 'SUZI-V40-007', 'https://exemple.com/photos/violoncelle_suzuki_v40.jpg', 5),
(8, 'Saxophone Alto Yamaha YAS-280', 1199.99, 800.00, '15', 'Saxophone Alto', 'Saxophone Alto Yamaha YAS-280, un instrument d’entrée de gamme idéal pour les musiciens débutants qui cherchent un son de qualité.', 'YAM-YAS280-008', 'https://exemple.com/photos/saxophone_yamaha_yas280.jpg', 6),
(9, 'Cymbales Zildjian A Custom', 699.99, 470.00, '25', 'Cymbales de batterie', 'Cymbales Zildjian A Custom, offrant un son brillant et clair, idéales pour les batteurs professionnels.', 'ZIL-A-CUS-009', 'https://exemple.com/photos/cymbales_zildjian_a_custom.jpg', 2),
(10, 'Basse Électrique Ibanez SR300E', 449.99, 320.00, '40', 'Basse électrique', 'Basse électrique Ibanez SR300E avec un corps léger et un son puissant, idéale pour les bassistes débutants et intermédiaires.', 'IBA-SR300E-010', 'https://exemple.com/photos/basse_ibanez_sr300e.jpg', 1);

INSERT INTO tableaubord (nom_tableaubord, valeur_tableaubord, date_tableaubord, produits_plus_vendus, volume_ventes, date_range)
VALUES
('Tableau de bord des ventes - Janvier 2025', 1345.75, '2025-01-01 08:00:00', 'Guitare Électrique Fender Stratocaster', '150', '2025-01-01 00:00:00'),
('Tableau de bord des ventes - Février 2025', 1799.50, '2025-02-01 08:00:00', 'Batterie Acoustique Pearl Export', '200', '2025-02-01 00:00:00'),
('Tableau de bord des ventes - Mars 2025', 2150.20, '2025-03-01 08:00:00', 'Clavier Yamaha P-125', '175', '2025-03-01 00:00:00'),
('Tableau de bord des ventes - Avril 2025', 1100.10, '2025-04-01 08:00:00', 'Ampli Guitare Marshall MG50', '120', '2025-04-01 00:00:00'),
('Tableau de bord des ventes - Mai 2025', 1455.80, '2025-05-01 08:00:00', 'Microphone Shure SM7B', '80', '2025-05-01 00:00:00'),
('Tableau de bord des ventes - Juin 2025', 1600.25, '2025-06-01 08:00:00', 'Piano Numérique Roland FP-30X', '90', '2025-06-01 00:00:00'),
('Tableau de bord des ventes - Juillet 2025', 1200.50, '2025-07-01 08:00:00', 'Violoncelle Suzuki V40', '65', '2025-07-01 00:00:00'),
('Tableau de bord des ventes - Août 2025', 1750.00, '2025-08-01 08:00:00', 'Saxophone Alto Yamaha YAS-280', '95', '2025-08-01 00:00:00'),
('Tableau de bord des ventes - Septembre 2025', 2100.30, '2025-09-01 08:00:00', 'Cymbales Zildjian A Custom', '120', '2025-09-01 00:00:00'),
('Tableau de bord des ventes - Octobre 2025', 1899.99, '2025-10-01 08:00:00', 'Basse Électrique Ibanez SR300E', '140', '2025-10-01 00:00:00');


INSERT INTO commercial (commercial_id, nom_com, prenom_com, telephone_com, email_com, adresse_com, cp_com, ville_com, paye_com, tableaubord_id)
VALUES
(1, 'Dupont', 'Jean', '01023', 'jean.dupont@example.com', '10 rue des Lilas', '75001', 'Paris', 'France', 1),
(2, 'Lemoine', 'Sophie', '01145', 'sophie.lemoine@example.com', '22 avenue des Champs', '69003', 'Lyon', 'France', 2),
(3, 'Martin', 'Pierre', '01234', 'pierre.martin@example.com', '5 boulevard de la République', '33000', 'Bordeaux', 'France', 3),
(4, 'Durand', 'Lucie', '01356', 'lucie.durand@example.com', '78 rue Victor Hugo', '13001', 'Marseille', 'France', 4),
(5, 'Bernard', 'Claude', '01467', 'claude.bernard@example.com', '56 rue de la Liberté', '44000', 'Nantes', 'France', 5),
(6, 'Petit', 'Isabelle', '01578', 'isabelle.petit@example.com', '12 place de la Gare', '21000', 'Dijon', 'France', 6),
(7, 'Lemoine', 'Marc', '01689', 'marc.lemoine@example.com', '34 rue de la Paix', '59000', 'Lille', 'France', 7),
(8, 'Robert', 'Nathalie', '01790', 'nathalie.robert@example.com', '10 rue des Roses', '75012', 'Paris', 'France', 8),
(9, 'Lefevre', 'Jean-Paul', '01801', 'jeanpaul.lefevre@example.com', '15 avenue de la Mer', '34000', 'Montpellier', 'France', 9),
(10, 'Moreau', 'Catherine', '01923', 'catherine.moreau@example.com', '25 rue de la Montagne', '38000', 'Grenoble', 'France', 10);



-- Insertion des données
INSERT INTO client (client_id, nom_acheteur, prenom_acheteur, telephone, typeclient, email, cp, ville, adresse_client, hash_mot_de_passe, coefficient, commercial_id) VALUES
(1, 'Bryan', 'Ofella', '6011958845', 'Corporate', 'oilling0@ifeng.com', '75001', 'Paris', '12 Rue de Rivoli', '$2a$04$ZRXge3IXPVYy/rs23bIB6eCZJ4UTrGc6KNe29HtsBHf2/W/rlea5u', 63.00, 1),
(2, 'Dede', 'Amandi', '6665977294', 'Corporate', 'ahabbema1@jugem.jp', '13001', 'Marseille', '25 Avenue du Prado', '$2a$04$5NrvqyUvRU2GEx9E1MW4B.QWJRynZJZcohLIWOFD.qmO26WZJ315G', 59.78, 2),
(3, 'Wakefield', 'Donal', '4375050175', 'VIP', 'dohrtmann2@amazon.com', '69001', 'Lyon', '18 Rue Victor Hugo', '$2a$04$tMnq38nRGXVdBFo6guPmO.1Y.LVpyFuQlZqqyy2lq96JolRUK97Ji', 95.37, 3),
(4, 'Alasdair', 'Frederik', '2935670915', 'Regular', 'framel3@flickr.com', '31000', 'Toulouse', '14 Place du Capitole', '$2a$04$TrruRoTaNRbEYWQqOm/mO.iqPxYlT5DKtGiTHs5K7J9QJyRw6lYti', 74.23, 4),
(5, 'Melessa', 'Shellysheldon', '9548091672', 'Regular', 'sbeeckx4@virginia.edu', '33000', 'Bordeaux', '50 Cours de l’Intendance', '$2a$04$B2EQBdSAr8vtAvxBg3jdt.FO9mzPRh5tTavBWzMZlawoLIn8kCJXq', 46.00, 5),
(6, 'Falkner', 'Corinne', '5115926588', 'VIP', 'cknock5@google.fr', '67000', 'Strasbourg', '10 Place Kléber', '$2a$04$paL0znBA2XhKNzXheGc7De8Ro2aD8vWTDic9c9b1QRoP5Fk0HM9vW', 81.02, 6),
(7, 'Delmar', 'Geoffry', '1119288000', 'Corporate', 'goduilleain6@usnews.com', '59000', 'Lille', '30 Rue Faidherbe', '$2a$04$tqjnlkfWZbWhV5kTTAAS6OECllG0g.Df6pZDxbagrleS6yozc97RW', 76.22, 7),
(8, 'Gabe', 'Jyoti', '1024255247', 'Corporate', 'jluciano7@sciencedirect.com', '44000', 'Nantes', '22 Rue Crébillon', '$2a$04$pJ.GOAdwnV1oC7aIvfQ14OUt9h0k1OgFazNelTO5u7B3YZDOYSfeS', 63.73, 8),
(9, 'Lela', 'Sheryl', '8373057730', 'VIP', 'sstronough8@thetimes.co.uk', '34000', 'Montpellier', '8 Rue de la Loge', '$2a$04$.IOqUkF1lFN8Cq35C.UJnOaCDlF3MXd28Z7fjHDssggUQfm04.fVu', 22.37, 9),
(10, 'Liuka', 'Averell', '7112439580', 'VIP', 'arowlstone9@miitbeian.gov.cn', '21000', 'Dijon', '15 Rue de la Liberté', '$2a$04$9TXSkqFVZkE9CZIBGF6eHeCM0/LkkZPU3d/oJ9m4BFIWu0eURMzMe', 45.61, 10);





INSERT INTO commande (date_commande, statut_commande, montant_total_comnd, id_facture, date_facture, adresse_facturation, statut_paiement, date_paiement, methode_paiement, adresse_livraison, client_id)
VALUES
('2025-01-01 09:00:00', 'Livrée', 350.75, 1001, '2025-01-02 10:00:00', '15 rue des Lilas, 75001 Paris', 'Payé', '2025-01-02 11:00:00', 'Carte de crédit', '20 rue de la Paix, 75001 Paris', 1),
('2025-01-05 14:30:00', 'Annulée', 1450.50, 1002, '2025-01-06 09:00:00', '34 avenue des Champs, 69003 Lyon', 'Non payé', NULL, 'Virement bancaire', '34 avenue des Champs, 69003 Lyon', 2),
('2025-01-10 11:45:00', 'En cours', 780.99, 1003, '2025-01-11 15:30:00', '78 rue Victor Hugo, 13001 Marseille', 'Payé', '2025-01-11 16:00:00', 'PayPal', '78 rue Victor Hugo, 13001 Marseille', 3),
('2025-01-15 16:00:00', 'En attente de Paiement', 214.50, 1004, '2025-01-16 12:00:00', '56 rue de la Liberté, 44000 Nantes', 'En attente', NULL, 'Carte de crédit', '56 rue de la Liberté, 44000 Nantes', 4),
('2025-01-20 13:20:00', 'Livrée', 950.00, 1005, '2025-01-21 17:45:00', '12 place de la Gare, 21000 Dijon', 'Payé', '2025-01-21 18:00:00', 'Carte bancaire', '12 place de la Gare, 21000 Dijon', 5),
('2025-01-25 10:10:00', 'Annulée', 1200.80, 1006, '2025-01-26 14:30:00', '25 rue des Roses, 75012 Paris', 'Non payé', NULL, 'Chèque', '25 rue des Roses, 75012 Paris', 6),
('2025-02-01 17:25:00', 'En cours', 560.45, 1007, '2025-02-02 09:30:00', '10 rue des Lilas, 75001 Paris', 'Payé', '2025-02-02 10:15:00', 'Carte de crédit', '10 rue des Lilas, 75001 Paris', 7),
('2025-02-05 15:30:00', 'En attente de Paiement', 890.65, 1008, '2025-02-06 11:00:00', '34 rue de la Paix, 75001 Paris', 'En attente', NULL, 'Virement bancaire', '34 rue de la Paix, 75001 Paris', 8),
('2025-02-10 14:00:00', 'Livrée', 320.99, 1009, '2025-02-11 16:45:00', '5 boulevard de la République, 33000 Bordeaux', 'Payé', '2025-02-11 17:00:00', 'PayPal', '5 boulevard de la République, 33000 Bordeaux', 9),
('2025-02-15 09:00:00', 'Annulée', 1475.30, 1010, '2025-02-16 14:15:00', '78 rue Victor Hugo, 13001 Marseille', 'Non payé', NULL, 'Chèque', '78 rue Victor Hugo, 13001 Marseille', 10);

INSERT INTO contient (produit_id, commande_id, quantite, prix)
VALUES
(1, 1, 2, 350.75),
(2, 2, 5, 145.50),
(3, 3, 1, 780.99),
(4, 4, 3, 214.50),
(5, 5, 4, 950.00),
(6, 6, 6, 1200.80),
(7, 7, 1, 560.45),
(8, 8, 2, 890.65),
(9, 9, 5, 320.99),
(10, 10, 7, 1475.30);



INSERT INTO bonLivraison (date_livraison, adresse_livraison, commande_id)
VALUES
('2025-01-03 10:30:00', '20 rue de la Paix, 75001 Paris', 1),
('2025-01-07 14:00:00', '34 avenue des Champs, 69003 Lyon', 2),
('2025-01-12 09:00:00', '78 rue Victor Hugo, 13001 Marseille', 3),
('2025-01-17 16:30:00', '56 rue de la Liberté, 44000 Nantes', 4),
('2025-01-22 11:45:00', '12 place de la Gare, 21000 Dijon', 5),
('2025-01-27 14:15:00', '25 rue des Roses, 75012 Paris', 6),
('2025-02-02 10:30:00', '10 rue des Lilas, 75001 Paris', 7),
('2025-02-06 13:45:00', '34 rue de la Paix, 75001 Paris', 8),
('2025-02-11 09:30:00', '5 boulevard de la République, 33000 Bordeaux', 9),
('2025-02-16 15:00:00', '78 rue Victor Hugo, 13001 Marseille', 10);



INSERT INTO livre (produit_id, bon_livraison_id, quantite)
VALUES
(1, 1, 2),
(2, 2, 5),
(3, 3, 1),
(4, 4, 3),
(5, 5, 4),
(6, 6, 6),
(7, 7, 1),
(8, 8, 2),
(9, 9, 5),
(10, 10, 7);



INSERT INTO fournisseur (nom, prenom_fournisseur, telephone_fournisseur, adresse_fournisseur, ville_fournisseur, cp_fournisseur)
VALUES
('Dupont', 'Jean', '0102030405', '123 rue des Fleurs', 'Paris', '75001'),
('Martin', 'Claire', '0607080910', '45 avenue des Champs', 'Lyon', '69002'),
('Bernard', 'Paul', '0203040506', '78 boulevard de la République', 'Marseille', '13003'),
('Lemoine', 'Sophie', '0712345678', '12 rue des Lilas', 'Bordeaux', '33000'),
('Durand', 'Pierre', '0912345678', '34 place de la Gare', 'Toulouse', '31000'),
('Carrefour', 'Isabelle', '0606123456', '56 rue des Roses', 'Nantes', '44000'),
('Leclerc', 'Julien', '0202123456', '89 rue du Commerce', 'Lille', '59000'),
('Petit', 'Lucie', '0512345678', '101 avenue de la Liberté', 'Nice', '06000'),
('Fournier', 'Antoine', '0405060708', '23 rue de la République', 'Strasbourg', '67000'),
('Giraud', 'Elise', '0304050607', '67 avenue du Parc', 'Montpellier', '34000');

INSERT INTO fournit (produit_id, fournisseur_id)
VALUES
(1, 1),
(2, 2),
(3, 3),
(4, 4),
(5, 5),
(6, 6),
(7, 7),
(8, 8),
(9, 9),
(10, 10);

-- Création des index
CREATE INDEX idx_nom_produit ON produit(nom_produit);
CREATE INDEX idx_nom_fournisseur ON fournisseur(nom);
CREATE INDEX idx_nom_client ON client(nom_acheteur);



