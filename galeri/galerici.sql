-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Anamakine: 127.0.0.1
-- Üretim Zamanı: 30 Mar 2022, 13:35:07
-- Sunucu sürümü: 10.4.11-MariaDB
-- PHP Sürümü: 7.4.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Veritabanı: `galerici`
--

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `araba`
--

CREATE TABLE `araba` (
  `araba_id` int(11) NOT NULL,
  `araba_marka` varchar(50) NOT NULL,
  `araba_model` varchar(50) NOT NULL,
  `araba_renk` varchar(50) NOT NULL,
  `araba_özellik` varchar(50) NOT NULL,
  `araba_fiyat` int(11) NOT NULL,
  `araba_resim` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Tablo döküm verisi `araba`
--

INSERT INTO `araba` (`araba_id`, `araba_marka`, `araba_model`, `araba_renk`, `araba_özellik`, `araba_fiyat`, `araba_resim`) VALUES
(1, '1', 'm4', 'Mavi', 'Ses Sistemi', 12, 'M4.jpg'),
(2, '2', 'Passat', 'Siyah', 'Aşiret Paket', 8, 'Passat.jpg'),
(3, '3', 'a3', 'beyaz', 'klima çalışıyor', 100, 'a3.jpg');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `marka`
--

CREATE TABLE `marka` (
  `marka_id` int(11) NOT NULL,
  `marka_name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Tablo döküm verisi `marka`
--

INSERT INTO `marka` (`marka_id`, `marka_name`) VALUES
(1, 'Bmw'),
(2, 'wosvagen'),
(3, 'Audi');

--
-- Dökümü yapılmış tablolar için indeksler
--

--
-- Tablo için indeksler `araba`
--
ALTER TABLE `araba`
  ADD PRIMARY KEY (`araba_id`);

--
-- Tablo için indeksler `marka`
--
ALTER TABLE `marka`
  ADD PRIMARY KEY (`marka_id`);

--
-- Dökümü yapılmış tablolar için AUTO_INCREMENT değeri
--

--
-- Tablo için AUTO_INCREMENT değeri `araba`
--
ALTER TABLE `araba`
  MODIFY `araba_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Tablo için AUTO_INCREMENT değeri `marka`
--
ALTER TABLE `marka`
  MODIFY `marka_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
