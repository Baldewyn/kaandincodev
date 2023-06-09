-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Anamakine: sql311.liveblog365.com
-- Üretim Zamanı: 21 May 2023, 13:39:27
-- Sunucu sürümü: 10.4.17-MariaDB
-- PHP Sürümü: 7.2.22

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Veritabanı: `lblog_34252484_kahve`
--

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `anasayfa`
--

CREATE TABLE `anasayfa` (
  `id` int(11) NOT NULL,
  `foto` char(50) COLLATE utf8_turkish_ci NOT NULL,
  `ustBaslik` varchar(250) COLLATE utf8_turkish_ci NOT NULL,
  `ustIcerik` varchar(6000) COLLATE utf8_turkish_ci NOT NULL,
  `link` char(50) COLLATE utf8_turkish_ci NOT NULL,
  `altBaslik` char(250) COLLATE utf8_turkish_ci NOT NULL,
  `altIcerik` varchar(6000) COLLATE utf8_turkish_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Tablo döküm verisi `anasayfa`
--

INSERT INTO `anasayfa` (`id`, `foto`, `ustBaslik`, `ustIcerik`, `link`, `altBaslik`, `altIcerik`) VALUES
(1, 'intro.jpg', 'Baldewyn Coffe', '<p>Baldewyn Kaliteli artisan kahvemizin her fincanı, yerel kaynaklı, elle seçilmiş malzemelerle başlar. Bir kez denediğinizde, kahvemiz günlük sabah rutininize keyifli bir katkı olacak &nbsp;bunu garanti ediyoruz!</p>', 'Sizin İçin', 'Sizin İçin', '<p>Güne başlamak için mağazamıza geldiğinizde, size güler yüzlü hizmet, sıcak bir atmosfer ve her şeyden önce en kaliteli malzemelerle yapılmış mükemmel ürünler sunmaya kendimizi adadık. Memnun değilseniz, lütfen bize bildirin; işleri düzeltmek için elimizden gelen her şeyi yapacağız.</p>');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `hakkimizda`
--

CREATE TABLE `hakkimizda` (
  `id` int(11) NOT NULL,
  `foto` char(50) COLLATE utf8_turkish_ci NOT NULL,
  `ustBaslik` char(250) COLLATE utf8_turkish_ci NOT NULL,
  `baslik` char(250) COLLATE utf8_turkish_ci NOT NULL,
  `icerik` text COLLATE utf8_turkish_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Tablo döküm verisi `hakkimizda`
--

INSERT INTO `hakkimizda` (`id`, `foto`, `ustBaslik`, `baslik`, `icerik`) VALUES
(1, 'about.jpg', 'Kalite Ve Hizmet', 'Kafemiz Hakkında', '<p>2023 yılında Kaan Dinç tarafından kurulan işletmemiz, İzmir,Türkiye\'de çeşitli bölgelerinde zanaatkar çiftçilerden elde edilen zengin kahveleri servis etmektedir. Kendimizi dünyayı gezmeye, en iyi kahveyi bulmaya ve kafemizde size geri getirmeye adadık. İçine girdiğiniz andan son yudumunuzu bitirene kadar yozlaşan karışımlarımızla şehvete kapılacağınızın garantisini veriyoruz. Günlük rutininiz için, arkadaşlarınızla bir gezi için veya sadece biraz yalnız kalmanın tadını çıkarmak için bize katılın.</p>');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `iletisim`
--

CREATE TABLE `iletisim` (
  `id` int(11) NOT NULL,
  `ad` varchar(250) NOT NULL,
  `email` varchar(250) NOT NULL,
  `mesaj` text NOT NULL,
  `tarih` datetime DEFAULT current_timestamp()
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Tablo döküm verisi `iletisim`
--

INSERT INTO `iletisim` (`id`, `ad`, `email`, `mesaj`, `tarih`) VALUES
(32, 'deneme', 'kaandinc1635@gmail.com', 'merhabalar', '2023-05-21 12:36:45');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `kullanicilar`
--

CREATE TABLE `kullanicilar` (
  `id` int(11) NOT NULL,
  `kadi` char(50) NOT NULL,
  `parola` char(50) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Tablo döküm verisi `kullanicilar`
--

INSERT INTO `kullanicilar` (`id`, `kadi`, `parola`) VALUES
(1, 'admin', '105a9a2d46f64e147097c986076d2164'),
(15, 'kaan', 'c8338daba4a96dd664a5b70829c05996');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `magaza`
--

CREATE TABLE `magaza` (
  `id` int(11) NOT NULL,
  `ustBaslik` char(50) NOT NULL DEFAULT '0',
  `anaBaslik` varchar(500) NOT NULL DEFAULT '0',
  `adres` char(250) NOT NULL DEFAULT '0',
  `telefon` char(20) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Tablo döküm verisi `magaza`
--

INSERT INTO `magaza` (`id`, `ustBaslik`, `anaBaslik`, `adres`, `telefon`) VALUES
(1, 'İçeri Gel', 'Çalışma Saatleri', '<p>Fevzi Çakmak, Ata Cd. no:148<br>Balçova, İzmir</p>', '(507) 659-2385');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `magazasaat`
--

CREATE TABLE `magazasaat` (
  `id` int(11) NOT NULL,
  `gun` char(50) NOT NULL,
  `saat` char(50) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Tablo döküm verisi `magazasaat`
--

INSERT INTO `magazasaat` (`id`, `gun`, `saat`) VALUES
(1, 'Pazartesi', '08:00 - 20:00'),
(2, 'Salı', '08:00 - 20:00'),
(3, 'Çarşamba', '08:00 - 20:00'),
(4, 'Perşembe', '08:00 - 20:00'),
(5, 'Cuma', '08:00 - 20:00'),
(6, 'Cumartesi', '08:00 - 20:00'),
(7, 'Pazar', '08:00 - 20:00');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `urunler`
--

CREATE TABLE `urunler` (
  `id` int(11) NOT NULL,
  `foto` char(50) COLLATE utf8_turkish_ci NOT NULL,
  `baslik` char(250) COLLATE utf8_turkish_ci NOT NULL,
  `ustBaslik` char(250) COLLATE utf8_turkish_ci NOT NULL,
  `icerik` text COLLATE utf8_turkish_ci NOT NULL,
  `aktif` tinyint(4) NOT NULL,
  `sira` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Tablo döküm verisi `urunler`
--

INSERT INTO `urunler` (`id`, `foto`, `baslik`, `ustBaslik`, `icerik`, `aktif`, `sira`) VALUES
(4, 'products-01.jpg', 'Kahveler & Çaylar', 'Mükemmellik için Harmanlanmış', '<p>İşimizle gurur duyuyoruz ve bunu gösteriyor. Bizden her içecek siparişinizde, bunun yaşanmaya değer bir deneyim olacağını garanti ediyoruz. İster dünyaca ünlü Venezüella Cappuccino\'muz, canlandırıcı buzlu bitki çayı veya bir fincan özel kaynaklı siyah kahve gibi basit bir şey olsun, daha fazlası için geri geleceksiniz.</p>', 1, 300),
(3, 'kahve3.jpg', 'Türk Kahvesi', 'İşimizi Aşkla yaptığımız her halimizden belli', '<p>Kahve dostun muhabbetine, sevgilinin gözlerine ve arkadaşın sohbetine içilir.</p>', 1, 400),
(5, 'kahvaltı.jpg', 'Mutlu Aile tablosu', 'Sabah Kahvaltısı Bizim İçin bir klassmandır.', '<p>En sevdiğim gündür Pazar, çünkü içinde sabah ailelerin yaptığı kahvaltı ve mutluluk var.</p>', 1, 500),
(7, 'soguk-kahve.jpg', 'Soğuk Kahve', 'İşimize Özenle Yaklaşıyoruz', '<p>Biraz huzur ve mutluluk istiyorsan gel bir kahve iç.</p>', 1, 500),
(6, 'products-02.jpg', 'Fırın', 'Lezzetli İkramlar, İyi Yemekler<br>', '<p>Mevsimlik menümüzde lezzetli atıştırmalıklar, unlu mamuller ve hatta kahvaltı veya öğle yemeği için mükemmel olan tam öğünler bulunur. Özel ürünler için birinci sınıf satıcıların yanı sıra, mümkün olduğunda malzemelerimizi yerel, organik çiftliklerden alıyoruz.</p>', 1, 150);

--
-- Dökümü yapılmış tablolar için indeksler
--

--
-- Tablo için indeksler `anasayfa`
--
ALTER TABLE `anasayfa`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `hakkimizda`
--
ALTER TABLE `hakkimizda`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `iletisim`
--
ALTER TABLE `iletisim`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `kullanicilar`
--
ALTER TABLE `kullanicilar`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `magaza`
--
ALTER TABLE `magaza`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `magazasaat`
--
ALTER TABLE `magazasaat`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `urunler`
--
ALTER TABLE `urunler`
  ADD PRIMARY KEY (`id`);

--
-- Dökümü yapılmış tablolar için AUTO_INCREMENT değeri
--

--
-- Tablo için AUTO_INCREMENT değeri `anasayfa`
--
ALTER TABLE `anasayfa`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Tablo için AUTO_INCREMENT değeri `hakkimizda`
--
ALTER TABLE `hakkimizda`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Tablo için AUTO_INCREMENT değeri `iletisim`
--
ALTER TABLE `iletisim`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- Tablo için AUTO_INCREMENT değeri `kullanicilar`
--
ALTER TABLE `kullanicilar`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- Tablo için AUTO_INCREMENT değeri `magaza`
--
ALTER TABLE `magaza`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Tablo için AUTO_INCREMENT değeri `magazasaat`
--
ALTER TABLE `magazasaat`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- Tablo için AUTO_INCREMENT değeri `urunler`
--
ALTER TABLE `urunler`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
