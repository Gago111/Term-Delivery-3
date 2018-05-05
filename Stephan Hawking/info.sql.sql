-- phpMyAdmin SQL Dump
-- version 4.2.12deb2+deb8u2
-- http://www.phpmyadmin.net
--
-- Machine: localhost
-- Gegenereerd op: 05 mei 2018 om 17:11
-- Serverversie: 5.5.57-0+deb8u1
-- PHP-versie: 5.6.30-0+deb8u1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Databank: `SH2`
--

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `info`
--

CREATE TABLE IF NOT EXISTS `info` (
`id` int(11) NOT NULL,
  `a_event` varchar(60) NOT NULL,
  `a_note` longtext NOT NULL,
  `a_date` date NOT NULL,
  `a_URL` mediumtext NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=latin1;

--
-- Gegevens worden geëxporteerd voor tabel `info`
--

INSERT INTO `info` (`id`, `a_event`, `a_note`, `a_date`, `a_URL`) VALUES
(11, 'Who was Stephan Hawking?', 'Stephen William Hawking CH CBE FRS FRSA (8 January 1942 – 14 March 2018)[14][15] was an English theoretical physicist, cosmologist, author and Director of Research at the Centre for Theoretical Cosmology within the University of Cambridge.[16][17] His scientific works included a collaboration with Roger Penrose on gravitational singularity theorems in the framework of general relativity and the theoretical prediction that black holes emit radiation, often called Hawking radiation. Hawking was the first to set out a theory of cosmology explained by a union of the general theory of relativity and quantum mechanics. He was a vigorous supporter of the many-worlds interpretation of quantum mechanics.[18][19]\r\n\r\nHawking was an Honorary Fellow of the Royal Society of Arts (FRSA), a lifetime member of the Pontifical Academy of Sciences, and a recipient of the Presidential Medal of Freedom, the highest civilian award in the United States. In 2002, Hawking was ranked number 25 in the BBC''s poll of the 100 Greatest Britons. He was the Lucasian Professor of Mathematics at the University of Cambridge between 1979 and 2009 and achieved commercial success with works of popular science in which he discusses his own theories and cosmology in general. His book, A Brief History of Time, appeared on the British Sunday Times best-seller list for a record-breaking 237 weeks.\r\n\r\nHawking had a rare early-onset slow-progressing form of motor neurone disease (also known as amyotrophic lateral sclerosis and Lou Gehrig''s disease), that gradually paralysed him over the decades.[20][21] Even after the loss of his speech, he was still able to communicate through a speech-generating device, initially through use of a hand-held switch, and eventually by using a single cheek muscle.', '1942-08-08', 'https://en.wikipedia.org/wiki/Stephen_Hawking#Early_life_and_education'),
(12, 'Early life and education', 'Hawking was born on 8 January 1942[22] in Oxford to Frank (1905–1986) and Isobel Hawking (née Walker; 1915–2013).[23][24] His mother was Scottish.[25] Despite their families'' financial constraints, both parents attended the University of Oxford, where Frank read medicine and Isobel read Philosophy, Politics and Economics.[24] The two met shortly after the beginning of the Second World War at a medical research institute where Isobel was working as a secretary and Frank was working as a medical researcher.[24][26] They lived in Highgate; but, as London was being bombed in those years, Isobel went to Oxford to give birth in greater safety.[27] Hawking had two younger sisters, Philippa and Mary, and an adopted brother, Edward.[28]\r\n\r\nIn 1950, when Hawking''s father became head of the division of parasitology at the National Institute for Medical Research, Hawking and his family moved to St Albans, Hertfordshire.[29][30] In St Albans, the family were considered highly intelligent and somewhat eccentric;[29][31] meals were often spent with each person silently reading a book.[29] They lived a frugal existence in a large, cluttered, and poorly maintained house and travelled in a converted London taxicab.[32][33] During one of Hawking''s father''s frequent absences working in Africa,[34] the rest of the family spent four months in Majorca visiting his mother''s friend Beryl and her husband, the poet Robert Graves.[35]', '1942-01-08', 'https://en.wikipedia.org/wiki/Stephen_Hawking#Early_life_and_education'),
(13, 'Primary and secondary school', 'Hawking began his schooling at the Byron House School in Highgate, London. He later blamed its "progressive methods" for his failure to learn to read while at the school.[36][29] In St Albans, the eight-year-old Hawking attended St Albans High School for Girls for a few months. At that time, younger boys could attend one of the houses.[35][37]\r\n\r\nHawking attended Radlett School, an independent school in the village of Radlett in Hertfordshire, for a year,[37] and from September 1952, St Albans School,[22][38] an independent school in the city of St Albans in Hertfordshire after Hawking passed the eleven-plus a year early.[39] The family placed a high value on education.[29] Hawking''s father wanted his son to attend the well-regarded Westminster School, but the 13-year-old Hawking was ill on the day of the scholarship examination. His family could not afford the school fees without the financial aid of a scholarship, so Hawking remained at St Albans.[40][41] A positive consequence was that Hawking remained with a close group of friends with whom he enjoyed board games, the manufacture of fireworks, model aeroplanes and boats,[42] and long discussions about Christianity and extrasensory perception.[43] From 1958 on, with the help of the mathematics teacher Dikran Tahta, they built a computer from clock parts, an old telephone switchboard and other recycled components.[44][45]\r\n\r\nAlthough known at school as "Einstein", Hawking was not initially successful academically.[46] With time, he began to show considerable aptitude for scientific subjects and, inspired by Tahta, decided to read mathematics at university.[47][48][49] Hawking''s father advised him to study medicine, concerned that there were few jobs for mathematics graduates. [50] He also wanted his son to attend University College, Oxford, his own alma mater. As it was not possible to read mathematics there at the time, Hawking decided to study physics and chemistry. Despite his headmaster''s advice to wait until the next year, Hawking was awarded a scholarship after taking the examinations in March 1959.[51][52]\r\n\r\nUndergraduate years', '1959-10-05', 'https://en.wikipedia.org/wiki/Stephen_Hawking#Early_life_and_education'),
(16, 'What Disease Did Stephen Hawking Have?', 'At the age of 21, Stephen Hawking was diagnosed with amyotrophic lateral sclerosis (ALS, or Lou Gehrig''s disease). In a very simple sense, the nerves that controlled his muscles were shutting down. At the time, doctors gave him two and a half years to live.\r\n\r\nHawking first began to notice problems with his physical health while he was at Oxford—on occasion he would trip and fall, or slur his speech—he didn''t look into the problem until 1963, during his first year at Cambridge. For the most part, Hawking had kept these symptoms to himself. But when his father took notice of the condition, he took Hawking to see a doctor. For the next two weeks, the 21-year-old college student made his home at a medical clinic, where he underwent a series of tests.\r\n\r\n"They took a muscle sample from my arm, stuck electrodes into me, and injected some radio-opaque fluid into my spine, and watched it going up and down with X-rays, as they tilted the bed," he once said. "After all that, they didn''t tell me what I had, except that it was not multiple sclerosis, and that I was an atypical case."\r\n\r\nEventually, however, doctors did diagnose Hawking with the early stages of ALS. It was devastating news for him and his family, but a few events prevented him from becoming completely despondent. The first of these came while Hawking was still in the hospital. There, he shared a room with a boy suffering from leukemia. Relative to what his roommate was going through, Hawking later reflected, his situation seemed more tolerable. Not long after he was released from the hospital, Hawking had a dream that he was going to be executed. He said this dream made him realize that there were still things to do with his life.\r\n\r\nIn a sense, Hawking''s disease helped turn him into the noted scientist he became. Before the diagnosis, Hawking hadn''t always focused on his studies. "Before my condition was diagnosed, I had been very bored with life," he said. "There had not seemed to be anything worth doing." With the sudden realization that he might not even live long enough to earn his PhD, Hawking poured himself into his work and research. \r\n\r\nAs physical control over his body diminished (he''d be forced to use a wheelchair by 1969), the effects of his disease started to slow down. Over time, however, Hawking''s ever-expanding career was accompanied by an ever-worsening physical state. By the mid-1970s, the Hawking family had taken in one of Hawking''s graduate students to help manage his care and work. He could still feed himself and get out of bed, but virtually everything else required assistance. In addition, his speech had become increasingly slurred, so that only those who knew him well could understand him. In 1985 he lost his voice for good following a tracheotomy. The resulting situation required 24-hour nursing care for the acclaimed physicist.\r\n\r\nIt also put in peril Hawking''s ability to do his work. The predicament caught the attention of a California computer programmer, who had developed a speaking program that could be directed by head or eye movement. The invention allowed Hawking to select words on a computer screen that were then passed through a speech synthesizer. At the time of its introduction, Hawking, who still had use of his fingers, selected his words with a handheld clicker. Eventually, with virtually all control of his body gone, Hawking directed the program through a cheek muscle attached to a sensor.\r\n\r\nThrough the program, and the help of assistants, Stephen Hawking continued to write at a prolific rate. His work included numerous scientific papers, of course, but also information for the non-scientific community.\r\n\r\nHawking''s health remained a constant concern—a worry that was heightened in 2009 when he failed to appear at a conference in Arizona because of a chest infection. In April, Hawking, who had already announced he was retiring after 30 years from the post of Lucasian Professor of Mathematics at Cambridge, was rushed to the hospital for being what university officials described as "gravely ill," though he later made a full recovery.', '1970-01-01', 'https://www.biography.com/people/stephen-hawking-9331710'),
(20, 'Starshoot', 'NEW YORK — Stephen Hawking wants humanity to reach the stars. \r\n\r\nThe famed cosmologist, along with a group of scientists and billionaire investor Yuri Milner, unveiled an ambitious new $100 million project today (April 12) called Breakthrough Starshot, which aims to build the prototype for a tiny, light-propelled robotic spacecraft that could visit the nearby star Alpha Centauri after a journey of just 20 years.\r\n\r\n"The limit that confronts us now is the great void between us and the stars, but now we can transcend it," Hawking said today during a news conference here at One World Observatory. [Stephen Hawking: ''Transcending Our Limits'' With Breakthrough Starshot (Video)]\r\n\r\n"With light beams, light sails and the lightest spacecraft ever built, we can launch a mission to Alpha Centauri within a generation," he added. "Today, we commit to this next great leap into the cosmos. Because we are human, and our nature is to fly."\r\n\r\nThe Starshot spacecraft will consist of a wafer-size chip attached to a super-thin sail. This paired duo will be launched to space aboard a mothership, and then propelled to the stars by laser light beamed from a high-altitude facility here on Earth.\r\n\r\nSuch a craft, Milner said, could be accelerated up to 20 percent the speed of light — fast enough to make it to the Alpha Centauri system, which lies 4.37 light-years away, just two decades after launch. (It would take a conventionally propelled probe about 30,000 years to make such a trip.)', '2016-04-12', 'https://www.space.com/32546-interstellar-spaceflight-stephen-hawking-project-starshot.html'),
(23, 'Breakthrough', 'Breakthrough Initiatives is a science-based program founded in 2015 and funded by Yuri Milner to search for extraterrestrial intelligence over a span of at least 10 years. The program is divided into multiple projects. Breakthrough Listen will comprise an effort to search over 1,000,000 stars for artificial radio or laser signals. A parallel project called Breakthrough Message is an effort to create a message "representative of humanity and planet Earth".[1][2] The project Breakthrough Starshot aims to send a swarm of probes to the nearest star at about 20% the speed of light. The project Breakthrough Watch aims to identify and characterize Earth-sized, rocky planets around Alpha Centauri and other stars within 20 light years of Earth.[3]\r\n\r\nThe Breakthrough Initiatives were announced to the public on July 20, 2015 at London''s Royal Society. Physicist Stephen Hawking, Russian tycoon Yuri Milner, and others created the Initiatives to search for intelligent extraterrestrial life in the Universe and consider a plan for possibly transmitting messages out into space.[4][5] The announcement included an open letter co-signed by multiple scientists, including Hawking, expressing support for an intensified search for alien radio communications. During the public launch, Hawking said: "In an infinite Universe, there must be other life. There is no bigger question. It is time to commit to finding the answer."[6][7]\r\n\r\nThe US$100 million cash infusion is projected to mark up the pace of SETI research over the early 2000s rate, and will nearly double the rate NASA was spending on SETI research annually in approximately 1973–1993.[5]\r\n\r\nThe Breakthrough Message program is to study the ethics of sending messages into deep space.[12] It also launched an open competition with a US$1 million prize pool, to design a digital message that could be transmitted from Earth to an extraterrestrial civilization. The message should be "representative of humanity and planet Earth". The program pledges "not to transmit any message until there has been a global debate at high levels of science and politics on the risks and rewards of contacting advanced civilizations".[13]', '2015-06-20', 'https://en.wikipedia.org/wiki/Breakthrough_Initiatives'),
(26, 'Alien Theory', 'Astronomers hunting for signs of intelligent alien life in the universe have recorded 15 mysterious radio signals coming from a dwarf galaxy three billion light years away.\r\n\r\nThe team is part of the Breakthrough Listen project, set up by Professor Stephen Hawking and Russian billionaire Yuri Milner, to discover whether we’re alone in the universe.\r\n\r\nAlthough the latest fast radio bursts, or FRBs, are unlikely to have come from an alien civilisation, the researchers say it proves their equipment is working well, and ready to pick up signs of life if they exist.\r\n\r\nFRBs are radio signals from somewhere in deep space that last for just milliseconds.  The new bursts came from an unknown source, dubbed ‘FRB 121102’, which was discovered in 2012.', '2017-09-14', 'https://www.telegraph.co.uk/science/2017/09/01/stephen-hawking-mission-find-alien-civilisation-detects-radio/');

--
-- Indexen voor geëxporteerde tabellen
--

--
-- Indexen voor tabel `info`
--
ALTER TABLE `info`
 ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT voor geëxporteerde tabellen
--

--
-- AUTO_INCREMENT voor een tabel `info`
--
ALTER TABLE `info`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=27;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;