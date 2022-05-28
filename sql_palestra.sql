CREATE DATABASE palestra;

use palestra;

CREATE TABLE iscritto
(
    username VARCHAR(255) PRIMARY KEY,
    email VARCHAR(255),
    nome VARCHAR(255),
    cognome VARCHAR(255),
    eta INTEGER,
    password VARCHAR(255),
    genere varchar(1)
);

CREATE TABLE corso
(
    nome VARCHAR(255) PRIMARY KEY,
    descrizione text,
    immagine varchar(255),
    giorno varchar(255),
    ora time,
    num_likes integer
);

CREATE TABLE likes
(
    utente VARCHAR(255),
    nome_corso VARCHAR(255),
    PRIMARY KEY (utente,nome_corso),
    INDEX idx_ut(utente),
    FOREIGN KEY(utente) REFERENCES iscritto(username),
    INDEX idx_crs(nome_corso),
    FOREIGN KEY(nome_corso) REFERENCES corso(nome)
);

CREATE TABLE scheda
(
    utente VARCHAR(255),
    nome_corso VARCHAR(255),
    giorno VARCHAR(255),
    ora time,
    PRIMARY KEY (utente,nome_corso),
    INDEX idx_ut(utente),
    FOREIGN KEY(utente) REFERENCES iscritto(username),
    INDEX idx_crs(nome_corso),
    FOREIGN KEY(nome_corso) REFERENCES corso(nome)
);

CREATE TABLE forum
(
    id int auto_increment,
    utente VARCHAR(255),
    commento VARCHAR(255),
    data DATETIME,
    PRIMARY KEY(id),
    INDEX idx_ut(utente),
    FOREIGN KEY(utente) REFERENCES iscritto(username)
);

insert into corso values("HEAT","Allenamento Aerobico ad Alta Energia.  L’obiettivo è quello di creare un training aerobico mirato al consumo di grassi e al potenziamento muscolare.","https://www.palestraimpattozero.it/wp-content/uploads/2016/06/heat.jpg","lunedì",'10:30',0);
insert into corso values("Spinning","Una delle discipline che dagli inizi degli anni 2000 hanno incontrato maggior gradimento e popolarità nei centri fitness e nelle palestre è il cosiddetto “Indoor Cycling” (usualmente definito Spinning®, il cui nome deriva da Johnny G. Spinner, il suo ideatore), un’attività sportiva il cui successo è dovuto in gran parte alla formula con cui viene praticata: un mix ideale fra ricerca della forma fisica","https://www.palestraimpattozero.it/wp-content/uploads/2016/06/IMG_0783.jpg","martedì",'10:30',0);
insert into corso values("Intensive Workout","Corso ad alta intensità, mix tra aerobico e tonificazione con interessamento di tutti i gruppi muscolari","https://www.palestraimpattozero.it/wp-content/uploads/2016/06/c3d15b7c-4c6a-4e36-8a9b-bf6136143bc2.jpg","mercoledì",'10:30',0);
insert into corso values("Freestyler","Allenamento a 360° con l’uso di fasce di resistenza che si allacciano alle quattro estremità del corpo e di una lastra di base antisdrucciolevole. Crea una resistenza in tutte le direzioni possibili in modo che ogni movimento conta! È sicuro da usare. È divertente e raggiunge i risultati di cui hai bisogno!","https://www.palestraimpattozero.it/wp-content/uploads/2016/06/IMG_0736.jpg","giovedì",'10:30',0);
insert into corso values("WBS(Well Back System)","Ginnastica posturale, l’attrezzo permetto all’utente di assumere la posizione a “V” portando, in maniera rapida, al rilasciamento delle tensioni muscolari, rilassando il corpo nella sua globalità.","https://www.palestraimpattozero.it/wp-content/uploads/2016/06/IMG_0709.jpg","venerdì",'10:30',0);
insert into corso values("Piloga","L’obiettivo del Piloga è la messa a punto di un protocollo di lavoro che esalta le caratteristiche di concentrazione dello yoga fondendole insieme a quelle più spiccatamente fisiche del Pilates. Un mix di movimenti specifici per un allenamento globale del corpo, senza dimenticare l’aspetto mentale.","https://www.palestraimpattozero.it/wp-content/uploads/2016/06/PILOGA-1.jpg","lunedì",'16:30',0);
insert into corso values("Pilates","Il metodo Pilates è un tipo di allenamento che insegna ad assumere una corretta postura e a dare maggiore armonia e fluidità nei movimenti. Questo tipo di allenamento favorisce il miglioramento della nostra postura e del corpo nella sua globalità.","https://www.palestraimpattozero.it/wp-content/uploads/2016/06/pilates_class.jpg","martedì",'16:30',0);
insert into corso values("SWAT","Con la sua altissima versatilità e una gamma di oltre 350 esercizi di forza, coordinazione, flessibilità e stabilità del tronco vengono allenati contemporaneamente moltissimi muscoli del corpo. È adatto a qualsiasi livello di allenamento: dagli appassionati di fitness, agli atleti amatoriali o atleti professionisti.","https://www.palestraimpattozero.it/wp-content/uploads/2016/06/Operator-1_c4biij.jpg","mercoledì",'16:30',0);
insert into corso values("Total Body","Allenamento completo che combina tecniche di esercizio finalizzate al condizionamento muscolare, unitamente al miglioramento dell’attività cardiovascolare e alla forma estetica complessiva del corpo.","https://www.palestraimpattozero.it/wp-content/uploads/2016/06/total-body.jpg","giovedì",'16:30',0);
insert into corso values("Addome & PosturalGym","E' un allenamento della muscolatura addominale con l’obiettivo di salvaguardare la colonna vertebrale a cui si affianca una parte di stretching mirata all’allungamento e alla flessibilità della muscolatura e delle articolazioni del corpo attraverso l’esecuzione di specifiche sequenze.","https://www.palestraimpattozero.it/wp-content/uploads/2016/06/ADDOME-STRETCH-3.jpg","venerdì",'16:30',0);

DELIMITER //
CREATE trigger put_like
AFTER insert on likes
for each row
begin
if EXISTS (SELECT *
           from corso
           where nome=new.nome_corso)
           then UPDATE corso
                SET num_likes=num_likes+1
		WHERE nome=new.nome_corso;
    end if;
end //
DELIMITER ;

DELIMITER //
CREATE trigger delete_like
AFTER delete on likes
for each row
begin
if EXISTS (SELECT *
           from corso
           where nome=old.nome_corso)
           then UPDATE corso
                SET num_likes=num_likes-1
		WHERE nome=old.nome_corso;
    end if;
end //
DELIMITER ;