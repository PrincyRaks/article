drop database article;
create database article;
create user article with password 'article';
ALTER DATABASE article OWNER TO article;
\c article article;



CREATE TABLE categorie(
    id serial primary key,
    nomcategorie varchar(50) not null
);
INSERT INTO categorie VALUES
(default,'Actualite'),
(default,'Sport'),
(default,'Vêtements & accessoire'),
(default,'Musique'),
(default,'Art'),
(default,'Techonologie'),
(default,'Sante & Beauté');


CREATE TABLE Article(
    id serial primary key,
    titre varchar(250) not null,
    resume text,
    idcategorie int not null references categorie(id),
    contenu text not null
);

--     -Rétrospective vidéo : l’année 2022 en Afrique
--     -Retour en images sur les événements qui ont marqué l’année, du Maroc à Madagascar en passant par la Tunisie, le Sénégal, le Burkina, le Mali, la Côte d’Ivoire, le Tchad, l’Ethiopie, la RDC et l’Afrique du Sud.
--     -De la victoire de l’équipe de football sénégalaise à la Coupe d’Afrique des nations (CAN) à la fin de l’opération française « Barkhane » au Sahel, en passant par le drame des migrants à Melilla, à la frontière maroco-espagnole, et la reprise des combats dans l’est de la République démocratique du Congo (RDC), voici une retrospective des événements qui ont marqué l’Afrique en 2022.
--
--     -Des racines et des rythmes : la sélection musicale du « Monde Afrique »
--     -Focus sur les dernières sorties électro du DJ d’origine angolaise Vanyfox, du producteur réunionnais Insula et de la chanteuse franco-algérienne Sabrina Bellaouel.
--     -« OFF-WHITE », DE VANYFOX
--     -C’est désormais une tradition. Chaque année, le collectif « afrocentré » Moonshine, basé à Montréal, publie un album dans lequel sont présentées les multiples inspirations et artistes qu’on peut entendre lors de ses soirées mensuelles. Paru début décembre, SMS for Location vol.
