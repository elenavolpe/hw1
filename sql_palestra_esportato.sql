-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Creato il: Mag 29, 2022 alle 22:31
-- Versione del server: 10.4.21-MariaDB
-- Versione PHP: 8.0.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `palestra`
--

-- --------------------------------------------------------

--
-- Struttura della tabella `corso`
--

CREATE TABLE `corso` (
  `nome` varchar(255) NOT NULL,
  `descrizione` text DEFAULT NULL,
  `immagine` varchar(255) DEFAULT NULL,
  `giorno` varchar(255) DEFAULT NULL,
  `ora` time DEFAULT NULL,
  `num_likes` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dump dei dati per la tabella `corso`
--

INSERT INTO `corso` (`nome`, `descrizione`, `immagine`, `giorno`, `ora`, `num_likes`) VALUES
('Addome & PosturalGym', 'E\' un allenamento della muscolatura addominale con l’obiettivo di salvaguardare la colonna vertebrale a cui si affianca una parte di stretching mirata all’allungamento e alla flessibilità della muscolatura e delle articolazioni del corpo attraverso l’esecuzione di specifiche sequenze.', 'https://www.palestraimpattozero.it/wp-content/uploads/2016/06/ADDOME-STRETCH-3.jpg', 'venerdì', '16:30:00', 5),
('Freestyler', 'Allenamento a 360° con l’uso di fasce di resistenza che si allacciano alle quattro estremità del corpo e di una lastra di base antisdrucciolevole. Crea una resistenza in tutte le direzioni possibili in modo che ogni movimento conta! È sicuro da usare. È divertente e raggiunge i risultati di cui hai bisogno!', 'https://www.palestraimpattozero.it/wp-content/uploads/2016/06/IMG_0736.jpg', 'giovedì', '10:30:00', 7),
('HEAT', 'Allenamento Aerobico ad Alta Energia.  L’obiettivo è quello di creare un training aerobico mirato al consumo di grassi e al potenziamento muscolare.', 'https://www.palestraimpattozero.it/wp-content/uploads/2016/06/heat.jpg', 'lunedì', '10:30:00', 10),
('Intensive Workout', 'Corso ad alta intensità, mix tra aerobico e tonificazione con interessamento di tutti i gruppi muscolari', 'https://www.palestraimpattozero.it/wp-content/uploads/2016/06/c3d15b7c-4c6a-4e36-8a9b-bf6136143bc2.jpg', 'mercoledì', '10:30:00', 2),
('Pilates', 'Il metodo Pilates è un tipo di allenamento che insegna ad assumere una corretta postura e a dare maggiore armonia e fluidità nei movimenti. Questo tipo di allenamento favorisce il miglioramento della nostra postura e del corpo nella sua globalità.', 'https://www.palestraimpattozero.it/wp-content/uploads/2016/06/pilates_class.jpg', 'martedì', '16:30:00', 6),
('Piloga', 'L’obiettivo del Piloga è la messa a punto di un protocollo di lavoro che esalta le caratteristiche di concentrazione dello yoga fondendole insieme a quelle più spiccatamente fisiche del Pilates. Un mix di movimenti specifici per un allenamento globale del corpo, senza dimenticare l’aspetto mentale.', 'https://www.palestraimpattozero.it/wp-content/uploads/2016/06/PILOGA-1.jpg', 'lunedì', '16:30:00', 3),
('Spinning', 'Una delle discipline che dagli inizi degli anni 2000 hanno incontrato maggior gradimento e popolarità nei centri fitness e nelle palestre è il cosiddetto “Indoor Cycling” (usualmente definito Spinning®, il cui nome deriva da Johnny G. Spinner, il suo ideatore), un’attività sportiva il cui successo è dovuto in gran parte alla formula con cui viene praticata: un mix ideale fra ricerca della forma fisica', 'https://www.palestraimpattozero.it/wp-content/uploads/2016/06/IMG_0783.jpg', 'martedì', '10:30:00', 4),
('SWAT', 'Con la sua altissima versatilità e una gamma di oltre 350 esercizi di forza, coordinazione, flessibilità e stabilità del tronco vengono allenati contemporaneamente moltissimi muscoli del corpo. È adatto a qualsiasi livello di allenamento: dagli appassionati di fitness, agli atleti amatoriali o atleti professionisti.', 'https://www.palestraimpattozero.it/wp-content/uploads/2016/06/Operator-1_c4biij.jpg', 'mercoledì', '16:30:00', 4),
('Total Body', 'Allenamento completo che combina tecniche di esercizio finalizzate al condizionamento muscolare, unitamente al miglioramento dell’attività cardiovascolare e alla forma estetica complessiva del corpo.', 'https://www.palestraimpattozero.it/wp-content/uploads/2016/06/total-body.jpg', 'giovedì', '16:30:00', 5),
('WBS(Well Back System)', 'Ginnastica posturale, l’attrezzo permetto all’utente di assumere la posizione a “V” portando, in maniera rapida, al rilasciamento delle tensioni muscolari, rilassando il corpo nella sua globalità.', 'https://www.palestraimpattozero.it/wp-content/uploads/2016/06/IMG_0709.jpg', 'venerdì', '10:30:00', 4);

-- --------------------------------------------------------

--
-- Struttura della tabella `forum`
--

CREATE TABLE `forum` (
  `id` int(11) NOT NULL,
  `utente` varchar(255) DEFAULT NULL,
  `commento` varchar(255) DEFAULT NULL,
  `data` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dump dei dati per la tabella `forum`
--

INSERT INTO `forum` (`id`, `utente`, `commento`, `data`) VALUES
(1, 'elenavolpe', 'primo commento di sempre', '2022-05-28 11:35:25'),
(2, 'elenavolpe', 'ciao', '2022-05-28 11:35:39'),
(3, 'elenavolpe', 'ciao', '2022-05-28 11:35:44'),
(4, 'elenavolpe', 'oh yes', '2022-05-28 11:35:56'),
(5, 'elenavolpe', 'ho dovuto rifare tutto :(', '2022-05-28 11:36:07'),
(6, 'elenavolpe', 'sad life', '2022-05-28 11:36:11'),
(7, 'elenavolpe', 'però funziona dai', '2022-05-28 11:36:17'),
(8, 'elenavolpe', 'toppp', '2022-05-28 11:36:21'),
(9, 'elenavolpe', 'toppp', '2022-05-28 11:36:22'),
(10, 'elenavolpe', 'top sito cit dami00', '2022-05-28 11:36:34'),
(11, 'due', 'ma dove sono finiti i miei commentiiii', '2022-05-28 11:41:04'),
(12, 'due', 'sad life', '2022-05-28 11:41:10'),
(13, 'due', 'ciao elenavolpe', '2022-05-28 11:41:18'),
(14, 'due', 'ciao', '2022-05-28 11:42:06'),
(15, 'due', 'ciao', '2022-05-28 11:42:10'),
(16, 'due', 'ciao', '2022-05-28 11:43:29'),
(17, 'prova', 'mobile', '2022-05-28 11:45:57'),
(18, 'tre', 'tre', '2022-05-29 18:06:33'),
(19, 'prova', 'ciaooo', '2022-05-29 18:11:21'),
(20, 'due', 'ciao', '2022-05-29 18:12:45'),
(21, 'username', 'il mio primo commento', '2022-05-29 22:02:13'),
(23, 'username', 'prova', '2022-05-29 22:05:04'),
(24, 'username', ' ciao', '2022-05-29 22:05:27');

-- --------------------------------------------------------

--
-- Struttura della tabella `iscritto`
--

CREATE TABLE `iscritto` (
  `username` varchar(255) NOT NULL,
  `email` varchar(255) DEFAULT NULL,
  `nome` varchar(255) DEFAULT NULL,
  `cognome` varchar(255) DEFAULT NULL,
  `eta` int(11) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `genere` varchar(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dump dei dati per la tabella `iscritto`
--

INSERT INTO `iscritto` (`username`, `email`, `nome`, `cognome`, `eta`, `password`, `genere`) VALUES
('Dami00', 'damihearts@hotmail.com', 'Damiano', 'Samperi', 4, '$2y$10$lPmGCq6nk9vAAo2bRpYxMOodfJm3AmBYoq4Ap5IGi77GhCMsjyJvK', 'm'),
('due', 'due@due.due', 'due', 'due', 2, '$2y$10$XQrCLYn3c3.4/I7pRGfOBe7x6iMaObKTbZDpl6Y0pzghxy1K2T4gq', 'm'),
('ed16', 'edoardo.reina16@gmail.com', 'Edoardo', 'Reina', 21, '$2y$10$MuAfN3BwVsSkzNC.bBuvb.2e07qBEmL1oigFqP3AUD7RIDVW8SRJy', 'm'),
('elenavolpe', 'elena@mail.it', 'Elena', 'Volpe', 21, '$2y$10$68Ho4F/856Cz6.pYOPKW2.HYryeprQ9QuaSSDwzQt4WDc1OFKws2y', 'f'),
('elena_volpe', 'elena@uni.it', 'elena', 'volpe', 21, '$2y$10$jDB1PRJ/ff77wwxUMbobPOZh1NN5vod4T8njhnoM/f/Vx2oSfStK.', 'f'),
('martina_ruberto', 'martina@swag22.it', 'martina', 'ruberto', 21, '$2y$10$6njXNyhACjbOnJPn/DT69eTLePnB2uBjGOc72JbOJBxEG7oFgIpem', 'f'),
('Mimmo', 'domenicotramontana@gmail.com', 'Domenico', 'Tramontana', 23, '$2y$10$YCwaKtvivYyZgXwsCwfgWe9z99RFGSXLzd8tbMYhqiZU0zugM7Qp6', 'm'),
('Mimmo98', 'tramontanadomenico98@gmail.com', 'Domenico', 'Tramontana', 23, '$2y$10$ftsy/SdlkI8scrtv196p2upi73KnCCt5/ZF.JzGd52Iu5orkXOrzy', 'm'),
('ninn', 'email@nui.it', 'nibn', 'ni knj', 11, '$2y$10$cOMLmKzi8VS4CDf0G3xjYeW9V2Uh1jqRY61T/pSJ29/S/JtA55o7W', 'f'),
('nome', '12@mail.com', 'nome', 'cognome', 12, '$2y$10$jcFL03OucPEagNaHWeJw6OCzX6GMUo9ErM9JaWqhoR8iDRPfJ37.y', 'm'),
('prova', 'prova@dhe.it', 'dnekd', 'gihon', 98, '$2y$10$LP.BkPvjPB.4ypErhFPiwuoNHhEp3F9tVfrRlg.aISE4Ghc3b1l9W', 'f'),
('prova2', 'ko@jid.jo', 'uno', 'uno', 16, '$2y$10$g2ZADxK7fISxJst.0KirbOapHKk7cYEBEbCq8w5i/YSgxsV9fs3Je', 'm'),
('Scilla', 'daniele.coco.1998@gmail.com', 'Daniele', 'Coco', 23, '$2y$10$3iNqBy.I0O55Yx25bkJ7YelgQQ3cxsX0tx9S5qFiYQfDPmPmOXku6', 'm'),
('tre', 'tre@tre.tre', 'tre', 'tre', 3, '$2y$10$V7V6Dx2FUT3hD1TODs9FJ.LaESYKcZOnTdbNYeNa5P8pDNzXhWI7O', 'm'),
('uno', 'uno', 'uno', 'uno', 1, 'uno', 'f'),
('username', 'email@mail.it', 'nome', 'cognome', 18, '$2y$10$grp9oSCA6fscz9tE3t3cU.SZMy5l9KDvqUromF.ULJJph23PQ9Luu', 'm');

-- --------------------------------------------------------

--
-- Struttura della tabella `likes`
--

CREATE TABLE `likes` (
  `utente` varchar(255) NOT NULL,
  `nome_corso` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dump dei dati per la tabella `likes`
--

INSERT INTO `likes` (`utente`, `nome_corso`) VALUES
('Dami00', 'HEAT'),
('due', 'Freestyler'),
('due', 'HEAT'),
('due', 'Pilates'),
('due', 'Piloga'),
('due', 'SWAT'),
('due', 'Total Body'),
('ed16', 'HEAT'),
('ed16', 'Piloga'),
('ed16', 'SWAT'),
('elenavolpe', 'Freestyler'),
('elenavolpe', 'HEAT'),
('elenavolpe', 'Total Body'),
('elenavolpe', 'WBS(Well Back System)'),
('elena_volpe', 'Freestyler'),
('elena_volpe', 'Pilates'),
('elena_volpe', 'Spinning'),
('martina_ruberto', 'HEAT'),
('martina_ruberto', 'Intensive Workout'),
('martina_ruberto', 'Spinning'),
('Mimmo98', 'Addome & PosturalGym'),
('Mimmo98', 'Freestyler'),
('Mimmo98', 'HEAT'),
('Mimmo98', 'Intensive Workout'),
('Mimmo98', 'Spinning'),
('Mimmo98', 'SWAT'),
('Mimmo98', 'Total Body'),
('Mimmo98', 'WBS(Well Back System)'),
('nome', 'Addome & PosturalGym'),
('nome', 'HEAT'),
('nome', 'Pilates'),
('nome', 'Total Body'),
('prova', 'Addome & PosturalGym'),
('prova', 'Freestyler'),
('prova', 'HEAT'),
('prova', 'Pilates'),
('prova', 'Piloga'),
('prova', 'Spinning'),
('prova', 'Total Body'),
('prova', 'WBS(Well Back System)'),
('Scilla', 'Addome & PosturalGym'),
('Scilla', 'Freestyler'),
('Scilla', 'HEAT'),
('Scilla', 'Pilates'),
('tre', 'Addome & PosturalGym'),
('tre', 'Pilates'),
('tre', 'SWAT'),
('tre', 'WBS(Well Back System)'),
('username', 'Freestyler'),
('username', 'HEAT');

--
-- Trigger `likes`
--
DELIMITER $$
CREATE TRIGGER `delete_like` AFTER DELETE ON `likes` FOR EACH ROW begin
if EXISTS (SELECT *
           from corso
           where nome=old.nome_corso)
           then UPDATE corso
                SET num_likes=num_likes-1
		WHERE nome=old.nome_corso;
    end if;
end
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `put_like` AFTER INSERT ON `likes` FOR EACH ROW begin
if EXISTS (SELECT *
           from corso
           where nome=new.nome_corso)
           then UPDATE corso
                SET num_likes=num_likes+1
		WHERE nome=new.nome_corso;
    end if;
end
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Struttura della tabella `scheda`
--

CREATE TABLE `scheda` (
  `utente` varchar(255) NOT NULL,
  `nome_corso` varchar(255) NOT NULL,
  `giorno` varchar(255) DEFAULT NULL,
  `ora` time DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dump dei dati per la tabella `scheda`
--

INSERT INTO `scheda` (`utente`, `nome_corso`, `giorno`, `ora`) VALUES
('Dami00', 'Addome & PosturalGym', 'venerdì', '16:30:00'),
('Dami00', 'WBS(Well Back System)', 'venerdì', '10:30:00'),
('due', 'Addome & PosturalGym', 'venerdì', '16:30:00'),
('due', 'HEAT', 'lunedì', '10:30:00'),
('due', 'Intensive Workout', 'mercoledì', '10:30:00'),
('due', 'Pilates', 'martedì', '16:30:00'),
('due', 'Piloga', 'lunedì', '16:30:00'),
('due', 'Spinning', 'martedì', '10:30:00'),
('due', 'WBS(Well Back System)', 'venerdì', '10:30:00'),
('ed16', 'HEAT', 'lunedì', '10:30:00'),
('ed16', 'Intensive Workout', 'mercoledì', '10:30:00'),
('ed16', 'Pilates', 'martedì', '16:30:00'),
('ed16', 'Spinning', 'martedì', '10:30:00'),
('ed16', 'SWAT', 'mercoledì', '16:30:00'),
('elenavolpe', 'Freestyler', 'giovedì', '10:30:00'),
('elenavolpe', 'HEAT', 'lunedì', '10:30:00'),
('elenavolpe', 'Intensive Workout', 'mercoledì', '10:30:00'),
('elenavolpe', 'SWAT', 'mercoledì', '16:30:00'),
('elena_volpe', 'Addome & PosturalGym', 'venerdì', '16:30:00'),
('elena_volpe', 'Intensive Workout', 'mercoledì', '10:30:00'),
('elena_volpe', 'Pilates', 'martedì', '16:30:00'),
('elena_volpe', 'SWAT', 'mercoledì', '16:30:00'),
('martina_ruberto', 'HEAT', 'lunedì', '10:30:00'),
('martina_ruberto', 'Spinning', 'martedì', '10:30:00'),
('Mimmo98', 'Addome & PosturalGym', 'venerdì', '16:30:00'),
('Mimmo98', 'Freestyler', 'giovedì', '10:30:00'),
('nome', 'Freestyler', 'giovedì', '10:30:00'),
('nome', 'HEAT', 'lunedì', '10:30:00'),
('nome', 'Intensive Workout', 'mercoledì', '10:30:00'),
('nome', 'Spinning', 'martedì', '10:30:00'),
('prova', 'Addome & PosturalGym', 'venerdì', '16:30:00'),
('prova', 'Freestyler', 'giovedì', '10:30:00'),
('prova', 'Pilates', 'martedì', '16:30:00'),
('prova', 'SWAT', 'mercoledì', '16:30:00'),
('prova', 'Total Body', 'giovedì', '16:30:00'),
('prova', 'WBS(Well Back System)', 'venerdì', '10:30:00'),
('Scilla', 'Freestyler', 'giovedì', '10:30:00'),
('Scilla', 'Intensive Workout', 'mercoledì', '10:30:00'),
('tre', 'Addome & PosturalGym', 'venerdì', '16:30:00'),
('tre', 'Freestyler', 'giovedì', '10:30:00'),
('tre', 'Pilates', 'martedì', '16:30:00'),
('tre', 'WBS(Well Back System)', 'venerdì', '10:30:00'),
('username', 'Addome & PosturalGym', 'venerdì', '16:30:00'),
('username', 'HEAT', 'lunedì', '10:30:00'),
('username', 'Piloga', 'lunedì', '16:30:00'),
('username', 'WBS(Well Back System)', 'venerdì', '10:30:00');

--
-- Indici per le tabelle scaricate
--

--
-- Indici per le tabelle `corso`
--
ALTER TABLE `corso`
  ADD PRIMARY KEY (`nome`);

--
-- Indici per le tabelle `forum`
--
ALTER TABLE `forum`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_ut` (`utente`);

--
-- Indici per le tabelle `iscritto`
--
ALTER TABLE `iscritto`
  ADD PRIMARY KEY (`username`);

--
-- Indici per le tabelle `likes`
--
ALTER TABLE `likes`
  ADD PRIMARY KEY (`utente`,`nome_corso`),
  ADD KEY `idx_ut` (`utente`),
  ADD KEY `idx_crs` (`nome_corso`);

--
-- Indici per le tabelle `scheda`
--
ALTER TABLE `scheda`
  ADD PRIMARY KEY (`utente`,`nome_corso`),
  ADD KEY `idx_ut` (`utente`),
  ADD KEY `idx_crs` (`nome_corso`);

--
-- AUTO_INCREMENT per le tabelle scaricate
--

--
-- AUTO_INCREMENT per la tabella `forum`
--
ALTER TABLE `forum`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- Limiti per le tabelle scaricate
--

--
-- Limiti per la tabella `forum`
--
ALTER TABLE `forum`
  ADD CONSTRAINT `forum_ibfk_1` FOREIGN KEY (`utente`) REFERENCES `iscritto` (`username`);

--
-- Limiti per la tabella `likes`
--
ALTER TABLE `likes`
  ADD CONSTRAINT `likes_ibfk_1` FOREIGN KEY (`utente`) REFERENCES `iscritto` (`username`),
  ADD CONSTRAINT `likes_ibfk_2` FOREIGN KEY (`nome_corso`) REFERENCES `corso` (`nome`);

--
-- Limiti per la tabella `scheda`
--
ALTER TABLE `scheda`
  ADD CONSTRAINT `scheda_ibfk_1` FOREIGN KEY (`utente`) REFERENCES `iscritto` (`username`),
  ADD CONSTRAINT `scheda_ibfk_2` FOREIGN KEY (`nome_corso`) REFERENCES `corso` (`nome`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
