-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 24, 2021 at 02:49 PM
-- Server version: 10.4.17-MariaDB
-- PHP Version: 7.4.14

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `diet`
--

-- --------------------------------------------------------

--
-- Table structure for table `diet`
--

CREATE TABLE `diet` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `slug` varchar(255) DEFAULT NULL,
  `description` longtext DEFAULT 'NULL',
  `image` varchar(255) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  `fat` varchar(255) DEFAULT NULL,
  `cost` enum('low','med','high') DEFAULT 'med',
  `calories` varchar(255) DEFAULT NULL,
  `carb` varchar(255) DEFAULT NULL,
  `protein` varchar(255) DEFAULT NULL,
  `dateupload` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `diet`
--

INSERT INTO `diet` (`id`, `name`, `slug`, `description`, `image`, `type`, `fat`, `cost`, `calories`, `carb`, `protein`, `dateupload`) VALUES
(6, 'Intermittent fasting', 'intermittent-fasting', '<p>intermittent fasting adalah metode diet yang mengatur pola makan dengan cara berpuasa makan selama beberapa waktu tertentu. Dalam jangka waktu ini, Anda masih diperbolehkan minum. Dibandingkan dengan diet-diet lain yang mengurangi dan membatasi konsumsi makanan, metode intermittent fasting ini lebih kepada pengaturan waktu serta kebiasaan makan seseorang. Metode ini tidak memiliki aturan makanan apa yang boleh atau tidak untuk dikonsumsi. Sebagai gantinya, intermittent fasting mengatur kapan seseorang makan dan kapan harus berhenti. Inilah kenapa metode ini dikenal juga dengan istilah diet puasa.</p>\r\n', 'image-492740010How-To-Do-Intermittent-Fasting-What-To-Eat-And-Benefits.jpg', 'Ringan', '-', 'low', '2000', '400g', '0,8 x (berat Badan)', '2021-01-22'),
(7, 'Diet Vegan', 'diet-vegan', '<p>Diet vegan dikenal sebagai jenis diet yang tidak memperbolehkan adanya konsumsi produk olahan hewani sama sekali, termasuk telur dan madu. Diet ini merupakan pola makan yang rendah lemak dan tinggi serat, sehingga efektif untuk menurunkan berat badan. Tidak hanya itu, diet vegan juga mengurangi risiko penyakit jantung, kanker, dan penyakit Alzheimer. Akan tetapi, ada beberapa jenis produk hewan yang mengandung nutrisi tertentu yang tidak bisa dipenuhi melalui diet vegan, seperti vitamin B-12, zat besi, vitamin D, kalsium, dan asam lemak omega-3. Seringkali ini menjadi kesalahan diet vegan yang dilakukan pemula, yaitu tidak mempertimbangkan nutrisi yang tidak bisa didapatkan dari produk nabati. Tapi hal ini bisa diatasi dengan mengonsumsi multivitamin.<br />\r\n&nbsp;</p>\r\n', 'image-1511648830vegan-diet.png', 'Berat', '300g', 'med', '1100', '100', '0,8 x (berat Badan)', '2021-01-22'),
(8, 'Diet Vegetarian', 'diet-vegetarian', '<p>Diet vegetarian merupakan diet yang hanya diperbolehkan makan sayuran tapi masih memperbolehkan konsumsi telur, produk susu, dan madu. Diet vegetarian juga dinilai ampuh dalam membantu penurunan berat badan. Namun, diet vegetarian juga berpotensi membuat kita kekurangan nutrisi tertentu, seperti protein dan kolin.</p>\r\n', 'image-824776865download.jpg', 'Sedang', '300g', 'med', '1500', '225', '0,6 x (berat Badan)', '2021-01-22'),
(9, 'Clean Eating', 'clean-eating', '<p>Clean eating yang bertujuan untuk mengurangi asupan minyak berlebih pada makanan yang dikonsumsi. Beberapa makanan dapat menjadi referensi Anda melakukan clean eating adalah makanan segar, organik, serta kaya nutrisi. Hindari untuk mengonsumsi makanan yang mengenyangkan secara instan dan nol nutrisi seperti junk food, makanan instan yang mudah diolah, hingga makanan yang memiliki waktu yang lama dan sulit dalam proses memasaknya. Sebab proses memasak yang demikian, terkadang akan menyebabkan beberapa kandungan vitaminnya berkurang bahkan hilang.</p>\r\n', 'image-1252199702clean-eating-mp.png', 'Ringan', '900g', 'med', '2000', '400g', '0,8 x (berat Badan)', '2021-01-22'),
(10, 'Food Combining', 'food-combining', '<p>Macam diet yang selanjutnya yaitu food combining yang bertujuan untuk mengurangi hingga menghindari konsumsi karbohidrat dan protein dalam waktu yang bersamaan. Sebab, kedua sumber gizi ini akan sulit dicerna oleh tubuh dan menimbulkan penyakit apabila dikonsumsi secara bersamaan. Anjuran terbaik untuk melakukan jenis diet ini adalah konsumsi karbohidrat dengan sayuran ataupun sayuran yang dikombinasikan dengan protein. Dengan begitu, Anda dapat menghindari kombinasi karbohidrat dan protein serta memungkinkan tubuh untuk mendapatkan asupan sehat dari sayuran yang dikonsumsi dalam jumlah yang cukup tinggi.<br />\r\n&nbsp;</p>\r\n', 'image-723050850food-combining.jpg', 'Berat', '300g', 'med', '1100', '100 ', '0,6x (berat Badan)', '2021-01-22'),
(11, 'Diet Atkins', 'diet-atkins', '<p>Macam diet yang berikutnya adalah diet atkins. Jenis diet yang lebih sering disebut dengan Atkins Nutritional Approach ini berfokus untuk mengatur jumlah dan kadar insulin pada tubuh. Caranya, diet ini bekerja dengan konsumsi sumber makanan yang rendah karbohidrat dan menggantinya dengan asupan protein dan lemak baik.</p>\r\n', 'image-893574099DIETATKINS.jpg', 'Berat', '300g', 'low', '1100', '100', '1,0 x (berat Badan)', '2021-01-22'),
(12, 'Diet Rendah Karbohidrat', 'diet-rendah-karbohidrat', '<p>Mengurangi konsumsi karbohidrat adalah moto dari penganut diet rendah karbohidrat. Pola makan ini membatasi konsumsi karbohidrat harian menjadi hanya sebanyak 20-150 gram per harinya. Diet rendah karbohidrat membuat tubuh untuk menggunakan energi lemak alih-alih dari karbohidrat. Jenis diet yang satu ini sangat berdampak pada penurunan berat badan, khususnya untuk orang-orang dengan berat badan berlebih dan obesitas. Namun, diet rendah karbohidrat belum tentu cocok untuk semua orang, karena tidak semua orang merasa nyaman menjalani pola makan ketat ini. Pada kasus tertentu, penganut diet rendah karbohidrat malah mengalami peningkatan kadar kolesterol LDL jahat dan beberapa orang malah menderita ketoasidosis non-diabetik yang muncul karena penumpukan asam dalam darah.</p>\r\n', 'image-1001952551download (1).jpg', 'Berat', '300g', 'low', '1100', '100', '1,0 x (berat Badan)', '2021-01-22'),
(13, 'Diet Ketogenik', 'diet-ketogenik', '<p>Mengurangi karbohidrat dan meningkatkan konsumsi lemak sehat, seperti alpukat dan ikan berlemak, merupakan inti dari diet ketogenik atau yang akrab disebut sebagai diet keto. Diet ketogenik menurunkan berat badan dengan membuat tubuh menggunakan lemak sebagai sumber energinya. Mirip dengan diet rendah karbohidrat, kita berpotensi mengalami ketoasidosis saat menjalani diet ini. Konsultasikan ke dokter untuk menyesuaikan apakah diet ini sesuai untuk kondisi tubuh kita.</p>\r\n', 'image-993706158mengenal-diet-ketogenik-dan-manfaatnya.jpg', 'Sedang', '700g', 'med', '2000', '100', '0,8 x (berat Badan)', '2021-01-22'),
(14, 'Diet Mayo', 'diet-mayo', '<p>Macam diet yang berikutnya yakni ialah diet mayo. Diet yang pada dasarnya mirip dengan diet tinggi protein ini juga sama-sama bertujuan untuk menekan asupan karbohidrat yang masuk ke dalam tubuh dengan menyisipkan grapefruit sebagai salah satu menu utama.</p>\r\n', 'image-942019415diet-mayo.png', 'Ringan', '300g', 'med', '1500', '100', '1,0 x (berat Badan)', '2021-01-22');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `username` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `username`, `password`) VALUES
(1, 'admin', '21232f297a57a5a743894a0e4a801fc3');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `diet`
--
ALTER TABLE `diet`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `diet`
--
ALTER TABLE `diet`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
