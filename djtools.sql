-- phpMyAdmin SQL Dump
-- version 4.8.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 22, 2019 at 03:37 AM
-- Server version: 10.1.37-MariaDB
-- PHP Version: 7.3.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `djtools`
--

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `category_id` int(11) NOT NULL,
  `category_name` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`category_id`, `category_name`) VALUES
(1, 'CDJ'),
(2, 'Mixer'),
(3, 'DDJ');

-- --------------------------------------------------------

--
-- Table structure for table `items`
--

CREATE TABLE `items` (
  `item_id` int(11) NOT NULL,
  `item_name` text NOT NULL,
  `item_category` int(11) NOT NULL,
  `item_image` text NOT NULL,
  `item_price` int(11) NOT NULL,
  `item_desc` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `items`
--

INSERT INTO `items` (`item_id`, `item_name`, `item_category`, `item_image`, `item_price`, `item_desc`) VALUES
(1, 'CDJ 900 Nexus', 1, 'images/cdj900n.jpg', 24200000, 'The CDJ-900NXS builds on the success of its predecessor, the CDJ-900, plus it’s packed\r\nwith new technology including a full colour LCD screen, Beat Divide, four-deck Beat Sync\r\nand the ability to play sets from a smartphone.\r\nThe CDJ-900NXS boasts a high resolution screen, giving DJs a quick and instant view of\r\nthe Wave Display and Wave Zoom and the ability to view and edit rekordbox beatgrids.'),
(2, 'CDJ 850', 1, 'images/cdj850.png', 13000000, 'The CDJ-850 builds on the DNA of its predecessor, the CDJ-800MK2 and adds some\r\nserious enhancements. With its full-sized jog wheels, large screen and pro-DJ features,\r\nit feels and functions like a CDJ-900NXS or CDJ-2000NXS – without the top-flight price\r\ntag. The CDJ-850 is rekordbox-ready or you can use the USB-HID interface to control the\r\nDJ software of your choice'),
(3, 'CDJ 2000 Nexus', 1, 'images/cdj2000n.jpg', 20200000, 'The CDJ-2000NXS2 inherits all the best features from its predecessor – the CDJ-\r\n2000NXS – and takes a giant leap forward. We’ve added a larger, multicolour touch screen\r\nwith a Qwerty keyboard and search filters to help you select tracks faster. 2 banks of 4 Hot\r\nCues give you more creative freedom, while a 96 kHz/24-bit sound card and support for\r\nFLAC/Apple Lossless Audio (ALAC) means you can play with higher resolution formats.\r\nDownload the  rekordbox™  music management software or the rekordbox app to prepare\r\nyour sets.'),
(4, 'CDJ Tour 1', 1, 'images/cdjtour1.jpg', 30000000, 'Tour from festival to arena with the\r\nCDJ-TOUR1 and perform at the\r\nhighest level. Together with\r\nthe DJM-TOUR1 mixer you&#39;ll play the main stage with a sturdy, reliable set-up you can\r\ncount on.\r\nThe CDJ-TOUR1 delivers the warm high-resolution sound you&#39;re used to, and adds pro-\r\ngrade audio components to scale up for any size of event. And with the same familiar layout\r\nand features as the CDJ-2000NXS2, and a large fold-out touch screen you get effortless\r\ncontrol when it matters most.'),
(5, 'XDJ 1000 mk.2', 1, 'images/xdj1000mk2.jpg', 26000000, 'Based on its predecessor, the XDJ-1000MK2 improves usability through enhanced track\r\nbrowsing and support for high-resolution FLAC and ALAC audio files. It inherits the large jog\r\nwheel and 7-inch, full-colour touch screen from the CDJ-2000NXS2, as well as features\r\nsuch as 8 Hot Cues and Quantize.\r\nDownload the  rekordbox™  music management software or the rekordbox app to prepare\r\nyour sets.'),
(6, 'CDJ 350', 1, 'images/cdj350.jpg', 24000000, 'The entry-level CDJ-350 inherits many traits from our pro-DJ decks, making it a perfect\r\nspringboard to professional sounding sets. Play from CDs and USB devices, or connect to\r\nyour PC/Mac for plug-and-play control of compatible DJ software.\r\nThe CDJ-350 comes bundled with the deck comes  rekordbox™  music management\r\nsoftware to analyse the BPM of your tracks and help you with every aspect of preparing\r\nyour sets, while features such as Beat Lock make mixing effortless.'),
(7, 'XDJ 700', 1, 'images/xdj700.jpg', 12000000, 'The XDJ-700 comes with a large touchscreen, a familiar club layout and it inherits a host of\r\nfeatures from its big brother, the XDJ-1000. Its compact size and removable stand offer\r\ngreat set-up possibilities for even the smallest booth or home set-up.\r\nWith support for our free rekordbox™ software you can prepare and manage your tracks on\r\na PC or Mac before hitting the booth.'),
(9, 'DJM 900 Nexus', 2, 'images/djm900nx.jpg', 10000000, 'Take your performance to new heights with the DJM-900NXS2, which features our first ever\r\n64-bit mixing processor for a warmer, more nuanced sound. We’ve fine-tuned the EQ and\r\nfader curves and enhanced the FX controls to give you even more creative choice. Plus the\r\nversatile DJM-900NXS2 has an independent Send/Return, 4 phono inputs and 2 USB ports\r\ngiving you flexibility to set it up your way.'),
(10, 'DJM Tour 1', 2, 'images/djmtour1.png', 20000000, 'Tour from festival to arena with the DJM-TOUR1 and perform at the highest level. Connect\r\nup to 4 CDJ-TOUR1&#39;s via Pro DJ Link and enjoy a sturdy, reliable set-up every single\r\nperformance.\r\nThe DJM-TOUR1 delivers the warm high-resolution sound you&#39;re used to, and adds pro-\r\ngrade audio components to scale up for any size of event. It even features an AES/EBU\r\ndigital output so you can connect directly to front of house with no loss of sound quality, and\r\n2 independent headphone sections that let you monitor and cue tracks separately.\r\nPlus with the same familiar layout and features as the DJM-900NXS2, and a large fold-out\r\ntouch screen you get effortless control when it matters most.'),
(11, 'DJM 750', 2, 'images/djm750.jpg', 21300000, 'Take the step to the DJ booth seamlessly with the DJM-750MK2, a 4-channel mixer which\r\ninherits key features and design elements from the DJM-900NXS2, creating a club-style\r\nsetup when combined with our professional CDJ or XDJ multi players.\r\nYou can perform seamless mixes on the DJM-750MK2 thanks to the smooth curves on the\r\nEQs and channel faders. The Magvel crossfader, inherited from the DJM-900NXS2, gives a\r\nprecise response and assured feel during even the most complicated scratch techniques.'),
(12, 'DJM 350', 2, 'images/djm350.png', 14000000, 'The DJM-350 is the perfect entry-level mixer, boasting features from our top-flight mixers –\r\nincluding powerful creative effects, USB recording and a MIC input with a 2-band EQ –\r\nwithout the top-flight price.'),
(13, 'DJM 450', 2, 'images/djm450.jpg', 17000000, 'The DJM-350 is the perfect entry-level mixer, boasting features from our top-flight mixers –\r\nincluding powerful creative effects, USB recording and a MIC input with a 2-band EQ –\r\nwithout the top-flight price.'),
(14, 'DJM S9', 2, 'images/djms9.jpg', 26000000, 'Meet the DJM-S9, our first two-channel battle mixer for Serato DJ Pro. With a fully\r\nconfigurable Magvel Pro crossfader and customisable FX buttons and pads, you can tailor\r\nthe mixer to suit your DJing style. The tough DJM-S9 is build to withstand the most\r\nenergetic scratch performances, and it boasts high-quality audio circuitry inherited from our\r\nflagship 4-channel digital mixer, the DJM-2000NXS.'),
(15, 'DDJ SB3', 3, 'images/ddjsb3.jpg', 24000000, 'We’ve combined the popular features of the DDJ-SB2 with our leading Serato DJ controllers\r\nto make learning to DJ more accessible than ever. The ideal tool for beginners looking to\r\nhone their skills, this 2-channel controller is easy to navigate, featuring a professional-style\r\nlayout inspired by our top DDJ-S range. Master Serato DJ Lite, then when you’re ready,\r\npurchase Serato DJ Pro to progress on the one machine.\r\nTransition between tracks with ease thanks to the added FX Fade feature and experiment\r\nwith scratch effects without using turntables via the new Pad Scratch function. Co-\r\ndeveloped with DJ Jazzy Jeff, this technique adds scratch recordings to tracks at a touch of\r\nthe Performance Pads.'),
(16, 'DDJ SR2', 3, 'images/ddjsr2.jpg', 23000000, 'The DDJ-SR2 has dedicated key controls for Serato DJ Pro, allowing you to control the\r\nsoftware features with the push of a button. This 2-channel controller takes after our\r\nprofessional DJ gear with multicoloured Performance Pads and a spacious layout. Being\r\ncompact and 18% lighter than the DDJ-SR, the DDJ-SR2 is easy to transport to any gig.\r\nEnjoy a full package including the latest version of Serato DJ Pro as well as the Pitch ’n\r\nTime DJ expansion pack, which lets you get creative with your track’s key and BPM, even in\r\nextreme tempos.'),
(17, 'DDJ 1000', 3, 'images/ddj1000.jpg', 15000000, 'Make the most of rekordbox dj’s enhanced new features with our dedicated 4-channel DJ\r\ncontroller. Featuring the professional layout inherited from the flagship NXS2 models, it’s\r\nthe portable, compact solution for performing at parties and events. The DDJ-1000 features\r\nall-new high definition LCD screens on each jog wheel, allowing you to keep your eyes\r\nintuitively on the deck.\r\nFluidly select tracks you didn’t consider compatible thanks to rekordbox dj’s new Related\r\nTracks feature. Bring creative flair to performances with 14 Beat FX – including four new\r\nversions – and instantly trigger Hot Cues, Loops and more with the 16 multicoloured\r\nPerformance Pads.'),
(18, 'DDJ RZ', 3, 'images/ddjrz.jpg', 13000000, 'The top-flight DDJ-RZ is the first professional, native controller for  rekordbox dj , giving you\r\nthe flexibility to prepare your tracks in rekordbox™ and then get plug-and-play performance\r\ndirectly from your laptop.\r\nThe controller mirrors the DJ software&#39;s layout precisely to enable intuitive performances.\r\nEquipped with a club-quality magnetic crossfader, two USB sound cards and the new\r\nOscillator Sampler – making it a serious performer for the professional booth.'),
(19, 'DDJ WEGO', 3, 'images/ddjwego.png', 10000000, 'Take your first steps in the world of DJ-ing with the compact DDJ-WeGO4. Learn to mix\r\nseamlessly with tactile controls and jog wheels for scratching. And use the sampler, Hot\r\nCues and Pad FX inherited from professional hardware to bring more creativity to your sets.\r\nJust plug in your laptop, tablet or smartphone and start to play.\r\nReady to take things a step further? Simply use the bundled licence key for our rekordbox dj\r\nsoftware to perform straight out of the box. Or use  WeDJ , our DJ performance app for\r\niPad/iPhone, to mix tracks directly from your Itunes library.');

-- --------------------------------------------------------

--
-- Table structure for table `transaction`
--

CREATE TABLE `transaction` (
  `transac_id` int(11) NOT NULL,
  `transac_user` varchar(255) NOT NULL,
  `transac_timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `transac_pengiriman` varchar(5) NOT NULL,
  `transac_pembayaran` varchar(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `transaction`
--

INSERT INTO `transaction` (`transac_id`, `transac_user`, `transac_timestamp`, `transac_pengiriman`, `transac_pembayaran`) VALUES
(2, 'aa@aa.com', '2019-04-22 01:21:16', 'Jne', 'BCA'),
(3, 'aa@aa.com', '2019-04-22 01:25:26', 'Jne', 'BCA'),
(4, 'aa@aa.com', '2019-04-22 01:37:05', 'Jne', 'BCA');

-- --------------------------------------------------------

--
-- Table structure for table `transactionlist`
--

CREATE TABLE `transactionlist` (
  `id` int(11) NOT NULL,
  `transac_id` int(11) NOT NULL,
  `item_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `transactionlist`
--

INSERT INTO `transactionlist` (`id`, `transac_id`, `item_id`) VALUES
(1, 3, 2),
(2, 4, 2);

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `user_id` int(11) NOT NULL,
  `user_name` varchar(255) NOT NULL,
  `user_email` varchar(255) NOT NULL,
  `user_password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`user_id`, `user_name`, `user_email`, `user_password`) VALUES
(1, 'uwu', 'aa@aa.com', 'test123123123');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`category_id`);

--
-- Indexes for table `items`
--
ALTER TABLE `items`
  ADD PRIMARY KEY (`item_id`),
  ADD KEY `item_category` (`item_category`);

--
-- Indexes for table `transaction`
--
ALTER TABLE `transaction`
  ADD PRIMARY KEY (`transac_id`);

--
-- Indexes for table `transactionlist`
--
ALTER TABLE `transactionlist`
  ADD PRIMARY KEY (`id`),
  ADD KEY `transactionlist_ibfk_1` (`transac_id`),
  ADD KEY `item_id` (`item_id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `category_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `items`
--
ALTER TABLE `items`
  MODIFY `item_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `transaction`
--
ALTER TABLE `transaction`
  MODIFY `transac_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `transactionlist`
--
ALTER TABLE `transactionlist`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `items`
--
ALTER TABLE `items`
  ADD CONSTRAINT `items_ibfk_1` FOREIGN KEY (`item_category`) REFERENCES `category` (`category_id`);

--
-- Constraints for table `transactionlist`
--
ALTER TABLE `transactionlist`
  ADD CONSTRAINT `transactionlist_ibfk_1` FOREIGN KEY (`transac_id`) REFERENCES `transaction` (`transac_id`),
  ADD CONSTRAINT `transactionlist_ibfk_2` FOREIGN KEY (`item_id`) REFERENCES `items` (`item_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
