/*
This PostgreSQL script is designed for managing and querying a database containing information about titles (movies and TV shows) available on Netflix. It encompasses two primary aspects: schema definition with data insertion and data retrieval queries for analytical insights.

The schema consists of two tables:
1. netflix_titles_info: Stores essential details about each title, including its type (movie or TV show), name, production country, addition date to Netflix, release year, rating, duration, and categories listed in.
2. netflix_people: Keeps records of directors and cast members associated with each title, linked through a shared 'show_id'.

The data insertion part populates these tables with sample data, representing a diverse array of titles along with their associated people (directors and cast), demonstrating how to structure and enter data into a relational database.

Overall, this script demonstrates effective database design, data manipulation, and querying techniques to extract meaningful information from a structured dataset, offering a practical example of SQL skills applied to real-world scenarios in a content streaming context.

Source Data
This project utilized data from the Netflix database stored at https://www.db-fiddle.com/f/pfsdrKi9cgCDp4Wwb77AF/0
*/

-- Creation of netflix_titles_info table to store basic information about Netflix titles
CREATE TABLE netflix_titles_info
    ("show_id" varchar(5), "type" varchar(7), "title" varchar(58), "country" varchar(74), "date_added" timestamp, "release_year" int, "rating" varchar(5), "duration" varchar(9), "listed_in" varchar(74))
;

-- Creation of netflix_people table to store information about directors and cast for Netflix titles
CREATE TABLE netflix_people
    ("show_id" varchar(5), "director" varchar(54), "cast" varchar(532))
;
    
-- Inserting data into netflix_titles_info table with predefined values
INSERT INTO netflix_titles_info
    ("show_id", "type", "title", "country", "date_added", "release_year", "rating", "duration", "listed_in")
VALUES
    ('s1', 'Movie', 'Dick Johnson Is Dead', 'United States', '2021-09-25 00:00:00', 2020, 'PG-13', '90 min', 'Documentaries'),
    ('s2', 'TV Show', 'Blood & Water', 'South Africa', '2021-09-24 00:00:00', 2021, 'TV-MA', '2 Seasons', 'International TV Shows | TV Dramas | TV Mysteries'),
    ('s3', 'TV Show', 'Ganglands', NULL, '2021-09-24 00:00:00', 2021, 'TV-MA', '1 Season', 'Crime TV Shows | International TV Shows | TV Action & Adventure'),
    ('s4', 'TV Show', 'Jailbirds New Orleans', NULL, '2021-09-24 00:00:00', 2021, 'TV-MA', '1 Season', 'Docuseries | Reality TV'),
    ('s5', 'TV Show', 'Kota Factory', 'India', '2021-09-24 00:00:00', 2021, 'TV-MA', '2 Seasons', 'International TV Shows | Romantic TV Shows | TV Comedies'),
    ('s6', 'TV Show', 'Midnight Mass', NULL, '2021-09-24 00:00:00', 2021, 'TV-MA', '1 Season', 'TV Dramas | TV Horror | TV Mysteries'),
    ('s7', 'Movie', 'My Little Pony: A New Generation', NULL, '2021-09-24 00:00:00', 2021, 'PG', '91 min', 'Children & Family Movies'),
    ('s8', 'Movie', 'Sankofa', 'United States | Ghana | Burkina Faso | United Kingdom | Germany | Ethiopia', '2021-09-24 00:00:00', 1993, 'TV-MA', '125 min', 'Dramas | Independent Movies | International Movies'),
    ('s9', 'TV Show', 'The Great British Baking Show', 'United Kingdom', '2021-09-24 00:00:00', 2021, 'TV-14', '9 Seasons', 'British TV Shows | Reality TV'),
    ('s10', 'Movie', 'The Starling', 'United States', '2021-09-24 00:00:00', 2021, 'PG-13', '104 min', 'Comedies | Dramas'),
    ('s11', 'TV Show', 'Vendetta: Truth  Lies and The Mafia', NULL, '2021-09-24 00:00:00', 2021, 'TV-MA', '1 Season', 'Crime TV Shows | Docuseries | International TV Shows'),
    ('s12', 'TV Show', 'Bangkok Breaking', NULL, '2021-09-23 00:00:00', 2021, 'TV-MA', '1 Season', 'Crime TV Shows | International TV Shows | TV Action & Adventure'),
    ('s13', 'Movie', 'Je Suis Karl', 'Germany | Czech Republic', '2021-09-23 00:00:00', 2021, 'TV-MA', '127 min', 'Dramas | International Movies'),
    ('s14', 'Movie', 'Confessions of an Invisible Girl', NULL, '2021-09-22 00:00:00', 2021, 'TV-PG', '91 min', 'Children & Family Movies | Comedies'),
    ('s15', 'TV Show', 'Crime Stories: India Detectives', NULL, '2021-09-22 00:00:00', 2021, 'TV-MA', '1 Season', 'British TV Shows | Crime TV Shows | Docuseries'),
    ('s16', 'TV Show', 'Dear White People', 'United States', '2021-09-22 00:00:00', 2021, 'TV-MA', '4 Seasons', 'TV Comedies | TV Dramas'),
    ('s17', 'Movie', 'Europe''s Most Dangerous Man: Otto Skorzeny in Spain', NULL, '2021-09-22 00:00:00', 2020, 'TV-MA', '67 min', 'Documentaries | International Movies'),
    ('s18', 'TV Show', 'Falsa identidad', 'Mexico', '2021-09-22 00:00:00', 2020, 'TV-MA', '2 Seasons', 'Crime TV Shows | Spanish-Language TV Shows | TV Dramas'),
    ('s19', 'Movie', 'Intrusion', NULL, '2021-09-22 00:00:00', 2021, 'TV-14', '94 min', 'Thrillers'),
    ('s20', 'TV Show', 'Jaguar', NULL, '2021-09-22 00:00:00', 2021, 'TV-MA', '1 Season', 'International TV Shows | Spanish-Language TV Shows | TV Action & Adventure')
    ;
    
