-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 25, 2021 at 07:34 AM
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
(6, 'Intermittent fasting', 'intermittent-fasting', '<h2>Penjelasan</h2>\r\n\r\n<p>intermittent fasting adalah metode diet yang mengatur pola makan dengan cara berpuasa makan selama beberapa waktu tertentu. Dalam jangka waktu ini, Anda masih diperbolehkan minum. Dibandingkan dengan diet-diet lain yang mengurangi dan membatasi konsumsi makanan, metode intermittent fasting ini lebih kepada pengaturan waktu serta kebiasaan makan seseorang. Metode ini tidak memiliki aturan makanan apa yang boleh atau tidak untuk dikonsumsi. Sebagai gantinya, intermittent fasting mengatur kapan seseorang makan dan kapan harus berhenti. Inilah kenapa metode ini dikenal juga dengan istilah diet puasa.</p>\r\n\r\n<h2>Rekomendasi Makanan</h2>\r\n\r\n<p>Dalam diet intermittent fasting tidak ada rekomendasi atau larangan makanan yang harus dikonsumsi atau dihindari karena pada dasarnya intermittent fasting sama halnya puasa yang sering dilakukan umat islam. dimana pada waktu tertentu anda boleh makan dan pada saat tertentu anda tidak diperbolehkan makan dan minum misal dari jam 6 sore sampe 5 pagi&nbsp;anda boleh bebas memakan apapun dan di jam 5 pagi sampe 6 sore anda tidak diperbolehkan makan dan minum.</p>\r\n', 'image-492740010How-To-Do-Intermittent-Fasting-What-To-Eat-And-Benefits.jpg', 'Ringan', '-', 'low', '2000', '400g', '0,8 x (berat Badan)', '2021-01-22'),
(7, 'Diet Vegan', 'diet-vegan', '<h1>Penjelasan</h1>\r\n\r\n<p>Diet vegan dikenal sebagai jenis diet yang tidak memperbolehkan adanya konsumsi produk olahan hewani sama sekali, termasuk telur dan madu. Diet ini merupakan pola makan yang rendah lemak dan tinggi serat, sehingga efektif untuk menurunkan berat badan. Tidak hanya itu, diet vegan juga mengurangi risiko penyakit jantung, kanker, dan penyakit Alzheimer. Akan tetapi, ada beberapa jenis produk hewan yang mengandung nutrisi tertentu yang tidak bisa dipenuhi melalui diet vegan, seperti vitamin B-12, zat besi, vitamin D, kalsium, dan asam lemak omega-3. Seringkali ini menjadi kesalahan diet vegan yang dilakukan pemula, yaitu tidak mempertimbangkan nutrisi yang tidak bisa didapatkan dari produk nabati. Tapi hal ini bisa diatasi dengan mengonsumsi multivitamin.</p>\r\n\r\n<h2>Rekomendasi Menu makanan</h2>\r\n\r\n<p>Sarapan: satu buah ubi jalar rebus dengan jus alpukat<br />\r\nMakan siang: satu mangkuk sup sayur dengan tahu goreng<br />\r\nCamilan sore: salad buah yan terdiri dari potongan alpukat, semangka, apel, pisang<br />\r\nMakan malam: tumis pokcoy, kentang, dan tempe.</p>\r\n\r\n<p><br />\r\n&nbsp;</p>\r\n', 'image-1511648830vegan-diet.png', 'Berat', '300g', 'med', '1100', '100', '0,8 x (berat Badan)', '2021-01-22'),
(8, 'Diet Vegetarian', 'diet-vegetarian', '<h2>Penjelasan</h2>\r\n\r\n<p>Diet vegetarian merupakan diet yang hanya diperbolehkan makan sayuran tapi masih memperbolehkan konsumsi telur, produk susu, dan madu. Diet vegetarian juga dinilai ampuh dalam membantu penurunan berat badan. Namun, diet vegetarian juga berpotensi membuat kita kekurangan nutrisi tertentu, seperti protein dan kolin.</p>\r\n\r\n<h2>Rekomendasi makanan</h2>\r\n\r\n<p>Seperti namanya diet vegetarian hanya memperbolehkan memakan makanan yang berbasis sayuran, segala sesuatu yang bersifat sayuran boleh dimakan misal contohnya yaitu sayur soup, salad, dan lainnya. adapun makanan lainnya yang boleh dimakan yaitu buah buahan terutama yang berkarbo rendah. Makanan yang tidak boleh dimakan saat diet vegetarian yaiitu makanan yang berkarbohidrat tinggi seperti nasi, makanan olahan dan lainnya</p>\r\n\r\n<p>&nbsp;</p>\r\n', 'image-824776865download.jpg', 'Sedang', '300g', 'med', '1500', '225', '0,6 x (berat Badan)', '2021-01-22'),
(9, 'Clean Eating', 'clean-eating', '<h2>Penjelasan</h2>\r\n\r\n<p>Clean eating yang bertujuan untuk mengurangi asupan minyak berlebih pada makanan yang dikonsumsi. Beberapa makanan dapat menjadi referensi Anda melakukan clean eating adalah makanan segar, organik, serta kaya nutrisi. Hindari untuk mengonsumsi makanan yang mengenyangkan secara instan dan nol nutrisi seperti junk food, makanan instan yang mudah diolah, hingga makanan yang memiliki waktu yang lama dan sulit dalam proses memasaknya. Sebab proses memasak yang demikian, terkadang akan menyebabkan beberapa kandungan vitaminnya berkurang bahkan hilang.</p>\r\n\r\n<h2>&nbsp;Rekomendasi Makanan</h2>\r\n\r\n<p>Makanan yang direkomendasikan ketika melakukan diet Clean Eating</p>\r\n\r\n<ol>\r\n	<li>Buah-buahan</li>\r\n	<li>Sayur-sayuran</li>\r\n	<li>Air Putih sebagai minuman utam</li>\r\n	<li>Makanan berbahan organik seperti tahu, tempe, yang diolah tanpa menggunakan pestisida.</li>\r\n	<li>Nasi Merah</li>\r\n	<li>Roti Gandum</li>\r\n</ol>\r\n\r\n<p>Makanan yang dianjurkan untuk dihindari ketika melakukan diet Clean Eating&nbsp;</p>\r\n\r\n<ol>\r\n	<li>&nbsp;Makanan berkemasan</li>\r\n	<li>Junk Food</li>\r\n	<li>makanan instan misal mie instan</li>\r\n	<li>Karbohidrat olahan misal sereal atau roti</li>\r\n	<li>Makanan Olasan</li>\r\n</ol>\r\n', 'image-1252199702clean-eating-mp.png', 'Ringan', '900g', 'med', '2000', '400g', '0,8 x (berat Badan)', '2021-01-22'),
(10, 'Food Combining', 'food-combining', '<h2>Penjelasan</h2>\r\n\r\n<p>Macam diet yang selanjutnya yaitu food combining yang bertujuan untuk mengurangi hingga menghindari konsumsi karbohidrat dan protein dalam waktu yang bersamaan. Sebab, kedua sumber gizi ini akan sulit dicerna oleh tubuh dan menimbulkan penyakit apabila dikonsumsi secara bersamaan. Anjuran terbaik untuk melakukan jenis diet ini adalah konsumsi karbohidrat dengan sayuran ataupun sayuran yang dikombinasikan dengan protein. Dengan begitu, Anda dapat menghindari kombinasi karbohidrat dan protein serta memungkinkan tubuh untuk mendapatkan asupan sehat dari sayuran yang dikonsumsi dalam jumlah yang cukup tinggi.</p>\r\n\r\n<h2>Rekomendasi menu makanan</h2>\r\n\r\n<p><strong>Bangun tidur:</strong><br />\r\n1-2 gelas air putih campur air jeruk nipis/lemon (dari 1 buah jeruk nipis/lemon), tanpa gula<br />\r\n<br />\r\n<strong>Makan pagi (terpanjang dari pagi sampai pukul 12 siang):</strong><br />\r\nAneka buah potong atau jus buah segar tanpa gula setiap dua jam sekali atau jika merasa lapar saja. Buah tersebut tidak termasuk nangka, durian, alpukat, pisang, dan buah yang masih mentah<br />\r\n<br />\r\n<strong>Makan siang (pukul 12 siang):</strong><br />\r\n-Ayam garing + sup kacang merah + rujak, atau<br />\r\n-Tim ikan + sayur rebus + salad mentimun, atau<br />\r\n-Bistik daging + salad Caesar<br />\r\n<br />\r\n<strong>Selingan sore (pukul 4 sore):</strong><br />\r\n-1-2 buah pisang segar (tidak digoreng atau dimasak dengan cara apapun), atau<br />\r\n-Setangkup kacang-kacangan (tidak digoreng, cukup disangrai saja), atau<br />\r\n-3/4 gelas susu kedelai, susu almond, atau yogurt polos + 1 sendok teh madu<br />\r\n<br />\r\n<strong>Makan malam (pukul 6 sore-7 malam):</strong><br />\r\n-Nasi + balado terung + kangkung + lalap mentah + sambal, atau<br />\r\n-Nasi + tahu/tempe + sayur asem + lalap + sambal, atau<br />\r\n-Pastel kentang + salad<br />\r\n<br />\r\n*Catatan: Menu siang dan malam bisa bertukar tempat<br />\r\n&nbsp;</p>\r\n', 'image-723050850food-combining.jpg', 'Berat', '300g', 'med', '1100', '100 ', '0,6x (berat Badan)', '2021-01-22'),
(11, 'Diet Atkins', 'diet-atkins', '<h2>Penjelasan</h2>\r\n\r\n<p>Macam diet yang berikutnya adalah diet atkins. Jenis diet yang lebih sering disebut dengan Atkins Nutritional Approach ini berfokus untuk mengatur jumlah dan kadar insulin pada tubuh. Caranya, diet ini bekerja dengan konsumsi sumber makanan yang rendah karbohidrat dan menggantinya dengan asupan protein dan lemak baik.</p>\r\n\r\n<h2>Rekomendasi Makanan</h2>\r\n\r\n<p>Makanan yang direkomaendasikan ketika melakukan diet arkins</p>\r\n\r\n<ol>\r\n	<li>Daging-dagingan, seperti sapi, babi, domba, dan ayam</li>\r\n	<li>Makanan laut, misalnya ikan salmon dan sarden</li>\r\n	<li>Telur, terutama yang mengandung omega 3</li>\r\n	<li>Sayuran rendah karbohidrat, termasuk kale, bayam, brokoli, dan asparagus</li>\r\n	<li>Susu dan produk olahannya, yaitu mentega, keju, krim, dan yogurt tinggi lemak</li>\r\n	<li>Kacang-kacangan, contohnya almond, macadamia, walnut, dan biji bunga matahari</li>\r\n	<li>Lemak sehat, berupa extra virgin olive oil, minyak kelapa, buah alpukat dan minyaknya</li>\r\n</ol>\r\n\r\n<p>Makanan yang yang dianjurkan dihindari ketika melakukan diet atkins</p>\r\n\r\n<ol>\r\n	<li>Makanan dan minuman tinggi gula, seperti soda, jus buah kemasan, kue, permen, dan es krim.</li>\r\n	<li>Biji-bijian utuh, yaitu gandum (wheat), barley, dan nasi.</li>\r\n	<li>Minyak sayur, termasuk minyak kedelai, minyak jagung, dan minyak canola.</li>\r\n	<li>Minyak jenuh yang biasa ditemukan pada makanan olahan. Biasanya, pada kemasannya tertulis kata &ldquo;hydrogenated&rdquo;.</li>\r\n	<li>Makanan berlabel &ldquo;diet&rdquo; dan &ldquo;rendah lemak (low fat)&rdquo;. Umumnya, makanan-makanan ini mengandung gula tinggi.</li>\r\n	<li>Sayuran tinggi karbohidrat, misalnya wortel dan turnip</li>\r\n	<li>Buah tinggi karbohidrat, contohnya pisang, apel, jeruk, pir, serta anggur</li>\r\n	<li>Kentang dan ubi</li>\r\n	<li>Polong-polongan berupa lentil dan kacang arab</li>\r\n</ol>\r\n', 'image-893574099DIETATKINS.jpg', 'Berat', '300g', 'low', '1100', '100', '1,0 x (berat Badan)', '2021-01-22'),
(12, 'Diet Rendah Karbohidrat', 'diet-rendah-karbohidrat', '<h2>Penjelasan</h2>\r\n\r\n<p>Mengurangi konsumsi karbohidrat adalah moto dari penganut diet rendah karbohidrat. Pola makan ini membatasi konsumsi karbohidrat harian menjadi hanya sebanyak 20-150 gram per harinya. Diet rendah karbohidrat membuat tubuh untuk menggunakan energi lemak alih-alih dari karbohidrat. Jenis diet yang satu ini sangat berdampak pada penurunan berat badan, khususnya untuk orang-orang dengan berat badan berlebih dan obesitas. Namun, diet rendah karbohidrat belum tentu cocok untuk semua orang, karena tidak semua orang merasa nyaman menjalani pola makan ketat ini. Pada kasus tertentu, penganut diet rendah karbohidrat malah mengalami peningkatan kadar kolesterol LDL jahat dan beberapa orang malah menderita ketoasidosis non-diabetik yang muncul karena penumpukan asam dalam darah.</p>\r\n\r\n<h2>Rekomendasi makanan</h2>\r\n\r\n<p>Makanan yang direkomendasikan :</p>\r\n\r\n<ol>\r\n	<li>Daging: daging sapi, ayam, domba, dan lainnya</li>\r\n	<li>Ikan: salmon dan ikan yang ditangkap dari alam liar, bukan hasil budidaya</li>\r\n	<li>Telur: telur yang diperkaya omega 3 akan lebih baik</li>\r\n	<li>Sayuran: seperti bayam, brokoli, kembang kol, dan wortel</li>\r\n	<li>Buah: apel, jeruk, pir, stroberi</li>\r\n	<li>Kacang-kacangan: almond dan biji bunga matahari</li>\r\n	<li>Produk olahan susu: keju, yogurt, mentega</li>\r\n	<li>Lemak sehat: minyak kelapa, minyak zaitun, minyak ikan</li>\r\n</ol>\r\n\r\n<p>Makanan yang tidak dianjurkan :&nbsp;</p>\r\n\r\n<ol>\r\n	<li>Gula:&nbsp;soda, jus buah, permen, es krim, dan asupan lain dengan banyak gula tambahan</li>\r\n	<li>Gandum olahan:&nbsp;nasi, roti, sereal, dan pasta</li>\r\n	<li>Lemak trans:&nbsp;minyak goreng</li>\r\n	<li>Produk makanan kemasan yang berlabel rendah lemak:&nbsp;banyak produk yang rendah lemak, tapi tinggi gula</li>\r\n	<li>Makanan kemasan:&nbsp;makanan olahan seperti sosis, bakso, atau apapun yang dibuat di pabrik</li>\r\n	<li>Sayuran yang mengandung pati:&nbsp;kacang merah, jagung, dan kentang</li>\r\n</ol>\r\n\r\n<p>Rekomendasi Menu makanan</p>\r\n\r\n<p><strong>Hari 1</strong><br />\r\nSarapan: telur, bacon dan irisan alpukat<br />\r\nMakan siang: salad dengan dada ayam, keju, dan saus minyak zaitun<br />\r\nMakan malam: salmon, pasta dan biji bunga matahari<br />\r\nMakanan ringan: dendeng dan keju</p>\r\n\r\n<p><strong>Hari ke-2</strong><br />\r\nSarapan: telur, steak dan potongan paprika<br />\r\nMakan siang: selada dan tuna, olahan wortel dan alpukat<br />\r\nMakan malam: daging, salad bayam dengan kenari dan saus minyak zaitun<br />\r\nMakanan ringan: telur rebus dan pistachio</p>\r\n\r\n<p><strong>Hari ke-3</strong><br />\r\nSarapan: telur, sosis dan alpukat<br />\r\nMakan siang: kerang, kubis yang dipanggang dengan keju parmesan<br />\r\nMakan malam: daging, tomat panggang dan lobak<br />\r\nMakanan ringan: biji bunga matahari dan brie</p>\r\n\r\n<p><strong>Hari ke 4</strong><br />\r\nSarapan: telur dengan ayam suwir, jalape&ntilde;o dan keju cheddar<br />\r\nMakan siang: roti burger ayam dengan kentang goreng<br />\r\nMakan malam: mie bakso dan tomat<br />\r\nMakanan ringan: sarden dan kacang macadamia</p>\r\n\r\n<p><strong>Hari ke 5</strong><br />\r\nSarapan: telur, keju, brokoli dan sosis ayam<br />\r\nMakan siang: steak, salad dengan saus minyak zaitun dan kacang mete<br />\r\nMakan malam: udang berkulit, asparagus dan jamur<br />\r\nMakanan ringan: dendeng dan alpukat</p>\r\n', 'image-1001952551download (1).jpg', 'Berat', '300g', 'low', '1100', '100', '1,0 x (berat Badan)', '2021-01-22'),
(13, 'Diet Ketogenik', 'diet-ketogenik', '<h2>Penjelasan</h2>\r\n\r\n<p>Mengurangi karbohidrat dan meningkatkan konsumsi lemak sehat, seperti alpukat dan ikan berlemak, merupakan inti dari diet ketogenik atau yang akrab disebut sebagai diet keto. Diet ketogenik menurunkan berat badan dengan membuat tubuh menggunakan lemak sebagai sumber energinya. Mirip dengan diet rendah karbohidrat, kita berpotensi mengalami ketoasidosis saat menjalani diet ini. Konsultasikan ke dokter untuk menyesuaikan apakah diet ini sesuai untuk kondisi tubuh kita.</p>\r\n\r\n<h2>Rekomendasi Makanan</h2>\r\n\r\n<p>Makanan yang dianjurkan ketika melakukan diet kategonik</p>\r\n\r\n<ol>\r\n	<li>Telur, terutama yang mengandung omega 3.&nbsp;</li>\r\n	<li>Daging, ayam, kalkun, sosis, steak dan produk daging lain.</li>\r\n	<li>Ikan tuna, salmon, makarel.</li>\r\n	<li>Krim, mentega dan keju.</li>\r\n	<li>Sayur hijau, tomat, bawang, cabai dan sayur lain yang rendah karbohidrat.</li>\r\n	<li>Kacang dan biji-bijian, seperti almond, wijen, chia dan biji labu.</li>\r\n	<li>Alpukat, baik dikonsumsi langsung maupun dalam bentuk masakan.</li>\r\n	<li>Minyak zaitun, minyak alpukat atau minyak kelapa.</li>\r\n	<li>Garam, merica dan berbagai rempah alami.</li>\r\n</ol>\r\n\r\n<p>Makanan yang dianjurkan untuk dihindari ketika melakukan diet Kategonik</p>\r\n\r\n<ol>\r\n	<li>Nasi, pasta, sereal dan produk gandum.</li>\r\n	<li>Kacang dan biji-bijian yang tinggi karbo.</li>\r\n	<li>Umbi-umbian, seperti ubi, kentang, wortel.</li>\r\n	<li>Makanan atau minuman manis, seperti permen, es krim, cake, jus buah dan soda.</li>\r\n	<li>Lemak tidak sehat dari minyak sayur atau mayonaise.</li>\r\n	<li>Minuman mengandung alkohol.</li>\r\n</ol>\r\n\r\n<p>&nbsp;</p>\r\n', 'image-993706158mengenal-diet-ketogenik-dan-manfaatnya.jpg', 'Sedang', '700g', 'med', '2000', '100', '0,8 x (berat Badan)', '2021-01-22'),
(14, 'Diet Mayo', 'diet-mayo', '<h2>Penjelasan</h2>\r\n\r\n<p>Diet yang pada dasarnya mirip dengan diet tinggi protein ini juga sama-sama bertujuan untuk menekan asupan karbohidrat yang masuk ke dalam tubuh dengan menyisipkan grapefruit sebagai salah satu menu utama.</p>\r\n\r\n<h2>Rekomendasi menu makanan</h2>\r\n\r\n<h3>Menu diet mayo hari ke-1</h3>\r\n\r\n<ul>\r\n	<li>Sarapan: Teh atau kopi dengan gula, jangan ditambahkan susu</li>\r\n	<li>Makan siang: ayam kukus tanpa kulit dengan tambahan sedikit garam, sayuran rebus (seperti wortel, brokoli, jagung), dan kentang tumbuk (<em>mashed potato</em>)</li>\r\n	<li>Makan malam: daging tanpa lemak, sayur bayam, ditambah buah</li>\r\n</ul>\r\n\r\n<h3>Menu diet mayo hari ke-2</h3>\r\n\r\n<ul>\r\n	<li>Sarapan: Jus buah dengan gula, jangan ditambah susu</li>\r\n	<li>Makan siang: pepes ikan, tahu-tempe bacem, urap</li>\r\n	<li>Makan malam: salad sayur ditambah makaroni, pakai minyak zaitun agar lebih sehat</li>\r\n</ul>\r\n\r\n<h3>Menu diet mayo hari ke-3</h3>\r\n\r\n<ul>\r\n	<li>Sarapan: Roti dengan telur, boleh ditambahkan sedikit mentega</li>\r\n	<li>Makan siang: daging panggang dan sayuran, dan jagung</li>\r\n	<li>Makan malam: salad buah ditambah yogurt</li>\r\n</ul>\r\n\r\n<h3>Menu diet mayo hari ke-4</h3>\r\n\r\n<ul>\r\n	<li>Sarapan: Roti bakar dengan selai, boleh ditambahkan sedikit mentega</li>\r\n	<li>Makan siang: bola-bola daging, kentang, dan sayuran</li>\r\n	<li>Makan malam: telur rebus ditambah keju dan wortel, semangkuk buah</li>\r\n</ul>\r\n\r\n<h3>Menu diet mayo hari ke-5</h3>\r\n\r\n<ul>\r\n	<li>Sarapan: Jus buah dengan gula, jangan ditambah susu</li>\r\n	<li>Makan siang: dada ayam rebus ditambah sayuran, dan buah</li>\r\n	<li>Makan malam: roti dan telur, ditambah sayuran</li>\r\n</ul>\r\n\r\n<p>&nbsp;</p>\r\n', 'image-942019415diet-mayo.png', 'Ringan', '300g', 'med', '1500', '100', '1,0 x (berat Badan)', '2021-01-22');

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
