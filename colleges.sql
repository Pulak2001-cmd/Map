-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 16, 2022 at 09:14 AM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 7.4.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `colleges`
--

-- --------------------------------------------------------

--
-- Table structure for table `colleges`
--

CREATE TABLE `colleges` (
  `sl_` int(255) NOT NULL,
  `institute` varchar(255) DEFAULT NULL,
  `lat` float NOT NULL,
  `lng` float NOT NULL,
  `district` varchar(255) DEFAULT NULL,
  `subdivision` varchar(255) DEFAULT NULL,
  `block` varchar(255) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `contact` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `colleges`
--

INSERT INTO `colleges` (`sl_`, `institute`, `lat`, `lng`, `district`, `subdivision`, `block`, `status`, `address`, `contact`, `email`) VALUES
(1, 'ABL Institute of Pharmacy', 24.0707, 88.5533, 'MURSHIDABAD', NULL, NULL, 'Private', 'Vill- Gobindapur, p.o. - Juginda, P.S. Domkal Dist . Murshidabad, PIN-742406', '9434534353', 'ablip852@gmail.com'),
(2, 'ABS ACADEMY OF POLYTECHNIC', 23.4968, 87.3325, 'PASCHIM BURDWAN', 'Durgapur', 'Gopinathpur', 'Private', 'J.P. Avenue, Sagarbhanga, Durgapur, Dist.- Paschim Bardhaman, PIN-713211.', '9434789201, 9434789202', 'info@absacademy.com'),
(3, 'ACHARYA JAGADISH CHANDRA BOSE POLYTECHNIC', 22.695, 88.6892, 'NORTH 24 PARGANAS', 'Barasat', 'Deganga', 'Government', 'Berachampa, P.O.-Devalaya, Dist.-North 24-Parganas, PIN-743424.', '3216242227', 'ajcbpolytechnic@gmail.com'),
(4, 'ACHARYYA PRAFULLA CHANDRA ROY POLYTECHNIC', 22.4996, 88.3698, 'SOUTH 24 PARGANAS', 'Alipore', NULL, 'Government', '188, Raja S. C. Mullick Road, P.O.- Jadavpur, Kolkata - 700032.', '033-24146164/ 24146241', 'apcraypolytechnic@gmail.com'),
(5, 'ADYAPEATH ANNADA POLYTECHNIC COLLEGE', 22.6619, 88.3645, 'NORTH 24 PARGANAS', 'Barrackpore', 'Kamarhati Municipality', 'Govt Sponsored', '50 D.D.Mondal Ghat Road, Dakshineswar, Kolkata-700076.', '033-25645566', 'adyapeathannadapolytechnic@gmail.com'),
(6, 'AMS COLLEGE OF POLYTECHNIC, BARASAT', 22.7608, 88.4385, 'NORTH 24 PARGANAS', 'Barasat Sadar', 'Barasat-I', 'Private', 'Rangapur, P.O. - Nilgunj Bazar, Barasat, Kolkata - 700121.', '033-68888690, 68888545', 'sn.chaudhuri@amsgroup.org.in, ams.edu@amsgroup.org.in'),
(7, 'Anand College of Education', 22.4001, 87.5408, 'PASCHIM MEDINIPUR', NULL, NULL, 'Private', 'Kabilpur, Debra, Paschim Medinipur, West Bengal, 721126', '6294323881', 'anandcollegeofedn2015@gmail.com'),
(8, 'ARAMBAG GOVERNMENT POLYTECHNIC', 22.9316, 87.7769, 'HOOGHLY', 'Arambagh', 'Arambagh', 'Government', 'P.O.- Chandur, P.S.-Arambagh, Dist.- Hooghly, PIN - 712602.', NULL, 'agpgov@gmail.com'),
(9, 'ASANSOL INSTITUTE OF ENGINEERING & MANAGEMENT - POLYTECHNIC', 23.6636, 86.9958, 'PASCHIM BURDWAN', 'Asansol', 'Asansol Municipal Corporation', 'Private', 'Bagbandi Road, P.O. Kalipahari, Asansol, Dist.- Paschim Bardhaman, PIN - 713339.', '0341-6610306 / 6610300 / 6610302, 8001500263', 'admissionsaiem2015@gmail.com, infoaiem2015@gmail.com'),
(10, 'ASANSOL POLYTECHNIC', 23.6984, 86.982, 'PASCHIM BURDWAN', 'Asansol', 'Asansol Municipal Corporation', 'Government', 'P.O.-Dakshin Dhadka, Asansol, Dist.- Paschim Bardhaman, PIN-713302.', '0341-2270053', 'asansolpolytechnic_mes@yahoo.com'),
(11, 'BAGHMUNDI GOVERNMENT POLYTECHNIC', 23.1953, 86.0485, 'PURULIA', 'Jhalda', 'Baghmundi', 'Government', 'Baghmundi, P.O.- Pathardih, P.S.-Baghmundi, Dist.- Purulia, PIN-723152.', NULL, 'bgmdpoly@gmail.com'),
(12, 'BANKURA GOVERNMENT POLYTECHNIC', 23.2262, 86.9386, 'BANKURA', 'Bankura Sadar', 'Bankura - I', 'Government', 'Kalpathar, Bankura, PIN-722146.', '3242201075', 'bgp.bku@gmail.com'),
(13, 'BARUIPUR GOVERNMENT POLYTECHNIC', 22.3986, 88.4281, 'SOUTH 24 PARGANAS', 'Baruipur', 'Baruipur', 'Government', 'P.O.-Mallickpur, P.S.-Baruipur, Dist.-24 Parganas (South), PIN -700145.', '8335990569', 'baruipurgovtpolytechnic@gmail.com'),
(14, 'BASANTIKA INSTITUTE OF ENGG AND TECHNOLOGY (POLYTECHNIC)', 23.9883, 87.5691, 'BIRBHUM', 'Suri Sadar', 'Md Bazar', 'Private', 'P.O.-Ganpur, P.S.-Md. Bazar, Dist.-Birbhum, PIN-731216.', '9434004063', 'bietganpur@gmail.com'),
(15, 'BASIRHAT GOVERNMENT POLYTECHNIC', 22.6507, 88.8549, 'NORTH 24 PARGANAS', NULL, NULL, 'Government', 'Sir R.N.Mukherjee Road, P.O.- Bhyabla, P.S.-Basirhat, District-North 24 Parganas,West Bengal,Pin- 743422 PIN-743422', '8336045142', 'basirhatgovpoly2019@gmail.com'),
(16, 'BCARE INSTITUTE OF MANAGEMENT AND TECHNOLOGY (P)', 24.2013, 88.1173, 'MURSHIDABAD', 'Lalbagh', 'Nabagram', 'Private', 'Amar, P.O.-Kanfala, P.S.-Nabagram, Dist-Murshidabad, PIN-742184.', '9434378267, 7718359167, 9474801714', 'admin@bimt.org.in, shuda_08@rediffmail.com'),
(17, 'B.C.D.A. COLLEGE OF PHARMACY & TECHNOLOGY, CAMPUS-2', 22.7, 88.4783, 'NORTH 24 PARGANAS', 'BARASAT', 'BARASAT - II', 'Private', '52/C/10, GHOSH PARA ROAD, UDAIRAJPUR, MADHYAMGRAM PIN-700129', '9874533115', 'bcda2_principal@yahoo.com'),
(18, 'BEHALA GOVERNMENT POLYTECHNIC', 22.5148, 88.3008, 'KOLKATA', NULL, NULL, 'Government', '756, Upendra Nath Banerjee Road, Parnasree, Behala, Kmc Ward No.: 132, Kolkata - 700060 PIN-700060', '9830065530', 'behalagovpoly@gmail.com'),
(19, 'Bengal College of Pharmaceutical Sciences and Research', 23.5149, 87.3564, 'PASCHIM BURDWAN', NULL, NULL, 'Private', 'B.R.Basu Sarani, Bidhan Nagar, Durgapur -713212', '9331270550', 'skset_phar@rediffmail.com'),
(20, 'Bengal College of Pharmaceutical Technology', 23.7977, 87.3849, 'BIRBHUM', NULL, NULL, 'Private', 'Ward no 8, Notunpally, Cinema hall Pass Road, P.O.+P.S-Dubrajpur, Birbhum, PIN-731123', '9477416587', 'seacdt@gmail.com'),
(21, 'BENGAL COLLEGE OF POLYTECHNIC', 23.5173, 87.3469, 'PASCHIM BURDWAN', 'Durgapur', NULL, 'Private', 'Shahid Sukumar Banerjee Sarani, Bidhan Nagar, Durgapur, Dist.- Paschim Bardhaman, PIN -713212.', '0343-2532205, 9475378708', 'bcp_dgp@rediffmail.com, radharamanp@gmail.com'),
(22, 'BENGAL INSTITUTE OF POLYTECHNIC', 23.8388, 78.7378, 'BIRBHUM', 'Suri Sadar', 'Dubrajpur', 'Private', 'Sagar, Near BKTPP, (between Dubrajpur Power House Morh and Brakreswar Thermal Power Plant), P.O.-Hetampur, Dist.-Birbhum, PIN-731124.', '8001807884, 9831409215', 'president.bip@gmail.com'),
(23, 'BENGAL INSTITUTE OF TECHNOLOGY', 23.6287, 88.1038, 'PURBA BURDWAN', 'Katwa', 'Katwa - I', 'Govt Sponsored', 'Jajigram Industrial Complex, P.O.-Katwa, Dist. - Purba Bardhaman, PIN-713130.', '03453-256262', 'bit_katwa@yahoo.co.in'),
(24, 'BENGAL INSTITUTE OF TECHNOLOGY & MANAGEMENT, SANTINIKETAN', 23.6667, 87.6623, 'BIRBHUM', 'Bolpur', 'Ilambazar', 'Private', 'Sriniketan Bypass, P.O.- Doranda, P.S.- Ilambazar, Dist.- Birbhum, PIN - 731236.', '9007030104, 9007030148, 90078030162', 'director@bitm.org.in, examcell.bitm@gmail.com'),
(25, 'BENGAL SCHOOL OF TECHNOLOGY, A COLLEGE OF PHARMACY', 22.9057, 88.3382, 'HOOGHLY', NULL, NULL, 'Private', 'Sugandha, Delhi Road, Near Chinsurah Railway Station, Dist.- Hooghly, PIN - 712102.', NULL, 'bstpharmacy@hotmail.com'),
(26, 'BERHAMPORE POLYTECHNIC COLLEGE', 24.1219, 88.2605, 'MURSHIDABAD', 'Berhampore Sadar', 'Berhampore', 'Private', '3/20, Girijapara Lane, P.O.- Khagra, P.S.- Berhampore, Dist.- Murshidabad, PIN - 742103.', '9434071442, 9564278977', 'somen.bhb@gmail.com, bpc.bhb@gmail.com'),
(27, 'Bharat Technology', 22.4843, 88.0934, 'HOWRAH', NULL, NULL, 'Private', 'Jaburberia, banitable, Uluberia, Howrah, PIN-711316', '9471304160', 'contactasrpl@gmail.com'),
(28, 'Birbhum Pharmacy School', 23.8156, 87.4093, 'BIRBHUM', NULL, NULL, 'Private', 'Bandhersole, PS sadaipur, P.O. Hetampur, Birbhum, PIN-731124', '9831111015', 'info@burinspharma.in'),
(29, 'BIRLA INSTITUTE OF TECHNOLOGY', 22.6262, 88.3792, 'NORTH 24 PARGANAS', 'Kolkata', 'Kolkata', 'Government', '56, Barrackpore Trunk Road, Kolkata - 700050.', '033-25576742', 'principalbitkolkata@gmail.com'),
(30, 'BISHNUPUR PUBLIC INSTITUTE OF ENGINEERING', 23.0679, 87.3165, 'BANKURA', 'Bishnupur', 'Bishnupur', 'Private', 'Siromonipur, P.O. + P.S. : Bishnupur, Dist. - Bankura, PIN - 722122.', '9679297698', 'bpie_10@rediffmail.com'),
(31, 'B.P.C. INSTITUTE OF TECHNOLOGY', 23.4064, 88.4942, 'NADIA', 'Krishnagar Sadar', 'Krishnagar-I', 'Government', 'H. P. Chatterjee Road, P.O. - Krishnanagar, Dist.-Nadia, PIN - 741101.', '03472-252452', 'bpcitwb@gmail.com'),
(32, 'BUDGE BUDGE INSTITUTE OF TECHNOLOGY', 22.4606, 88.173, 'SOUTH 24 PARGANAS', 'Alipore Sadar', 'Budge Budge - I', 'Private', 'Nischintapur, Budge Budge, Kolkata - 700137.', '033-24820676/70, 9831222519, 9163413025', 'diploma@bbit.edu.in, dean.diploma@bbit.edu.in,'),
(33, 'BUNDWAN POLYTECHNIC', 22.9062, 86.4971, 'PURULIA', 'Manbazar', 'Bandwan', 'Government', 'Madhupur, P.O-Jitan, Dist.- Purulia, PIN - 723129.', '03253-201527', 'bndpoly@gmail.com'),
(34, 'Burdwan Institute of Pharmacy', 23.2362, 87.8578, 'PURBA BURDWAN', NULL, NULL, 'Private', 'Bhatchala, P.O. Sripally, Purba Bardhaman, 713103', '8759199051', 'burdwaninstituteofpharmacy@gmail.com'),
(35, 'CALCUTTA INSTITUTE OF PHARMACEUTICAL & ALLIED HEALTH SCIENCES', 22.4834, 88.0852, 'HOWRAH', 'ULUBERIA', 'ULUBERIA - II', 'Private', 'BANITABLA, ULUBERIA, HOWRAH PIN-711316', '033-2661-0736 / 9874983684', 'info@bciedu.org, admission@bciedu.org'),
(36, 'CALCUTTA INSTITUTE OF TECHNOLOGY', 22.4834, 88.0852, 'HOWRAH', 'Uluberia', 'Uluberia - II', 'Private', 'Banitala, Uluberia, Dist.- Howrah, PIN - 711316.', '9331040757', 'sarkarcit@gmail.com'),
(37, 'CAMELLIA INSTITUTE OF POLYTECHNIC', 23.4033, 87.5484, 'PURBA BURDWAN', 'Bardhaman Sadar North', 'Galsi - I', 'Private', 'Bud Bud By-Pass (North), NH-2, Dist. - Paschim Bardhaman, PIN - 713403.', '0343-6680300, 9007030116, 9007030173', 'principalcip16@gmail.com, ciprajkumar@gmail.com'),
(38, 'CAMELLIA INSTITUTE OF TECHNOLOGY', 22.6766, 88.5267, 'NORTH 24 PARGANAS', 'Barasat Sadar', 'Barasat - II', 'Private', 'Digberia, Badu Road, Madhyamgram, Kolkata-700129.', '033-25260337, 9007030153', 'director@camelliait.ac.in, dchakrabortty80@gmail.com'),
(39, 'CAMELLIA INSTITUTE OF TECHNOLOGY & MANAGEMENT', 23.1117, 88.2041, 'HOOGHLY', 'Chinsurah', 'Pandua', 'Private', 'Hooghly Bainchee, Halder Dighi, G.T. Road, P.O. - Bainchi, Dist. - Hooghly, PIN - 712134.', '9007030121', 'citmhooghly09@gmail.com'),
(40, 'CAMELLIA SCHOOL OF ENGINEERING AND TECHNOLOGY', 22.7043, 88.5013, 'NORTH 24 PARGANAS', 'Barasat Sadar', 'Barasat - II', 'Private', 'Nadibhag, P.O.-Kazipara, Barasat, Kolkata-700124.', '033-25844536, 9007030136', 'chhetri24raju@gmail.com');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `colleges`
--
ALTER TABLE `colleges`
  ADD PRIMARY KEY (`sl_`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `colleges`
--
ALTER TABLE `colleges`
  MODIFY `sl_` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