-- Inserting data into netflix_people table with predefined values
INSERT INTO netflix_people
    ("show_id", "director", "cast")
VALUES
    ('s1', 'Kirsten Johnson', NULL),
    ('s2', NULL, 'Ama Qamata| Khosi Ngema| Gail Mabalane| Thabang Molaba| Dillon Windvogel| Natasha Thahane| Arno Greeff| Xolile Tshabalala| Getmore Sithole| Cindy Mahlangu| Ryle De Morny| Greteli Fincham| Sello Maake Ka-Ncube| Odwa Gwanya| Mekaila Mathys| Sandi Schultz| Duane Williams| Shamilla Miller| Patrick Mofokeng'),
    ('s3', 'Julien Leclercq', 'Sami Bouajila| Tracy Gotoas| Samuel Jouy| Nabiha Akkari| Sofia Lesaffre| Salim Kechiouche| Noureddine Farihi| Geert Van Rampelberg| Bakary Diombera'),
    ('s4', NULL, NULL),
    ('s5', NULL, 'Mayur More| Jitendra Kumar| Ranjan Raj| Alam Khan| Ahsaas Channa| Revathi Pillai| Urvi Singh| Arun Kumar'),
    ('s6', 'Mike Flanagan', 'Kate Siegel| Zach Gilford| Hamish Linklater| Henry Thomas| Kristin Lehman| Samantha Sloyan| Igby Rigney| Rahul Kohli| Annarah Cymone| Annabeth Gish| Alex Essoe| Rahul Abburi| Matt Biedel| Michael Trucco| Crystal Balint| Louis Oliver'),
    ('s7', 'Robert Cullen| JosÃ© Luis Ucha', 'Vanessa Hudgens| Kimiko Glenn| James Marsden| Sofia Carson| Liza Koshy| Ken Jeong| Elizabeth Perkins| Jane Krakowski| Michael McKean| Phil LaMarr'),
    ('s8', 'Haile Gerima', 'Kofi Ghanaba| Oyafunmike Ogunlano| Alexandra Duah| Nick Medley| Mutabaruka| Afemo Omilami| Reggie Carter| Mzuri'),
    ('s9', 'Andy Devonshire', 'Mel Giedroyc| Sue Perkins| Mary Berry| Paul Hollywood'),
    ('s10', 'Theodore Melfi', 'Melissa McCarthy| Chris O''Dowd| Kevin Kline| Timothy Olyphant| Daveed Diggs| Skyler Gisondo| Laura Harrier| Rosalind Chao| Kimberly Quinn| Loretta Devine| Ravi Kapoor'),
    ('s11', NULL, NULL),
    ('s12', 'Kongkiat Komesiri', 'Sukollawat Kanarot| Sushar Manaying| Pavarit Mongkolpisit| Sahajak Boonthanakit| Suthipongse Thatphithakkul| Bhasaworn Bawronkirati| Daweerit Chullasapya| Waratthaya Wongchayaporn| Kittiphoom Wongpentak| Abhicha Thanachanun| Nophand Boonyai| Kittipong Khamsat| Arisara Wongchalee| Jaytiya Naiwattanakul| Pantipa Arunwattanachai| Panupan Jantanawong| Kungtap Saelim| Phumphat Chartsuriyakiat| Issara Veranitinunt| Keerati Sivakuae| Panjai Sirisuwan| Supranee Charoenpol| Suda Chuenban| Visaka Banhansupavat| Pitchatorn Santinatornkul'),
    ('s13', 'Christian Schwochow', 'Luna Wedler| Jannis NiewÃ¶hner| Milan Peschel| Edin HasanoviÄ‡| Anna FialovÃ¡| Marlon Boess| Victor Boccard| Fleur Geffrier| Aziz Dyab| MÃ©lanie FouchÃ©| Elizaveta MaximovÃ¡'),
    ('s14', 'Bruno Garotti', 'Klara Castanho| Lucca Picon| JÃºlia Gomes| Marcus Bessa| Kiria Malheiros| Fernanda Concon| Gabriel Lima| Caio Cabral| Leonardo Cidade| Jade Cardozo'),
    ('s15', NULL, NULL),
    ('s16', NULL, 'Logan Browning| Brandon P. Bell| DeRon Horton| Antoinette Robertson| John Patrick Amedori| Ashley Blaine Featherson| Marque Richardson| Giancarlo Esposito'),
    ('s17', 'Pedro de Echave GarcÃ­a| Pablo AzorÃ­n Williams', NULL),
    ('s18', NULL, 'Luis Ernesto Franco| Camila Sodi| Sergio Goyri| Samadhi Zendejas| Eduardo YÃ¡Ã±ez| Sonya Smith| Alejandro Camacho| Azela Robinson| Uriel del Toro| GÃ©raldine BazÃ¡n| Gabriela Roel| Marcus Ornellas'),
    ('s19', 'Adam Salky', 'Freida Pinto| Logan Marshall-Green| Robert John Burke| Megan Elisabeth Kelly| Sarah Minnich| Hayes Hargrove| Mark Sivertsen| Brandon Fierro| Antonio Valles| Clint Obenchain'),
    ('s20', NULL, 'Blanca SuÃ¡rez| IvÃ¡n Marcos| Ã“scar Casas| AdriÃ¡n Lastra| Francesc Garrido| Stefan Weinert| Julia MÃ¶ller| Alicia Chojnowski')
    ;   

-- Select query to join netflix_people and netflix_titles_info tables and limit the results to the first 5
SELECT * 
FROM "netflix_people" p, "netflix_titles_info" t
WHERE p.show_id = t.show_id
LIMIT 5;

-- Query to count how many movie titles are stored in the database
SELECT count(t.*) 
FROM "netflix_titles_info" t
WHERE t.type = 'Movie';

-- Query to find the most recent date when a batch of tv shows and/or movies was added to the database
SELECT date_added
FROM "netflix_titles_info" t
ORDER BY date_added DESC
LIMIT 1;

-- Query to list all movies and tv shows in alphabetical order
SELECT title, type
FROM "netflix_titles_info" t
ORDER BY title;

-- Query to find the director of the movie "The Starling"
SELECT p.director
FROM "netflix_people" p, "netflix_titles_info" t
WHERE p.show_id = t.show_id
AND t.title = 'The Starling';

-- Query to find the oldest movie in the database and its release year
SELECT title, release_year
FROM "netflix_titles_info" t
WHERE t.type = 'Movie'
ORDER BY release_year ASC
LIMIT 1;