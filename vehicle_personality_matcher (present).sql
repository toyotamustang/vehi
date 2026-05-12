-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 12, 2026 at 05:59 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `vehicle_personality_matcher`
--

-- --------------------------------------------------------

--
-- Table structure for table `bikes`
--

CREATE TABLE `bikes` (
  `id` int(11) NOT NULL,
  `brand` varchar(100) NOT NULL,
  `model` varchar(150) NOT NULL,
  `category` varchar(50) DEFAULT NULL,
  `displacement_cc` int(11) DEFAULT NULL,
  `power_hp` float DEFAULT NULL,
  `torque_nm` float DEFAULT NULL,
  `weight_kg` float DEFAULT NULL,
  `seat_height_mm` int(11) DEFAULT NULL,
  `price_range` enum('Budget','Mid','Premium') DEFAULT NULL,
  `image_url` text DEFAULT NULL,
  `extra_specs` longtext DEFAULT NULL,
  `data_source` enum('api_cached') NOT NULL DEFAULT 'api_cached',
  `api_cached_at` datetime DEFAULT current_timestamp(),
  `year` int(11) DEFAULT NULL,
  `performance_score` int(11) DEFAULT NULL,
  `comfort_score` int(11) DEFAULT NULL,
  `efficiency_score` int(11) DEFAULT NULL,
  `reliability_score` int(11) DEFAULT NULL,
  `practicality_score` int(11) DEFAULT NULL,
  `status` enum('active','draft') DEFAULT 'active'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `bikes`
--

INSERT INTO `bikes` (`id`, `brand`, `model`, `category`, `displacement_cc`, `power_hp`, `torque_nm`, `weight_kg`, `seat_height_mm`, `price_range`, `image_url`, `extra_specs`, `data_source`, `api_cached_at`, `year`, `performance_score`, `comfort_score`, `efficiency_score`, `reliability_score`, `practicality_score`, `status`) VALUES
(2, 'Ducati', 'Panigale V4', 'Sport', 1103, 215.5, 123.6, 175, 850, 'Premium', 'https://upload.wikimedia.org/wikipedia/commons/3/3c/2020_Ducati_Panigale_V4_Superleggera.jpg', '{\"api_ninjas\":{\"make\":\"Ducati\",\"model\":\"Panigale V4\",\"year\":\"2022\",\"type\":\"Sport\",\"displacement\":\"1103.0 ccm (67.31 cubic inches)\",\"engine\":\"V4, four-stroke\",\"compression\":\"14.0:1\",\"bore_stroke\":\"81.0 x 53.5 mm (3.2 x 2.1 inches)\",\"valves_per_cylinder\":\"4\",\"fuel_system\":\"Injection. Electronic fuel injection system. Twin injectors per cylinder. Full ride-by-wire elliptical throttle bodies.\",\"fuel_control\":\"Desmodromic valve control\",\"lubrication\":null,\"cooling\":\"Liquid\",\"gearbox\":\"6-speed\",\"transmission\":\"Chain   (final drive)\",\"clutch\":\"Slipper and self-servo wet multiplate clutch with hydraulic control\",\"frame\":\"Aluminium alloy. Engine is used as a structural chassis element. Trellis subframe.\",\"front_suspension\":\"Fully adjustable Showa BPF fork 43 mm chromed inner tubes\",\"front_wheel_travel\":\"120 mm (4.7 inches)\",\"rear_suspension\":\"Fully adjustable Sachs unit. Aluminium single-sided swingarm.\",\"rear_wheel_travel\":\"130 mm (5.1 inches)\",\"front_tire\":\"120/70-ZR17 \",\"rear_tire\":\"200/60-ZR17 \",\"front_brakes\":\"Double disc. ABS. Brembo\",\"rear_brakes\":\"Single disc. ABS. Brembo\",\"seat_height\":\"850 mm (33.5 inches) If adjustable, lowest setting.\",\"ground_clearance\":null,\"wheelbase\":\"1469 mm (57.8 inches)\",\"fuel_capacity\":\"17.00 litres (4.49 US gallons)\",\"starter\":\"Electric\",\"power\":\"215.5 HP (157.3  kW)) @ 13000 RPM\",\"torque\":\"123.6 Nm (12.6 kgf-m or 91.2 ft.lbs) @ 9500 RPM\",\"top_speed\":null,\"fuel_consumption\":\"7.60 litres/100 km (13.2 km/l or 30.95 mpg)\",\"emission\":\"176.3 CO2 g/km. (CO2 - Carbon dioxide emission) \",\"total_weight\":\"198.5 kg (437.6 pounds)\",\"total_height\":\"845 mm (33.3 inches)\",\"total_length\":null,\"total_width\":null,\"ignition\":null,\"dry_weight\":\"175.0 kg (385.8 pounds)\"}}', '', '2026-02-06 00:18:19', 2022, 95, 37, 42, 51, 23, 'active'),
(4, 'yamaha', 'R1M', 'Sport', 998, 197.3, 113.3, 202, 860, '', 'https://upload.wikimedia.org/wikipedia/commons/b/b6/2015_Yamaha_YZF-R1M.JPG', '{\"api_ninjas\":{\"make\":\"Yamaha\",\"model\":\"R1M\",\"year\":\"2022\",\"type\":\"Sport\",\"displacement\":\"998.0 ccm (60.90 cubic inches)\",\"engine\":\"In-line six, four-stroke\",\"compression\":null,\"bore_stroke\":\"79.0 x 50.9 mm (3.1 x 2.0 inches)\",\"valves_per_cylinder\":null,\"fuel_system\":\"Injection\",\"fuel_control\":\"Double Overhead Cams/Twin Cam (DOHC)\",\"lubrication\":\"Wet sump\",\"cooling\":\"Liquid\",\"gearbox\":\"6-speed\",\"transmission\":\"Chain   (final drive)\",\"clutch\":null,\"frame\":\"Aluminium Deltabox, Diamond\",\"front_suspension\":\"Ohlins Telescopic forks\",\"front_wheel_travel\":\"120 mm (4.7 inches)\",\"rear_suspension\":\"Swingarm\",\"rear_wheel_travel\":\"120 mm (4.7 inches)\",\"front_tire\":\"120/70-ZR17M/C \",\"rear_tire\":\"200/55-ZR17/C \",\"front_brakes\":\"Double disc. Hydraulic\",\"rear_brakes\":\"Single disc. Hydraulic. \",\"seat_height\":\"860 mm (33.9 inches) If adjustable, lowest setting.\",\"ground_clearance\":\"130 mm (5.1 inches)\",\"wheelbase\":\"1405 mm (55.3 inches)\",\"fuel_capacity\":\"17.00 litres (4.49 US gallons)\",\"starter\":\"Electric\",\"power\":\"197.3 HP (144.0  kW)) @ 13500 RPM\",\"torque\":\"113.3 Nm (11.6 kgf-m or 83.6 ft.lbs) @ 11500 RPM\",\"top_speed\":null,\"fuel_consumption\":\"7.20 litres/100 km (13.9 km/l or 32.67 mpg)\",\"emission\":\"167.0 CO2 g/km. (CO2 - Carbon dioxide emission) \",\"total_weight\":\"202.0 kg (445.3 pounds)\",\"total_height\":\"1165 mm (45.9 inches)\",\"total_length\":\"2055 mm (80.9 inches)\",\"total_width\":\"690 mm (27.2 inches)\",\"ignition\":\"TCI\",\"dry_weight\":null}}', '', '2026-02-06 00:25:23', 2022, NULL, NULL, NULL, NULL, NULL, 'active'),
(5, 'suzuki', 'Hayabusa', 'Sport', 1340, 197, 155, 264, 800, '', 'https://upload.wikimedia.org/wikipedia/commons/5/5e/Hayabusa.jpg', '{\"api_ninjas\":{\"make\":\"Suzuki\",\"model\":\"Hayabusa\",\"year\":\"2022\",\"type\":\"Sport\",\"displacement\":\"1340.0 ccm (81.77 cubic inches)\",\"engine\":\"In-line four, four-stroke\",\"compression\":\"12.5:1\",\"bore_stroke\":\"81.0 x 65.0 mm (3.2 x 2.6 inches)\",\"valves_per_cylinder\":\"4\",\"fuel_system\":\"Injection. Fuel injection with Ride-by-Wire throttle bodies\",\"fuel_control\":\"Double Overhead Cams/Twin Cam (DOHC)\",\"lubrication\":\"Wet sump\",\"cooling\":\"Liquid\",\"gearbox\":\"6-speed\",\"transmission\":\"Chain   (final drive)\",\"clutch\":\"Wet, multi-plate type, SCAS-equipped\",\"frame\":\"Twin-spar aluminum-alloy \",\"front_suspension\":\"Inverted telescopic, coil spring, oil damped\",\"front_wheel_travel\":\"120 mm (4.7 inches)\",\"rear_suspension\":\"Link type, single shock, coil spring, oil damped\",\"rear_wheel_travel\":\"140 mm (5.5 inches)\",\"front_tire\":\"120/70-ZR17 \",\"rear_tire\":\"190/50-ZR17 \",\"front_brakes\":\"Double disc. ABS. Brembo 4-piston.\",\"rear_brakes\":\"Single disc. ABS. Nissin 1-piston.\",\"seat_height\":\"800 mm (31.5 inches) If adjustable, lowest setting.\",\"ground_clearance\":\"125 mm (4.9 inches)\",\"wheelbase\":\"1480 mm (58.3 inches)\",\"fuel_capacity\":\"21.00 litres (5.55 US gallons)\",\"starter\":\"Electric\",\"power\":\"197.0 HP (143.8  kW)) @ 9500 RPM\",\"torque\":\"155.0 Nm (15.8 kgf-m or 114.3 ft.lbs) @ 7200 RPM\",\"top_speed\":null,\"fuel_consumption\":null,\"emission\":null,\"total_weight\":\"264.0 kg (582.0 pounds)\",\"total_height\":\"1165 mm (45.9 inches)\",\"total_length\":\"2180 mm (85.8 inches)\",\"total_width\":\"735 mm (28.9 inches)\",\"ignition\":\"Electronic ignition (Transistorized)\",\"dry_weight\":null}}', '', '2026-02-06 00:34:03', 2022, NULL, NULL, NULL, NULL, NULL, 'active'),
(6, 'ktm', 'RC 390', 'Sport', 373, 44, 37, 155, 824, '', 'https://upload.wikimedia.org/wikipedia/commons/8/83/2015_KTM_RC390_right.JPG', '{\"api_ninjas\":{\"make\":\"KTM\",\"model\":\"RC 390\",\"year\":\"2022\",\"type\":\"Sport\",\"displacement\":\"373.2 ccm (22.77 cubic inches)\",\"engine\":\"Single cylinder, four-stroke\",\"compression\":\"14.5:1\",\"bore_stroke\":\"89.0 x 60.0 mm (3.5 x 2.4 inches)\",\"valves_per_cylinder\":null,\"fuel_system\":\"Injection\",\"fuel_control\":\"Double Overhead Cams/Twin Cam (DOHC)\",\"lubrication\":\"Wet sump\",\"cooling\":\"Liquid\",\"gearbox\":\"6-speed\",\"transmission\":\"Chain   (final drive)\",\"clutch\":\"PASC™ antihopping clutch, mechanically operated\",\"frame\":\"Steel trellis, powder coated\",\"front_suspension\":\"WP APEX 43\",\"front_wheel_travel\":\"120 mm (4.7 inches)\",\"rear_suspension\":\"WP APEX - Monoshock\",\"rear_wheel_travel\":\"150 mm (5.9 inches)\",\"front_tire\":\"95/75-R17 \",\"rear_tire\":\"115/75-R17 \",\"front_brakes\":\"Single disc. ABS. Four-piston calipers. \",\"rear_brakes\":\"Single disc. ABS. Floating disc. Single-piston caliper. \",\"seat_height\":\"824 mm (32.4 inches) If adjustable, lowest setting.\",\"ground_clearance\":\"158 mm (6.2 inches)\",\"wheelbase\":\"1340 mm (52.8 inches)\",\"fuel_capacity\":\"13.70 litres (3.62 US gallons)\",\"starter\":\"Electric\",\"power\":\"44.0 HP (32.1  kW))\",\"torque\":\"37.0 Nm (3.8 kgf-m or 27.3 ft.lbs)\",\"top_speed\":null,\"fuel_consumption\":\"3.46 litres/100 km (28.9 km/l or 67.98 mpg)\",\"emission\":\"80.3 CO2 g/km. (CO2 - Carbon dioxide emission) \",\"total_weight\":null,\"total_height\":null,\"total_length\":null,\"total_width\":null,\"ignition\":\"Bosch EMS with RBW\",\"dry_weight\":\"155.0 kg (341.7 pounds)\"}}', '', '2026-02-06 00:35:56', 2022, NULL, NULL, NULL, NULL, NULL, 'active'),
(7, 'kawasaki', 'Z900', 'Naked bike', 948, 123.6, 99.1, 212, 800, '', 'https://upload.wikimedia.org/wikipedia/commons/3/35/KawasakiZ900.jpg', '{\"api_ninjas\":{\"make\":\"Kawasaki\",\"model\":\"Z900\",\"year\":\"2022\",\"type\":\"Naked bike\",\"displacement\":\"948.0 ccm (57.85 cubic inches)\",\"engine\":\"In-line four, four-stroke\",\"compression\":\"11.8:1\",\"bore_stroke\":\"73.4 x 56.0 mm (2.9 x 2.2 inches)\",\"valves_per_cylinder\":\"4\",\"fuel_system\":\"Injection. DFI  with 36mm Keihin throttle bodies\",\"fuel_control\":\"Double Overhead Cams/Twin Cam (DOHC)\",\"lubrication\":\"Forced lubrication, wet sump\",\"cooling\":\"Liquid\",\"gearbox\":\"6-speed\",\"transmission\":\"Chain   (final drive)\",\"clutch\":\"Assist  and  Slipper Clutch\",\"frame\":\"Trellis, high tensile steel\",\"front_suspension\":\"41mm inverted fork with rebound damping and spring preload adjustability\",\"front_wheel_travel\":\"119 mm (4.7 inches)\",\"rear_suspension\":\"Horizontal back-link, stepless rebound damping, adjustable spring preload\",\"rear_wheel_travel\":\"140 mm (5.5 inches)\",\"front_tire\":\"120/70-ZR17 \",\"rear_tire\":\"180/55-ZR17 \",\"front_brakes\":\"Double disc. ABS. Four-piston calipers. \",\"rear_brakes\":\"Single disc. ABS. Single-piston caliper. \",\"seat_height\":\"800 mm (31.5 inches) If adjustable, lowest setting.\",\"ground_clearance\":\"145 mm (5.7 inches)\",\"wheelbase\":\"1455 mm (57.3 inches)\",\"fuel_capacity\":\"17.03 litres (4.50 US gallons)\",\"starter\":\"Electric\",\"power\":\"123.6 HP (90.2  kW)) @ 9500 RPM\",\"torque\":\"99.1 Nm (10.1 kgf-m or 73.1 ft.lbs) @ 7700 RPM\",\"top_speed\":null,\"fuel_consumption\":null,\"emission\":null,\"total_weight\":\"212.1 kg (467.5 pounds)\",\"total_height\":\"1080 mm (42.5 inches)\",\"total_length\":\"2070 mm (81.5 inches)\",\"total_width\":\"826 mm (32.5 inches)\",\"ignition\":\"TCBI with electronic advance\",\"dry_weight\":\"212.0 kg (467.4 pounds)\"}}', '', '2026-02-06 00:37:12', 2022, NULL, NULL, NULL, NULL, NULL, 'active'),
(8, 'bmw', 'S 1000 R', 'Naked bike', 999, 165, 114, 199, 831, '', 'https://tse1.mm.bing.net/th/id/OIP.qogazpucbIAtr_L2m8QMfwHaE7?pid=Api&P=0&h=180', '{\"api_ninjas\":{\"make\":\"BMW\",\"model\":\"S 1000 R\",\"year\":\"2022\",\"type\":\"Naked bike\",\"displacement\":\"999.0 ccm (60.96 cubic inches)\",\"engine\":\"In-line four, four-stroke\",\"compression\":\"12.5:1\",\"bore_stroke\":\"80.0 x 49.7 mm (3.1 x 2.0 inches)\",\"valves_per_cylinder\":\"4\",\"fuel_system\":\"Injection. Electronic port fuel injection, BMS-K+ electronic engine management with RPM cut-off, twin-spark ignition: BMS-O with ride by wire.\",\"fuel_control\":\"Double Overhead Cams/Twin Cam (DOHC)\",\"lubrication\":\"Wet sump\",\"cooling\":\"Liquid\",\"gearbox\":\"6-speed\",\"transmission\":\"Chain   (final drive)\",\"clutch\":\"Multi-disc oil bath (anti-hopping) with self-reinforcement\",\"frame\":\"Bridge-type aluminum laminate frame with load-bearing engine\",\"front_suspension\":\"Upside-down telescopic fork 46 mm, compression and rebound stage adjustable\",\"front_wheel_travel\":\"120 mm (4.7 inches)\",\"rear_suspension\":\"Aluminum swingarm, central shock absorber, adjustable rebound and compression damping and adjustable spring preload\",\"rear_wheel_travel\":\"117 mm (4.6 inches)\",\"front_tire\":\"120/70-ZR17 \",\"rear_tire\":\"190/55-ZR17 \",\"front_brakes\":\"Double disc. ABS. Floating discs. Four-piston calipers. \",\"rear_brakes\":\"Single disc. ABS. Floating disc. Single-piston caliper. \",\"seat_height\":\"831 mm (32.7 inches) If adjustable, lowest setting.\",\"ground_clearance\":null,\"wheelbase\":\"1439 mm (56.7 inches)\",\"fuel_capacity\":\"17.50 litres (4.62 US gallons)\",\"starter\":\"Electric\",\"power\":\"165.0 HP (120.4  kW)) @ 11000 RPM\",\"torque\":\"114.0 Nm (11.6 kgf-m or 84.1 ft.lbs) @ 9250 RPM\",\"top_speed\":\"199.6 km/h (124.0 mph)\",\"fuel_consumption\":\"6.70 litres/100 km (14.9 km/l or 35.11 mpg)\",\"emission\":\"155.4 CO2 g/km. (CO2 - Carbon dioxide emission) \",\"total_weight\":\"199.0 kg (438.7 pounds)\",\"total_height\":\"1228 mm (48.3 inches)\",\"total_length\":\"2057 mm (81.0 inches)\",\"total_width\":\"845 mm (33.3 inches)\",\"ignition\":null,\"dry_weight\":null}}', '', '2026-02-06 01:33:16', 2022, NULL, NULL, NULL, NULL, NULL, 'active'),
(9, 'bmw', 'S 1000 RR', 'Sport', 999, 205, 112.6, 208, 823, 'Premium', 'https://upload.wikimedia.org/wikipedia/commons/5/5f/A_BMW_S_1000_RR_motorcycle_in_Athens_on_10-26-2023.jpg', '{\"api_ninjas\":{\"make\":\"BMW\",\"model\":\"S 1000 RR\",\"year\":\"2022\",\"type\":\"Sport\",\"displacement\":\"999.0 ccm (60.96 cubic inches)\",\"engine\":\"In-line four, four-stroke\",\"compression\":\"13.3:1\",\"bore_stroke\":\"80.0 x 49.7 mm (3.1 x 2.0 inches)\",\"valves_per_cylinder\":\"4\",\"fuel_system\":\"Injection. Electronic fuel injection with ride-by-wire throttle system, variable intake, and knock sensor\",\"fuel_control\":\"Double Overhead Cams/Twin Cam (DOHC)\",\"lubrication\":\"Wet sump\",\"cooling\":\"Liquid\",\"gearbox\":\"6-speed\",\"transmission\":\"Chain   (final drive)\",\"clutch\":\"Multiplate clutch in oil bath, anti-hopping clutch, mechanically controlled\",\"frame\":\"Aluminium composite bridge frame, partially self-supporting engine\",\"front_suspension\":\"Upside-down telescopic fork 46 mm, compression and rebound stage adjustable.\",\"front_wheel_travel\":\"120 mm (4.7 inches)\",\"rear_suspension\":\"WSBK Aluminium swing arm, full floater pro, compression and rebound damping adjustable, adjustable preload\",\"rear_wheel_travel\":\"117 mm (4.6 inches)\",\"front_tire\":\"120/70-ZR17 \",\"rear_tire\":\"190/55-ZR17 \",\"front_brakes\":\"Double disc. ABS. Floating discs. Four-piston calipers. \",\"rear_brakes\":\"Single disc. ABS. Floating disc. Single-piston caliper. \",\"seat_height\":\"823 mm (32.4 inches) If adjustable, lowest setting.\",\"ground_clearance\":null,\"wheelbase\":\"1441 mm (56.7 inches)\",\"fuel_capacity\":\"16.50 litres (4.36 US gallons)\",\"starter\":\"Electric\",\"power\":\"205.0 HP (149.6  kW)) @ 13000 RPM\",\"torque\":\"112.6 Nm (11.5 kgf-m or 83.0 ft.lbs) @ 11000 RPM\",\"top_speed\":\"297.7 km/h (185.0 mph)\",\"fuel_consumption\":null,\"emission\":null,\"total_weight\":\"196.9 kg (434.0 pounds)\",\"total_height\":\"1151 mm (45.3 inches)\",\"total_length\":\"2073 mm (81.6 inches)\",\"total_width\":\"848 mm (33.4 inches)\",\"ignition\":null,\"dry_weight\":\"208.0 kg (458.6 pounds)\"}}', '', '2026-02-06 01:33:16', 2022, 95, 38, 43, 51, 22, 'active'),
(10, 'yamaha', 'RX 100', 'Allround', 100, 11.5, 8.6, 99, 750, '', 'https://upload.wikimedia.org/wikipedia/commons/8/80/1989_Yamaha_RX_100.jpg', '{\"api_ninjas\":{\"make\":\"Yamaha\",\"model\":\"RX 100\",\"year\":\"1990\",\"type\":\"Allround\",\"displacement\":\"100.0 ccm (6.10 cubic inches)\",\"engine\":\"Single cylinder, two-stroke\",\"compression\":\"10.1:1\",\"bore_stroke\":\"50.0 x 50.0 mm (2.0 x 2.0 inches)\",\"valves_per_cylinder\":\"2\",\"fuel_system\":\"Carburettor. Mikuni RM 18 mm\",\"fuel_control\":\"Single Overhead Cams (SOHC)\",\"lubrication\":\"Autolube\",\"cooling\":\"Air\",\"gearbox\":\"4-speed\",\"transmission\":\"Chain   (final drive)\",\"clutch\":\"74 tooth clutch housing bell\",\"frame\":\"Double cradle frame\",\"front_suspension\":\"Telescopic oil damped\",\"front_wheel_travel\":null,\"rear_suspension\":\"Coil spring oil damped\",\"rear_wheel_travel\":null,\"front_tire\":\"2.50-R18 \",\"rear_tire\":\"3.00-R18 \",\"front_brakes\":\"Expanding brake (drum brake)\",\"rear_brakes\":\"Expanding brake (drum brake)\",\"seat_height\":\"750 mm (29.5 inches) If adjustable, lowest setting.\",\"ground_clearance\":null,\"wheelbase\":null,\"fuel_capacity\":\"10.50 litres (2.77 US gallons)\",\"starter\":\"Kick\",\"power\":\"11.5 HP (8.4  kW)) @ 7500 RPM\",\"torque\":\"8.6 Nm (0.9 kgf-m or 6.3 ft.lbs) @ 6500 RPM\",\"top_speed\":\"125.0 km/h (77.7 mph)\",\"fuel_consumption\":\"2.50 litres/100 km (40.0 km/l or 94.09 mpg)\",\"emission\":\"58.0 CO2 g/km. (CO2 - Carbon dioxide emission) \",\"total_weight\":null,\"total_height\":null,\"total_length\":\"2040 mm (80.3 inches)\",\"total_width\":\"740 mm (29.1 inches)\",\"ignition\":\"CDI\",\"dry_weight\":\"99.0 kg (218.3 pounds)\"}}', '', '2026-02-06 01:54:04', 1990, NULL, NULL, NULL, NULL, NULL, 'active'),
(11, 'suzuki', 'Gixxer SF 250', 'Sport', 249, 26.5, 22.2, 161, 800, '', 'https://upload.wikimedia.org/wikipedia/commons/b/b4/2021_Suzuki_Gixxer_SF_250_%2820211117%29.jpg', '{\"api_ninjas\":{\"make\":\"Suzuki\",\"model\":\"Gixxer SF 250\",\"year\":\"2022\",\"type\":\"Sport\",\"displacement\":\"249.0 ccm (15.19 cubic inches)\",\"engine\":\"Single cylinder, four-stroke\",\"compression\":null,\"bore_stroke\":\"76.0 x 54.9 mm (3.0 x 2.2 inches)\",\"valves_per_cylinder\":\"4\",\"fuel_system\":\"Injection\",\"fuel_control\":\"Single Overhead Cams (SOHC)\",\"lubrication\":\"Wet sump\",\"cooling\":\"Air\",\"gearbox\":\"6-speed\",\"transmission\":\"Chain   (final drive)\",\"clutch\":null,\"frame\":null,\"front_suspension\":\"Telescopic forks\",\"front_wheel_travel\":null,\"rear_suspension\":\"Swing Arm, Mono Suspension\",\"rear_wheel_travel\":null,\"front_tire\":\"110/70-R17 \",\"rear_tire\":\"150/60-R17 \",\"front_brakes\":\"Single disc. ABS\",\"rear_brakes\":\"Single disc. ABS\",\"seat_height\":\"800 mm (31.5 inches) If adjustable, lowest setting.\",\"ground_clearance\":\"165 mm (6.5 inches)\",\"wheelbase\":\"1345 mm (53.0 inches)\",\"fuel_capacity\":\"12.00 litres (3.17 US gallons)\",\"starter\":\"Electric\",\"power\":\"26.5 HP (19.3  kW)) @ 9300 RPM\",\"torque\":\"22.2 Nm (2.3 kgf-m or 16.4 ft.lbs) @ 7300 RPM\",\"top_speed\":null,\"fuel_consumption\":null,\"emission\":null,\"total_weight\":\"161.0 kg (354.9 pounds)\",\"total_height\":\"1035 mm (40.7 inches)\",\"total_length\":\"2010 mm (79.1 inches)\",\"total_width\":\"740 mm (29.1 inches)\",\"ignition\":\"CDI\",\"dry_weight\":null}}', '', '2026-02-07 12:13:14', 2022, NULL, NULL, NULL, NULL, NULL, 'active'),
(12, 'kawasaki', 'Ninja H2R', 'Sport', 998, 310, 164.8, 215.9, 831, 'Premium', 'https://upload.wikimedia.org/wikipedia/commons/7/76/2019_Kawasaki_Ninja_H2R_FOS19.jpg', '{\"api_ninjas\":{\"make\":\"Kawasaki\",\"model\":\"Ninja H2R\",\"year\":\"2022\",\"type\":\"Sport\",\"displacement\":\"998.0 ccm (60.90 cubic inches)\",\"engine\":\"In-line four, four-stroke\",\"compression\":\"8.3:1\",\"bore_stroke\":\"76.0 x 55.0 mm (3.0 x 2.2 inches)\",\"valves_per_cylinder\":\"4\",\"fuel_system\":\"Injection. DFI® with 50mm throttle bodies (4) with dual injection ; Kawasaki Supercharger\",\"fuel_control\":\"Double Overhead Cams/Twin Cam (DOHC)\",\"lubrication\":\"Forced lubrication, wet sump with oil cooler\",\"cooling\":\"Liquid\",\"gearbox\":\"6-speed\",\"transmission\":\"Chain   (final drive)\",\"clutch\":\"Wet multi-disc, manual\",\"frame\":\"Trellis, high-tensile steel with swingarm mounting plate\",\"front_suspension\":\"43 mm inverted fork with rebound and compression damping, spring preload adjustability and top-out springs\",\"front_wheel_travel\":\"119 mm (4.7 inches)\",\"rear_suspension\":\"Uni-Trak, Öhlins TTX36 gas-charged shock with piggyback reservoir, compression damping, rebound damping, preload adjustability and top-out spring\",\"rear_wheel_travel\":\"135 mm (5.3 inches)\",\"front_tire\":\"120/60-ZR17 \",\"rear_tire\":\"190/65-ZR17 \",\"front_brakes\":\"Double disc. Dual radial-mount, opposed 4-piston Brembo Stylema® calipers, dual semi-floating discs. ABS.\",\"rear_brakes\":\"Single disc. Opposed 2-piston calipers. ABS.\",\"seat_height\":\"831 mm (32.7 inches) If adjustable, lowest setting.\",\"ground_clearance\":\"130 mm (5.1 inches)\",\"wheelbase\":\"1450 mm (57.1 inches)\",\"fuel_capacity\":\"17.00 litres (4.49 US gallons)\",\"starter\":\"Electric\",\"power\":null,\"torque\":\"164.8 Nm (16.8 kgf-m or 121.5 ft.lbs) @ 12500 RPM\",\"top_speed\":null,\"fuel_consumption\":null,\"emission\":null,\"total_weight\":\"215.9 kg (476.0 pounds)\",\"total_height\":\"1161 mm (45.7 inches)\",\"total_length\":\"2070 mm (81.5 inches)\",\"total_width\":\"851 mm (33.5 inches)\",\"ignition\":\"Digital\",\"dry_weight\":null}}', '', '2026-02-07 12:52:47', 2022, NULL, NULL, NULL, NULL, NULL, 'active'),
(13, 'kawasaki', 'Z800', 'Naked bike', 806, 113, 83, 227, 834, '', 'https://upload.wikimedia.org/wikipedia/commons/4/44/Kawasaki_Z800.jpg', '{\"api_ninjas\":{\"make\":\"Kawasaki\",\"model\":\"Z800\",\"year\":\"2017\",\"type\":\"Naked bike\",\"displacement\":\"806.0 ccm (49.18 cubic inches)\",\"engine\":\"In-line four, four-stroke\",\"compression\":\"11.9:1\",\"bore_stroke\":\"71.0 x 50.9 mm (2.8 x 2.0 inches)\",\"valves_per_cylinder\":\"4\",\"fuel_system\":\"Injection. 34 mm x 4 Mikuni with dual throttle valves\",\"fuel_control\":\"Double Overhead Cams/Twin Cam (DOHC)\",\"lubrication\":\"Forced lubrication, wet sump\",\"cooling\":\"Liquid\",\"gearbox\":\"6-speed\",\"transmission\":\"Chain   (final drive)\",\"clutch\":\"Wet multi-disc, manual\",\"frame\":\"Tubular backbone (with engine sub-frame), high-tensile steel\",\"front_suspension\":\"41 mm inverted fork with rebound  damping and spring preload adjustability\",\"front_wheel_travel\":null,\"rear_suspension\":\"Bottom-Link Uni-Trak, gas-charged shock  with piggyback reservoir and stepless rebound damping and preload adjustability\",\"rear_wheel_travel\":null,\"front_tire\":\"120/70-ZR17 \",\"rear_tire\":\"180/55-ZR17 \",\"front_brakes\":\"Double disc. Floating discs. \",\"rear_brakes\":\"Single disc. Single-piston caliper.\",\"seat_height\":\"834 mm (32.8 inches) If adjustable, lowest setting.\",\"ground_clearance\":\"150 mm (5.9 inches)\",\"wheelbase\":\"1445 mm (56.9 inches)\",\"fuel_capacity\":\"17.00 litres (4.49 US gallons)\",\"starter\":\"Electric\",\"power\":\"113.0 HP (82.5  kW)) @ 10200 RPM\",\"torque\":\"83.0 Nm (8.5 kgf-m or 61.2 ft.lbs) @ 8500 RPM\",\"top_speed\":null,\"fuel_consumption\":null,\"emission\":null,\"total_weight\":\"227.0 kg (500.4 pounds)\",\"total_height\":\"1050 mm (41.3 inches)\",\"total_length\":\"2100 mm (82.7 inches)\",\"total_width\":\"800 mm (31.5 inches)\",\"ignition\":\"Digital\",\"dry_weight\":null}}', '', '2026-02-07 13:37:17', 2017, NULL, NULL, NULL, NULL, NULL, 'active'),
(14, 'kawasaki', 'Ninja H2', 'Sport', 998, 228, 141.7, 238.1, 825, 'Premium', 'https://upload.wikimedia.org/wikipedia/commons/4/4f/Kawasaki_Ninja_H2.jpg', '{\"api_ninjas\":{\"make\":\"Kawasaki\",\"model\":\"Ninja H2\",\"year\":\"2022\",\"type\":\"Sport\",\"displacement\":\"998.0 ccm (60.90 cubic inches)\",\"engine\":\"In-line four, four-stroke\",\"compression\":\"8.5:1\",\"bore_stroke\":\"76.0 x 55.0 mm (3.0 x 2.2 inches)\",\"valves_per_cylinder\":\"4\",\"fuel_system\":\"Injection. DFI® with 50mm throttle bodies (4) with dual injection\",\"fuel_control\":\"Double Overhead Cams/Twin Cam (DOHC)\",\"lubrication\":\"Forced lubrication, wet sump with oil cooler\",\"cooling\":\"Liquid\",\"gearbox\":\"6-speed\",\"transmission\":\"Chain   (final drive)\",\"clutch\":\"Wet multi-disc, manual\",\"frame\":\"Trellis, high-tensile steel with swingarm mounting plate\",\"front_suspension\":\"43 mm inverted fork with rebound and compression damping, spring preload adjustability and top-out springs\",\"front_wheel_travel\":\"119 mm (4.7 inches)\",\"rear_suspension\":\"Uni-Trak, Öhlins TTX36 gas-charged shock with piggyback reservoir, compression damping, rebound damping, preload adjustability and top-out spring\",\"rear_wheel_travel\":\"135 mm (5.3 inches)\",\"front_tire\":\"120/70-ZR17 \",\"rear_tire\":\"200/55-ZR17 \",\"front_brakes\":\"Double disc. Dual radial-mount, opposed 4-piston Brembo Stylema® calipers, dual semi-floating disc. ABS.\",\"rear_brakes\":\"Single disc. Opposed 2-piston calipers, single disc. ABS.\",\"seat_height\":\"825 mm (32.5 inches) If adjustable, lowest setting.\",\"ground_clearance\":\"130 mm (5.1 inches)\",\"wheelbase\":\"1455 mm (57.3 inches)\",\"fuel_capacity\":\"17.00 litres (4.49 US gallons)\",\"starter\":\"Electric\",\"power\":\"228.0 HP (166.4  kW)) @ 11500 RPM\",\"torque\":\"141.7 Nm (14.4 kgf-m or 104.5 ft.lbs) @ 11000 RPM\",\"top_speed\":null,\"fuel_consumption\":\"8.53 litres/100 km (11.7 km/l or 27.58 mpg)\",\"emission\":\"197.9 CO2 g/km. (CO2 - Carbon dioxide emission) \",\"total_weight\":\"238.1 kg (524.8 pounds)\",\"total_height\":\"1125 mm (44.3 inches)\",\"total_length\":\"2085 mm (82.1 inches)\",\"total_width\":\"770 mm (30.3 inches)\",\"ignition\":\"Digital\",\"dry_weight\":null}}', '', '2026-02-07 13:47:58', 2022, NULL, NULL, NULL, NULL, NULL, 'active'),
(15, 'kawasaki', 'Ninja 300', 'Sport', 296, 39, 26.1, 179, 785, 'Budget', 'https://upload.wikimedia.org/wikipedia/commons/c/c2/2013_Kawasaki_Ninja_300_Seattle_Motorcycle_Show.jpg', '{\"api_ninjas\":{\"make\":\"Kawasaki\",\"model\":\"Ninja 300\",\"year\":\"2022\",\"type\":\"Sport\",\"displacement\":\"296.0 ccm (18.06 cubic inches)\",\"engine\":\"Twin, four-stroke\",\"compression\":\"10.6:1\",\"bore_stroke\":\"62.0 x 49.0 mm (2.4 x 1.9 inches)\",\"valves_per_cylinder\":\"4\",\"fuel_system\":\"Injection. 32 mm x 2, with dual throttle valves\",\"fuel_control\":\"Double Overhead Cams/Twin Cam (DOHC)\",\"lubrication\":\"Forced lubrication wet sump\",\"cooling\":\"Liquid\",\"gearbox\":\"6-speed\",\"transmission\":\"Chain   (final drive)\",\"clutch\":\"Assist  and  Slipper\",\"frame\":\"Tubular diamond, steel\",\"front_suspension\":\"37mm hydraulic telescopic fork \",\"front_wheel_travel\":\"119 mm (4.7 inches)\",\"rear_suspension\":\"Bottom-Link Uni-Trak with gas-charged shock and 5-way adjustable pre-load\",\"rear_wheel_travel\":\"132 mm (5.2 inches)\",\"front_tire\":\"110/70-17 \",\"rear_tire\":\"140/70-17 \",\"front_brakes\":\"Single disc. Hydraulic. Two-piston calipers. \",\"rear_brakes\":\"Single disc. Hydraulic. Two-piston calipers.\",\"seat_height\":\"785 mm (30.9 inches) If adjustable, lowest setting.\",\"ground_clearance\":null,\"wheelbase\":\"1405 mm (55.3 inches)\",\"fuel_capacity\":\"17.03 litres (4.50 US gallons)\",\"starter\":\"Electric\",\"power\":\"39.0 HP (28.5  kW)) @ 11000 RPM\",\"torque\":\"26.1 Nm (2.7 kgf-m or 19.3 ft.lbs) @ 10000 RPM\",\"top_speed\":null,\"fuel_consumption\":null,\"emission\":null,\"total_weight\":\"179.0 kg (394.6 pounds)\",\"total_height\":\"1110 mm (43.7 inches)\",\"total_length\":\"2014 mm (79.3 inches)\",\"total_width\":\"715 mm (28.1 inches)\",\"ignition\":\"Digital  \",\"dry_weight\":null}}', '', '2026-02-07 14:03:07', 2022, NULL, NULL, NULL, NULL, NULL, 'active'),
(16, 'bajaj', 'Pulsar 150', 'Sport', 150, 13.8, 13.3, 150, NULL, '', 'https://www.bikespecs.org/img/aHR0cHM6Ly93d3cubW90b3JjeWNsZXNwZWNzLmNvLnphL0dhbGxlcnkvYmFqYWolMjBwdWxzYXIlMjAxNTAlMjAwNSUyMDAyLmpwZw==', '{\"api_ninjas\":{\"make\":\"Bajaj\",\"model\":\"Pulsar 150\",\"year\":\"2022\",\"type\":\"Sport\",\"displacement\":\"149.5 ccm (9.12 cubic inches)\",\"engine\":\"Single cylinder, four-stroke\",\"compression\":null,\"bore_stroke\":null,\"valves_per_cylinder\":\"2\",\"fuel_system\":\"Injection\",\"fuel_control\":null,\"lubrication\":null,\"cooling\":\"Air\",\"gearbox\":null,\"transmission\":\"Chain   (final drive)\",\"clutch\":null,\"frame\":null,\"front_suspension\":\"Telescopic, 37 mm Conventional fork\",\"front_wheel_travel\":\"130 mm (5.1 inches)\",\"rear_suspension\":\"Twin shocks, Gas filled with Canister\",\"rear_wheel_travel\":null,\"front_tire\":\"90/90-17 \",\"rear_tire\":\"120/80-17 \",\"front_brakes\":\"Single disc. Optional ABS. \",\"rear_brakes\":\"Single disc. Optional 130 mm drum\",\"seat_height\":null,\"ground_clearance\":\"165 mm (6.5 inches)\",\"wheelbase\":\"1345 mm (53.0 inches)\",\"fuel_capacity\":\"15.00 litres (3.96 US gallons)\",\"starter\":\"Electric\",\"power\":\"13.8 HP (10.1  kW)) @ 8500 RPM\",\"torque\":\"13.3 Nm (1.4 kgf-m or 9.8 ft.lbs) @ 6500 RPM\",\"top_speed\":null,\"fuel_consumption\":null,\"emission\":null,\"total_weight\":\"150.0 kg (330.7 pounds)\",\"total_height\":\"1065 mm (41.9 inches)\",\"total_length\":\"2035 mm (80.1 inches)\",\"total_width\":\"765 mm (30.1 inches)\",\"ignition\":\"CDI\",\"dry_weight\":null}}', '', '2026-02-07 14:04:08', 2022, NULL, NULL, NULL, NULL, NULL, 'active'),
(17, 'bajaj', 'CT 100', 'Allround', 102, 7.8, 8.3, 115, NULL, '', 'https://upload.wikimedia.org/wikipedia/commons/b/b9/Bajaj_CT_100_bike.jpg', '{\"api_ninjas\":{\"make\":\"Bajaj\",\"model\":\"CT 100\",\"year\":\"2022\",\"type\":\"Allround\",\"displacement\":\"102.0 ccm (6.22 cubic inches)\",\"engine\":\"Single cylinder, four-stroke\",\"compression\":null,\"bore_stroke\":\"47.0 x 58.8 mm (1.9 x 2.3 inches)\",\"valves_per_cylinder\":\"2\",\"fuel_system\":\"Injection\",\"fuel_control\":null,\"lubrication\":null,\"cooling\":\"Air\",\"gearbox\":\"4-speed\",\"transmission\":\"Chain   (final drive)\",\"clutch\":null,\"frame\":\"Tubular single down tube with lower cradle frame\",\"front_suspension\":\"Hydraulic, Telescopic Type\",\"front_wheel_travel\":\"125 mm (4.9 inches)\",\"rear_suspension\":\"Spring-in-Spring (SNS)\",\"rear_wheel_travel\":\"100 mm (3.9 inches)\",\"front_tire\":\"2.75-17 \",\"rear_tire\":\"3.00-17 \",\"front_brakes\":\"Expanding brake (drum brake). Combined braking system\",\"rear_brakes\":\"Expanding brake (drum brake)\",\"seat_height\":null,\"ground_clearance\":\"170 mm (6.7 inches)\",\"wheelbase\":\"1235 mm (48.6 inches)\",\"fuel_capacity\":\"10.50 litres (2.77 US gallons)\",\"starter\":\"Kick\",\"power\":\"7.8 HP (5.7  kW)) @ 7500 RPM\",\"torque\":\"8.3 Nm (0.9 kgf-m or 6.2 ft.lbs) @ 5500 RPM\",\"top_speed\":\"90.0 km/h (55.9 mph)\",\"fuel_consumption\":null,\"emission\":null,\"total_weight\":\"115.0 kg (253.5 pounds)\",\"total_height\":\"1072 mm (42.2 inches)\",\"total_length\":\"1945 mm (76.6 inches)\",\"total_width\":\"752 mm (29.6 inches)\",\"ignition\":null,\"dry_weight\":null}}', '', '2026-02-07 14:05:30', 2022, NULL, NULL, NULL, NULL, NULL, 'active'),
(19, 'kawasaki', 'Ninja 650', 'Sport', 649, 52.3, 56, 192.1, 790, 'Mid', 'https://upload.wikimedia.org/wikipedia/commons/9/9c/Kawasaki_Ninja_650_001.jpg', '{\"api_ninjas\":{\"make\":\"Kawasaki\",\"model\":\"Ninja 650 \",\"year\":\"2022\",\"type\":\"Sport\",\"displacement\":\"649.0 ccm (39.60 cubic inches)\",\"engine\":\"Twin, four-stroke\",\"compression\":\"10.8:1\",\"bore_stroke\":\"83.0 x 60.0 mm (3.3 x 2.4 inches)\",\"valves_per_cylinder\":\"4\",\"fuel_system\":\"Injection. DFI® with dual 36mm Keihin throttle bodies\",\"fuel_control\":\"Double Overhead Cams/Twin Cam (DOHC)\",\"lubrication\":\"Forced lubrication, semi-dry sump\",\"cooling\":\"Liquid\",\"gearbox\":\"6-speed\",\"transmission\":\"Chain   (final drive)\",\"clutch\":\"Assist  and  Slipper Clutch\",\"frame\":\"Trellis, high-tensile steel\",\"front_suspension\":\"41mm hydraulic telescopic fork\",\"front_wheel_travel\":\"124 mm (4.9 inches)\",\"rear_suspension\":\"Horizontal back-link with adjustable spring preload\",\"rear_wheel_travel\":\"130 mm (5.1 inches)\",\"front_tire\":\"120/70-17 \",\"rear_tire\":\"160/60-17 \",\"front_brakes\":\"Double disc. Petal discs and two-piston calipers. Optional ABS.                                  \",\"rear_brakes\":\"Single disc. Petal disc and single piston caliper. Optional ABS.                               \",\"seat_height\":\"790 mm (31.1 inches) If adjustable, lowest setting.\",\"ground_clearance\":\"130 mm (5.1 inches)\",\"wheelbase\":\"1410 mm (55.5 inches)\",\"fuel_capacity\":\"15.14 litres (4.00 US gallons)\",\"starter\":\"Electric\",\"power\":\"52.3 HP (38.2  kW)) @ 8000 RPM\",\"torque\":\"56.0 Nm (5.7 kgf-m or 41.3 ft.lbs) @ 4000 RPM\",\"top_speed\":null,\"fuel_consumption\":null,\"emission\":null,\"total_weight\":\"192.1 kg (423.4 pounds)\",\"total_height\":\"1146 mm (45.1 inches)\",\"total_length\":\"2055 mm (80.9 inches)\",\"total_width\":\"739 mm (29.1 inches)\",\"ignition\":\"TCBI with digital advance\",\"dry_weight\":null}}', '', '2026-02-07 14:31:46', 2022, NULL, NULL, NULL, NULL, NULL, 'active'),
(22, 'yamaha', 'MT-09', 'Naked bike', 890, NULL, NULL, 189.2, 826, 'Budget', 'https://upload.wikimedia.org/wikipedia/commons/f/f8/2022_Yamaha_MT-09.jpg', '{\"api_ninjas\":{\"make\":\"Yamaha\",\"model\":\"MT-09\",\"year\":\"2022\",\"type\":\"Naked bike\",\"displacement\":\"890.0 ccm (54.31 cubic inches)\",\"engine\":\"In-line three, four-stroke\",\"compression\":\"11.5:1\",\"bore_stroke\":\"78.0 x 62.1 mm (3.1 x 2.4 inches)\",\"valves_per_cylinder\":\"4\",\"fuel_system\":\"Injection. Fuel injection with YCC-T\",\"fuel_control\":\"Double Overhead Cams/Twin Cam (DOHC)\",\"lubrication\":\"Wet sump\",\"cooling\":\"Liquid\",\"gearbox\":\"6-speed\",\"transmission\":\"Chain   (final drive)\",\"clutch\":\"Multiplate, assist and slipper clutch\",\"frame\":\"Aluminium   \",\"front_suspension\":\"41mm inverted fork, adjustable preload, compression and rebound\",\"front_wheel_travel\":\"130 mm (5.1 inches)\",\"rear_suspension\":\"Single shock, adjustable preload and rebound damping\",\"rear_wheel_travel\":\"122 mm (4.8 inches)\",\"front_tire\":\"120/70-ZR17 \",\"rear_tire\":\"180/55-ZR17 \",\"front_brakes\":\"Double disc. ABS. Hydraulic. \",\"rear_brakes\":\"Single disc. ABS. Hydraulic. \",\"seat_height\":\"826 mm (32.5 inches) If adjustable, lowest setting.\",\"ground_clearance\":\"140 mm (5.5 inches)\",\"wheelbase\":\"1430 mm (56.3 inches)\",\"fuel_capacity\":\"14.00 litres (3.70 US gallons)\",\"starter\":\"Electric\",\"power\":null,\"torque\":null,\"top_speed\":null,\"fuel_consumption\":\"4.80 litres/100 km (20.8 km/l or 49.00 mpg)\",\"emission\":\"111.4 CO2 g/km. (CO2 - Carbon dioxide emission) \",\"total_weight\":\"189.2 kg (417.0 pounds)\",\"total_height\":\"1191 mm (46.9 inches)\",\"total_length\":\"2090 mm (82.3 inches)\",\"total_width\":\"795 mm (31.3 inches)\",\"ignition\":\"Transistor Controlled\",\"dry_weight\":null}}', '', '2026-02-07 20:55:38', 2022, 12, 40, 51, 84, 26, 'active'),
(23, 'ducati', 'Monster', 'Naked bike', 937, 111, 93, 166, 775, '', 'https://upload.wikimedia.org/wikipedia/commons/a/a5/Ducati_Monster_1200s.jpg', '{\"api_ninjas\":{\"make\":\"Ducati\",\"model\":\"Monster \",\"year\":\"2021\",\"type\":\"Naked bike\",\"displacement\":\"937.0 ccm (57.18 cubic inches)\",\"engine\":\"V2, four-stroke\",\"compression\":\"13.3:1\",\"bore_stroke\":\"94.0 x 67.5 mm (3.7 x 2.7 inches)\",\"valves_per_cylinder\":\"2\",\"fuel_system\":\"Injection. Electronic fuel injection 53mm throttle bodies with Ride-by-Wire system\",\"fuel_control\":\"Desmodromic valve control\",\"lubrication\":null,\"cooling\":\"Air\",\"gearbox\":\"6-speed\",\"transmission\":\"Chain   (final drive)\",\"clutch\":\"Slipper and self-servo wet multiplate clutch with hydraulic control\",\"frame\":\"Aluminum alloy Front Frame\",\"front_suspension\":\"43mm USD\",\"front_wheel_travel\":\"130 mm (5.1 inches)\",\"rear_suspension\":\"Progressive with preload and rebound  adjustable monoshock\",\"rear_wheel_travel\":\"140 mm (5.5 inches)\",\"front_tire\":\"120/70-ZR17 \",\"rear_tire\":\"180/55-ZR17 \",\"front_brakes\":\"Double disc. Semi floating, radially mounted Brembo M4 32 mono bloc with four piston calipers\",\"rear_brakes\":\"Single disc. Brembo 2-piston\",\"seat_height\":\"775 mm (30.5 inches) If adjustable, lowest setting.\",\"ground_clearance\":null,\"wheelbase\":\"1474 mm (58.0 inches)\",\"fuel_capacity\":\"14.00 litres (3.70 US gallons)\",\"starter\":\"Electric\",\"power\":\"111.0 HP (81.0  kW)) @ 9250 RPM\",\"torque\":\"93.0 Nm (9.5 kgf-m or 68.6 ft.lbs) @ 6500 RPM\",\"top_speed\":null,\"fuel_consumption\":null,\"emission\":null,\"total_weight\":\"188.0 kg (414.5 pounds)\",\"total_height\":null,\"total_length\":null,\"total_width\":null,\"ignition\":null,\"dry_weight\":\"166.0 kg (366.0 pounds)\"}}', '', '2026-02-07 20:58:15', 2021, NULL, NULL, NULL, NULL, NULL, 'active'),
(24, 'yamaha', 'MT-07', 'Sport', 689, 74, 68, 184.2, 805, '', 'https://upload.wikimedia.org/wikipedia/commons/9/9c/2021_Black_Yamaha_MT-07.jpg', '{\"api_ninjas\":{\"make\":\"Yamaha\",\"model\":\"MT-07\",\"year\":\"2022\",\"type\":\"Sport\",\"displacement\":\"689.0 ccm (42.04 cubic inches)\",\"engine\":\"Twin, four-stroke\",\"compression\":\"11.5:1\",\"bore_stroke\":\"80.0 x 68.6 mm (3.1 x 2.7 inches)\",\"valves_per_cylinder\":\"4\",\"fuel_system\":\"Injection. Mikuni, 38 mm\",\"fuel_control\":\"Double Overhead Cams/Twin Cam (DOHC)\",\"lubrication\":\"Wet sump\",\"cooling\":\"Liquid\",\"gearbox\":\"6-speed\",\"transmission\":\"Chain   (final drive)\",\"clutch\":\"Wet, Multiple Disc\",\"frame\":\"Diamond\",\"front_suspension\":\"41mm KYB telescopic fork \",\"front_wheel_travel\":\"130 mm (5.1 inches)\",\"rear_suspension\":\"KYB Single shock, adjustable preload and rebound damping\",\"rear_wheel_travel\":\"130 mm (5.1 inches)\",\"front_tire\":\"120/70-ZR17 \",\"rear_tire\":\"180/55-ZR17 \",\"front_brakes\":\"Double disc. Hydraulic.4-piston calipers. ABS.\",\"rear_brakes\":\"Single disc. Hydraulic single disc. ABS.\",\"seat_height\":\"805 mm (31.7 inches) If adjustable, lowest setting.\",\"ground_clearance\":\"140 mm (5.5 inches)\",\"wheelbase\":\"1400 mm (55.1 inches)\",\"fuel_capacity\":\"14.00 litres (3.70 US gallons)\",\"starter\":\"Electric\",\"power\":\"74.0 HP (54.0  kW)) @ 9000 RPM\",\"torque\":\"68.0 Nm (6.9 kgf-m or 50.2 ft.lbs) @ 6500 RPM\",\"top_speed\":null,\"fuel_consumption\":\"4.06 litres/100 km (24.6 km/l or 57.94 mpg)\",\"emission\":\"94.2 CO2 g/km. (CO2 - Carbon dioxide emission) \",\"total_weight\":\"184.2 kg (406.0 pounds)\",\"total_height\":\"1105 mm (43.5 inches)\",\"total_length\":\"2085 mm (82.1 inches)\",\"total_width\":\"780 mm (30.7 inches)\",\"ignition\":\"TCI\",\"dry_weight\":null}}', '', '2026-02-07 21:00:32', 2022, NULL, NULL, NULL, NULL, NULL, 'active'),
(25, 'yamaha', 'MT-15', 'Naked bike', 155, 18, 13, 138, 810, 'Budget', 'http://images.topgear.com.ph/topgear/images/2019/02/14/ice-fluo-main-1550130677.jpg', '{\"api_ninjas\":{\"make\":\"Yamaha\",\"model\":\"MT-15\",\"year\":\"2022\",\"type\":\"Naked bike\",\"displacement\":\"155.0 ccm (9.46 cubic inches)\",\"engine\":\"Single cylinder, four-stroke\",\"compression\":\"11.6:1\",\"bore_stroke\":\"58.0 x 58.7 mm (2.3 x 2.3 inches)\",\"valves_per_cylinder\":\"4\",\"fuel_system\":\"Injection\",\"fuel_control\":\"Single Overhead Cams (SOHC)\",\"lubrication\":\"Wet sump\",\"cooling\":\"Liquid\",\"gearbox\":\"6-speed\",\"transmission\":\"Chain   (final drive)\",\"clutch\":\"Wet, multiple-disc coil spring assist and slipper clutch\",\"frame\":\"Steel deltabox, aluminum swingarm\",\"front_suspension\":\"Upside-down telescopic fork, 41  mm\",\"front_wheel_travel\":\"130 mm (5.1 inches)\",\"rear_suspension\":\"Linked-Type Monocross \",\"rear_wheel_travel\":\"114 mm (4.5 inches)\",\"front_tire\":\"100/80-17 \",\"rear_tire\":\"140/70-17 \",\"front_brakes\":\"Single disc. ABS\",\"rear_brakes\":\"Single disc. ABS\",\"seat_height\":\"810 mm (31.9 inches) If adjustable, lowest setting.\",\"ground_clearance\":\"170 mm (6.7 inches)\",\"wheelbase\":\"1335 mm (52.6 inches)\",\"fuel_capacity\":\"10.00 litres (2.64 US gallons)\",\"starter\":\"Electric\",\"power\":\"18.2 HP (13.3  kW)) @ 10000 RPM\",\"torque\":\"13.9 Nm (1.4 kgf-m or 10.3 ft.lbs) @ 8500 RPM\",\"top_speed\":null,\"fuel_consumption\":null,\"emission\":null,\"total_weight\":\"138.0 kg (304.2 pounds)\",\"total_height\":\"1070 mm (42.1 inches)\",\"total_length\":\"2020 mm (79.5 inches)\",\"total_width\":\"800 mm (31.5 inches)\",\"ignition\":\"TCI\",\"dry_weight\":null}}', '', '2026-02-07 21:02:55', 2022, NULL, NULL, NULL, NULL, NULL, 'active'),
(26, 'bajaj', 'Pulsar 220', 'Sport', 220, 21, 19.1, 150, NULL, '', 'https://www.bikespecs.org/img/aHR0cHM6Ly93d3cubW90b3JjeWNsZXNwZWNzLmNvLnphL0dhbGxlcnkvYmFqYWolMjBwdWxzYXIlMjAyMjAlMjAxMCUyMDAxLmpwZw==', '{\"api_ninjas\":{\"make\":\"Bajaj\",\"model\":\"Pulsar 220\",\"year\":\"2015\",\"type\":\"Sport\",\"displacement\":\"220.0 ccm (13.42 cubic inches)\",\"engine\":\"Single cylinder, four-stroke\",\"compression\":null,\"bore_stroke\":null,\"valves_per_cylinder\":null,\"fuel_system\":\"Carburettor\",\"fuel_control\":null,\"lubrication\":null,\"cooling\":\"Air\",\"gearbox\":null,\"transmission\":\"Chain   (final drive)\",\"clutch\":null,\"frame\":\"Steel, perimeter\",\"front_suspension\":\"Telescooic Forks\",\"front_wheel_travel\":\"130 mm (5.1 inches)\",\"rear_suspension\":\"Nitox\",\"rear_wheel_travel\":\"90 mm (3.5 inches)\",\"front_tire\":\"90/90-17 \",\"rear_tire\":\"120/80-17 \",\"front_brakes\":\"Single disc\",\"rear_brakes\":\"Single disc\",\"seat_height\":null,\"ground_clearance\":\"165 mm (6.5 inches)\",\"wheelbase\":\"1350 mm (53.1 inches)\",\"fuel_capacity\":\"15.00 litres (3.96 US gallons)\",\"starter\":\"Electric\",\"power\":\"21.0 HP (15.4  kW)) @ 8500 RPM\",\"torque\":\"19.1 Nm (1.9 kgf-m or 14.1 ft.lbs) @ 7000 RPM\",\"top_speed\":null,\"fuel_consumption\":null,\"emission\":null,\"total_weight\":\"150.0 kg (330.7 pounds)\",\"total_height\":\"1165 mm (45.9 inches)\",\"total_length\":\"2035 mm (80.1 inches)\",\"total_width\":\"750 mm (29.5 inches)\",\"ignition\":\"CDI\",\"dry_weight\":null}}', '', '2026-02-07 21:16:27', 2015, NULL, NULL, NULL, NULL, NULL, 'active'),
(27, 'bajaj', 'Platina', 'commuter', 99, 8, 8, 113, 0, 'Budget', 'https://tse1.mm.bing.net/th/id/OIP.PPL8tYE2z0bYjAA9O8fPvwHaE8?pid=Api&P=0&h=180', '{\"api_ninjas\":{\"make\":\"Bajaj\",\"model\":\"Platina\",\"year\":\"2008\",\"type\":\"Classic\",\"displacement\":\"99.3 ccm (6.06 cubic inches)\",\"engine\":\"Single cylinder, four-stroke\",\"compression\":null,\"bore_stroke\":null,\"valves_per_cylinder\":null,\"fuel_system\":null,\"fuel_control\":null,\"lubrication\":null,\"cooling\":\"Air\",\"gearbox\":null,\"transmission\":null,\"clutch\":null,\"frame\":null,\"front_suspension\":\"Hydraulic, Telescopic Type\",\"front_wheel_travel\":\"125 mm (4.9 inches)\",\"rear_suspension\":\"Hydraulic, SNS Type\",\"rear_wheel_travel\":\"100 mm (3.9 inches)\",\"front_tire\":\"2.75-17 \",\"rear_tire\":\"3-17 \",\"front_brakes\":null,\"rear_brakes\":null,\"seat_height\":null,\"ground_clearance\":null,\"wheelbase\":null,\"fuel_capacity\":\"13.00 litres (3.43 US gallons)\",\"starter\":null,\"power\":\"8.1 HP (5.9  kW)) @ 7500 RPM\",\"torque\":\"8.1 Nm (0.8 kgf-m or 5.9 ft.lbs) @ 4500 RPM\",\"top_speed\":null,\"fuel_consumption\":null,\"emission\":null,\"total_weight\":null,\"total_height\":\"1090 mm (42.9 inches)\",\"total_length\":\"1990 mm (78.3 inches)\",\"total_width\":\"770 mm (30.3 inches)\",\"ignition\":\"CDI\",\"dry_weight\":\"113.0 kg (249.1 pounds)\"}}', 'api_cached', '2026-02-07 21:21:10', 2008, 12, 71, 97, 85, 90, 'active'),
(28, 'ducati', 'Panigale V2', 'Sport', 955, 155, 104, 176, 830, 'Premium', 'https://upload.wikimedia.org/wikipedia/commons/7/7e/Ducati_955_Panigale_V2_%28IMG_9845%29.jpg', '{\"api_ninjas\":{\"make\":\"Ducati\",\"model\":\"Panigale V2\",\"year\":\"2021\",\"type\":\"Sport\",\"displacement\":\"955.0 ccm (58.27 cubic inches)\",\"engine\":\"V2, four-stroke\",\"compression\":\"12.5:1\",\"bore_stroke\":\"100.0 x 60.8 mm (3.9 x 2.4 inches)\",\"valves_per_cylinder\":\"4\",\"fuel_system\":\"Injection. Twin injectors per cylinder. Full ride-by-wire elliptical throttle bodies.\",\"fuel_control\":\"Desmodromic valve control\",\"lubrication\":null,\"cooling\":\"Liquid\",\"gearbox\":\"6-speed\",\"transmission\":\"Chain   (final drive)\",\"clutch\":\"Hydraullically controlled slipper and self-servo wet multilplate\",\"frame\":\"Monocoque Aluminium\",\"front_suspension\":\"43 mm Showa BPF fork\",\"front_wheel_travel\":\"120 mm (4.7 inches)\",\"rear_suspension\":\"Fully adjustable Sachs unit. Remote spring preload adjustment. Aluminium single-sided swingarm\",\"rear_wheel_travel\":\"130 mm (5.1 inches)\",\"front_tire\":\"120/70-ZR17 \",\"rear_tire\":\"180/60-ZR17 \",\"front_brakes\":\"Double disc. ABS. Brembo.\",\"rear_brakes\":\"Single disc. ABS. Brembo.\",\"seat_height\":\"830 mm (32.7 inches) If adjustable, lowest setting.\",\"ground_clearance\":null,\"wheelbase\":\"1436 mm (56.5 inches)\",\"fuel_capacity\":\"17.00 litres (4.49 US gallons)\",\"starter\":\"Electric\",\"power\":\"155.0 HP (113.1  kW)) @ 10750 RPM\",\"torque\":\"104.0 Nm (10.6 kgf-m or 76.7 ft.lbs) @ 9000 RPM\",\"top_speed\":null,\"fuel_consumption\":\"6.00 litres/100 km (16.7 km/l or 39.20 mpg)\",\"emission\":\"139.2 CO2 g/km. (CO2 - Carbon dioxide emission) \",\"total_weight\":\"200.0 kg (440.9 pounds)\",\"total_height\":\"1105 mm (43.5 inches)\",\"total_length\":\"2070 mm (81.5 inches)\",\"total_width\":\"745 mm (29.3 inches)\",\"ignition\":null,\"dry_weight\":\"176.0 kg (388.0 pounds)\"}}', '', '2026-02-07 21:22:01', 2021, NULL, NULL, NULL, NULL, NULL, 'active'),
(29, 'kawasaki', 'Z1000', 'Naked bike', 1043, 140.1, 111, 221, 815, '', 'https://upload.wikimedia.org/wikipedia/commons/b/bd/2007TMS_kawasaki_Z1000.jpg', '{\"api_ninjas\":{\"make\":\"Kawasaki\",\"model\":\"Z1000\",\"year\":\"2021\",\"type\":\"Naked bike\",\"displacement\":\"1043.0 ccm (63.64 cubic inches)\",\"engine\":\"In-line four, four-stroke\",\"compression\":\"11.8:1\",\"bore_stroke\":\"77.0 x 56.0 mm (3.0 x 2.2 inches)\",\"valves_per_cylinder\":\"4\",\"fuel_system\":\"Injection. Ø38 mm x 4 (Keihin) with oval sub-throttles\",\"fuel_control\":\"Double Overhead Cams/Twin Cam (DOHC)\",\"lubrication\":\"Forced lubrication, wet sump\",\"cooling\":\"Liquid\",\"gearbox\":\"6-speed\",\"transmission\":\"Chain   (final drive)\",\"clutch\":\"Wet multi-disc, manual\",\"frame\":\"Twin-tube, aluminium\",\"front_suspension\":\"41 mm inverted fork with top-out springs, stepless compression and rebound damping and spring preload adjustability\",\"front_wheel_travel\":\"120 mm (4.7 inches)\",\"rear_suspension\":\"Horizontal Back-link, gas-charged shock, with stepless rebound damping and spring preload adjustability\",\"rear_wheel_travel\":\"135 mm (5.3 inches)\",\"front_tire\":\"120/70-ZR17 \",\"rear_tire\":\"190/50-ZR17 \",\"front_brakes\":\"Double disc. Dual semi-floating 310mm petal discs \",\"rear_brakes\":\"Single disc. Single 250mm petal disc, Caliper:Single-piston\",\"seat_height\":\"815 mm (32.1 inches) If adjustable, lowest setting.\",\"ground_clearance\":\"125 mm (4.9 inches)\",\"wheelbase\":\"1435 mm (56.5 inches)\",\"fuel_capacity\":\"17.00 litres (4.49 US gallons)\",\"starter\":\"Electric\",\"power\":\"140.1 HP (102.3  kW)) @ 10000 RPM\",\"torque\":\"111.0 Nm (11.3 kgf-m or 81.9 ft.lbs) @ 7300 RPM\",\"top_speed\":null,\"fuel_consumption\":\"5.50 litres/100 km (18.2 km/l or 42.77 mpg)\",\"emission\":\"127.6 CO2 g/km. (CO2 - Carbon dioxide emission) \",\"total_weight\":\"221.0 kg (487.2 pounds)\",\"total_height\":\"1055 mm (41.5 inches)\",\"total_length\":\"2045 mm (80.5 inches)\",\"total_width\":\"790 mm (31.1 inches)\",\"ignition\":\"Digital\",\"dry_weight\":null}}', '', '2026-02-07 21:24:16', 2021, NULL, NULL, NULL, NULL, NULL, 'active'),
(30, 'yamaha', 'FZ-S', 'Naked bike', 153, 14, 13.6, 135, 790, '', 'https://upload.wikimedia.org/wikipedia/commons/6/63/2011_Yamaha_Byson_150_%2820201105%29.jpg', '{\"api_ninjas\":{\"make\":\"Yamaha\",\"model\":\"FZ-S\",\"year\":\"2018\",\"type\":\"Sport\",\"displacement\":\"153.0 ccm (9.34 cubic inches)\",\"engine\":\"Single cylinder, four-stroke\",\"compression\":\"9.5:1\",\"bore_stroke\":\"58.0 x 57.9 mm (2.3 x 2.3 inches)\",\"valves_per_cylinder\":null,\"fuel_system\":\"Carburettor\",\"fuel_control\":\"Single Overhead Cams (SOHC)\",\"lubrication\":\"Wet Sump\",\"cooling\":\"Air\",\"gearbox\":\"5-speed\",\"transmission\":\"Chain   (final drive)\",\"clutch\":\"Wet, multiple-disc\",\"frame\":\"Diamond\",\"front_suspension\":\"Telescopic Hydraulic\",\"front_wheel_travel\":null,\"rear_suspension\":\"Ajustable, Hydraulic Shock Absorber\",\"rear_wheel_travel\":null,\"front_tire\":\"100/80-17 \",\"rear_tire\":\"100/80-17 \",\"front_brakes\":\"Single disc\",\"rear_brakes\":\"Expanding brake (drum brake)\",\"seat_height\":\"790 mm (31.1 inches) If adjustable, lowest setting.\",\"ground_clearance\":\"160 mm (6.3 inches)\",\"wheelbase\":\"1334 mm (52.5 inches)\",\"fuel_capacity\":\"12.00 litres (3.17 US gallons)\",\"starter\":\"Electric & kick\",\"power\":\"14.0 HP (10.2  kW)) @ 8500 RPM\",\"torque\":\"13.6 Nm (1.4 kgf-m or 10.0 ft.lbs) @ 6000 RPM\",\"top_speed\":null,\"fuel_consumption\":null,\"emission\":null,\"total_weight\":\"135.0 kg (297.6 pounds)\",\"total_height\":\"1090 mm (42.9 inches)\",\"total_length\":\"1973 mm (77.7 inches)\",\"total_width\":\"770 mm (30.3 inches)\",\"ignition\":\"CDI\",\"dry_weight\":null}}', 'api_cached', '2026-02-07 21:27:44', 2018, NULL, NULL, NULL, NULL, NULL, 'active');
INSERT INTO `bikes` (`id`, `brand`, `model`, `category`, `displacement_cc`, `power_hp`, `torque_nm`, `weight_kg`, `seat_height_mm`, `price_range`, `image_url`, `extra_specs`, `data_source`, `api_cached_at`, `year`, `performance_score`, `comfort_score`, `efficiency_score`, `reliability_score`, `practicality_score`, `status`) VALUES
(31, 'honda', 'Activa', 'Scooter', 109, 7.7, 8.8, 106, 692, '', 'https://upload.wikimedia.org/wikipedia/commons/2/29/Honda_Activa_Rental-_Goa_1.jpg', '{\"api_ninjas\":{\"make\":\"Honda\",\"model\":\"Activa\",\"year\":\"2022\",\"type\":\"Scooter\",\"displacement\":\"109.1 ccm (6.66 cubic inches)\",\"engine\":\"Single cylinder, four-stroke\",\"compression\":\"10.0:1\",\"bore_stroke\":\"47.0 x 63.1 mm (1.9 x 2.5 inches)\",\"valves_per_cylinder\":null,\"fuel_system\":\"Injection. PGM-FI\",\"fuel_control\":null,\"lubrication\":null,\"cooling\":\"Air\",\"gearbox\":\"Automatic\",\"transmission\":\"Belt   (final drive)\",\"clutch\":\"CVT\",\"frame\":\"Underbone\",\"front_suspension\":\"Telescopic fork\",\"front_wheel_travel\":null,\"rear_suspension\":\"3-Step Adjustable Spring Loaded Hydraulic\",\"rear_wheel_travel\":null,\"front_tire\":\"90/90-12 \",\"rear_tire\":\"90/100-10 \",\"front_brakes\":\"Expanding brake (drum brake)\",\"rear_brakes\":\"Expanding brake (drum brake)\",\"seat_height\":\"692 mm (27.2 inches) If adjustable, lowest setting.\",\"ground_clearance\":\"162 mm (6.4 inches)\",\"wheelbase\":\"1260 mm (49.6 inches)\",\"fuel_capacity\":\"5.30 litres (1.40 US gallons)\",\"starter\":\"Electric & kick\",\"power\":\"7.7 HP (5.6  kW)) @ 8000 RPM\",\"torque\":\"8.8 Nm (0.9 kgf-m or 6.5 ft.lbs) @ 5500 RPM\",\"top_speed\":\"83.0 km/h (51.6 mph)\",\"fuel_consumption\":\"1.79 litres/100 km (55.9 km/l or 131.41 mpg)\",\"emission\":\"41.5 CO2 g/km. (CO2 - Carbon dioxide emission) \",\"total_weight\":\"106.0 kg (233.7 pounds)\",\"total_height\":\"1156 mm (45.5 inches)\",\"total_length\":\"1833 mm (72.2 inches)\",\"total_width\":\"697 mm (27.4 inches)\",\"ignition\":null,\"dry_weight\":null}}', '', '2026-02-07 21:28:42', 2022, NULL, NULL, NULL, NULL, NULL, 'active'),
(35, 'ducati', 'Multistrada V4', 'Adventure', 1158, 170, 125, 242, 840, 'Premium', 'https://upload.wikimedia.org/wikipedia/commons/c/c8/Clarkinternationalspeedway-californiasuperbikeschool-trackday-2025-ducatimultistrada-7583.jpg', '{\"api_ninjas\":{\"make\":\"Ducati\",\"model\":\"Multistrada V4\",\"year\":\"2022\",\"type\":\"Sport\",\"displacement\":\"1158.0 ccm (70.66 cubic inches)\",\"engine\":\"V4, four-stroke\",\"compression\":\"14.0:1\",\"bore_stroke\":\"83.0 x 53.5 mm (3.3 x 2.1 inches)\",\"valves_per_cylinder\":\"4\",\"fuel_system\":\"Injection. 46mm eliptical throttle bodies with Ride-by -Wire system\",\"fuel_control\":\"Desmodromic valve control\",\"lubrication\":null,\"cooling\":\"Liquid\",\"gearbox\":\"6-speed\",\"transmission\":\"Chain   (final drive)\",\"clutch\":\"Multiplate wet hydraulic control, self-servo action on drive, slipper action on over-run\",\"frame\":\"Aluminum Monocoque \",\"front_suspension\":\"50mm fully adjustable usd forks, electronic compression and rebound damping adjustment with Ducati Skyhook\",\"front_wheel_travel\":\"170 mm (6.7 inches)\",\"rear_suspension\":\"Fully adjustable monoshock , electronic adjustment with Ducati Skyhook, aluminum double-sided Swingarm\",\"rear_wheel_travel\":\"180 mm (7.1 inches)\",\"front_tire\":\"120/70-ZR19 \",\"rear_tire\":\"170/60-ZR17 \",\"front_brakes\":\"Double disc. Brembo M50 Stylema monoblock 4-piston 2 pad calipers, ABS\",\"rear_brakes\":\"Single disc. ABS. Brembo Two-piston calipers. \",\"seat_height\":\"840 mm (33.1 inches) If adjustable, lowest setting.\",\"ground_clearance\":null,\"wheelbase\":\"1567 mm (61.7 inches)\",\"fuel_capacity\":\"22.00 litres (5.81 US gallons)\",\"starter\":\"Electric\",\"power\":\"170.0 HP (124.1  kW)) @ 10500 RPM\",\"torque\":\"125.0 Nm (12.7 kgf-m or 92.2 ft.lbs) @ 8750 RPM\",\"top_speed\":null,\"fuel_consumption\":\"6.50 litres/100 km (15.4 km/l or 36.19 mpg)\",\"emission\":\"150.8 CO2 g/km. (CO2 - Carbon dioxide emission) \",\"total_weight\":\"242.0 kg (533.5 pounds)\",\"total_height\":null,\"total_length\":null,\"total_width\":null,\"ignition\":null,\"dry_weight\":null}}', '', '2026-02-14 12:13:44', 2022, 81, 45, 44, 56, 63, 'active'),
(36, 'ducati', 'Panigale 959', 'Sport', 955, 150, 102, 176, 830, '', 'https://www.mcnews.com.au/wp-content/uploads/2015/11/Ducati-959-Panigale-21-06-959-PANIGALE-Non-Euro4.jpg', '{\"api_ninjas\":{\"make\":\"Ducati\",\"model\":\"Panigale 959\",\"year\":\"2019\",\"type\":\"Sport\",\"displacement\":\"955.0 ccm (58.27 cubic inches)\",\"engine\":\"V2, four-stroke\",\"compression\":\"12.5:1\",\"bore_stroke\":\"100.0 x 60.8 mm (3.9 x 2.4 inches)\",\"valves_per_cylinder\":\"4\",\"fuel_system\":\"Injection. Twin injectors per cylinder. Full ride-by-wire elliptical throttle bodies.\",\"fuel_control\":\"Desmodromic valve control\",\"lubrication\":null,\"cooling\":\"Liquid\",\"gearbox\":\"6-speed\",\"transmission\":\"Chain   (final drive)\",\"clutch\":\"Slipper and self-servo wet multiplate clutch with hydraulic control\",\"frame\":\"Monocoque Aluminium\",\"front_suspension\":\"Öhlins NIX30 43mm fully adjustable USD fork with TiN treatment. Electronic compression and rebound damping adjustment with semi-active mode\",\"front_wheel_travel\":\"120 mm (4.7 inches)\",\"rear_suspension\":\"Fully adjustable Sachs unit. Remote spring preload adjustment. Aluminium single-sided swingarm\",\"rear_wheel_travel\":\"130 mm (5.1 inches)\",\"front_tire\":\"120/70-ZR17 \",\"rear_tire\":\"180/60-ZR17 \",\"front_brakes\":\"Double disc. ABS. Floating discs. Four-piston calipers. Radially mounted. \",\"rear_brakes\":\"Single disc. ABS. Two-piston calipers. \",\"seat_height\":\"830 mm (32.7 inches) If adjustable, lowest setting.\",\"ground_clearance\":null,\"wheelbase\":\"1431 mm (56.3 inches)\",\"fuel_capacity\":\"17.00 litres (4.49 US gallons)\",\"starter\":\"Electric\",\"power\":\"150.0 HP (109.5  kW)) @ 10500 RPM\",\"torque\":\"102.0 Nm (10.4 kgf-m or 75.2 ft.lbs) @ 9000 RPM\",\"top_speed\":null,\"fuel_consumption\":\"5.60 litres/100 km (17.9 km/l or 42.00 mpg)\",\"emission\":\"129.9 CO2 g/km. (CO2 - Carbon dioxide emission) \",\"total_weight\":null,\"total_height\":\"1105 mm (43.5 inches)\",\"total_length\":\"2070 mm (81.5 inches)\",\"total_width\":\"745 mm (29.3 inches)\",\"ignition\":null,\"dry_weight\":\"176.0 kg (388.0 pounds)\"}}', '', '2026-02-14 12:17:53', 2019, NULL, NULL, NULL, NULL, NULL, 'active'),
(38, 'kawasaki', 'Z650', 'Naked bike', 649, 67.3, 65.7, 173, 790, '', 'https://upload.wikimedia.org/wikipedia/commons/d/d0/Kawasaki_Z650S_2026.jpg', '{\"api_ninjas\":{\"make\":\"Kawasaki\",\"model\":\"Z650\",\"year\":\"2022\",\"type\":\"Naked bike\",\"displacement\":\"649.0 ccm (39.60 cubic inches)\",\"engine\":\"Twin, four-stroke\",\"compression\":\"10.8:1\",\"bore_stroke\":\"83.0 x 60.0 mm (3.3 x 2.4 inches)\",\"valves_per_cylinder\":null,\"fuel_system\":\"Injection. DFI® with Keihin 36mm Keihin throttle bodies\",\"fuel_control\":\"Double Overhead Cams/Twin Cam (DOHC)\",\"lubrication\":\"Forced lubrication, semi dry sump\",\"cooling\":\"Liquid\",\"gearbox\":\"6-speed\",\"transmission\":\"Chain   (final drive)\",\"clutch\":\"Assist  and  Slipper Clutch\",\"frame\":\"Trellis, high-tensile steel\",\"front_suspension\":\"41 mm telescopic fork\",\"front_wheel_travel\":\"124 mm (4.9 inches)\",\"rear_suspension\":\"Horizontal Back-link with preload adjustment\",\"rear_wheel_travel\":\"130 mm (5.1 inches)\",\"front_tire\":\"120/70-ZR17 \",\"rear_tire\":\"160/60-ZR17 \",\"front_brakes\":\"Double disc. Petal-type rotors with two-piston calipers. Optional ABS.\",\"rear_brakes\":\"Single disc. Petal disc. Single-piston. Optional ABS.\",\"seat_height\":\"790 mm (31.1 inches) If adjustable, lowest setting.\",\"ground_clearance\":\"130 mm (5.1 inches)\",\"wheelbase\":\"1410 mm (55.5 inches)\",\"fuel_capacity\":\"15.14 litres (4.00 US gallons)\",\"starter\":\"Electric\",\"power\":\"67.3 HP (49.1  kW)) @ 8000 RPM\",\"torque\":\"65.7 Nm (6.7 kgf-m or 48.5 ft.lbs) @ 6500 RPM\",\"top_speed\":null,\"fuel_consumption\":\"4.44 litres/100 km (22.5 km/l or 52.98 mpg)\",\"emission\":\"103.0 CO2 g/km. (CO2 - Carbon dioxide emission) \",\"total_weight\":\"187.0 kg (412.3 pounds)\",\"total_height\":\"1064 mm (41.9 inches)\",\"total_length\":\"2065 mm (81.3 inches)\",\"total_width\":\"765 mm (30.1 inches)\",\"ignition\":\"TCBI with electronic advance\",\"dry_weight\":\"173.0 kg (381.4 pounds)\"}}', '', '2026-02-14 12:52:43', 2022, NULL, NULL, NULL, NULL, NULL, 'active'),
(39, 'triumph', 'Bonneville T120', 'Classic', 1200, 79.1, 105, 224, 790, '', 'https://upload.wikimedia.org/wikipedia/commons/a/af/2017_Bonneville_T120_CSNDCC1.jpg', '{\"api_ninjas\":{\"make\":\"Triumph\",\"model\":\"Bonneville T120\",\"year\":\"2022\",\"type\":\"Classic\",\"displacement\":\"1200.0 ccm (73.22 cubic inches)\",\"engine\":\"Twin, four-stroke\",\"compression\":\"10.0:1\",\"bore_stroke\":\"97.6 x 80.0 mm (3.8 x 3.1 inches)\",\"valves_per_cylinder\":\"4\",\"fuel_system\":\"Injection. Multipoint sequential electronic fuel injection\",\"fuel_control\":\"Single Overhead Cams (SOHC)\",\"lubrication\":null,\"cooling\":\"Liquid\",\"gearbox\":\"6-speed\",\"transmission\":\"Chain   (final drive)\",\"clutch\":\"Wet, multi-plate torque assist clutch\",\"frame\":\"Tubular steel, with twin cradles\",\"front_suspension\":\"41mm cartridge forks\",\"front_wheel_travel\":\"120 mm (4.7 inches)\",\"rear_suspension\":\"Twin RSU’s, with pre-load adjustment\",\"rear_wheel_travel\":\"120 mm (4.7 inches)\",\"front_tire\":\"100/90-18 \",\"rear_tire\":\"150/70-R17 \",\"front_brakes\":\"Single disc. ABS. Brembo 2-piston floating caliper\",\"rear_brakes\":\"Single disc. ABS. Nissin 2-piston floating caliper\",\"seat_height\":\"790 mm (31.1 inches) If adjustable, lowest setting.\",\"ground_clearance\":null,\"wheelbase\":\"1450 mm (57.1 inches)\",\"fuel_capacity\":\"14.50 litres (3.83 US gallons)\",\"starter\":\"Electric\",\"power\":\"79.1 HP (57.8  kW)) @ 6550 RPM\",\"torque\":\"105.0 Nm (10.7 kgf-m or 77.4 ft.lbs) @ 3500 RPM\",\"top_speed\":null,\"fuel_consumption\":\"4.50 litres/100 km (22.2 km/l or 52.27 mpg)\",\"emission\":\"104.4 CO2 g/km. (CO2 - Carbon dioxide emission) \",\"total_weight\":\"235.9 kg (520.0 pounds)\",\"total_height\":\"1100 mm (43.3 inches)\",\"total_length\":\"2230 mm (87.8 inches)\",\"total_width\":\"780 mm (30.7 inches)\",\"ignition\":null,\"dry_weight\":\"224.0 kg (493.8 pounds)\"}}', '', '2026-02-14 12:53:48', 2022, NULL, NULL, NULL, NULL, NULL, 'active'),
(40, 'honda', 'CBR650F', 'Sport', 649, 85.8, 60.5, 216, 810, '', 'https://upload.wikimedia.org/wikipedia/commons/4/4b/IM%40S_Million_Live%21_itansha_LGQ-2889_right_side_20240811a.jpg', '{\"api_ninjas\":{\"make\":\"Honda\",\"model\":\"CBR650F\",\"year\":\"2019\",\"type\":\"Sport\",\"displacement\":\"649.0 ccm (39.60 cubic inches)\",\"engine\":\"In-line four, four-stroke\",\"compression\":\"11.4:1\",\"bore_stroke\":\"67.0 x 46.0 mm (2.6 x 1.8 inches)\",\"valves_per_cylinder\":\"4\",\"fuel_system\":\"Injection. PGM-FI Programmed automatic enrichment circuit, with 32mm throttle bodies\",\"fuel_control\":\"Double Overhead Cams/Twin Cam (DOHC)\",\"lubrication\":\"Wet sump\",\"cooling\":\"Liquid\",\"gearbox\":\"6-speed\",\"transmission\":\"Chain   (final drive)\",\"clutch\":\"Wet, multiple discs. Mechanical, cable-actuated.\",\"frame\":\"Steel diamond\",\"front_suspension\":\"41mm Fork\",\"front_wheel_travel\":\"120 mm (4.7 inches)\",\"rear_suspension\":\"Single shock with spring-preload adjustability\",\"rear_wheel_travel\":\"128 mm (5.0 inches)\",\"front_tire\":\"120/70-ZR17 \",\"rear_tire\":\"180/55-ZR17 \",\"front_brakes\":\"Double disc. Two-piston calipers. \",\"rear_brakes\":\"Single disc. Single-piston caliper. \",\"seat_height\":\"810 mm (31.9 inches) If adjustable, lowest setting.\",\"ground_clearance\":\"150 mm (5.9 inches)\",\"wheelbase\":\"1449 mm (57.0 inches)\",\"fuel_capacity\":\"17.30 litres (4.57 US gallons)\",\"starter\":\"Electric\",\"power\":\"85.8 HP (62.6  kW)) @ 11000 RPM\",\"torque\":\"60.5 Nm (6.2 kgf-m or 44.6 ft.lbs) @ 8500 RPM\",\"top_speed\":null,\"fuel_consumption\":\"4.44 litres/100 km (22.5 km/l or 52.98 mpg)\",\"emission\":\"103.0 CO2 g/km. (CO2 - Carbon dioxide emission) \",\"total_weight\":\"216.0 kg (476.2 pounds)\",\"total_height\":\"1149 mm (45.2 inches)\",\"total_length\":\"2107 mm (83.0 inches)\",\"total_width\":\"753 mm (29.6 inches)\",\"ignition\":\"Digital transistorized with electronic advance\",\"dry_weight\":null}}', '', '2026-02-14 12:55:26', 2019, NULL, NULL, NULL, NULL, NULL, 'active'),
(41, 'honda', 'CBR650R', 'Sport', 649, 93.9, 63, 208, 810, 'Mid', 'https://upload.wikimedia.org/wikipedia/commons/6/68/Moscow%2C_Honda_CBR650R_July_2025_01.jpg', '{\"api_ninjas\":{\"make\":\"Honda\",\"model\":\"CBR650R\",\"year\":\"2022\",\"type\":\"Sport\",\"displacement\":\"649.0 ccm (39.60 cubic inches)\",\"engine\":\"In-line four, four-stroke\",\"compression\":\"11.6:1\",\"bore_stroke\":\"67.0 x 46.0 mm (2.6 x 1.8 inches)\",\"valves_per_cylinder\":\"4\",\"fuel_system\":\"Injection. PGM-FI with 32mm throttle bodies\",\"fuel_control\":\"Double Overhead Cams/Twin Cam (DOHC)\",\"lubrication\":\"Wet sump\",\"cooling\":\"Liquid\",\"gearbox\":\"6-speed\",\"transmission\":\"Chain   (final drive)\",\"clutch\":\"Wet, multiple discs. Mechanical, cable-actuated.\",\"frame\":\"Steel diamond\",\"front_suspension\":\"41mm Showa Separate Function front Fork Big Piston (SFF-BP) USD forks\",\"front_wheel_travel\":null,\"rear_suspension\":\"Monoshock damper with 7 stage adjustable preload\",\"rear_wheel_travel\":null,\"front_tire\":\"120/70-17 \",\"rear_tire\":\"180/55-17 \",\"front_brakes\":\"Double disc. Two-piston calipers. ABS.\",\"rear_brakes\":\"Single disc. Single-piston caliper. ABS.\",\"seat_height\":\"810 mm (31.9 inches) If adjustable, lowest setting.\",\"ground_clearance\":\"130 mm (5.1 inches)\",\"wheelbase\":\"1448 mm (57.0 inches)\",\"fuel_capacity\":\"15.40 litres (4.07 US gallons)\",\"starter\":\"Electric\",\"power\":\"93.9 HP (68.5  kW)) @ 12000 RPM\",\"torque\":\"63.0 Nm (6.4 kgf-m or 46.5 ft.lbs) @ 8500 RPM\",\"top_speed\":null,\"fuel_consumption\":\"4.90 litres/100 km (20.4 km/l or 48.00 mpg)\",\"emission\":\"113.7 CO2 g/km. (CO2 - Carbon dioxide emission) \",\"total_weight\":\"208.0 kg (458.6 pounds)\",\"total_height\":\"1150 mm (45.3 inches)\",\"total_length\":\"2120 mm (83.5 inches)\",\"total_width\":\"750 mm (29.5 inches)\",\"ignition\":\"Full transistorized ignition\",\"dry_weight\":null}}', '', '2026-02-14 12:55:57', 2022, 51, 41, 56, 82, 27, 'active'),
(42, 'bajaj', 'Pulsar 180', 'Sport', 179, 17, 14.2, 134, 800, 'Budget', 'https://www.bikespecs.org/img/aHR0cHM6Ly93d3cubW90b3JjeWNsZXNwZWNzLmNvLnphL0dhbGxlcnkvYmFqYWolMjBwdWxzYXIlMjAxODAlMjAwNSUyMDAxLmpwZw==', '{\"api_ninjas\":{\"make\":\"Bajaj\",\"model\":\"Pulsar 180\",\"year\":\"2015\",\"type\":\"Sport\",\"displacement\":\"178.6 ccm (10.90 cubic inches)\",\"engine\":\"Single cylinder, four-stroke\",\"compression\":null,\"bore_stroke\":null,\"valves_per_cylinder\":null,\"fuel_system\":\"Carburettor\",\"fuel_control\":null,\"lubrication\":null,\"cooling\":\"Air\",\"gearbox\":null,\"transmission\":\"Chain   (final drive)\",\"clutch\":null,\"frame\":\"Steel, perimeter\",\"front_suspension\":\"Telescopic, with anti-friction bush \",\"front_wheel_travel\":\"130 mm (5.1 inches)\",\"rear_suspension\":\"5 way adjustable, Nitrox shock absorber\",\"rear_wheel_travel\":\"101 mm (4.0 inches)\",\"front_tire\":\"90/90-17 \",\"rear_tire\":\"120/80-17 \",\"front_brakes\":\"Single disc\",\"rear_brakes\":\"Expanding brake (drum brake)\",\"seat_height\":\"800 mm (31.5 inches) If adjustable, lowest setting.\",\"ground_clearance\":\"165 mm (6.5 inches)\",\"wheelbase\":\"1345 mm (53.0 inches)\",\"fuel_capacity\":\"15.00 litres (3.96 US gallons)\",\"starter\":\"Electric\",\"power\":\"17.0 HP (12.4  kW)) @ 8500 RPM\",\"torque\":\"14.2 Nm (1.4 kgf-m or 10.5 ft.lbs) @ 6500 RPM\",\"top_speed\":null,\"fuel_consumption\":null,\"emission\":null,\"total_weight\":\"145.0 kg (319.7 pounds)\",\"total_height\":\"1115 mm (43.9 inches)\",\"total_length\":\"2035 mm (80.1 inches)\",\"total_width\":\"765 mm (30.1 inches)\",\"ignition\":\"CDI\",\"dry_weight\":\"134.0 kg (295.4 pounds)\"}}', '', '2026-02-16 21:32:10', 2015, 17, 53, 81, 81, 35, 'active'),
(43, 'kawasaki', 'Ninja 400', 'Sport', 399, 44, 38, 167, 785, 'Mid', 'https://upload.wikimedia.org/wikipedia/commons/5/56/Kawasaki_Ninja_400_%2854940590053%29.jpg', '{\"api_ninjas\":{\"make\":\"Kawasaki\",\"model\":\"Ninja 400 \",\"year\":\"2022\",\"type\":\"Sport\",\"displacement\":\"399.0 ccm (24.35 cubic inches)\",\"engine\":\"Twin, four-stroke\",\"compression\":\"11.5:1\",\"bore_stroke\":\"70.0 x 51.8 mm (2.8 x 2.0 inches)\",\"valves_per_cylinder\":null,\"fuel_system\":\"Injection. DFI® with dual 32mm throttle bodies\",\"fuel_control\":\"Double Overhead Cams/Twin Cam (DOHC)\",\"lubrication\":null,\"cooling\":\"Liquid\",\"gearbox\":\"6-speed\",\"transmission\":\"Chain   (final drive)\",\"clutch\":\"Assist  and  Slipper Clutch\",\"frame\":\"Trellis, high-tensile steel\",\"front_suspension\":\"41mm hydraulic telescopic fork\",\"front_wheel_travel\":\"119 mm (4.7 inches)\",\"rear_suspension\":\"Horizontal back-link with adjustable spring preload \",\"rear_wheel_travel\":\"130 mm (5.1 inches)\",\"front_tire\":\"110/70-17 \",\"rear_tire\":\"150/70-17 \",\"front_brakes\":\"Single disc. Single  petal-type disc with 2-piston calipers. Optional ABS.\",\"rear_brakes\":\"Single disc. Single petal-type disc with single-piston caliper. Optional ABS.\",\"seat_height\":\"785 mm (30.9 inches) If adjustable, lowest setting.\",\"ground_clearance\":\"140 mm (5.5 inches)\",\"wheelbase\":\"1369 mm (53.9 inches)\",\"fuel_capacity\":\"3.70 litres (0.98 US gallons)\",\"starter\":\"Electric\",\"power\":\"44.0 HP (32.1  kW)) @ 9500 RPM\",\"torque\":\"38.0 Nm (3.9 kgf-m or 28.0 ft.lbs) @ 8000 RPM\",\"top_speed\":null,\"fuel_consumption\":null,\"emission\":null,\"total_weight\":\"168.0 kg (370.4 pounds)\",\"total_height\":\"1120 mm (44.1 inches)\",\"total_length\":\"1989 mm (78.3 inches)\",\"total_width\":\"711 mm (28.0 inches)\",\"ignition\":\"TCBI w/digital advance\",\"dry_weight\":\"167.0 kg (368.2 pounds)\"}}', '', '2026-02-16 21:47:56', 2022, NULL, NULL, NULL, NULL, NULL, 'active'),
(44, 'hero', 'XPulse 200', 'Sport', 200, 17.8, 16.2, 154, 800, '', 'https://upload.wikimedia.org/wikipedia/commons/5/53/Hero_Xpulse_200_4V_Pro.jpg', '{\"api_ninjas\":{\"make\":\"Hero\",\"model\":\"XPulse 200\",\"year\":\"2022\",\"type\":\"Sport\",\"displacement\":\"199.6 ccm (12.18 cubic inches)\",\"engine\":\"Single cylinder, four-stroke\",\"compression\":\"10.0:1\",\"bore_stroke\":\"66.5 x 57.5 mm (2.6 x 2.3 inches)\",\"valves_per_cylinder\":null,\"fuel_system\":\"Injection\",\"fuel_control\":\"Overhead Cams (OHC)\",\"lubrication\":\"Forced pressure and wet sump\",\"cooling\":\"Liquid\",\"gearbox\":\"5-speed\",\"transmission\":\"Chain   (final drive)\",\"clutch\":\"Multiplate, wet\",\"frame\":\"Tubular Diamond\",\"front_suspension\":\"Telescopic Front Forks with anti friction bush\",\"front_wheel_travel\":\"190 mm (7.5 inches)\",\"rear_suspension\":\"Rectangular swingarm with mono shock\",\"rear_wheel_travel\":null,\"front_tire\":\"100/80-17 \",\"rear_tire\":\"130/70-17 \",\"front_brakes\":\"Single disc. ABS\",\"rear_brakes\":\"Single disc\",\"seat_height\":\"800 mm (31.5 inches) If adjustable, lowest setting.\",\"ground_clearance\":\"178 mm (7.0 inches)\",\"wheelbase\":\"1393 mm (54.8 inches)\",\"fuel_capacity\":\"13.00 litres (3.43 US gallons)\",\"starter\":\"Electric & kick\",\"power\":\"17.8 HP (13.0  kW)) @ 8500 RPM\",\"torque\":\"16.2 Nm (1.6 kgf-m or 11.9 ft.lbs) @ 6500 RPM\",\"top_speed\":null,\"fuel_consumption\":null,\"emission\":null,\"total_weight\":\"154.0 kg (339.5 pounds)\",\"total_height\":\"1089 mm (42.9 inches)\",\"total_length\":\"2118 mm (83.4 inches)\",\"total_width\":\"806 mm (31.7 inches)\",\"ignition\":\"Digital DC CDI Ignition System\",\"dry_weight\":null}}', '', '2026-03-05 21:27:31', 2022, NULL, NULL, NULL, NULL, NULL, 'active'),
(45, 'ktm', '390 Adventure', 'Enduro / offroad', 373, 43, 37, 158, 855, '', 'https://upload.wikimedia.org/wikipedia/commons/4/47/KTM-390-ADVENTURE-%C2%B7-2022-%C2%B7-EURO5.png', '{\"api_ninjas\":{\"make\":\"KTM\",\"model\":\"390 Adventure\",\"year\":\"2021\",\"type\":\"Enduro / offroad\",\"displacement\":\"373.2 ccm (22.77 cubic inches)\",\"engine\":\"Single cylinder, four-stroke\",\"compression\":null,\"bore_stroke\":\"89.0 x 60.0 mm (3.5 x 2.4 inches)\",\"valves_per_cylinder\":\"4\",\"fuel_system\":\"Injection\",\"fuel_control\":\"Double Overhead Cams/Twin Cam (DOHC)\",\"lubrication\":\"Wet sump\",\"cooling\":\"Liquid\",\"gearbox\":\"6-speed\",\"transmission\":\"Chain   (final drive)\",\"clutch\":\"PASC™ antihopping clutch, mechanically operated\",\"frame\":\"Steel trellis frame, powder coated\",\"front_suspension\":\"WP APEX upside-down Ø 43 mm\",\"front_wheel_travel\":\"170 mm (6.7 inches)\",\"rear_suspension\":\"WP APEX monoshock\",\"rear_wheel_travel\":\"177 mm (7.0 inches)\",\"front_tire\":\"110/90-17 \",\"rear_tire\":\"150/60-17 \",\"front_brakes\":\"Single disc. ABS. Four-piston radial fixed calliper.\",\"rear_brakes\":\"Single disc. ABS. Single-piston floating calliper.\",\"seat_height\":\"855 mm (33.7 inches) If adjustable, lowest setting.\",\"ground_clearance\":\"200 mm (7.9 inches)\",\"wheelbase\":\"1430 mm (56.3 inches)\",\"fuel_capacity\":\"14.50 litres (3.83 US gallons)\",\"starter\":\"Electric\",\"power\":\"43.0 HP (31.4  kW))\",\"torque\":\"37.0 Nm (3.8 kgf-m or 27.3 ft.lbs)\",\"top_speed\":null,\"fuel_consumption\":\"3.37 litres/100 km (29.7 km/l or 69.80 mpg)\",\"emission\":\"78.2 CO2 g/km. (CO2 - Carbon dioxide emission) \",\"total_weight\":null,\"total_height\":null,\"total_length\":null,\"total_width\":null,\"ignition\":\"Bosch EMS with RBW\",\"dry_weight\":\"158.0 kg (348.3 pounds)\"}}', '', '2026-03-06 11:29:52', 2021, NULL, NULL, NULL, NULL, NULL, 'active'),
(47, 'bmw', 'G 310 GS', 'Sport', 313, 34, 28, 175, 833, '', 'https://upload.wikimedia.org/wikipedia/commons/7/7e/BMW_G310_GS_2023-08_rear.jpg', '{\"api_ninjas\":{\"make\":\"BMW\",\"model\":\"G 310 GS\",\"year\":\"2022\",\"type\":\"Sport\",\"displacement\":\"313.0 ccm (19.10 cubic inches)\",\"engine\":\"Single cylinder, four-stroke\",\"compression\":\"10.9:1\",\"bore_stroke\":\"80.0 x 62.1 mm (3.1 x 2.4 inches)\",\"valves_per_cylinder\":\"4\",\"fuel_system\":\"Injection\",\"fuel_control\":\"Double Overhead Cams/Twin Cam (DOHC)\",\"lubrication\":\"Wet sump\",\"cooling\":\"Liquid\",\"gearbox\":\"6-speed\",\"transmission\":\"Chain   (final drive)\",\"clutch\":\"Multiplate clutch in oil bath\",\"frame\":\"Tubular space\",\"front_suspension\":\"Inverted fork, Ø 41mm\",\"front_wheel_travel\":\"180 mm (7.1 inches)\",\"rear_suspension\":\"Cast aluminium dual swing arm, central spring strut, spring pre-load adjustable\",\"rear_wheel_travel\":\"180 mm (7.1 inches)\",\"front_tire\":\"110/80-R19 \",\"rear_tire\":\"150/70-R17 \",\"front_brakes\":\"Single disc. ABS. 4-piston fixed caliper, radially bolted\",\"rear_brakes\":\"Single disc. ABS. single-piston floating caliper.\",\"seat_height\":\"833 mm (32.8 inches) If adjustable, lowest setting.\",\"ground_clearance\":null,\"wheelbase\":\"1420 mm (55.9 inches)\",\"fuel_capacity\":\"11.50 litres (3.04 US gallons)\",\"starter\":\"Electric\",\"power\":\"34.0 HP (24.8  kW)) @ 9250 RPM\",\"torque\":\"28.0 Nm (2.9 kgf-m or 20.7 ft.lbs) @ 7500 RPM\",\"top_speed\":\"141.6 km/h (88.0 mph)\",\"fuel_consumption\":\"3.30 litres/100 km (30.3 km/l or 71.28 mpg)\",\"emission\":\"76.6 CO2 g/km. (CO2 - Carbon dioxide emission) \",\"total_weight\":\"169.5 kg (373.7 pounds)\",\"total_height\":\"1230 mm (48.4 inches)\",\"total_length\":\"2075 mm (81.7 inches)\",\"total_width\":null,\"ignition\":null,\"dry_weight\":\"175.0 kg (385.8 pounds)\"}}', '', '2026-03-06 11:43:10', 2022, NULL, NULL, NULL, NULL, NULL, 'active'),
(48, 'honda', 'CRF300L Rally', 'Cross / motocross', 286, 27, 26.6, 150.1, 894, 'Budget', 'https://upload.wikimedia.org/wikipedia/commons/1/1a/2024_Honda_CRF300_RALLY.jpg', '{\"api_ninjas\":{\"make\":\"Honda\",\"model\":\"CRF300L Rally\",\"year\":\"2022\",\"type\":\"Cross / motocross\",\"displacement\":\"286.0 ccm (17.45 cubic inches)\",\"engine\":\"Single cylinder, four-stroke\",\"compression\":\"10.7:1\",\"bore_stroke\":\"76.0 x 63.0 mm (3.0 x 2.5 inches)\",\"valves_per_cylinder\":\"4\",\"fuel_system\":\"Injection. Programmed Fuel-Injection system (PGM-FI); 44mm throttle bore\",\"fuel_control\":\"Double Overhead Cams/Twin Cam (DOHC)\",\"lubrication\":null,\"cooling\":\"Liquid\",\"gearbox\":\"6-speed\",\"transmission\":\"Chain   (final drive)\",\"clutch\":\"Wet multiplate, assist/slipper clutch\",\"frame\":\"Steel semi-double cradle\",\"front_suspension\":\"43mm telescopic USD fork\",\"front_wheel_travel\":\"259 mm (10.2 inches)\",\"rear_suspension\":\"Pro-Link® single shock with spring\",\"rear_wheel_travel\":\"259 mm (10.2 inches)\",\"front_tire\":\"80/100-21 \",\"rear_tire\":\"120/80-18 \",\"front_brakes\":\"Single disc. Two-piston calipers. Optional ABS.\",\"rear_brakes\":\"Single disc. Optional ABS.\",\"seat_height\":\"894 mm (35.2 inches) If adjustable, lowest setting.\",\"ground_clearance\":\"277 mm (10.9 inches)\",\"wheelbase\":\"1453 mm (57.2 inches)\",\"fuel_capacity\":\"12.87 litres (3.40 US gallons)\",\"starter\":\"Electric\",\"power\":\"27.0 HP (19.7  kW)) @ 8500 RPM\",\"torque\":\"26.6 Nm (2.7 kgf-m or 19.6 ft.lbs) @ 6500 RPM\",\"top_speed\":null,\"fuel_consumption\":null,\"emission\":null,\"total_weight\":\"150.1 kg (331.0 pounds)\",\"total_height\":\"1200 mm (47.2 inches)\",\"total_length\":\"2230 mm (87.8 inches)\",\"total_width\":\"820 mm (32.3 inches)\",\"ignition\":\"Computer-controlled digital transistorized with electronic advance\",\"dry_weight\":null}}', '', '2026-03-06 11:45:32', 2022, NULL, NULL, NULL, NULL, NULL, 'active'),
(49, 'bmw', 'F 850 GS', 'Enduro / offroad', 853, 90, 86, 216, 861, '', 'https://upload.wikimedia.org/wikipedia/commons/2/2f/BMW_F850GS_Adventure_Rallye_2020.jpg', '{\"api_ninjas\":{\"make\":\"BMW\",\"model\":\"F 850 GS\",\"year\":\"2022\",\"type\":\"Enduro / offroad\",\"displacement\":\"853.0 ccm (52.05 cubic inches)\",\"engine\":\"Twin, four-stroke\",\"compression\":\"12.7:1\",\"bore_stroke\":\"84.0 x 77.0 mm (3.3 x 3.0 inches)\",\"valves_per_cylinder\":\"4\",\"fuel_system\":\"Injection\",\"fuel_control\":\"Double Overhead Cams/Twin Cam (DOHC)\",\"lubrication\":\"Dry sump\",\"cooling\":\"Liquid\",\"gearbox\":\"6-speed\",\"transmission\":\"Chain   (final drive)\",\"clutch\":\"Multiple-disc wet clutch (anti hopping), mechanically operated\",\"frame\":\"Bridge-type frame, steel shell construction\",\"front_suspension\":\"Upside-down telescopic fork, Ø 43 mm  \",\"front_wheel_travel\":\"204 mm (8.0 inches)\",\"rear_suspension\":\"Cast aluminum dual swing arm, central spring strut, spring pre-load hydraulically adjustable, rebound damping adjustable\",\"rear_wheel_travel\":\"219 mm (8.6 inches)\",\"front_tire\":\"90/90-21 \",\"rear_tire\":\"150/70-R17 \",\"front_brakes\":\"Double disc. ABS. Floating discs. Two-piston calipers. \",\"rear_brakes\":\"Single disc. ABS. Floating disc. Single-piston caliper. \",\"seat_height\":\"861 mm (33.9 inches) If adjustable, lowest setting.\",\"ground_clearance\":null,\"wheelbase\":\"1593 mm (62.7 inches)\",\"fuel_capacity\":\"15.14 litres (4.00 US gallons)\",\"starter\":\"Electric\",\"power\":\"90.0 HP (65.7  kW)) @ 8000 RPM\",\"torque\":\"86.0 Nm (8.8 kgf-m or 63.4 ft.lbs) @ 6250 RPM\",\"top_speed\":\"201.2 km/h (125.0 mph)\",\"fuel_consumption\":\"4.10 litres/100 km (24.4 km/l or 57.37 mpg)\",\"emission\":\"95.1 CO2 g/km. (CO2 - Carbon dioxide emission) \",\"total_weight\":\"229.0 kg (504.9 pounds)\",\"total_height\":\"1356 mm (53.4 inches)\",\"total_length\":\"2305 mm (90.7 inches)\",\"total_width\":\"922 mm (36.3 inches)\",\"ignition\":null,\"dry_weight\":\"216.0 kg (476.2 pounds)\"}}', '', '2026-03-06 11:47:08', 2022, NULL, NULL, NULL, NULL, NULL, 'active'),
(50, 'bmw', 'F 900 GS', 'Enduro / offroad', 895, 105, 92.2, 219, 869, '', 'https://upload.wikimedia.org/wikipedia/commons/c/c4/BMW_F900_GS_2024-06-v2_%28bearb_Sp%29.jpg', '{\"api_ninjas\":{\"make\":\"BMW\",\"model\":\"F 900 GS\",\"year\":\"2024\",\"type\":\"Enduro / offroad\",\"displacement\":\"895.0 ccm (54.61 cubic inches)\",\"engine\":\"Twin, four-stroke\",\"compression\":\"13.1:1\",\"bore_stroke\":\"86.0 x 77.0 mm (3.4 x 3.0 inches)\",\"valves_per_cylinder\":\"4\",\"fuel_system\":\"Injection. Electronic intake pipe injection / digital engine management system: BMS-X with throttle-by-wire.\",\"fuel_control\":\"Double Overhead Cams/Twin Cam (DOHC)\",\"lubrication\":\"Dry sump\",\"cooling\":\"Liquid\",\"gearbox\":\"6-speed\",\"transmission\":\"Chain  (final drive)\",\"clutch\":\"Multiplate clutch in oil bath, slipper clutch\",\"frame\":\"Bridge-type, steel shell construction\",\"front_suspension\":\"Upside-down telescopic fork, Ø 43 mm, spring pre-load manually adjustable, rebound and compression adjustable\",\"front_wheel_travel\":\"230 mm (9.1 inches)\",\"rear_suspension\":\"Cast aluminum dual swing arm, central WAD spring strut, spring pre-load hydraulically adjustable, rebound damping adjustable\",\"rear_wheel_travel\":\"215 mm (8.5 inches)\",\"front_tire\":\"90/90-R21\",\"rear_tire\":\"150/70-R17\",\"front_brakes\":\"Double disc. ABS.2-piston floating calipers.\",\"rear_brakes\":\"Single disc. ABS. Floating disc. Single-piston caliper.\",\"seat_height\":\"869 mm (34.2 inches) If adjustable, lowest setting.\",\"ground_clearance\":null,\"wheelbase\":\"1590 mm (62.6 inches)\",\"fuel_capacity\":\"14.38 litres (3.80 US gallons)\",\"starter\":\"Electric\",\"power\":\"105.0  (76.6  )) @ 8500\",\"torque\":\"92.2 Nm (9.4 kgf-m or 68.0 ft.lbs) @ 6750\",\"top_speed\":\"193.1 km/h (120.0 mph)\",\"fuel_consumption\":\"4.20 litres/100 km (23.8 km/l or 56.00 mpg)\",\"emission\":\"97.4 CO g/km. (CO2 - Carbon dioxide emission)\",\"total_weight\":\"219.0 kg (482.8 pounds)\",\"total_height\":\"1392 mm (54.8 inches)\",\"total_length\":\"2271 mm (89.4 inches)\",\"total_width\":\"942 mm (37.1 inches)\",\"ignition\":null,\"dry_weight\":null}}', '', '2026-03-06 11:48:46', 2024, NULL, NULL, NULL, NULL, NULL, 'active'),
(51, 'triumph', 'Tiger 900 Rally Pro', 'Enduro / offroad', 888, 93.9, 87, 201, 850, 'Premium', 'https://upload.wikimedia.org/wikipedia/commons/7/7e/Triumph_Tiger_900.jpg', '{\"api_ninjas\":{\"make\":\"Triumph\",\"model\":\"Tiger 900 Rally Pro\",\"year\":\"2022\",\"type\":\"Enduro / offroad\",\"displacement\":\"888.0 ccm (54.19 cubic inches)\",\"engine\":\"In-line three, four-stroke\",\"compression\":\"11.3:1\",\"bore_stroke\":\"78.0 x 61.9 mm (3.1 x 2.4 inches)\",\"valves_per_cylinder\":\"4\",\"fuel_system\":\"Injection. Multi-point sequential \",\"fuel_control\":\"Double Overhead Cams/Twin Cam (DOHC)\",\"lubrication\":null,\"cooling\":\"Liquid\",\"gearbox\":\"6-speed\",\"transmission\":\"Chain   (final drive)\",\"clutch\":\"Wet multi-plate\",\"frame\":\"Tubular steel, bolt on subframe. Twin-sided, cast aluminum alloy swingarm.\",\"front_suspension\":\"Showa 45 mm upside down forks, manual preload, rebound damping and compression damping adjustment\",\"front_wheel_travel\":\"240 mm (9.4 inches)\",\"rear_suspension\":\"Showa suspension unit, manual preload and rebound damping adjustmen\",\"rear_wheel_travel\":\"230 mm (9.1 inches)\",\"front_tire\":\"90/90-21 \",\"rear_tire\":\"150/70-R17 \",\"front_brakes\":\"Double disc. Brembo radial-type monobloc, with 4 pistons. Multi-mode ABS, Optimized Cornering ABS.\",\"rear_brakes\":\"Single disc. Brembo with single pistons. Multi-mode ABS, Optimized cornering ABS.\",\"seat_height\":\"850 mm (33.5 inches) If adjustable, lowest setting.\",\"ground_clearance\":null,\"wheelbase\":\"1551 mm (61.1 inches)\",\"fuel_capacity\":\"20.00 litres (5.28 US gallons)\",\"starter\":\"Electric\",\"power\":\"93.9 HP (68.5  kW)) @ 8750 RPM\",\"torque\":\"87.0 Nm (8.9 kgf-m or 64.2 ft.lbs) @ 7250 RPM\",\"top_speed\":\"196.0 km/h (121.8 mph)\",\"fuel_consumption\":\"5.20 litres/100 km (19.2 km/l or 45.23 mpg)\",\"emission\":\"120.6 CO2 g/km. (CO2 - Carbon dioxide emission) \",\"total_weight\":\"228.0 kg (502.7 pounds)\",\"total_height\":\"1452 mm (57.2 inches)\",\"total_length\":null,\"total_width\":\"935 mm (36.8 inches)\",\"ignition\":null,\"dry_weight\":\"201.0 kg (443.1 pounds)\"}}', '', '2026-03-06 11:49:48', 2022, 47, 48, 59, 82, 70, 'active'),
(52, 'honda', 'Africa Twin', 'Enduro / offroad', 1084, 101, 105, 238, 851, 'Premium', 'https://tse3.mm.bing.net/th/id/OIP.b5lvB2hoauct_EeC9UO7TAHaE8?pid=Api&P=0&h=180', '{\"api_ninjas\":{\"make\":\"Honda\",\"model\":\"Africa Twin\",\"year\":\"2022\",\"type\":\"Enduro / offroad\",\"displacement\":\"1084.0 ccm (66.15 cubic inches)\",\"engine\":\"Twin, four-stroke\",\"compression\":\"10.1:1\",\"bore_stroke\":\"92.0 x 81.5 mm (3.6 x 3.2 inches)\",\"valves_per_cylinder\":\"4\",\"fuel_system\":\"Injection. PGM-FI electronic fuel injection (throttle by wire)\",\"fuel_control\":\"Single Overhead Cams (SOHC)\",\"lubrication\":null,\"cooling\":\"Liquid\",\"gearbox\":\"6-speed\",\"transmission\":\"Chain   (final drive)\",\"clutch\":\"Dual clutch. Wet, multi-plate with coil springs, aluminum cam assist and slipper.\",\"frame\":\"Steel semi-double cradle type with high-tensile strength steel rear sub-frame\",\"front_suspension\":\"Showa 45mm cartridge-type inverted telescopic fork with dial-style preload adjuster and DF adjustments\",\"front_wheel_travel\":\"230 mm (9.1 inches)\",\"rear_suspension\":\"Monoblock aluminium swing arm with Pro-Link with SHOWA gas-charged damper, hydraulic dial-style preload adjuster and rebound damping adjustments\",\"rear_wheel_travel\":\"220 mm (8.7 inches)\",\"front_tire\":\"90/90-21 \",\"rear_tire\":\"150/70-R18 \",\"front_brakes\":\"Double disc. Switchable ABS. 4-piston calipers and sintered metal pads\",\"rear_brakes\":\"Single disc. Switchable ABS. 2-piston caliper and sintered metal pads.\",\"seat_height\":\"851 mm (33.5 inches) If adjustable, lowest setting.\",\"ground_clearance\":\"250 mm (9.8 inches)\",\"wheelbase\":\"1575 mm (62.0 inches)\",\"fuel_capacity\":\"24.80 litres (6.55 US gallons)\",\"starter\":\"Electric\",\"power\":\"101.0 HP (73.7  kW)) @ 7500 RPM\",\"torque\":\"105.0 Nm (10.7 kgf-m or 77.4 ft.lbs) @ 6250 RPM\",\"top_speed\":null,\"fuel_consumption\":\"4.90 litres/100 km (20.4 km/l or 48.00 mpg)\",\"emission\":\"113.7 CO2 g/km. (CO2 - Carbon dioxide emission) \",\"total_weight\":\"238.0 kg (524.7 pounds)\",\"total_height\":\"1395 mm (54.9 inches)\",\"total_length\":\"2330 mm (91.7 inches)\",\"total_width\":\"960 mm (37.8 inches)\",\"ignition\":\"Full transistorized ignition\",\"dry_weight\":null}}', '', '2026-03-06 11:54:06', 2022, 51, 43, 48, 87, 64, 'active'),
(53, 'honda', 'CRF300L', 'Cross / motocross', 286, 27, 26, 142, 881, 'Budget', 'https://cdn-0.totalmotorcycle.com/wp-content/uploads/2024/11/2025-Honda-CRF300L4.jpg', '{\"api_ninjas\":{\"make\":\"Honda\",\"model\":\"CRF300L\",\"year\":\"2022\",\"type\":\"Cross / motocross\",\"displacement\":\"286.0 ccm (17.45 cubic inches)\",\"engine\":\"Single cylinder, four-stroke\",\"compression\":\"10.7:1\",\"bore_stroke\":\"76.0 x 63.0 mm (3.0 x 2.5 inches)\",\"valves_per_cylinder\":\"4\",\"fuel_system\":\"Injection. Programmed Fuel-Injection system (PGM-FI); 44mm throttle bore\",\"fuel_control\":\"Double Overhead Cams/Twin Cam (DOHC)\",\"lubrication\":null,\"cooling\":\"Liquid\",\"gearbox\":\"6-speed\",\"transmission\":\"Chain   (final drive)\",\"clutch\":\"Wet multiplate, assist/slipper clutch\",\"frame\":\"Steel semi-double cradle\",\"front_suspension\":\"43mm telescopic USD fork\",\"front_wheel_travel\":\"305 mm (12.0 inches)\",\"rear_suspension\":\"Pro-Link system \",\"rear_wheel_travel\":\"315 mm (12.4 inches)\",\"front_tire\":\"80/100-21 \",\"rear_tire\":\"120/80-18 \",\"front_brakes\":\"Single disc. Two-piston calipers. ABS.\",\"rear_brakes\":\"Single disc. ABS.\",\"seat_height\":\"881 mm (34.7 inches) If adjustable, lowest setting.\",\"ground_clearance\":\"285 mm (11.2 inches)\",\"wheelbase\":\"1455 mm (57.3 inches)\",\"fuel_capacity\":\"7.80 litres (2.06 US gallons)\",\"starter\":\"Electric\",\"power\":\"27.0 HP (19.7  kW)) @ 8500 RPM\",\"torque\":\"26.6 Nm (2.7 kgf-m or 19.6 ft.lbs) @ 6500 RPM\",\"top_speed\":null,\"fuel_consumption\":\"3.10 litres/100 km (32.3 km/l or 75.88 mpg)\",\"emission\":\"71.9 CO2 g/km. (CO2 - Carbon dioxide emission) \",\"total_weight\":\"142.0 kg (313.1 pounds)\",\"total_height\":\"1200 mm (47.2 inches)\",\"total_length\":\"2230 mm (87.8 inches)\",\"total_width\":\"820 mm (32.3 inches)\",\"ignition\":\"Computer-controlled digital transistorized with electronic advance\",\"dry_weight\":null}}', '', '2026-03-06 11:56:22', 2022, NULL, NULL, NULL, NULL, NULL, 'active'),
(54, 'honda', 'Gold Wing', 'Touring', 1833, 124.7, 170, 357, 745, 'Premium', 'https://upload.wikimedia.org/wikipedia/commons/3/31/Honda_Gold_Wing_Tel_Aviv_Jaffa.jpg', '{\"api_ninjas\":{\"make\":\"Honda\",\"model\":\"Gold Wing\",\"year\":\"2022\",\"type\":\"Touring\",\"displacement\":\"1833.0 ccm (111.85 cubic inches)\",\"engine\":\"Six cylinder boxer, four-stroke\",\"compression\":\"10.5:1\",\"bore_stroke\":\"73.0 x 73.0 mm (2.9 x 2.9 inches)\",\"valves_per_cylinder\":\"4\",\"fuel_system\":\"Injection. Programmed Fuel Injection, 50mm\",\"fuel_control\":\"Single Overhead Cams (SOHC)\",\"lubrication\":null,\"cooling\":\"Liquid\",\"gearbox\":\"6-speed\",\"transmission\":\"Shaft drive (cardan)   (final drive)\",\"clutch\":\"Multi-plate with diaphragm spring in oil bath. Optional DCT.\",\"frame\":\"Die-cast, aluminium twin-beam frame\",\"front_suspension\":\"Double Wishbone\",\"front_wheel_travel\":\"109 mm (4.3 inches)\",\"rear_suspension\":\"Pro Arm® single-side swingarm with Pro-Link® single shock\",\"rear_wheel_travel\":\"104 mm (4.1 inches)\",\"front_tire\":\"130/70-18 \",\"rear_tire\":\"200/55-16 \",\"front_brakes\":\"Double disc. Floating discs.  CBS three-piston calipers\",\"rear_brakes\":\"Single disc. CBS three-piston calipers.\",\"seat_height\":\"745 mm (29.3 inches) If adjustable, lowest setting.\",\"ground_clearance\":\"130 mm (5.1 inches)\",\"wheelbase\":\"1694 mm (66.7 inches)\",\"fuel_capacity\":\"21.01 litres (5.55 US gallons)\",\"starter\":\"Electric\",\"power\":\"124.7 HP (91.0  kW)) @ 5500 RPM\",\"torque\":\"170.0 Nm (17.3 kgf-m or 125.4 ft.lbs) @ 4500 RPM\",\"top_speed\":null,\"fuel_consumption\":\"5.47 litres/100 km (18.3 km/l or 43.00 mpg)\",\"emission\":\"126.9 CO2 g/km. (CO2 - Carbon dioxide emission) \",\"total_weight\":\"357.0 kg (787.0 pounds)\",\"total_height\":\"1340 mm (52.8 inches)\",\"total_length\":\"2475 mm (97.4 inches)\",\"total_width\":\"925 mm (36.4 inches)\",\"ignition\":\"Computer-controlled digital with three-dimensional mapping\",\"dry_weight\":null}}', '', '2026-03-06 11:57:41', 2022, 67, 53, 2, 86, 44, 'active'),
(55, 'kawasaki', 'Ninja 1000SX', 'Sport', 1043, 200, 113.5, 233.1, 815, 'Premium', 'https://upload.wikimedia.org/wikipedia/commons/3/37/Kawasaki_Ninja_1000SX_Plaza_Edition_%2724.jpg', '{\"api_ninjas\":{\"make\":\"Kawasaki\",\"model\":\"Ninja 1000SX\",\"year\":\"2022\",\"type\":\"Sport\",\"displacement\":\"1043.0 ccm (63.64 cubic inches)\",\"engine\":\"In-line four, four-stroke\",\"compression\":\"11.8:1\",\"bore_stroke\":\"77.0 x 56.0 mm (3.0 x 2.2 inches)\",\"valves_per_cylinder\":\"4\",\"fuel_system\":\"Injection. DFI  w/38mm Keihin throttle bodies (4) and oval sub-throttles\",\"fuel_control\":\"Double Overhead Cams/Twin Cam (DOHC)\",\"lubrication\":null,\"cooling\":\"Liquid\",\"gearbox\":\"6-speed\",\"transmission\":\"Chain   (final drive)\",\"clutch\":\"Assist and slipper clutch\",\"frame\":\"Aluminum backbone\",\"front_suspension\":\"41mm inverted cartridge fork with stepless compression and rebound damping, adjustable spring preload/4.7 in\",\"front_wheel_travel\":\"119 mm (4.7 inches)\",\"rear_suspension\":\"Horizontal monoshock with stepless rebound damping, remotely adjustable spring preload/5.4 in\",\"rear_wheel_travel\":\"145 mm (5.7 inches)\",\"front_tire\":\"120/70-ZR17 \",\"rear_tire\":\"190/50-ZR17 \",\"front_brakes\":\"Double disc. ABS. Four-piston calipers. Radially mounted. \",\"rear_brakes\":\"Single disc. ABS. Single-piston caliper. \",\"seat_height\":\"815 mm (32.1 inches) If adjustable, lowest setting.\",\"ground_clearance\":\"135 mm (5.3 inches)\",\"wheelbase\":\"1440 mm (56.7 inches)\",\"fuel_capacity\":\"17.00 litres (4.49 US gallons)\",\"starter\":\"Electric\",\"power\":\"200.0 HP (146.0  kW)) @ 13000 RPM\",\"torque\":\"113.5 Nm (11.6 kgf-m or 83.7 ft.lbs) @ 7300 RPM\",\"top_speed\":null,\"fuel_consumption\":null,\"emission\":null,\"total_weight\":\"233.1 kg (513.8 pounds)\",\"total_height\":\"1191 mm (46.9 inches)\",\"total_length\":\"2101 mm (82.7 inches)\",\"total_width\":\"826 mm (32.5 inches)\",\"ignition\":\"TCBI with digital advance\",\"dry_weight\":null}}', '', '2026-03-06 11:58:16', 2022, NULL, NULL, NULL, NULL, NULL, 'active'),
(56, 'Harley-Davidson', 'Street Glide', 'Touring', 1746, 89, 150.5, 361, 663, 'Premium', 'https://upload.wikimedia.org/wikipedia/commons/8/8a/Harley-Davidson_Street_Glide_parked_at_Hogs_for_Hospice%2C_Leamington%2C_Ontario%2C_2025-08-02_06.jpg', '{\"api_ninjas\":{\"make\":\"Harley-Davidson\",\"model\":\"Street Glide\",\"year\":\"2022\",\"type\":\"Touring\",\"displacement\":\"1746.0 ccm (106.54 cubic inches)\",\"engine\":\"V2, four-stroke\",\"compression\":\"10.0:1\",\"bore_stroke\":\"99.8 x 111.1 mm (3.9 x 4.4 inches)\",\"valves_per_cylinder\":null,\"fuel_system\":\"Injection. Electronic Sequential Port Fuel Injection\",\"fuel_control\":\"Double Overhead Cams/Twin Cam (DOHC)\",\"lubrication\":\"Dry sump\",\"cooling\":\"Air\",\"gearbox\":\"6-speed\",\"transmission\":\"Belt   (final drive)\",\"clutch\":\"Multi-plate with diaphragm spring in oil bath\",\"frame\":null,\"front_suspension\":\"Telescopic fork, 49mm dual bending valve\",\"front_wheel_travel\":null,\"rear_suspension\":\"Twin shocks,  premium low hand-adjustable\",\"rear_wheel_travel\":null,\"front_tire\":\"130/60-B19 \",\"rear_tire\":\"180/55-B18 \",\"front_brakes\":\"Double disc. ABS. 4-piston\",\"rear_brakes\":\"Single disc. ABS. 4-piston\",\"seat_height\":\"663 mm (26.1 inches) If adjustable, lowest setting.\",\"ground_clearance\":\"135 mm (5.3 inches)\",\"wheelbase\":\"1625 mm (64.0 inches)\",\"fuel_capacity\":\"22.71 litres (6.00 US gallons)\",\"starter\":\"Electric\",\"power\":\"89.0 HP (65.0  kW)) @ 5450 RPM\",\"torque\":\"150.5 Nm (15.3 kgf-m or 111.0 ft.lbs) @ 3250 RPM\",\"top_speed\":null,\"fuel_consumption\":\"5.47 litres/100 km (18.3 km/l or 43.00 mpg)\",\"emission\":\"126.9 CO2 g/km. (CO2 - Carbon dioxide emission) \",\"total_weight\":\"376.0 kg (828.9 pounds)\",\"total_height\":null,\"total_length\":\"2450 mm (96.5 inches)\",\"total_width\":null,\"ignition\":null,\"dry_weight\":\"361.0 kg (795.9 pounds)\"}}', '', '2026-03-06 12:03:20', 2022, 49, 70, 5, 80, 48, 'active'),
(58, 'hero', 'Splendor Plus', 'commuter', 98, 8.4, 8, 109, 785, 'Budget', 'https://upload.wikimedia.org/wikipedia/commons/6/60/Hero_Splendor_Plus_i3s_All_Black_Edition_and_IBS_2023_model_Non-_Xtec_PGM_FI_Model.png', '{\"api_ninjas\":{\"make\":\"Hero\",\"model\":\"Splendor Plus\",\"year\":\"2015\",\"type\":\"Sport\",\"displacement\":\"97.5 ccm (5.95 cubic inches)\",\"engine\":\"Single cylinder, four-stroke\",\"compression\":\"9.9:1\",\"bore_stroke\":null,\"valves_per_cylinder\":null,\"fuel_system\":\"Carburettor\",\"fuel_control\":\"Overhead Cams (OHC)\",\"lubrication\":null,\"cooling\":\"Air\",\"gearbox\":\"4-speed\",\"transmission\":\"Chain   (final drive)\",\"clutch\":\"Multi-plate, wet\",\"frame\":\"Tubular double cradle\",\"front_suspension\":\"Telescopic hydraulic shock absorbers\",\"front_wheel_travel\":null,\"rear_suspension\":\"Swing arm with 5-step adjustable hydraulic shock absorber\",\"rear_wheel_travel\":null,\"front_tire\":\"2.75-18 \",\"rear_tire\":\"2.75-18 \",\"front_brakes\":\"Expanding brake (drum brake)\",\"rear_brakes\":\"Expanding brake (drum brake)\",\"seat_height\":\"785 mm (30.9 inches) If adjustable, lowest setting.\",\"ground_clearance\":\"159 mm (6.3 inches)\",\"wheelbase\":\"1230 mm (48.4 inches)\",\"fuel_capacity\":\"11.00 litres (2.91 US gallons)\",\"starter\":\"Kick\",\"power\":\"8.4 HP (6.1  kW)) @ 8000 RPM\",\"torque\":\"8.0 Nm (0.8 kgf-m or 5.9 ft.lbs) @ 5000 RPM\",\"top_speed\":null,\"fuel_consumption\":null,\"emission\":null,\"total_weight\":\"119.0 kg (262.4 pounds)\",\"total_height\":\"1040 mm (40.9 inches)\",\"total_length\":\"2000 mm (78.7 inches)\",\"total_width\":\"720 mm (28.3 inches)\",\"ignition\":\"DC - Digital CDI\",\"dry_weight\":\"109.0 kg (240.3 pounds)\"}}', '', '2026-03-06 12:17:26', 2015, 12, 75, 97, 87, 91, 'active'),
(59, 'yamaha', 'R15 V4', 'Sport', 155, 18.1, 14.2, 142, 815, 'Budget', 'https://upload.wikimedia.org/wikipedia/commons/6/6e/Yamaha_R15_v4_bike.jpg', '{\"api_ninjas\":{\"make\":\"Yamaha\",\"model\":\"R15 V4\",\"year\":\"2022\",\"type\":\"Sport\",\"displacement\":\"155.0 ccm (9.46 cubic inches)\",\"engine\":\"Single cylinder, four-stroke\",\"compression\":\"11.6:1\",\"bore_stroke\":\"58.0 x 58.7 mm (2.3 x 2.3 inches)\",\"valves_per_cylinder\":\"4\",\"fuel_system\":\"Injection\",\"fuel_control\":\"Single Overhead Cams (SOHC)\",\"lubrication\":\"Wet sump\",\"cooling\":\"Liquid\",\"gearbox\":\"6-speed\",\"transmission\":\"Chain   (final drive)\",\"clutch\":\"Wet, multiple-disc coil spring assist and slipper clutch\",\"frame\":\"Steel deltabox, aluminum swingarm\",\"front_suspension\":\"Upside-down telescopic fork, 37  mm\",\"front_wheel_travel\":\"130 mm (5.1 inches)\",\"rear_suspension\":\"Linked-Type Monocross \",\"rear_wheel_travel\":\"114 mm (4.5 inches)\",\"front_tire\":\"100/80-17 \",\"rear_tire\":\"140/70-17 \",\"front_brakes\":\"Single disc. ABS\",\"rear_brakes\":\"Single disc. ABS\",\"seat_height\":\"815 mm (32.1 inches) If adjustable, lowest setting.\",\"ground_clearance\":\"170 mm (6.7 inches)\",\"wheelbase\":\"1325 mm (52.2 inches)\",\"fuel_capacity\":\"11.00 litres (2.91 US gallons)\",\"starter\":\"Electric\",\"power\":\"18.1 HP (13.2  kW)) @ 10000 RPM\",\"torque\":\"14.2 Nm (1.4 kgf-m or 10.5 ft.lbs) @ 7500 RPM\",\"top_speed\":null,\"fuel_consumption\":\"2.10 litres/100 km (47.6 km/l or 112.01 mpg)\",\"emission\":\"48.7 CO2 g/km. (CO2 - Carbon dioxide emission) \",\"total_weight\":\"142.0 kg (313.1 pounds)\",\"total_height\":\"1135 mm (44.7 inches)\",\"total_length\":\"1990 mm (78.3 inches)\",\"total_width\":\"725 mm (28.5 inches)\",\"ignition\":\"TCI\",\"dry_weight\":null}}', '', '2026-03-06 15:32:55', 2022, 17, 49, 81, 82, 35, 'active'),
(76, 'indian', 'Challenger', 'Custom / cruiser', 1768, 122, 173.6, 361, 672, 'Premium', 'https://krazyhorse.co.uk/cdn/shop/files/indian-challenger-dark-horse-25-sunset-black-smoke-left-profile_ca2865ee-f57b-4ed5-a419-9e755d99c23d_2000x.jpg?v=1738335740', '{\"api_ninjas\":{\"make\":\"Indian\",\"model\":\"Challenger\",\"year\":\"2022\",\"type\":\"Custom / cruiser\",\"displacement\":\"1768.0 ccm (107.88 cubic inches)\",\"engine\":\"V2, four-stroke\",\"compression\":\"11.0:1\",\"bore_stroke\":\"108.0 x 96.5 mm (4.3 x 3.8 inches)\",\"valves_per_cylinder\":null,\"fuel_system\":\"Injection. Closed loop fuel Injection, 52mm dual bore\",\"fuel_control\":null,\"lubrication\":null,\"cooling\":\"Liquid\",\"gearbox\":\"6-speed\",\"transmission\":\"Belt   (final drive)\",\"clutch\":\"Wet, Multi-Plate, Assist\",\"frame\":null,\"front_suspension\":\"Inverted Telescopic Cartridge Fork\",\"front_wheel_travel\":\"130 mm (5.1 inches)\",\"rear_suspension\":\"Fox Single Shock with hydraulic adjustment\",\"rear_wheel_travel\":\"114 mm (4.5 inches)\",\"front_tire\":\"130/60-B19 \",\"rear_tire\":\"180/60-R16 \",\"front_brakes\":\"Double disc. ABS. Floating discs. 4 piston caliper.\",\"rear_brakes\":\"Single disc. ABS. Floating disc. 2-piston caliper.\",\"seat_height\":\"672 mm (26.5 inches) If adjustable, lowest setting.\",\"ground_clearance\":\"137 mm (5.4 inches)\",\"wheelbase\":\"1668 mm (65.7 inches)\",\"fuel_capacity\":\"22.70 litres (6.00 US gallons)\",\"starter\":\"Electric\",\"power\":\"122.0 HP (89.1  kW))\",\"torque\":\"173.6 Nm (17.7 kgf-m or 128.0 ft.lbs) @ 3800 RPM\",\"top_speed\":null,\"fuel_consumption\":null,\"emission\":null,\"total_weight\":\"377.0 kg (831.1 pounds)\",\"total_height\":\"1346 mm (53.0 inches)\",\"total_length\":\"2500 mm (98.4 inches)\",\"total_width\":\"990 mm (39.0 inches)\",\"ignition\":null,\"dry_weight\":\"361.0 kg (795.9 pounds)\"}}', '', '2026-03-08 14:43:23', 2022, 62, 63, 11, 82, 50, 'active');

-- --------------------------------------------------------

--
-- Table structure for table `bike_images`
--

CREATE TABLE `bike_images` (
  `id` int(11) NOT NULL,
  `bike_id` int(11) NOT NULL,
  `image_url` text NOT NULL,
  `image_type` varchar(50) DEFAULT NULL,
  `source` enum('api_cached') NOT NULL DEFAULT 'api_cached',
  `created_at` datetime DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `bike_images`
--

INSERT INTO `bike_images` (`id`, `bike_id`, `image_url`, `image_type`, `source`, `created_at`) VALUES
(4, 2, 'https://upload.wikimedia.org/wikipedia/commons/3/3c/2020_Ducati_Panigale_V4_Superleggera.jpg', 'main', '', '2026-02-06 00:18:25'),
(5, 2, 'https://upload.wikimedia.org/wikipedia/commons/5/5d/Ducati-Panigale-V4-clarkintlspeedwayph-californiasuperbike-trackday-7285-2025.jpg', 'gallery', '', '2026-02-06 00:18:25'),
(6, 2, 'https://upload.wikimedia.org/wikipedia/commons/4/40/Ducati_Panigale_V4S_2025.jpg', 'gallery', '', '2026-02-06 00:18:25'),
(10, 4, 'https://upload.wikimedia.org/wikipedia/commons/b/b6/2015_Yamaha_YZF-R1M.JPG', 'main', '', '2026-02-06 00:25:27'),
(11, 4, 'https://upload.wikimedia.org/wikipedia/commons/f/f2/2015_Yamaha_YZF-R1_%28OWV5%29_01.JPG', 'gallery', '', '2026-02-06 00:25:27'),
(12, 4, 'https://upload.wikimedia.org/wikipedia/commons/8/89/Telaietto_posteriore_febur_Yamaha_R1_R1M_2015.JPG', 'gallery', '', '2026-02-06 00:25:27'),
(13, 5, 'https://upload.wikimedia.org/wikipedia/commons/5/5e/Hayabusa.jpg', 'main', '', '2026-02-06 00:34:08'),
(14, 5, 'https://upload.wikimedia.org/wikipedia/commons/d/de/SUZUKI_Hayabusa_2007TMS.jpg', 'gallery', '', '2026-02-06 00:34:08'),
(15, 5, 'https://upload.wikimedia.org/wikipedia/commons/3/3b/Suzuki_Hayabusa-Lazareth.jpg', 'gallery', '', '2026-02-06 00:34:08'),
(16, 6, 'https://upload.wikimedia.org/wikipedia/commons/8/83/2015_KTM_RC390_right.JPG', 'main', '', '2026-02-06 00:36:01'),
(17, 6, 'https://upload.wikimedia.org/wikipedia/commons/c/c8/A_Red_Bull_motorcycle.jpg', 'gallery', '', '2026-02-06 00:36:01'),
(18, 6, 'https://upload.wikimedia.org/wikipedia/commons/e/ea/A_Red_Bull_motorcycle_in_the_street_on_tsing_yi.jpg', 'gallery', '', '2026-02-06 00:36:01'),
(19, 7, 'https://upload.wikimedia.org/wikipedia/commons/3/35/KawasakiZ900.jpg', 'main', '', '2026-02-06 00:37:20'),
(20, 7, 'https://upload.wikimedia.org/wikipedia/commons/b/bc/Kawasaki_Z900%2C_green.jpg', 'gallery', '', '2026-02-06 00:37:20'),
(21, 7, 'https://upload.wikimedia.org/wikipedia/commons/4/44/Kawasaki_Z900_FrontView-resized.jpg', 'gallery', '', '2026-02-06 00:37:20'),
(25, 9, 'https://upload.wikimedia.org/wikipedia/commons/5/5f/A_BMW_S_1000_RR_motorcycle_in_Athens_on_10-26-2023.jpg', 'main', '', '2026-02-06 01:33:19'),
(26, 9, 'https://upload.wikimedia.org/wikipedia/commons/7/79/BMW_S1000_RR_Studio.JPG', 'gallery', '', '2026-02-06 01:33:19'),
(27, 9, 'https://upload.wikimedia.org/wikipedia/commons/a/a2/BMW_S_1000_RR%2C_left_view.jpg', 'gallery', '', '2026-02-06 01:33:19'),
(28, 10, 'https://upload.wikimedia.org/wikipedia/commons/8/80/1989_Yamaha_RX_100.jpg', 'main', '', '2026-02-06 01:54:09'),
(29, 10, 'https://upload.wikimedia.org/wikipedia/commons/0/01/My_Yamaha_RX_100.jpg', 'gallery', '', '2026-02-06 01:54:09'),
(30, 10, 'https://upload.wikimedia.org/wikipedia/commons/6/68/Painted_Yamaha_RX100.jpg', 'gallery', '', '2026-02-06 01:54:09'),
(31, 11, 'https://upload.wikimedia.org/wikipedia/commons/b/b4/2021_Suzuki_Gixxer_SF_250_%2820211117%29.jpg', 'main', '', '2026-02-07 12:13:17'),
(32, 11, 'https://upload.wikimedia.org/wikipedia/commons/c/c3/2021_Suzuki_Gixxer_SF_250_100th_Anniversary_MotoGP_Edition_01.jpg', 'gallery', '', '2026-02-07 12:13:17'),
(33, 11, 'https://upload.wikimedia.org/wikipedia/commons/7/78/2021_Suzuki_Gixxer_SF_250_100th_Anniversary_MotoGP_Edition_02.jpg', 'gallery', '', '2026-02-07 12:13:17'),
(34, 12, 'https://upload.wikimedia.org/wikipedia/commons/7/76/2019_Kawasaki_Ninja_H2R_FOS19.jpg', 'main', '', '2026-02-07 12:52:52'),
(35, 12, 'https://upload.wikimedia.org/wikipedia/commons/d/d2/Kawasaki_Ninja_H2R_%2819786257286%29.jpg', 'gallery', '', '2026-02-07 12:52:52'),
(36, 12, 'https://upload.wikimedia.org/wikipedia/commons/7/7f/Kawasaki_Ninja_H2R_750_%2819625792829%29.jpg', 'gallery', '', '2026-02-07 12:52:52'),
(37, 13, 'https://upload.wikimedia.org/wikipedia/commons/4/44/Kawasaki_Z800.jpg', 'main', '', '2026-02-07 13:37:20'),
(38, 13, 'https://upload.wikimedia.org/wikipedia/commons/3/31/Kawasaki_Z800_%281%29.jpg', 'gallery', '', '2026-02-07 13:37:20'),
(39, 13, 'https://upload.wikimedia.org/wikipedia/commons/8/8a/Kawasaki_Z800_12.jpg', 'gallery', '', '2026-02-07 13:37:20'),
(40, 14, 'https://upload.wikimedia.org/wikipedia/commons/4/4f/Kawasaki_Ninja_H2.jpg', 'main', '', '2026-02-07 13:48:03'),
(41, 14, 'https://upload.wikimedia.org/wikipedia/commons/6/6c/Kawasaki_Ninja_H2_%281%29.jpg', 'gallery', '', '2026-02-07 13:48:03'),
(42, 14, 'https://upload.wikimedia.org/wikipedia/commons/d/dd/Kawasaki_Ninja_H2_2023-12-9.jpg', 'gallery', '', '2026-02-07 13:48:03'),
(43, 15, 'https://upload.wikimedia.org/wikipedia/commons/c/c2/2013_Kawasaki_Ninja_300_Seattle_Motorcycle_Show.jpg', 'main', '', '2026-02-07 14:03:11'),
(44, 15, 'https://upload.wikimedia.org/wikipedia/commons/f/f3/2013_Kawasaki_Ninja_300_front_Seattle_Motorcycle_Show.jpg', 'gallery', '', '2026-02-07 14:03:11'),
(45, 15, 'https://upload.wikimedia.org/wikipedia/commons/3/36/2014_Kawasaki_Ninja_300.jpg', 'gallery', '', '2026-02-07 14:03:11'),
(46, 16, 'https://www.bikespecs.org/img/aHR0cHM6Ly93d3cubW90b3JjeWNsZXNwZWNzLmNvLnphL0dhbGxlcnkvYmFqYWolMjBwdWxzYXIlMjAxNTAlMjAwNSUyMDAyLmpwZw==', 'main', '', '2026-02-07 14:04:10'),
(47, 16, 'https://www.bikespecs.org/img/aHR0cHM6Ly93d3cubW90b3JjeWNsZXNwZWNzLmNvLnphL0dhbGxlcnkvYmFqYWolMjBwdWxzYXIlMjAxNTAlMjAwNSUyMDAzLmpwZw==', 'gallery', '', '2026-02-07 14:04:10'),
(48, 16, 'https://www.bikespecs.org/img/aHR0cHM6Ly93d3cubW90b3JjeWNsZXNwZWNzLmNvLnphL0dhbGxlcnkvYmFqYWolMjBwdWxzYXIlMjAxNTAlMjAwNSUyMDAxLmpwZw==', 'gallery', '', '2026-02-07 14:04:10'),
(49, 17, 'https://upload.wikimedia.org/wikipedia/commons/b/b9/Bajaj_CT_100_bike.jpg', 'main', '', '2026-02-07 14:05:33'),
(50, 17, 'https://upload.wikimedia.org/wikipedia/commons/4/48/Ct100_side.jpg', 'gallery', '', '2026-02-07 14:05:33'),
(54, 19, 'https://upload.wikimedia.org/wikipedia/commons/9/9c/Kawasaki_Ninja_650_001.jpg', 'main', '', '2026-02-07 14:31:51'),
(55, 19, 'https://upload.wikimedia.org/wikipedia/commons/a/a0/Kawasaki_Ninja_650_002.jpg', 'gallery', '', '2026-02-07 14:31:51'),
(56, 19, 'https://upload.wikimedia.org/wikipedia/commons/f/fe/Kawasaki_Ninja_650_003.jpg', 'gallery', '', '2026-02-07 14:31:51'),
(63, 22, 'https://upload.wikimedia.org/wikipedia/commons/f/f8/2022_Yamaha_MT-09.jpg', 'main', '', '2026-02-07 20:55:42'),
(64, 22, 'https://upload.wikimedia.org/wikipedia/commons/7/7f/2024_Yamaha_MT-09_Y-AMT.jpg', 'gallery', '', '2026-02-07 20:55:42'),
(65, 22, 'https://upload.wikimedia.org/wikipedia/commons/1/1e/YAMAHA_MT-09.JPG', 'gallery', '', '2026-02-07 20:55:42'),
(66, 23, 'https://upload.wikimedia.org/wikipedia/commons/a/a5/Ducati_Monster_1200s.jpg', 'main', '', '2026-02-07 20:58:19'),
(67, 23, 'https://upload.wikimedia.org/wikipedia/commons/1/18/Ducati_Monster_620_Dark.jpg', 'gallery', '', '2026-02-07 20:58:19'),
(68, 23, 'https://upload.wikimedia.org/wikipedia/commons/8/83/Ducati_Monster_797.jpg', 'gallery', '', '2026-02-07 20:58:19'),
(69, 24, 'https://upload.wikimedia.org/wikipedia/commons/9/9c/2021_Black_Yamaha_MT-07.jpg', 'main', '', '2026-02-07 21:00:37'),
(75, 26, 'https://www.bikespecs.org/img/aHR0cHM6Ly93d3cubW90b3JjeWNsZXNwZWNzLmNvLnphL0dhbGxlcnkvYmFqYWolMjBwdWxzYXIlMjAyMjAlMjAxMCUyMDAxLmpwZw==', 'main', '', '2026-02-07 21:16:29'),
(76, 26, 'https://www.bikespecs.org/img/aHR0cHM6Ly93d3cubW90b3JjeWNsZXNwZWNzLmNvLnphL0dhbGxlcnkvYmFqYWolMjBwdWxzYXIlMjAyMjAlMjAxMCUyMDAyLmpwZw==', 'gallery', '', '2026-02-07 21:16:29'),
(77, 26, 'https://www.bikespecs.org/img/aHR0cHM6Ly93d3cubW90b3JjeWNsZXNwZWNzLmNvLnphL0dhbGxlcnkvYmFqYWolMjBwdWxzYXIlMjAyMjAlMjAxMCUyMDAzLmpwZw==', 'gallery', '', '2026-02-07 21:16:29'),
(81, 28, 'https://upload.wikimedia.org/wikipedia/commons/7/7e/Ducati_955_Panigale_V2_%28IMG_9845%29.jpg', 'main', '', '2026-02-07 21:22:06'),
(82, 28, 'https://upload.wikimedia.org/wikipedia/commons/5/53/Ducati_955_Panigale_V2_%28IMG_9851%29.jpg', 'gallery', '', '2026-02-07 21:22:06'),
(83, 28, 'https://upload.wikimedia.org/wikipedia/commons/8/88/Ducati_Panigale_V2_Bayliss_1st_Championship_20th_Anniversary_%281%29.jpg', 'gallery', '', '2026-02-07 21:22:06'),
(84, 29, 'https://upload.wikimedia.org/wikipedia/commons/b/bd/2007TMS_kawasaki_Z1000.jpg', 'main', '', '2026-02-07 21:24:20'),
(85, 29, 'https://upload.wikimedia.org/wikipedia/commons/5/59/2007_Kawasaki_Z1000.jpg', 'gallery', '', '2026-02-07 21:24:20'),
(86, 29, 'https://upload.wikimedia.org/wikipedia/commons/0/04/Kawasaki-Z1000_2007TMCS.jpg', 'gallery', '', '2026-02-07 21:24:20'),
(87, 30, 'https://upload.wikimedia.org/wikipedia/commons/6/63/2011_Yamaha_Byson_150_%2820201105%29.jpg', 'main', '', '2026-02-07 21:27:49'),
(88, 30, 'https://upload.wikimedia.org/wikipedia/commons/8/82/2014_Yamaha_Byson_150_%2820220501%29.jpg', 'gallery', '', '2026-02-07 21:27:49'),
(89, 30, 'https://upload.wikimedia.org/wikipedia/commons/6/6b/Fz_bike.jpg', 'gallery', '', '2026-02-07 21:27:49'),
(90, 31, 'https://upload.wikimedia.org/wikipedia/commons/2/29/Honda_Activa_Rental-_Goa_1.jpg', 'main', '', '2026-02-07 21:28:46'),
(91, 31, 'https://upload.wikimedia.org/wikipedia/commons/9/9f/Honda_Activa_Rental-_Goa_2.jpg', 'gallery', '', '2026-02-07 21:28:46'),
(92, 31, 'https://upload.wikimedia.org/wikipedia/commons/8/82/Honda_Activa_Rental-_Goa_3.jpg', 'gallery', '', '2026-02-07 21:28:46'),
(108, 38, 'https://upload.wikimedia.org/wikipedia/commons/d/d0/Kawasaki_Z650S_2026.jpg', 'main', '', '2026-02-14 12:52:46'),
(109, 38, 'https://upload.wikimedia.org/wikipedia/commons/d/de/Kawasaki_Z650_S_2026.jpg', 'gallery', '', '2026-02-14 12:52:46'),
(110, 38, 'https://upload.wikimedia.org/wikipedia/commons/1/10/Kawasaki_Z650_FOUR_-_Yamaha_TX750_%2823110313245%29.jpg', 'gallery', '', '2026-02-14 12:52:46'),
(111, 39, 'https://upload.wikimedia.org/wikipedia/commons/a/af/2017_Bonneville_T120_CSNDCC1.jpg', 'main', '', '2026-02-14 12:53:55'),
(112, 39, 'https://upload.wikimedia.org/wikipedia/commons/4/47/Triumph_Bonneville_T120_-_7742388010.jpg', 'gallery', '', '2026-02-14 12:53:55'),
(113, 39, 'https://upload.wikimedia.org/wikipedia/commons/b/bc/Triumph_Bonneville_T120_%281970%29_-_8962027645.jpg', 'gallery', '', '2026-02-14 12:53:55'),
(114, 40, 'https://upload.wikimedia.org/wikipedia/commons/4/4b/IM%40S_Million_Live%21_itansha_LGQ-2889_right_side_20240811a.jpg', 'main', '', '2026-02-14 12:55:29'),
(115, 40, 'https://upload.wikimedia.org/wikipedia/commons/a/a1/IM%40S_Million_Live%21_itansha_LGQ-2889_left_side_20240811a.jpg', 'gallery', '', '2026-02-14 12:55:29'),
(116, 40, 'https://upload.wikimedia.org/wikipedia/commons/5/53/IM%40S_Million_Live%21_itansha_LGQ-2889_left_side_20240811b.jpg', 'gallery', '', '2026-02-14 12:55:29'),
(117, 41, 'https://upload.wikimedia.org/wikipedia/commons/6/68/Moscow%2C_Honda_CBR650R_July_2025_01.jpg', 'main', '', '2026-02-14 12:56:00'),
(118, 41, 'https://upload.wikimedia.org/wikipedia/commons/4/4b/IM%40S_Million_Live%21_itansha_LGQ-2889_right_side_20240811a.jpg', 'gallery', '', '2026-02-14 12:56:00'),
(119, 41, 'https://upload.wikimedia.org/wikipedia/commons/a/a1/IM%40S_Million_Live%21_itansha_LGQ-2889_left_side_20240811a.jpg', 'gallery', '', '2026-02-14 12:56:00'),
(120, 42, 'https://www.bikespecs.org/img/aHR0cHM6Ly93d3cubW90b3JjeWNsZXNwZWNzLmNvLnphL0dhbGxlcnkvYmFqYWolMjBwdWxzYXIlMjAxODAlMjAwNSUyMDAxLmpwZw==', 'main', '', '2026-02-16 21:32:13'),
(121, 42, 'https://www.bikespecs.org/img/aHR0cHM6Ly93d3cubW90b3JjeWNsZXNwZWNzLmNvLnphL0dhbGxlcnkvYmFqYWolMjBwdWxzYXIlMjAxODAlMjAwNSUyMDAyLmpwZw==', 'gallery', '', '2026-02-16 21:32:13'),
(122, 42, 'https://www.bikespecs.org/img/aHR0cHM6Ly93d3cubW90b3JjeWNsZXNwZWNzLmNvLnphL0dhbGxlcnkvYmFqYWolMjBwdWxzYXIlMjAxODAlMjAwNSUyMDAzLmpwZw==', 'gallery', '', '2026-02-16 21:32:13'),
(123, 43, 'https://upload.wikimedia.org/wikipedia/commons/5/56/Kawasaki_Ninja_400_%2854940590053%29.jpg', 'main', '', '2026-02-16 21:48:00'),
(124, 43, 'https://upload.wikimedia.org/wikipedia/commons/6/6f/Kawasaki_Ninja_400_KRT_Edition_%28facelift_model%29_right_side.jpg', 'gallery', '', '2026-02-16 21:48:00'),
(125, 43, 'https://upload.wikimedia.org/wikipedia/commons/e/e1/Kawasaki_Ninja_400_KRT_SlantView_resized.jpg', 'gallery', '', '2026-02-16 21:48:00'),
(126, 44, 'https://upload.wikimedia.org/wikipedia/commons/5/53/Hero_Xpulse_200_4V_Pro.jpg', 'main', '', '2026-03-05 21:27:37'),
(127, 44, 'https://upload.wikimedia.org/wikipedia/commons/e/e5/Modified_Xpulse_200V.jpg', 'gallery', '', '2026-03-05 21:27:37'),
(128, 44, 'https://upload.wikimedia.org/wikipedia/commons/b/bf/Hero_Xpulse_200_2021_model.png', 'gallery', '', '2026-03-05 21:27:37'),
(129, 45, 'https://upload.wikimedia.org/wikipedia/commons/4/47/KTM-390-ADVENTURE-%C2%B7-2022-%C2%B7-EURO5.png', 'main', '', '2026-03-06 11:29:56'),
(130, 47, 'https://upload.wikimedia.org/wikipedia/commons/7/7e/BMW_G310_GS_2023-08_rear.jpg', 'main', '', '2026-03-06 11:43:15'),
(131, 47, 'https://upload.wikimedia.org/wikipedia/commons/d/d3/BMW_G310_GS_2023-08.jpg', 'gallery', '', '2026-03-06 11:43:15'),
(132, 47, 'https://upload.wikimedia.org/wikipedia/commons/6/6f/BMW_G_motorcycle_in_Athens_on_June_25%2C_2023.jpg', 'gallery', '', '2026-03-06 11:43:15'),
(133, 48, 'https://upload.wikimedia.org/wikipedia/commons/1/1a/2024_Honda_CRF300_RALLY.jpg', 'main', '', '2026-03-06 11:45:35'),
(134, 48, 'https://upload.wikimedia.org/wikipedia/commons/1/15/2020_Honda_CRF300_RALLY.jpg', 'gallery', '', '2026-03-06 11:45:35'),
(135, 49, 'https://upload.wikimedia.org/wikipedia/commons/2/2f/BMW_F850GS_Adventure_Rallye_2020.jpg', 'main', '', '2026-03-06 11:47:11'),
(136, 49, 'https://upload.wikimedia.org/wikipedia/commons/e/eb/Feldj%C3%A4ger_der_Bundeswehr_-_Enduro_BMW_F_850_GS_-_2019_-_Blaulichtmeile_Stadtfest_Dresden_2024.jpg', 'gallery', '', '2026-03-06 11:47:11'),
(137, 49, 'https://upload.wikimedia.org/wikipedia/commons/c/c4/BMW_G_850_GS_der_Bundeswehr.jpg', 'gallery', '', '2026-03-06 11:47:11'),
(138, 50, 'https://upload.wikimedia.org/wikipedia/commons/c/c4/BMW_F900_GS_2024-06-v2_%28bearb_Sp%29.jpg', 'main', '', '2026-03-06 11:48:50'),
(139, 50, 'https://upload.wikimedia.org/wikipedia/commons/3/31/BMW_F900_GS_left_2024-06.jpg', 'gallery', '', '2026-03-06 11:48:50'),
(140, 50, 'https://upload.wikimedia.org/wikipedia/commons/8/82/BRFK_140%2C_vier_BMW_R_1200_RT%2C_2021_Buda_Burgviertel.jpg', 'gallery', '', '2026-03-06 11:48:50'),
(141, 51, 'https://upload.wikimedia.org/wikipedia/commons/7/7e/Triumph_Tiger_900.jpg', 'main', '', '2026-03-06 11:49:56'),
(142, 51, 'https://upload.wikimedia.org/wikipedia/commons/a/a3/Triumph_Tiger_900_GT_Pro_%281%29.jpg', 'gallery', '', '2026-03-06 11:49:56'),
(143, 51, 'https://upload.wikimedia.org/wikipedia/commons/a/a9/2021_Triumph_Tiger_900_GT_LRH.jpg', 'gallery', '', '2026-03-06 11:49:56'),
(150, 54, 'https://upload.wikimedia.org/wikipedia/commons/3/31/Honda_Gold_Wing_Tel_Aviv_Jaffa.jpg', 'main', '', '2026-03-06 11:57:46'),
(151, 54, 'https://upload.wikimedia.org/wikipedia/commons/d/d9/Honda_GL1500_Gold_Wing.jpg', 'gallery', '', '2026-03-06 11:57:46'),
(152, 54, 'https://upload.wikimedia.org/wikipedia/commons/1/13/Suliszewo_-_motocykli%C5%9Bci_-_Honda_Gold_Wings_-_22.04.2023_13-35-14.jpg', 'gallery', '', '2026-03-06 11:57:46'),
(153, 55, 'https://upload.wikimedia.org/wikipedia/commons/3/37/Kawasaki_Ninja_1000SX_Plaza_Edition_%2724.jpg', 'main', '', '2026-03-06 11:58:20'),
(154, 55, 'https://upload.wikimedia.org/wikipedia/commons/f/f2/Kawasaki_Ninja_1000SX_2020_SlantView.jpg', 'gallery', '', '2026-03-06 11:58:20'),
(155, 56, 'https://upload.wikimedia.org/wikipedia/commons/8/8a/Harley-Davidson_Street_Glide_parked_at_Hogs_for_Hospice%2C_Leamington%2C_Ontario%2C_2025-08-02_06.jpg', 'main', '', '2026-03-06 12:03:23'),
(156, 56, 'https://upload.wikimedia.org/wikipedia/commons/8/83/Harley-Davidson_Street_Glide_parked_at_Hogs_for_Hospice%2C_Leamington%2C_Ontario%2C_2025-08-02_05.jpg', 'gallery', '', '2026-03-06 12:03:23'),
(157, 56, 'https://upload.wikimedia.org/wikipedia/commons/f/f1/Harley-Davidson_Street_Glide_parked_at_Hogs_for_Hospice%2C_Leamington%2C_Ontario%2C_2025-08-02_04.jpg', 'gallery', '', '2026-03-06 12:03:23'),
(161, 58, 'https://upload.wikimedia.org/wikipedia/commons/6/60/Hero_Splendor_Plus_i3s_All_Black_Edition_and_IBS_2023_model_Non-_Xtec_PGM_FI_Model.png', 'main', '', '2026-03-06 12:17:29'),
(162, 58, 'https://upload.wikimedia.org/wikipedia/commons/a/a0/Hero_Splendor_Plus_i3s_and_IBS_2018.jpg', 'gallery', '', '2026-03-06 12:17:29'),
(163, 58, 'https://upload.wikimedia.org/wikipedia/commons/0/03/Hero_Honda_Splendor_Plus_2007.jpg', 'gallery', '', '2026-03-06 12:17:29'),
(164, 59, 'https://upload.wikimedia.org/wikipedia/commons/6/6e/Yamaha_R15_v4_bike.jpg', 'main', '', '2026-03-06 15:33:00'),
(173, 25, 'https://www.rushlane.com/wp-content/uploads/2025/04/2025-yamaha-mt-15-launched-in-malaysia.jpg', 'main', '', '2026-03-08 11:23:14'),
(174, 25, 'https://www.rushlane.com/wp-content/uploads/2025/04/2025-yamaha-mt-15-launched-in-malaysia.jpg', 'gallery', '', '2026-03-08 11:23:14'),
(175, 25, 'http://images.topgear.com.ph/topgear/images/2019/02/14/ice-fluo-main-1550130677.jpg', 'gallery', '', '2026-03-08 11:23:14'),
(197, 76, 'https://krazyhorse.co.uk/cdn/shop/files/indian-challenger-dark-horse-25-sunset-black-smoke-left-profile_ca2865ee-f57b-4ed5-a419-9e755d99c23d_2000x.jpg?v=1738335740', 'main', '', '2026-03-08 14:43:25'),
(198, 76, 'https://krazyhorse.co.uk/cdn/shop/files/indian-challenger-dark-horse-25-sunset-black-smoke-front-right-3q_5127a859-e3ec-4792-8990-8256db346885_2000x.jpg?v=1738335740', 'gallery', '', '2026-03-08 14:43:25'),
(199, 76, 'https://krazyhorse.co.uk/cdn/shop/files/indian-challenger-dark-horse-25-sunset-black-smoke-right-profile_62e5d992-4da9-44f2-90f1-89a19e1d7df0_2000x.jpg?v=1738335740', 'gallery', '', '2026-03-08 14:43:25'),
(203, 53, 'https://cdn-0.totalmotorcycle.com/wp-content/uploads/2024/11/2025-Honda-CRF300L4.jpg', 'main', '', '2026-03-22 23:10:18'),
(204, 53, 'https://images5.1000ps.net/images_bikekat/2025/2-Honda/10384-CRF300L/003-638665813568753295-honda-crf300l.jpg', 'gallery', '', '2026-03-22 23:10:18'),
(205, 53, 'https://powersports.honda.com/motorcycle/dual-sport/-/media/products/family/crf300l/family-gallery/media-thumb/2025/2025-crf300l-gallery-06-1174x774.jpg', 'gallery', '', '2026-03-22 23:10:18'),
(206, 52, 'https://tse3.mm.bing.net/th/id/OIP.b5lvB2hoauct_EeC9UO7TAHaE8?pid=Api&P=0&h=180', 'main', '', '2026-03-22 23:11:21'),
(207, 52, 'https://upload.wikimedia.org/wikipedia/commons/c/ca/Africa-twin_14_39_03_675000.jpeg', 'gallery', '', '2026-03-22 23:11:21'),
(208, 52, 'https://upload.wikimedia.org/wikipedia/commons/2/20/Africa-twin_14_38_58_754000.jpeg', 'gallery', '', '2026-03-22 23:11:21'),
(209, 35, 'https://upload.wikimedia.org/wikipedia/commons/c/c8/Clarkinternationalspeedway-californiasuperbikeschool-trackday-2025-ducatimultistrada-7583.jpg', 'main', '', '2026-03-23 03:06:56'),
(210, 35, 'https://upload.wikimedia.org/wikipedia/commons/8/80/Ducati_Multistrada_V4_RS.jpg', 'gallery', '', '2026-03-23 03:06:56'),
(211, 35, 'https://upload.wikimedia.org/wikipedia/commons/d/d8/Ducati_Multistrada_V4_Rally_2026.jpg', 'gallery', '', '2026-03-23 03:06:56'),
(212, 36, 'https://www.mcnews.com.au/wp-content/uploads/2015/11/Ducati-959-Panigale-21-06-959-PANIGALE-Non-Euro4.jpg', 'main', '', '2026-03-23 07:51:05'),
(213, 36, 'https://www.motorcyclespecs.co.za/Gallery_A-L_16/Ducati-959-Panigale-18_06.jpg', 'gallery', '', '2026-03-23 07:51:05'),
(214, 36, 'https://upload.wikimedia.org/wikipedia/commons/3/36/Ducati_959_Panigale_%2827768163304%29.jpg', 'gallery', '', '2026-03-23 07:51:05'),
(215, 27, 'https://tse1.mm.bing.net/th/id/OIP.PPL8tYE2z0bYjAA9O8fPvwHaE8?pid=Api&P=0&h=180', 'main', '', '2026-03-23 07:54:13'),
(216, 27, 'https://cdni.autocarindia.com/ExtraImages/20181203124353_2019-Bajaj-Platina-110-1.jpg', 'gallery', '', '2026-03-23 07:54:13'),
(217, 27, 'https://www.bikespecs.org/img/aHR0cHM6Ly93d3cubW90b3JjeWNsZXNwZWNzLmNvLnphL0dhbGxlcnkvYmFqYWolMjBwbGF0aW5hJTIwMTAwJTIwMTQlMjAwMy5qcGc=', 'gallery', '', '2026-03-23 07:54:13'),
(218, 8, 'https://tse1.mm.bing.net/th/id/OIP.qogazpucbIAtr_L2m8QMfwHaE7?pid=Api&P=0&h=180', 'main', '', '2026-03-23 07:57:39'),
(219, 8, 'http://loversofmoto.com/wp-content/uploads/parser/BMW-S-1000-R-2019-2.jpg', 'gallery', '', '2026-03-23 07:57:39'),
(220, 8, 'https://upload.wikimedia.org/wikipedia/commons/thumb/e/e3/BMW_S_1000_R_noBG.jpg/640px-BMW_S_1000_R_noBG.jpg', 'gallery', '', '2026-03-23 07:57:39');

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `token` varchar(255) NOT NULL,
  `expires_at` datetime NOT NULL,
  `used` tinyint(4) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `password_resets`
--

INSERT INTO `password_resets` (`id`, `user_id`, `token`, `expires_at`, `used`) VALUES
(5, 5, 'd9678f03af4890d5502d27f5e6b0f8b49d6f240c6c2d77f5368e7306ce88f910', '2026-04-29 15:24:31', 0);

-- --------------------------------------------------------

--
-- Table structure for table `quiz_results`
--

CREATE TABLE `quiz_results` (
  `id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `personality` varchar(100) DEFAULT NULL,
  `vehicle_name` varchar(100) DEFAULT NULL,
  `match_score` int(11) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `quiz_results`
--

INSERT INTO `quiz_results` (`id`, `user_id`, `personality`, `vehicle_name`, `match_score`, `created_at`) VALUES
(1, 5, '{\"performance\":52,\"comfort\":78.5,\"efficiency\":86,\"reliability\":69,\"practicality\":62}', 'indian Challenger', 86, '2026-03-22 04:24:51'),
(2, 5, '{\"performance\":52,\"comfort\":78.5,\"efficiency\":86,\"reliability\":69,\"practicality\":62}', 'indian Challenger', 86, '2026-03-22 04:36:05'),
(3, 5, '{\"performance\":80.5,\"comfort\":69,\"efficiency\":46,\"reliability\":49,\"practicality\":60}', 'hero Splendor Plus', 68, '2026-03-22 04:36:49'),
(4, 5, '{\"performance\":70,\"comfort\":89,\"efficiency\":70,\"reliability\":49,\"practicality\":84}', 'yamaha R15 V4', 81, '2026-03-22 04:47:19'),
(5, 5, '{\"performance\":77.5,\"comfort\":64.5,\"efficiency\":42,\"reliability\":64,\"practicality\":74}', 'yamaha R15 V4', 83, '2026-03-22 04:48:05'),
(6, 5, '{\"performance\":52,\"comfort\":78.5,\"efficiency\":86,\"reliability\":69,\"practicality\":65}', 'Volvo XC90', 83, '2026-03-22 04:58:16'),
(7, 5, '{\"performance\":87.5,\"comfort\":55,\"efficiency\":46,\"reliability\":41,\"practicality\":60}', 'yamaha R15 V4', 80, '2026-03-22 05:09:58'),
(8, 5, '{\"performance\":70,\"comfort\":78.5,\"efficiency\":46,\"reliability\":58,\"practicality\":64}', 'indian Challenger', 95, '2026-03-22 17:54:49'),
(9, 5, '{\"performance\":52,\"comfort\":78.5,\"efficiency\":86,\"reliability\":90,\"practicality\":77}', 'hero Splendor Plus', 90, '2026-03-22 20:29:59'),
(10, 5, '{\"performance\":52,\"comfort\":78.5,\"efficiency\":86,\"reliability\":90,\"practicality\":77}', 'Ducati Panigale V4', 72, '2026-03-22 20:32:41'),
(11, 5, '{\"performance\":52,\"comfort\":78.5,\"efficiency\":86,\"reliability\":90,\"practicality\":77}', 'Ducati Panigale V4', 0, '2026-03-22 20:45:55'),
(12, 5, '{\"performance\":52,\"comfort\":78.5,\"efficiency\":86,\"reliability\":90,\"practicality\":80}', 'Ducati Panigale V4', 68, '2026-03-22 20:51:28'),
(13, 5, '{\"performance\":52,\"comfort\":78.5,\"efficiency\":86,\"reliability\":90,\"practicality\":77}', 'Ducati Panigale V4', 60, '2026-03-22 22:06:23'),
(14, 5, '{\"performance\":78.5,\"comfort\":55,\"efficiency\":46,\"reliability\":41,\"practicality\":60}', 'Ducati Panigale V4', 91, '2026-03-22 22:27:18'),
(15, 5, '{\"performance\":52,\"comfort\":78.5,\"efficiency\":86,\"reliability\":90,\"practicality\":80}', 'Ducati Panigale V4', 44, '2026-03-22 22:28:02'),
(16, 5, '{\"performance\":70,\"comfort\":64.5,\"efficiency\":70,\"reliability\":61,\"practicality\":68}', 'Ducati Panigale V4', 83, '2026-03-22 22:40:08'),
(17, 5, '{\"performance\":78.5,\"comfort\":46,\"efficiency\":34,\"reliability\":20,\"practicality\":36}', 'Ducati Panigale V4', 94, '2026-03-22 22:42:01'),
(18, 5, '{\"performance\":67,\"comfort\":84.5,\"efficiency\":66,\"reliability\":70,\"practicality\":84}', 'Ducati Panigale V4', 57, '2026-03-22 22:43:29'),
(19, 5, '{\"performance\":70,\"comfort\":64.5,\"efficiency\":70,\"reliability\":61,\"practicality\":68}', 'Ducati Panigale V4', 82, '2026-03-22 22:48:37'),
(20, 5, '{\"performance\":52,\"comfort\":89,\"efficiency\":50,\"reliability\":69,\"practicality\":84}', 'yamaha R15 V4', 58, '2026-03-22 22:52:30'),
(21, 5, '{\"performance\":71.5,\"comfort\":46,\"efficiency\":70,\"reliability\":55,\"practicality\":36}', 'yamaha R15 V4', 81, '2026-03-22 22:53:55'),
(22, 9, '{\"performance\":83.5,\"comfort\":64.5,\"efficiency\":74,\"reliability\":76,\"practicality\":68}', 'hero Splendor Plus', 75, '2026-04-22 12:17:41'),
(23, 9, '{\"performance\":88.1,\"comfort\":93.5,\"efficiency\":84,\"reliability\":41,\"practicality\":55.4}', 'hero Splendor Plus', 62, '2026-04-22 12:27:05'),
(24, 9, '{\"performance\":66.05,\"comfort\":58,\"efficiency\":72,\"reliability\":66,\"practicality\":63.699999999999996', 'hero Splendor Plus', 75, '2026-05-02 04:48:14'),
(25, 9, '{\"performance\":86,\"comfort\":59,\"efficiency\":50,\"reliability\":34,\"practicality\":63.099999999999994}', 'indian Challenger', 88, '2026-05-12 14:12:07'),
(26, 9, '{\"performance\":42.5,\"comfort\":71,\"efficiency\":90.25,\"reliability\":77.6,\"practicality\":58.9}', 'indian Challenger', 66, '2026-05-12 14:14:07'),
(27, 9, '{\"performance\":42.5,\"comfort\":59,\"efficiency\":90.25,\"reliability\":77.6,\"practicality\":70.9}', 'indian Challenger', 65, '2026-05-12 14:27:03'),
(28, 9, '{\"performance\":86,\"comfort\":59,\"efficiency\":50,\"reliability\":34,\"practicality\":63.099999999999994}', 'hero Splendor Plus', 57, '2026-05-12 14:28:02'),
(29, 9, '{\"performance\":42.5,\"comfort\":71,\"efficiency\":90.25,\"reliability\":77.6,\"practicality\":58.9}', 'hero Splendor Plus', 90, '2026-05-12 15:21:32');

-- --------------------------------------------------------

--
-- Table structure for table `results`
--

CREATE TABLE `results` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `item_id` int(11) NOT NULL,
  `item_type` enum('car','bike') NOT NULL,
  `compatibility_score` int(11) DEFAULT NULL,
  `regret_score` int(11) DEFAULT 0,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `reviews`
--

CREATE TABLE `reviews` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `vehicle_id` int(11) NOT NULL,
  `type` enum('car','bike') NOT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `content` text NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `reviews`
--

INSERT INTO `reviews` (`id`, `user_id`, `vehicle_id`, `type`, `parent_id`, `content`, `created_at`) VALUES
(1, 1, 5, 'bike', NULL, 'This bike is insane 🔥', '2026-03-21 13:47:58'),
(2, 1, 5, 'bike', 1, 'Yeah bro fr 💀', '2026-03-21 13:48:41'),
(3, 5, 76, 'bike', NULL, 'mog', '2026-03-21 15:13:55'),
(4, 5, 76, 'bike', NULL, 'what', '2026-03-21 15:14:17'),
(5, 6, 76, 'bike', NULL, 'who?', '2026-03-21 15:20:00'),
(6, 6, 76, 'bike', 4, 'idk', '2026-03-21 15:26:37'),
(7, 6, 76, 'bike', 6, 'so', '2026-03-21 15:26:58'),
(8, 5, 76, 'bike', 4, '@mogger alright', '2026-03-21 15:48:52'),
(9, 5, 76, 'bike', 4, '@roar now you say', '2026-03-21 15:49:06'),
(10, 5, 76, 'bike', 5, '@mogger  fr', '2026-03-21 15:55:56'),
(11, 5, 107, 'car', NULL, 'nice', '2026-03-21 16:05:31'),
(12, 5, 76, 'bike', NULL, 'now', '2026-03-21 16:29:57'),
(13, 5, 76, 'bike', NULL, 'nah', '2026-03-21 16:41:17'),
(14, 5, 76, 'bike', NULL, 'nice', '2026-03-24 15:50:18'),
(15, 9, 58, 'bike', NULL, 'nice bike', '2026-05-02 04:47:40'),
(16, 9, 58, 'bike', NULL, 'good one', '2026-05-12 15:21:59'),
(17, 9, 58, 'bike', 15, '@makhachev ok', '2026-05-12 15:22:13');

-- --------------------------------------------------------

--
-- Table structure for table `saved_vehicles`
--

CREATE TABLE `saved_vehicles` (
  `id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `vehicle_id` int(11) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `type` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `saved_vehicles`
--

INSERT INTO `saved_vehicles` (`id`, `user_id`, `vehicle_id`, `created_at`, `type`) VALUES
(15, 5, 76, '2026-03-21 18:00:56', 'bike'),
(17, 7, 76, '2026-03-24 18:05:25', 'bike'),
(20, 9, 58, '2026-05-12 15:22:26', 'bike');

-- --------------------------------------------------------

--
-- Table structure for table `system_settings`
--

CREATE TABLE `system_settings` (
  `setting_key` varchar(100) NOT NULL,
  `setting_value` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `system_settings`
--

INSERT INTO `system_settings` (`setting_key`, `setting_value`) VALUES
('maintenance_mode', '1'),
('min_match_score', '60'),
('recommendation_limit', '5');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `user_id` int(11) NOT NULL,
  `username` varchar(50) DEFAULT NULL,
  `name` varchar(100) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `role` enum('user','admin') DEFAULT 'user',
  `is_verified` tinyint(1) DEFAULT 0,
  `otp` varchar(6) DEFAULT NULL,
  `otp_expires_at` datetime DEFAULT NULL,
  `profile_pic` varchar(255) DEFAULT 'assets/images/default.png'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`user_id`, `username`, `name`, `email`, `password`, `created_at`, `role`, `is_verified`, `otp`, `otp_expires_at`, `profile_pic`) VALUES
(1, NULL, 'CHAD', 'admin@example.com', '$2y$10$wqjjmVVFES7Z.YAk8T4q9.f2nEvsUcXlCd6YIl14pXFr9QQ3dCHQq', '2026-02-08 10:46:21', 'admin', 0, NULL, NULL, 'assets/images/default.png'),
(2, NULL, 'Admin', 'admin@vpm.com', '$2y$10$vF01WKyq1DrGbaf/F5nQaokxJUMZPYVvtEGPkdDC5Z1fjY3GPn.R2', '2026-02-15 07:36:00', 'admin', 1, NULL, NULL, 'assets/images/default.png'),
(3, NULL, 'hawoxus', 'admin@gmail.com', '$2y$10$8MT8Et1i9u00bi6ilEZeAOJd5t3BgM2T0De.YDDY7ZuOM2aiQUfSS', '2026-02-15 07:52:31', 'admin', 1, NULL, NULL, 'assets/images/default.png'),
(5, 'roar', 'hawoxus', 'abhishekka001@gmail.com', '$2y$10$o5oNMAJYMVrF4IPE4mqnROstgfTJtfEr.g0blWGGbOLYnSmZooSv.', '2026-03-20 16:48:34', 'user', 0, NULL, NULL, 'assets/images/default.jpg'),
(6, 'mogger', 'mogger', 'mogger@gmail.com', '$2y$10$LJoisZI69xPKWF5A/0hdwOJEjy9gudLxjhbgVudzR4PVfmJ6gSi8i', '2026-03-21 15:19:20', 'user', 0, NULL, NULL, 'uploads/profile/user_6_1774106580.jpg'),
(7, 'abhi', 'Abhishek', 'Abhi@gmail.com', '$2y$10$t5cmTvRmlzwBx0niuEpVNuiTG2kM4hO9V1L6FJZa4zqMMYrOlimqG', '2026-03-24 18:04:45', 'user', 0, NULL, NULL, 'uploads/profile/user_7_1774375757.jpg'),
(8, 'figggerb', 'figgger bigger', 'figggerb@gmail.com', '', '2026-04-22 10:03:18', 'user', 1, NULL, NULL, 'assets/images/default.jpg'),
(9, 'makhachev', 'makhachev', 'makhachev@gmail.com', '$2y$10$ZZw3guHpS1SOmeJcFZN5F.QAU8bgouKO2a25jogl.f0I53Sm.XKIW', '2026-04-22 11:38:48', 'user', 0, NULL, NULL, 'assets/images/default.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `user_evaluations`
--

CREATE TABLE `user_evaluations` (
  `evaluation_id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `vehicle_id` int(11) DEFAULT NULL,
  `compatibility_score` int(11) DEFAULT NULL,
  `regret_score` int(11) DEFAULT NULL,
  `regret_level` varchar(20) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `vehicle`
--

CREATE TABLE `vehicle` (
  `id` int(11) NOT NULL,
  `make` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL,
  `body_type` varchar(50) DEFAULT NULL,
  `price_min` decimal(10,2) DEFAULT NULL,
  `price_max` decimal(10,2) DEFAULT NULL,
  `budget_range` enum('Budget','Mid','Premium') DEFAULT NULL,
  `city_mpg` float DEFAULT NULL,
  `highway_mpg` float DEFAULT NULL,
  `seating_capacity` int(11) DEFAULT NULL,
  `drive_type` varchar(50) DEFAULT NULL,
  `acc_0_30` float DEFAULT NULL,
  `acc_0_60` float DEFAULT NULL,
  `quarter_mile` float DEFAULT NULL,
  `braking_distance` float DEFAULT NULL,
  `fuel_capacity` float DEFAULT NULL,
  `length_mm` float DEFAULT NULL,
  `width_mm` float DEFAULT NULL,
  `height_mm` float DEFAULT NULL,
  `wheelbase_mm` float DEFAULT NULL,
  `u_turn_ft` float DEFAULT NULL,
  `weight_kg` float DEFAULT NULL,
  `size_class` varchar(50) DEFAULT NULL,
  `data_source` varchar(50) DEFAULT 'cars2025_csv',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `performance_score` int(11) DEFAULT NULL,
  `comfort_score` int(11) DEFAULT NULL,
  `efficiency_score` int(11) DEFAULT NULL,
  `reliability_score` int(11) DEFAULT NULL,
  `practicality_score` int(11) DEFAULT NULL,
  `status` enum('active','draft') DEFAULT 'active',
  `image_1` varchar(255) DEFAULT NULL,
  `image_2` varchar(255) DEFAULT NULL,
  `image_3` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `vehicle`
--

INSERT INTO `vehicle` (`id`, `make`, `model`, `body_type`, `price_min`, `price_max`, `budget_range`, `city_mpg`, `highway_mpg`, `seating_capacity`, `drive_type`, `acc_0_30`, `acc_0_60`, `quarter_mile`, `braking_distance`, `fuel_capacity`, `length_mm`, `width_mm`, `height_mm`, `wheelbase_mm`, `u_turn_ft`, `weight_kg`, `size_class`, `data_source`, `created_at`, `performance_score`, `comfort_score`, `efficiency_score`, `reliability_score`, `practicality_score`, `status`, `image_1`, `image_2`, `image_3`) VALUES
(1, 'Acura', 'Integra', 'Sedan', 33.00, 52.90, 'Budget', 21, 42, 5, 'FWD', 3.5, 7.7, 16, 129, 12.4, 186, 72, 56, 108, 40, 3095, 'Small', 'dataset', '2026-01-29 10:46:25', 26, 66, 54, 85, 56, 'active', NULL, NULL, NULL),
(2, 'Acura', 'MDX', 'SUV', 51.20, 72.25, 'Mid', 13, 27, 7, 'AWD', 3, 7.4, 15.8, 139, 18.5, 198, 79, 67, 114, 42, 4495, 'Large', 'dataset', '2026-01-29 10:46:25', 28, 71, 34, 81, 73, 'active', NULL, NULL, NULL),
(3, 'Audi', 'A3', 'Sedan', 38.20, 48.70, 'Mid', 20, 33, 5, 'AWD', 2.6, 6.8, 15.2, 120, 14.3, 177, 72, 56, 104, 38, 3495, 'Small', 'dataset', '2026-01-29 10:46:25', 62, 67, 48, 86, 61, 'active', NULL, NULL, NULL),
(4, 'Audi', 'A4', 'Sporty', 42.00, 44.10, 'Mid', 18, 40, 5, 'AWD', 2.7, 6.3, 14.9, 135, 15.3, 186, 73, 56, 111, 40, 3630, 'Small', 'dataset', '2026-01-29 10:46:25', 38, 49, 41, 81, 39, 'active', NULL, NULL, NULL),
(5, 'Audi', 'A6', 'Sedan', 58.10, 62.60, 'Budget', 17, 39, 5, 'AWD', 2.8, 6.8, 15.3, 129, 19.3, 195, 74, 57, 115, 38, 4015, 'Midsized', 'dataset', '2026-01-29 10:46:25', 26, 66, 50, 87, 53, 'active', NULL, NULL, NULL),
(6, 'Audi', 'A8', 'Wagon', 92.00, 125.30, 'Mid', 13, 33, 5, 'AWD', 2.4, 6.1, 14.5, 133, 21.7, 209, 77, 59, 123, 43, 4810, 'Large', 'dataset', '2026-01-29 10:46:25', 24, 69, 46, 87, 62, 'active', NULL, NULL, NULL),
(7, 'Audi', 'Q3', 'SUV', 37.40, 39.80, 'Budget', 15, 33, 5, 'AWD', 3.2, 7.8, 16.1, 126, 15.9, 177, 73, 63, 106, 40, 3880, 'Small', 'dataset', '2026-01-29 10:46:25', 28, 73, 39, 83, 68, 'active', NULL, NULL, NULL),
(8, 'Audi', 'Q7', 'SUV', 60.50, 65.80, 'Mid', 13, 28, 7, 'AWD', 3, 7, 15.4, 133, 22.5, 199, 78, 69, 118, 43, 5080, 'Large', 'dataset', '2026-01-29 10:46:25', 28, 72, 35, 83, 71, 'active', NULL, NULL, NULL),
(9, 'BMW', '3 Series', 'Sedan', 45.95, 85.30, 'Mid', 19, 44, 5, 'AWD', 2.6, 6.4, 14.8, 129, 15.6, 186, 72, 57, 112, 41, 3640, 'Small', 'dataset', '2026-01-29 10:46:25', 62, 67, 54, 86, 61, 'active', NULL, NULL, NULL),
(10, 'BMW', '5 series', 'Sedan', 58.70, 121.50, 'Budget', 19, 43, 5, 'AWD', 2.5, 6.6, 15, 122, 15.9, 199, 75, 60, 118, 43, 4090, 'Midsized', 'dataset', '2026-01-29 10:46:25', 26, 66, 53, 87, 54, 'active', NULL, NULL, NULL),
(11, 'BMW', 'X1', 'SUV', 41.35, 50.80, 'Mid', 19, 41, 5, 'AWD', 3.2, 7.1, 15.5, 124, 14.3, 177, 73, 65, 106, 40, 3765, 'Small', 'dataset', '2026-01-29 10:46:25', 28, 73, 46, 83, 70, 'active', NULL, NULL, NULL),
(12, 'BMW', 'X7', 'SUV', 84.30, 152.40, 'Mid', 14, 32, 7, 'AWD', 2.6, 6.5, 15, 136, 21.9, 204, 79, 72, 122, 44, 5286, 'Large', 'dataset', '2026-01-29 10:46:25', 28, 72, 38, 83, 71, 'active', NULL, NULL, NULL),
(13, 'BMW', 'Z4', 'Sporty', 54.50, 67.00, 'Mid', 20, 40, 2, 'RWD', 2.7, 6.1, 14.6, 111, 13.7, 171, 73, 51, 97, 37, 3290, 'Small', 'dataset', '2026-01-29 10:46:25', 38, 49, 42, 81, 30, 'active', NULL, NULL, NULL),
(14, 'Buick', 'Encore GX', 'SUV', 26.00, 33.10, 'Budget', 18, 33, 5, 'AWD', 3.4, 9.4, 17.3, 126, 13.2, 171, 71, 64, 102, 38, 3310, 'Small', 'dataset', '2026-01-29 10:46:25', 28, 73, 41, 81, 70, 'active', NULL, NULL, NULL),
(15, 'Buick', 'Envision', 'SUV', 36.50, 46.20, 'Budget', 15, 33, 5, 'AWD', 3.1, 7.5, 15.9, 127, 16.1, 183, 74, 65, 109, 39, 3965, 'Small', 'dataset', '2026-01-29 10:46:25', 28, 72, 39, 81, 68, 'active', NULL, NULL, NULL),
(16, 'Buick', 'Envista', 'Wagon', 23.70, 28.60, 'Budget', 21, 39, 5, 'FWD', 3.3, 9, 17, 127, 13.2, 183, 72, 61, 106, 39, 3010, 'Small', 'dataset', '2026-01-29 10:46:25', 24, 69, 54, 85, 68, 'active', NULL, NULL, NULL),
(17, 'Cadillac', 'CT4', 'Sedan', 35.00, 62.20, 'Budget', 16, 38, 5, 'AWD', 2.9, 7.4, 15.7, 129, 17.5, 187, 72, 56, 109, 39, 3625, 'Small', 'dataset', '2026-01-29 10:46:25', 26, 65, 48, 85, 54, 'active', NULL, NULL, NULL),
(18, 'Cadillac', 'Escalade', 'SUV', 87.60, 163.00, 'Mid', 10, 23, 8, 'AWD', 2.4, 6.5, 15, 136, 24, 212, 85, 76, 121, 41, 5950, 'Large', 'dataset', '2026-01-29 10:46:25', 28, 70, 30, 81, 72, 'active', NULL, NULL, NULL),
(19, 'Cadillac', 'XT4', 'SUV', 40.80, 44.10, 'Budget', 16, 31, 5, 'AWD', 3, 7.6, 15.9, 128, 16.3, 181, 77, 64, 109, 39, 3930, 'Small', 'dataset', '2026-01-29 10:46:25', 28, 72, 38, 81, 68, 'active', NULL, NULL, NULL),
(20, 'Cadillac', 'XT5', 'SUV', 44.30, 57.20, 'Budget', 13, 30, 5, 'AWD', 2.7, 7.1, 15.6, 132, 22, 190, 75, 66, 113, 42, 3500, 'Midsized', 'dataset', '2026-01-29 10:46:25', 28, 72, 36, 81, 68, 'active', NULL, NULL, NULL),
(21, 'Cadillac', 'XT6', 'Sporty', 49.20, 60.70, 'Budget', 12, 26, 7, 'AWD', 3, 7.1, 15.6, 134, 21.7, 199, 77, 70, 113, 41, 4000, 'Midsized', 'dataset', '2026-01-29 10:46:25', 38, 47, 29, 79, 43, 'active', NULL, NULL, NULL),
(22, 'Chevrolet', 'Blazer', 'SUV', 35.40, 45.70, 'Mid', 13, 27, 5, 'AWD', 2.7, 6.4, 15, 130, 21.7, 192, 77, 67, 113, 40, 4235, 'Large', 'dataset', '2026-01-29 10:46:25', 28, 71, 34, 81, 66, 'active', NULL, NULL, NULL),
(23, 'Chevrolet', 'Colorado', 'Pickup', 31.90, 49.60, 'Budget', 13, 26, 5, 'AWD', 2.6, 6.9, 15.3, 134, 21.3, 213, 75, 80, 131, 42, 4545, 'Midsized', 'dataset', '2026-01-29 10:46:25', 24, 57, 27, 83, 68, 'active', NULL, NULL, NULL),
(24, 'Chevrolet', 'Corvette', 'Sporty', 68.30, 132.65, 'Mid', 12, 29, 2, 'AWD', 1.5, 3.4, 11.8, 113, 18.5, 182, 76, 49, 107, 38, 3625, 'Small', 'dataset', '2026-01-29 10:46:25', 38, 47, 31, 79, 27, 'active', NULL, NULL, NULL),
(25, 'Chevrolet', 'Malibu', 'Sedan', 24.70, 31.50, 'Budget', 19, 41, 5, 'FWD', 3.1, 8.4, 16.6, 130, 15.8, 194, 73, 58, 111, 39, 3125, 'Midsized', 'dataset', '2026-01-29 10:46:25', 26, 65, 52, 85, 56, 'active', NULL, NULL, NULL),
(26, 'Chevrolet', 'Silverado 1500', 'Pickup', 35.00, 70.00, 'Mid', 16, 32, 6, 'AWD', 3.1, 7.9, 16.2, 144, 24, 232, 81, 76, 147, 51, 5455, 'Large', 'dataset', '2026-01-29 10:46:25', 24, 56, 33, 83, 71, 'active', NULL, NULL, NULL),
(27, 'Chevrolet', 'Suburban', 'SUV', 61.50, 84.20, 'Mid', 11, 22, 8, 'AWD', 2.8, 7.6, 15.8, 145, 28, 226, 81, 76, 134, 45, 6000, 'Large', 'dataset', '2026-01-29 10:46:25', 28, 70, 30, 81, 72, 'active', NULL, NULL, NULL),
(28, 'Chevrolet', 'Tahoe', 'SUV', 52.50, 81.20, 'Mid', 11, 24, 8, 'AWD', 2.9, 7.8, 16, 145, 24, 211, 81, 76, 121, 41, 5810, 'Large', 'dataset', '2026-01-29 10:46:25', 28, 70, 31, 81, 72, 'active', NULL, NULL, NULL),
(29, 'Chevrolet', 'Trax', 'Wagon', 20.40, 24.30, 'Budget', 22, 41, 5, 'FWD', 3.5, 9.5, 17.4, 131, 13.2, 179, 72, 61, 106, 37, 2970, 'Small', 'dataset', '2026-01-29 10:46:25', 24, 69, 56, 85, 69, 'active', NULL, NULL, NULL),
(30, 'Chrysler', 'Pacifica', 'Minivan', 42.45, 59.79, 'Mid', 13, 33, 8, 'AWD', 3.1, 8, 16.2, 136, 19, 204, 80, 70, 122, 41, 4535, 'Large', 'dataset', '2026-01-29 10:46:25', 16, 78, 42, 85, 83, 'active', NULL, NULL, NULL),
(31, 'Chrysler', 'Voyager', 'Minivan', 40.00, 40.00, 'Mid', 13, 33, 7, 'FWD', 3.1, 8, 16.3, 136, 19, 204, 80, 70, 122, 41, 4330, 'Large', 'dataset', '2026-01-29 10:46:25', 16, 79, 42, 85, 80, 'active', NULL, NULL, NULL),
(32, 'Dodge', 'Durango', 'SUV', 42.00, 97.43, 'Mid', 12, 25, 7, 'AWD', 3.1, 8.3, 16.4, 134, 24.6, 201, 76, 73, 120, 41, 5105, 'Large', 'dataset', '2026-01-29 10:46:25', 28, 71, 32, 81, 71, 'active', NULL, NULL, NULL),
(33, 'Dodge', 'Hornet', 'SUV', 31.74, 41.65, 'Mid', 15, 34, 5, 'AWD', 2.8, 6.4, 15.1, 132, 13.4, 178, 82, 64, 104, 39, 3740, 'Small', 'dataset', '2026-01-29 10:46:25', 28, 72, 39, 81, 68, 'active', NULL, NULL, NULL),
(34, 'Ford', 'Bronco', 'SUV', 38.00, 90.04, 'Budget', 13, 24, 5, 'AWD', 3.1, 7, 15.6, 149, 20.8, 189, 76, 73, 116, 37, 4795, 'Midsized', 'dataset', '2026-01-29 10:46:25', 28, 71, 32, 82, 64, 'active', NULL, NULL, NULL),
(35, 'Ford', 'Escape', 'SUV', 24.89, 38.84, 'Budget', 17, 37, 5, 'AWD', 3.3, 8.9, 16.9, 128, 15.7, 181, 74, 69, 107, 39, 3530, 'Small', 'dataset', '2026-01-29 10:46:25', 28, 72, 42, 82, 69, 'active', NULL, NULL, NULL),
(36, 'Ford', 'Escape', 'SUV', 28.15, 38.40, 'Budget', 17, 37, 5, 'AWD', 3.3, 8.9, 16.9, 128, 15.7, 181, 74, 66, 107, 39, 3530, 'Small', 'dataset', '2026-01-29 10:46:25', 28, 72, 42, 82, 69, 'active', NULL, NULL, NULL),
(37, 'Ford', 'Explorer', 'SUV', 39.86, 56.26, 'Mid', 14, 29, 7, 'AWD', 3.1, 7.4, 16, 136, 17.9, 199, 79, 70, 119, 40, 4565, 'Large', 'dataset', '2026-01-29 10:46:25', 28, 71, 36, 82, 73, 'active', NULL, NULL, NULL),
(38, 'Ford', 'F-150', 'Pickup', 37.35, 78.91, 'Mid', 13, 26, 6, 'AWD', 2.9, 6.7, 15.2, 143, 36, 232, 80, 77, 145, 49, 5070, 'Large', 'dataset', '2026-01-29 10:46:25', 24, 57, 27, 84, 71, 'active', NULL, NULL, NULL),
(39, 'Ford', 'Maverick', 'Pickup', 26.55, 40.75, 'Mid', 16, 32, 5, 'AWD', 2.8, 7.1, 15.4, 127, 16.5, 200, 78, 69, 121, 41, 3735, 'Small', 'dataset', '2026-01-29 10:46:25', 24, 58, 33, 84, 71, 'active', NULL, NULL, NULL),
(40, 'Ford', 'Mustang', 'Sporty', 31.92, 63.08, 'Mid', 13, 30, 4, 'RWD', 2.2, 4.6, 12.9, 129, 16, 189, 75, 55, 107, 39, 3845, 'Midsized', 'dataset', '2026-01-29 10:46:25', 38, 47, 32, 80, 33, 'active', NULL, NULL, NULL),
(41, 'Ford', 'Ranger', 'Pickup', 32.98, 55.72, 'Budget', 14, 28, 5, 'AWD', 3.6, 7.9, 16.2, 150, 18.8, 211, 76, 74, 129, 44, 4450, 'Midsized', 'dataset', '2026-01-29 10:46:25', 24, 57, 29, 84, 69, 'active', NULL, NULL, NULL),
(42, 'GMC', 'Canyon', 'Pickup', 38.40, 52.00, 'Budget', 13, 26, 5, 'AWD', 2.6, 6.9, 15.3, 134, 21.4, 213, 72, 80, 131, 42, 4545, 'Midsized', 'dataset', '2026-01-29 10:46:25', 24, 57, 27, 84, 68, 'active', NULL, NULL, NULL),
(43, 'GMC', 'Sierra 1500', 'Pickup', 38.30, 84.20, 'Mid', 11, 24, 5, 'AWD', 2.4, 6.9, 15.2, 136, 24, 232, 81, 76, 147, 51, 5130, 'Large', 'dataset', '2026-01-29 10:46:25', 24, 57, 25, 84, 66, 'active', NULL, NULL, NULL),
(44, 'GMC', 'Yukon', 'SUV', 66.90, 101.30, 'Mid', 11, 24, 8, 'AWD', 2.9, 7.8, 16, 145, 24, 210, 81, 77, 121, 41, 5810, 'Large', 'dataset', '2026-01-29 10:46:25', 28, 70, 31, 82, 72, 'active', NULL, NULL, NULL),
(45, 'Honda', 'Accord', 'Sedan', 28.30, 30.56, 'Budget', 21, 46, 5, 'FWD', 3.4, 8, 16.3, 133, 14.8, 196, 73, 57, 111, 39, 3270, 'Midsized', 'dataset', '2026-01-29 10:46:25', 26, 66, 56, 91, 56, 'active', NULL, NULL, NULL),
(46, 'Honda', 'CR-V', 'SUV', 30.10, 50.00, 'Budget', 19, 33, 5, 'AWD', 3.7, 8.8, 17, 129, 14, 185, 74, 67, 106, 39, 3585, 'Small', 'dataset', '2026-01-29 10:46:25', 28, 73, 41, 87, 69, 'active', NULL, NULL, NULL),
(47, 'Honda', 'Odyssey', 'Minivan', 42.22, 51.18, 'Mid', 14, 33, 8, 'FWD', 3.4, 8.1, 16.4, 136, 19.5, 205, 79, 70, 118, 41, 4490, 'Large', 'dataset', '2026-01-29 10:46:25', 16, 79, 42, 91, 83, 'active', NULL, NULL, NULL),
(48, 'Honda', 'Passport', 'SUV', 43.40, 48.47, 'Budget', 14, 28, 5, 'AWD', 2.5, 6.4, 15, 135, 19.5, 189, 79, 72, 111, 40, 4170, 'Midsized', 'dataset', '2026-01-29 10:46:25', 28, 72, 35, 87, 66, 'active', NULL, NULL, NULL),
(49, 'Honda', 'Pilot', 'SUV', 40.20, 54.58, 'Budget', 14, 29, 8, 'AWD', 3, 7.7, 16.1, 129, 18.5, 200, 79, 71, 114, 39, 4635, 'Midsized', 'dataset', '2026-01-29 10:46:25', 28, 72, 36, 87, 76, 'active', NULL, NULL, NULL),
(50, 'Honda', 'Ridgeline', 'Pickup', 40.15, 46.75, 'Budget', 13, 29, 5, 'AWD', 3, 7.3, 15.8, 134, 19.5, 210, 79, 71, 125, 46, 4415, 'Midsized', 'dataset', '2026-01-29 10:46:25', 24, 58, 29, 89, 69, 'active', NULL, NULL, NULL),
(51, 'Hyundai', 'Elantra', 'Sedan', 22.03, 35.75, 'Budget', 21, 49, 5, 'FWD', 3.3, 7.9, 16.2, 128, 12.4, 186, 72, 56, 107, 37, 2765, 'Small', 'dataset', '2026-01-29 10:46:25', 26, 66, 58, 88, 58, 'active', NULL, NULL, NULL),
(52, 'Hyundai', 'Kona', 'SUV', 24.45, 33.50, 'Budget', 18, 36, 5, 'AWD', 3.8, 9.8, 17.6, 127, 12.4, 171, 72, 62, 105, 36, 3265, 'Small', 'dataset', '2026-01-29 10:46:25', 28, 73, 42, 84, 70, 'active', NULL, NULL, NULL),
(53, 'Hyundai', 'Palisade', 'SUV', 37.10, 54.40, 'Budget', 15, 29, 8, 'AWD', 2.6, 7.1, 15.4, 132, 18.8, 197, 78, 69, 114, 40, 4395, 'Midsized', 'dataset', '2026-01-29 10:46:25', 28, 72, 36, 84, 77, 'active', NULL, NULL, NULL),
(54, 'Hyundai', 'Santa Fe', 'SUV', 34.20, 48.55, 'Budget', 15, 36, 7, 'AWD', 2.7, 6.7, 15.2, 131, 17.7, 190, 75, 68, 111, 39, 4255, 'Midsized', 'dataset', '2026-01-29 10:46:25', 28, 72, 41, 84, 74, 'active', NULL, NULL, NULL),
(55, 'Hyundai', 'Santa Gruz', 'Pickup', 28.65, 43.65, 'Mid', 16, 34, 5, 'AWD', 2.6, 6.6, 15, 132, 17.7, 196, 75, 67, 118, 41, 4045, 'Small', 'dataset', '2026-01-29 10:46:25', 24, 58, 34, 86, 71, 'active', NULL, NULL, NULL),
(56, 'Hyundai', 'Tuscon', 'SUV', 28.61, 47.34, 'Budget', 18, 35, 5, 'AWD', 3.3, 9.6, 17.2, 130, 14.3, 183, 73, 66, 109, 40, 3605, 'Small', 'dataset', '2026-01-29 10:46:25', 28, 72, 42, 84, 69, 'active', NULL, NULL, NULL),
(57, 'Infiniti', 'QX60', 'SUV', 50.20, 66.15, 'Budget', 14, 28, 7, 'AWD', 2.6, 6.7, 15.2, 138, 18.5, 198, 78, 70, 114, 40, 4630, 'Midsized', 'dataset', '2026-01-29 10:46:25', 28, 71, 35, 81, 72, 'active', NULL, NULL, NULL),
(58, 'Jaguar', 'F-Pace', 'SUV', 57.00, 92.40, 'Budget', 14, 27, 5, 'AWD', 2.4, 6, 14.4, 129, 16.6, 186, 87, 66, 113, 41, 4350, 'Midsized', 'dataset', '2026-01-29 10:46:25', 28, 72, 35, 78, 66, 'active', NULL, NULL, NULL),
(59, 'Jeep', 'Gladiator', 'Pickup', 38.10, 51.10, 'Budget', 13, 23, 5, 'AWD', 2.8, 7.8, 16.1, 135, 22, 218, 74, 75, 137, 46, 4650, 'Midsized', 'dataset', '2026-01-29 10:46:25', 24, 57, 26, 81, 68, 'active', NULL, NULL, NULL),
(60, 'Jeep', 'Grand Cherokee', 'SUV', 37.04, 74.67, 'Budget', 14, 28, 5, 'AWD', 2.6, 7.8, 16, 138, 23, 194, 78, 71, 117, 40, 4480, 'Midsized', 'dataset', '2026-01-29 10:46:25', 28, 71, 35, 79, 66, 'active', NULL, NULL, NULL),
(61, 'Jeep', 'Wagoneer', 'SUV', 59.95, 76.95, 'Mid', 11, 26, 8, 'AWD', 2.4, 6, 14.6, 146, 26.5, 215, 84, 76, 123, 40, 6070, 'Large', 'dataset', '2026-01-29 10:46:25', 28, 69, 32, 79, 72, 'active', NULL, NULL, NULL),
(62, 'Kia', 'Carnival', 'Minivan', 36.80, 50.90, 'Budget', 13, 32, 8, 'AWD', 3.4, 8.4, 16.5, 129, 19, 203, 79, 70, 122, 39, 4596, 'Midsized', 'dataset', '2026-01-29 10:46:25', 16, 78, 41, 88, 82, 'active', NULL, NULL, NULL),
(63, 'Kia', 'K5', 'Sedan', 27.19, 34.69, 'Budget', 20, 47, 5, 'AWD', 3.3, 8.6, 16.6, 125, 15.8, 193, 73, 57, 112, 37, 3345, 'Midsized', 'dataset', '2026-01-29 10:46:25', 26, 66, 56, 88, 56, 'active', NULL, NULL, NULL),
(64, 'Kia', 'Niro', 'Wagon', 26.99, 44.60, 'Budget', 41, 48, 5, 'FWD', 3.3, 8.9, 16.9, 133, 11.1, 174, 72, 61, 107, 37, 3100, 'Small', 'dataset', '2026-01-29 10:46:25', 24, 69, 71, 88, 72, 'active', NULL, NULL, NULL),
(65, 'Kia', 'Seltos', 'SUV', 24.69, 31.19, 'Budget', 20, 35, 5, 'AWD', 3.6, 9, 17.1, 128, 13.2, 173, 71, 64, 104, 36, 3120, 'Small', 'dataset', '2026-01-29 10:46:25', 28, 73, 43, 84, 70, 'active', NULL, NULL, NULL),
(66, 'Kia', 'Soul', 'Wagon', 20.49, 24.79, 'Budget', 21, 35, 5, 'FWD', 3.5, 8.8, 16.9, 120, 14.3, 165, 71, 63, 102, 36, 2995, 'Small', 'dataset', '2026-01-29 10:46:25', 24, 69, 52, 88, 68, 'active', NULL, NULL, NULL),
(67, 'Land Rover', 'Range Evoque', 'SUV', 49.90, 54.90, 'Budget', 13, 29, 5, 'AWD', 3.2, 8.3, 16.6, 126, 17.7, 172, 79, 65, 106, 39, 4235, 'Midsized', 'dataset', '2026-01-29 10:46:25', 28, 72, 35, 77, 66, 'active', NULL, NULL, NULL),
(68, 'Lexus', 'GX', 'Sedan', 63.94, 80.40, 'Mid', 12, 26, 7, 'AWD', 2.7, 7, 15.4, 131, 21, 197, 78, 76, 112, 41, 5560, 'Large', 'dataset', '2026-01-29 10:46:25', 26, 65, 39, 92, 55, 'active', NULL, NULL, NULL),
(69, 'Lexus', 'LS', 'Sedan', 80.34, 115.21, 'Mid', 12, 32, 5, 'AWD', 2.4, 6, 14.4, 136, 21.7, 206, 75, 58, 123, 41, 5170, 'Large', 'dataset', '2026-01-29 10:46:25', 26, 66, 42, 92, 49, 'active', NULL, NULL, NULL),
(70, 'Lexus', 'RX', 'SUV', 49.13, 71.26, 'Budget', 16, 34, 5, 'AWD', 3.1, 7.5, 15.8, 132, 17.8, 193, 76, 67, 112, 41, 4280, 'Midsized', 'dataset', '2026-01-29 10:46:25', 28, 74, 40, 88, 67, 'active', NULL, NULL, NULL),
(71, 'Lincoln', 'Aviator', 'SUV', 57.53, 87.25, 'Budget', 12, 28, 7, 'AWD', 2.5, 6.2, 14.8, 138, 20.2, 199, 80, 70, 119, 41, 5065, 'Midsized', 'dataset', '2026-01-29 10:46:25', 28, 71, 34, 81, 71, 'active', NULL, NULL, NULL),
(72, 'Lincoln', 'Corsair', 'SUV', 39.49, 65.37, 'Budget', 15, 33, 5, 'AWD', 2.8, 7.2, 15.7, 128, 16.2, 181, 76, 64, 107, 38, 3910, 'Midsized', 'dataset', '2026-01-29 10:46:25', 28, 72, 39, 81, 68, 'active', NULL, NULL, NULL),
(73, 'Mazda', '3', 'Sedan', 23.95, 36.95, 'Budget', 20, 44, 5, 'AWD', 3, 7.7, 16.1, 125, 13.2, 184, 71, 57, 107, 37, 3025, 'Small', 'dataset', '2026-01-29 10:46:25', 26, 66, 54, 91, 57, 'active', NULL, NULL, NULL),
(74, 'Mazda', 'CX-30', 'SUV', 25.00, 36.95, 'Budget', 18, 37, 5, 'AWD', 3.2, 8.7, 16.7, 133, 12.7, 173, 71, 62, 104, 37, 3280, 'Small', 'dataset', '2026-01-29 10:46:25', 28, 73, 43, 87, 70, 'active', NULL, NULL, NULL),
(75, 'Mazda', 'CX-5', 'SUV', 28.75, 40.60, 'Budget', 17, 33, 5, 'AWD', 3.1, 8.6, 16.6, 133, 15.3, 180, 73, 66, 106, 37, 3590, 'Midsized', 'dataset', '2026-01-29 10:46:25', 28, 73, 40, 87, 69, 'active', NULL, NULL, NULL),
(76, 'Mazda', 'CX-90', 'SUV', 37.85, 57.95, 'Budget', 16, 33, 8, 'AWD', 2.9, 7.2, 15.6, 128, 18, 201, 78, 69, 123, 40, 4760, 'Midsized', 'dataset', '2026-01-29 10:46:25', 28, 71, 39, 87, 76, 'active', NULL, NULL, NULL),
(77, 'Mercedes', 'C-Class', 'Sedan', 48.45, 86.05, 'Mid', 18, 43, 5, 'AWD', 2.8, 6.7, 15.2, 141, 17.4, 187, 74, 57, 113, 39, 4030, 'Small', 'dataset', '2026-01-29 10:46:25', 26, 67, 53, 86, 54, 'active', NULL, NULL, NULL),
(78, 'Mercedes', 'GLC', 'SUV', 49.25, 91.45, 'Mid', 17, 37, 5, 'AWD', 2.6, 6.6, 15.1, 127, 17.4, 186, 74, 65, 113, 40, 4320, 'Small', 'dataset', '2026-01-29 10:46:25', 28, 73, 42, 82, 68, 'active', NULL, NULL, NULL),
(79, 'Mitsubishi', 'Outlander', 'SUV', 40.45, 50.45, 'Budget', 17, 34, 7, 'AWD', 3.7, 9.8, 17.5, 133, 14.5, 185, 75, 69, 107, 38, 3845, 'Midsized', 'dataset', '2026-01-29 10:46:25', 28, 72, 41, 81, 75, 'active', NULL, NULL, NULL),
(80, 'Nissan', 'Altima', 'Sedan', 27.00, 34.83, 'Budget', 14, 30, 5, 'AWD', 3.1, 7.6, 15.9, 131, 16.2, 193, 73, 57, 111, 38, 3240, 'Midsized', 'dataset', '2026-01-29 10:46:25', 26, 66, 42, 84, 54, 'active', NULL, NULL, NULL),
(81, 'Nissan', 'Frontier', 'Pickup', 32.05, 45.61, 'Budget', 12, 24, 5, 'AWD', 3, 7.5, 15.8, 128, 21.1, 210, 73, 72, 126, 44, 4720, 'Midsized', 'dataset', '2026-01-29 10:46:25', 24, 57, 26, 82, 68, 'active', NULL, NULL, NULL),
(82, 'Nissan', 'Pathfinder', 'SUV', 37.07, 51.81, 'Budget', 14, 30, 8, 'AWD', 3, 7.6, 16, 138, 18.5, 198, 78, 71, 114, 40, 4600, 'Midsized', 'dataset', '2026-01-29 10:46:25', 28, 71, 36, 80, 76, 'active', NULL, NULL, NULL),
(83, 'Nissan', 'Rogue', 'SUV', 29.23, 40.92, 'Budget', 17, 34, 5, 'AWD', 3.5, 9.1, 17, 134, 14.5, 183, 72, 67, 107, 37, 3685, 'Small', 'dataset', '2026-01-29 10:46:25', 28, 72, 41, 80, 69, 'active', NULL, NULL, NULL),
(84, 'Nissan', 'Sentra', 'Sedan', 21.95, 24.59, 'Budget', 22, 44, 5, 'FWD', 3.5, 8.5, 16.7, 129, 12.4, 183, 72, 57, 107, 39, 3000, 'Small', 'dataset', '2026-01-29 10:46:25', 26, 66, 56, 84, 57, 'active', NULL, NULL, NULL),
(85, 'Nissan', 'Versa', 'Sedan', 17.19, 21.19, 'Budget', 22, 45, 5, 'FWD', 3.7, 9.6, 17.5, 130, 10.8, 177, 69, 58, 103, 36, 2670, 'Small', 'dataset', '2026-01-29 10:46:25', 26, 66, 56, 84, 58, 'active', NULL, NULL, NULL),
(86, 'Nissan', 'Z', 'Sporty', 42.97, 66.75, 'Mid', 18, 32, 2, 'RWD', 2.2, 5.1, 13.5, 121, 16.4, 172, 73, 52, 100, 37, 3520, 'Small', 'dataset', '2026-01-29 10:46:25', 38, 48, 36, 78, 28, 'active', NULL, NULL, NULL),
(87, 'Porche', 'Cayenne', 'SUV', 84.70, 203.80, 'Budget', 15, 29, 5, 'AWD', 2.8, 6.5, 14.9, 131, 23.8, 194, 78, 67, 114, 41, 4680, 'Midsized', 'dataset', '2026-01-29 10:46:25', 28, 71, 36, 81, 66, 'active', NULL, NULL, NULL),
(88, 'Porche', 'Macan', 'SUV', 62.90, 105.30, 'Budget', 13, 26, 5, 'AWD', 2.7, 6.4, 14.7, 130, 19.8, 185, 76, 64, 111, 40, 4415, 'Midsized', 'dataset', '2026-01-29 10:46:25', 28, 71, 33, 81, 66, 'active', NULL, NULL, NULL),
(89, 'Subaru', 'Crosstrek', 'SUV', 25.81, 32.61, 'Budget', 20, 41, 5, 'AWD', 4.2, 10.1, 17.8, 128, 16.6, 176, 71, 63, 105, 37, 3350, 'Small', 'dataset', '2026-01-29 10:46:25', 28, 73, 47, 85, 71, 'active', NULL, NULL, NULL),
(90, 'Subaru', 'Forester', 'SUV', 29.81, 40.00, 'Budget', 20, 39, 5, 'AWD', 3.7, 8.6, 16.8, 127, 16.6, 183, 72, 68, 105, 37, 3590, 'Small', 'dataset', '2026-01-29 10:46:25', 28, 73, 45, 85, 70, 'active', NULL, NULL, NULL),
(91, 'Subaru', 'Impreza', 'Sedan', 23.61, 28.50, 'Budget', 19, 42, 5, 'AWD', 3.8, 9.4, 17.3, 129, 16.6, 176, 70, 58, 105, 37, 3290, 'Small', 'dataset', '2026-01-29 10:46:25', 26, 66, 53, 89, 56, 'active', NULL, NULL, NULL),
(92, 'Subaru', 'Legacy', 'Sedan', 25.01, 38.10, 'Budget', 19, 39, 5, 'AWD', 3.4, 8.9, 16.9, 131, 18.5, 191, 72, 59, 108, 39, 3510, 'Midsized', 'dataset', '2026-01-29 10:46:25', 26, 66, 51, 89, 55, 'active', NULL, NULL, NULL),
(93, 'Subaru', 'Outback', 'Wagon', 29.01, 42.91, 'Budget', 16, 32, 5, 'AWD', 3, 7.1, 15.5, 132, 18.5, 192, 74, 66, 108, 38, 3915, 'Midsized', 'dataset', '2026-01-29 10:46:25', 24, 69, 47, 89, 65, 'active', NULL, NULL, NULL),
(94, 'Toyota', 'Camry', 'Sedan', 28.70, 36.43, 'Budget', 40, 54, 5, 'AWD', 3.3, 7.7, 16, 132, 13, 194, 72, 57, 111, 39, 3535, 'Midsized', 'dataset', '2026-01-29 10:46:25', 26, 66, 72, 92, 59, 'active', NULL, NULL, NULL),
(95, 'Toyota', 'Corolla', 'Sedan', 22.33, 28.19, 'Budget', 24, 51, 5, 'AWD', 3.4, 8.7, 16.8, 134, 13.3, 182, 70, 57, 106, 37, 2960, 'Small', 'dataset', '2026-01-29 10:46:25', 26, 66, 61, 91, 58, 'active', NULL, NULL, NULL),
(96, 'Toyota', 'Crown', 'Sedan', 41.44, 54.99, 'Budget', 33, 49, 5, 'AWD', 2.9, 8, 16.2, 134, 14.5, 196, 72, 61, 112, 41, 4035, 'Midsized', 'dataset', '2026-01-29 10:46:25', 26, 65, 65, 92, 56, 'active', NULL, NULL, NULL),
(97, 'Toyota', 'Highlander', 'SUV', 39.82, 53.98, 'Budget', 14, 33, 7, 'AWD', 3.1, 7.7, 16, 133, 17.9, 195, 76, 68, 112, 39, 4385, 'Midsized', 'dataset', '2026-01-29 10:46:25', 28, 72, 38, 88, 74, 'active', NULL, NULL, NULL),
(98, 'Toyota', 'Rav4', 'SUV', 29.25, 40.61, 'Budget', 19, 38, 5, 'AWD', 3.1, 8.3, 16.5, 131, 14.5, 181, 73, 67, 106, 37, 3510, 'Small', 'dataset', '2026-01-29 10:46:25', 28, 73, 44, 88, 70, 'active', NULL, NULL, NULL),
(99, 'Toyota', 'Sequioa', 'SUV', 62.43, 83.92, 'Mid', 12, 23, 8, 'AWD', 2.9, 6.8, 15.3, 145, 22.5, 208, 80, 75, 122, 42, 6140, 'Large', 'dataset', '2026-01-29 10:46:25', 28, 70, 31, 88, 72, 'active', NULL, NULL, NULL),
(100, 'Toyota', 'Sienna', 'Minivan', 39.19, 56.91, 'Mid', 28, 43, 8, 'AWD', 3.2, 8.2, 16.4, 148, 18, 204, 79, 69, 121, 40, 4585, 'Large', 'dataset', '2026-01-29 10:46:25', 16, 79, 57, 92, 86, 'active', NULL, NULL, NULL),
(101, 'Toyota', 'Tacoma', 'Pickup', 31.59, 63.74, 'Budget', 14, 27, 5, 'AWD', 2.9, 7.5, 15.8, 136, 18.2, 226, 77, 74, 132, 42, 4560, 'Midsized', 'dataset', '2026-01-29 10:46:25', 24, 58, 29, 90, 69, 'active', NULL, NULL, NULL),
(102, 'Toyota', 'Tundra', 'Pickup', 40.09, 80.73, 'Mid', 12, 23, 5, 'AWD', 2.4, 6.3, 14.3, 140, 32.2, 234, 80, 78, 146, 50, 5590, 'Large', 'dataset', '2026-01-29 10:46:25', 24, 57, 25, 90, 65, 'active', NULL, NULL, NULL),
(103, 'Volkswagon', 'Atlas', 'SUV', 38.20, 53.21, 'Mid', 13, 29, 7, '0', 3, 7, 16, 124, 18, 201, 78, 70, 117, NULL, 4685, 'Large', 'dataset', '2026-01-29 10:46:25', 28, 71, 35, 81, 72, 'active', NULL, NULL, NULL),
(104, 'Volkswagon', 'GTI', 'Sedan', 31.97, 40.83, 'Budget', 19, 39, 5, 'FWD', 2.8, 6.4, 14.9, 127, 13.2, 167, 71, 58, 104, 37, 3205, 'Midsized', 'dataset', '2026-01-29 10:46:25', 63, 66, 51, 84, 61, 'active', NULL, NULL, NULL),
(105, 'Volkswagon', 'Jetta', 'Sedan', 22.00, 29.00, 'Budget', 21, 54, 5, 'FWD', 3.6, 9, 17, 135, 13.2, 187, 71, 58, 106, 38, 3065, 'Small', 'dataset', '2026-01-29 10:46:25', 50, 66, 73, 84, 61, 'active', NULL, NULL, NULL),
(106, 'Volvo', 'S60', 'Sedan', 42.60, 51.00, 'Mid', 17, 39, 5, 'AWD', 3, 7.3, 15.5, 125, 15.9, 187, 73, 57, 113, 38, 3740, 'Small', 'dataset', '2026-01-29 10:46:25', 59, 67, 54, 89, 61, 'active', NULL, NULL, NULL),
(107, 'Volvo', 'XC90', 'SUV', 57.40, 71.05, 'Budget', 14, 28, 7, 'AWD', 3.1, 7.7, 15.9, 126, 18.8, 195, 84, 70, 118, 41, 4595, 'Midsized', 'dataset', '2026-01-29 10:46:25', 59, 73, 35, 84, 88, 'active', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `vehicle_images`
--

CREATE TABLE `vehicle_images` (
  `id` int(11) NOT NULL,
  `vehicle_id` int(11) NOT NULL,
  `image_path` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `vehicle_images`
--

INSERT INTO `vehicle_images` (`id`, `vehicle_id`, `image_path`, `created_at`) VALUES
(1, 107, 'https://upload.wikimedia.org/wikipedia/commons/9/9d/Volvo_XC90_II_facelift_002.jpg', '2026-02-16 15:20:50'),
(2, 107, 'https://upload.wikimedia.org/wikipedia/commons/4/41/Volvo_XC90_II_facelift_003.jpg', '2026-02-16 15:20:50'),
(3, 107, 'https://upload.wikimedia.org/wikipedia/commons/e/e0/Moscow%2C_Volvo_XC90_white%2C_Sept_2025_01.jpg', '2026-02-16 15:20:50'),
(4, 106, 'https://upload.wikimedia.org/wikipedia/commons/d/de/Volvo_S60_%283rd_generation%29_IMG_8468.jpg', '2026-02-16 15:21:11'),
(5, 106, 'https://upload.wikimedia.org/wikipedia/commons/8/80/2021_Volvo_S60_2.0_T8_R_Design_Plus_AWD_%28Rear%29.jpg', '2026-02-16 15:21:11'),
(6, 106, 'https://upload.wikimedia.org/wikipedia/commons/3/3d/2021_Volvo_S60_2.0_T8_R_Design_Plus_AWD_%28Front%29.jpg', '2026-02-16 15:21:11'),
(7, 99, 'https://upload.wikimedia.org/wikipedia/commons/9/92/Toyota_Sequioa_%284734293642%29.jpg', '2026-02-16 15:33:53'),
(8, 10, 'https://upload.wikimedia.org/wikipedia/commons/a/a8/D%C3%BClmen%2C_Kirchspiel%2C_B%C3%B6rnste%2C_BMW_Mini_--_2019_--_7207-13.jpg', '2026-02-16 15:34:42'),
(9, 10, 'https://upload.wikimedia.org/wikipedia/commons/7/74/2023-12_BMW_520i_Gestaltung_Hofmeister-Knick.jpg', '2026-02-16 15:34:42'),
(10, 10, 'https://upload.wikimedia.org/wikipedia/commons/a/a4/2020_BMW_4.jpg', '2026-02-16 15:34:42'),
(11, 9, 'https://upload.wikimedia.org/wikipedia/commons/a/a8/D%C3%BClmen%2C_Kirchspiel%2C_B%C3%B6rnste%2C_BMW_Mini_--_2019_--_7207-13.jpg', '2026-02-16 15:35:42'),
(12, 9, 'https://upload.wikimedia.org/wikipedia/commons/a/a4/2020_BMW_4.jpg', '2026-02-16 15:35:42'),
(13, 9, 'https://upload.wikimedia.org/wikipedia/commons/b/bb/BMW_3_SERIES_E90_China_%287%29.jpg', '2026-02-16 15:35:42'),
(14, 11, 'https://upload.wikimedia.org/wikipedia/commons/6/6b/Mondial_de_l%27Automobile_2008%2C_Paris_-_France_%283261075916%29.jpg', '2026-02-16 15:36:06'),
(15, 11, 'https://upload.wikimedia.org/wikipedia/commons/0/0b/2010_BMW_X1_sDrive_2.0d_SE_-_Flickr_-_The_Car_Spy_%2825%29.jpg', '2026-02-16 15:36:06'),
(16, 11, 'https://upload.wikimedia.org/wikipedia/commons/7/73/2010_BMW_X1_sDrive_2.0d_SE_-_Flickr_-_The_Car_Spy_%2818%29.jpg', '2026-02-16 15:36:06'),
(17, 8, 'https://upload.wikimedia.org/wikipedia/commons/9/98/Audi_Q7_4M_FL2_3.0_TFSI_V6_quattro_MHEV_Satellite_Silver_Metallic_02.jpg', '2026-02-16 15:36:17'),
(18, 8, 'https://upload.wikimedia.org/wikipedia/commons/3/39/Audi_Q7_4M_FL2_3.0_TFSI_V6_quattro_MHEV_Satellite_Silver_Metallic_01.jpg', '2026-02-16 15:36:17'),
(19, 8, 'https://upload.wikimedia.org/wikipedia/commons/f/f8/Moscow%2C_Audi_Q7_blue%2C_Sept_2025_01.jpg', '2026-02-16 15:36:17'),
(20, 45, 'https://upload.wikimedia.org/wikipedia/commons/7/71/INNO64_-_Honda_Accord_Euro_R_CL7_%28red%29.jpg', '2026-02-16 15:37:21'),
(21, 45, 'https://upload.wikimedia.org/wikipedia/commons/1/17/Honda_Accord_3.5_SL_V6_2014_%283%29.jpg', '2026-02-16 15:37:21'),
(22, 45, 'https://upload.wikimedia.org/wikipedia/commons/a/ab/Honda_Accord_3.5_SL_V6_2014_%284%29.jpg', '2026-02-16 15:37:21'),
(23, 102, 'https://upload.wikimedia.org/wikipedia/commons/7/7e/Moscow%2C_Toyota_Tundra_%28XK50%2C_2013%29_black%2C_Oct_2025_02.jpg', '2026-02-16 15:45:56'),
(24, 102, 'https://upload.wikimedia.org/wikipedia/commons/9/9b/Moscow%2C_Toyota_Tundra_%28XK50%2C_2013%29_black%2C_Oct_2025_03.jpg', '2026-02-16 15:45:56'),
(25, 102, 'https://upload.wikimedia.org/wikipedia/commons/1/19/Moscow%2C_Toyota_Tundra_%28XK50%2C_2013%29_black%2C_Oct_2025_04.jpg', '2026-02-16 15:45:56'),
(26, 71, 'https://upload.wikimedia.org/wikipedia/commons/4/4b/Moscow%2C_Lincoln_Aviator%2C_Aug_2025_01.jpg', '2026-02-16 15:46:21'),
(27, 71, 'https://upload.wikimedia.org/wikipedia/commons/b/b6/DSC08191_%2852803368464%29.jpg', '2026-02-16 15:46:21'),
(28, 71, 'https://upload.wikimedia.org/wikipedia/commons/9/9d/Florists%27_review_%28microform%29_%281912%29_%2816069738893%29.jpg', '2026-02-16 15:46:21'),
(29, 70, 'https://upload.wikimedia.org/wikipedia/commons/b/b6/Moscow%2C_Lexus_RX%2C_Aug_2025_05.jpg', '2026-02-16 15:46:23'),
(30, 70, 'https://upload.wikimedia.org/wikipedia/commons/1/14/Moscow%2C_Lexus_RX%2C_Aug_2025_04.jpg', '2026-02-16 15:46:23'),
(31, 70, 'https://upload.wikimedia.org/wikipedia/commons/0/0d/Moscow%2C_Lexus_RX%2C_Aug_2025_09.jpg', '2026-02-16 15:46:23'),
(32, 69, 'https://upload.wikimedia.org/wikipedia/commons/d/d2/Lexus_LS_400_%28UCF20%29_Classic-Gala_2025_DSC_1092.jpg', '2026-02-16 15:46:25'),
(33, 69, 'https://upload.wikimedia.org/wikipedia/commons/1/1e/Lexus_LS_400_%28UCF20%29_Classic-Gala_2025_DSC_1091.jpg', '2026-02-16 15:46:25'),
(34, 69, 'https://upload.wikimedia.org/wikipedia/commons/4/4c/Lexus_LS_400_%28UCF20%29_Classic-Gala_2021_1X7A0129.jpg', '2026-02-16 15:46:25'),
(35, 68, 'https://upload.wikimedia.org/wikipedia/commons/4/4d/Moscow%2C_Mitsubishi_RVR%2C_Lexus_GX_Aug_2025_01.jpg', '2026-02-16 15:46:27'),
(36, 68, 'https://upload.wikimedia.org/wikipedia/commons/b/b8/Yema_F99.jpg', '2026-02-16 15:46:27'),
(37, 68, 'https://upload.wikimedia.org/wikipedia/commons/f/fb/Yema_F10_in_China.jpg', '2026-02-16 15:46:27'),
(38, 67, 'https://upload.wikimedia.org/wikipedia/commons/7/7a/Moscow%2C_Range_Rover_Evoque_red-beige%2C_Sept_2025_01.jpg', '2026-02-16 15:46:28'),
(39, 67, 'https://upload.wikimedia.org/wikipedia/commons/9/90/Moscow%2C_Range_Rover_Evoque_grey%2C_Sept_2025_01.jpg', '2026-02-16 15:46:28'),
(40, 67, 'https://upload.wikimedia.org/wikipedia/commons/f/f8/Moscow%2C_Range_Rover_Evoque%2C_Aug_2025_01.jpg', '2026-02-16 15:46:28'),
(41, 66, 'https://upload.wikimedia.org/wikipedia/commons/6/63/Moscow%2C_Kia_Soul%2C_Aug_2025_06.jpg', '2026-02-16 15:46:30'),
(42, 66, 'https://upload.wikimedia.org/wikipedia/commons/0/0a/Moscow%2C_Kia_Soul%2C_Aug_2025_21.jpg', '2026-02-16 15:46:30'),
(43, 66, 'https://upload.wikimedia.org/wikipedia/commons/e/eb/Moscow%2C_Kia_Soul%2C_Aug_2025_20.jpg', '2026-02-16 15:46:30'),
(44, 65, 'https://upload.wikimedia.org/wikipedia/commons/2/2e/Car_Interior.jpg', '2026-02-16 15:47:06'),
(45, 65, 'https://upload.wikimedia.org/wikipedia/commons/1/13/Shiny_Kia_in_Guryong_village.jpg', '2026-02-16 15:47:06'),
(46, 65, 'https://upload.wikimedia.org/wikipedia/commons/c/c1/Kia_Seltos_001.jpg', '2026-02-16 15:47:06'),
(47, 64, 'https://upload.wikimedia.org/wikipedia/commons/3/38/2023_Denver_Auto_Show_Kia_Niro_EX_Touring_wheel.jpg', '2026-02-16 15:47:07'),
(48, 64, 'https://upload.wikimedia.org/wikipedia/commons/6/6b/Kia_Niro_EV_2021-2022.jpg', '2026-02-16 15:47:07'),
(49, 64, 'https://upload.wikimedia.org/wikipedia/commons/4/4a/Kia_e-Niro_%28DE%3B_2018%29.jpg', '2026-02-16 15:47:07'),
(50, 63, 'https://upload.wikimedia.org/wikipedia/commons/5/5b/2018_Kia_Optima_S_front.jpg', '2026-02-16 15:47:08'),
(51, 63, 'https://upload.wikimedia.org/wikipedia/commons/c/ca/2018_Kia_Optima_S_rear.jpg', '2026-02-16 15:47:08'),
(52, 63, 'https://upload.wikimedia.org/wikipedia/commons/8/89/2018_Kia_Optima_GT_blue_rear.jpg', '2026-02-16 15:47:08'),
(53, 62, 'https://upload.wikimedia.org/wikipedia/commons/9/94/Moscow%2C_Kia_Carnival_%28YP%29_white%2C_Oct_2025_01.jpg', '2026-02-16 15:47:10'),
(54, 62, 'https://upload.wikimedia.org/wikipedia/commons/7/70/Kia_Carnival_KA4_PE_1.6T_EX_HEV_Snowflake_White_Pearl.jpg', '2026-02-16 15:47:10'),
(55, 62, 'https://upload.wikimedia.org/wikipedia/commons/7/74/Moscow%2C_Kia_Carnival_KA4_Oct_2025_03.jpg', '2026-02-16 15:47:10'),
(56, 61, 'https://upload.wikimedia.org/wikipedia/commons/1/16/Jeep_Wagoneer_1968.jpg', '2026-02-16 15:47:11'),
(57, 61, 'https://upload.wikimedia.org/wikipedia/commons/c/ce/1991_Jeep_Grand_Wagoneer_in_Hunter_Green_at_2017_Rockville_Maryland_show_9of9.jpg', '2026-02-16 15:47:11'),
(58, 61, 'https://upload.wikimedia.org/wikipedia/commons/9/9a/1983_Jeep_Wagoneer_%28SJ%29_original_gray_at_East_Coast_AMC_Day%2C_Mason_Dixon_Dragway_1of2.jpg', '2026-02-16 15:47:11'),
(59, 60, 'https://upload.wikimedia.org/wikipedia/commons/2/28/Jeep_Grand_Cherokee_4xe_002.jpg', '2026-02-16 15:47:13'),
(60, 60, 'https://upload.wikimedia.org/wikipedia/commons/2/26/Jeep_Grand_Cherokee_4xe_001.jpg', '2026-02-16 15:47:13'),
(61, 60, 'https://upload.wikimedia.org/wikipedia/commons/f/f6/Jeep_Grand_Cherokee%2C_Auto_2024%2C_Zurich_%28PANA0125%29.jpg', '2026-02-16 15:47:13'),
(62, 101, 'https://upload.wikimedia.org/wikipedia/commons/8/8a/Toyota_Tacoma_All_American_Speedway_Pace_Truck_Roseville_2025.jpg', '2026-02-16 15:47:18'),
(63, 101, 'https://upload.wikimedia.org/wikipedia/commons/5/50/Toyota_Tacoma_%28264107367%29.jpeg', '2026-02-16 15:47:18'),
(64, 101, 'https://upload.wikimedia.org/wikipedia/commons/e/ed/Toyota_Tacoma_%28264107369%29.jpeg', '2026-02-16 15:47:18'),
(65, 100, 'https://upload.wikimedia.org/wikipedia/commons/2/26/Moscow%2C_Toyota_Sienna_%28XL30%29_Feb_2026_01.jpg', '2026-02-16 15:47:19'),
(66, 100, 'https://upload.wikimedia.org/wikipedia/commons/b/b0/Cable_car_substitution_during_fleet_week_20251011.jpg', '2026-02-16 15:47:19'),
(67, 100, 'https://upload.wikimedia.org/wikipedia/commons/a/ab/Moscow%2C_Toyota_Sienna_%28XL30%29_SE%2C_Aug_2025_01.jpg', '2026-02-16 15:47:19'),
(68, 98, 'https://upload.wikimedia.org/wikipedia/commons/c/c4/Toyota_RAV4_Plug-in-Hybrid_AWD-i_%282021%29_%2852093971759%29.jpg', '2026-02-16 15:47:20'),
(69, 98, 'https://upload.wikimedia.org/wikipedia/commons/0/00/Toyota_RAV4_Core_Plug-in_Hybrid_%28XA60%29_Auto_Zuerich_2025_DSC_3038.jpg', '2026-02-16 15:47:20'),
(70, 98, 'https://upload.wikimedia.org/wikipedia/commons/8/8d/Toyota_RAV4_Core_Plug-in_Hybrid_%28XA60%29_Auto_Zuerich_2025_DSC_3037.jpg', '2026-02-16 15:47:20'),
(71, 97, 'https://upload.wikimedia.org/wikipedia/commons/2/2f/Moscow%2C_Toyota_Highlander_%28XU40%29_white_Sept_2025_01.jpg', '2026-02-16 15:47:22'),
(72, 97, 'https://upload.wikimedia.org/wikipedia/commons/d/d2/Moscow%2C_Toyota_Highlander_%28XU70%29_black_02.jpg', '2026-02-16 15:47:22'),
(73, 97, 'https://upload.wikimedia.org/wikipedia/commons/c/c1/Moscow%2C_Toyota_Highlander_%28XU70%29_black_01.jpg', '2026-02-16 15:47:22'),
(74, 96, 'https://upload.wikimedia.org/wikipedia/commons/5/5a/1979_Toyota_Crown_Hardtop_Super_Saloon.jpg', '2026-02-16 15:47:23'),
(75, 96, 'https://upload.wikimedia.org/wikipedia/commons/c/c6/The_frontview_of_the_model_car_of_Toyota_CROWN%27%22ESTATE_RS%22_%286LA-AZSH39W-CNXZB%29.jpg', '2026-02-16 15:47:23'),
(76, 96, 'https://upload.wikimedia.org/wikipedia/commons/9/9d/The_rearview_of_the_model_car_of_Toyota_CROWN%27%22ESTATE_RS%22_%286LA-AZSH39W-CNXZB%29.jpg', '2026-02-16 15:47:23'),
(77, 95, 'https://upload.wikimedia.org/wikipedia/commons/a/a9/Toyota_Corolla_XII_facelift_001.jpg', '2026-02-16 15:48:22'),
(78, 95, 'https://upload.wikimedia.org/wikipedia/commons/c/c6/1969_Toyota_Corolla_1200.jpg', '2026-02-16 15:48:22'),
(79, 95, 'https://upload.wikimedia.org/wikipedia/commons/0/0e/Toyota_Corolla_Drift_Car_AE86.jpg', '2026-02-16 15:48:22'),
(80, 94, 'https://upload.wikimedia.org/wikipedia/commons/b/b7/Toyota_Camry_ACV30_2.4_LE_Lunar_Mist_Metallic_diplomatic_02.jpg', '2026-02-16 15:48:23'),
(81, 94, 'https://upload.wikimedia.org/wikipedia/commons/4/4d/Toyota_Camry_ACV30_2.4_LE_Lunar_Mist_Metallic_diplomatic_01.jpg', '2026-02-16 15:48:23'),
(82, 94, 'https://upload.wikimedia.org/wikipedia/commons/9/91/2011_Toyota_Camry_XLE_dashboard.jpg', '2026-02-16 15:48:23'),
(83, 93, 'https://upload.wikimedia.org/wikipedia/commons/e/e7/2003%E2%80%932005_Subaru_Impreza_Outback_Sport_03_Logo.jpg', '2026-02-16 15:48:25'),
(84, 93, 'https://upload.wikimedia.org/wikipedia/commons/6/68/2003%E2%80%932005_Subaru_Impreza_Outback_Sport_01_Front.jpg', '2026-02-16 15:48:25'),
(85, 93, 'https://upload.wikimedia.org/wikipedia/commons/e/e2/2003%E2%80%932005_Subaru_Impreza_Outback_Sport_02_Rear.jpg', '2026-02-16 15:48:25'),
(86, 92, 'https://upload.wikimedia.org/wikipedia/commons/6/69/2016_Subaru_Liberty_%28MY16%29_2.5i_sedan_%282018-11-02%29_02.jpg', '2026-02-16 15:48:26'),
(87, 92, 'https://upload.wikimedia.org/wikipedia/commons/3/3a/SUBARU_LEGACY_Patrol-Car_%28right_Angle%29.jpg', '2026-02-16 15:48:26'),
(88, 92, 'https://upload.wikimedia.org/wikipedia/commons/6/69/1992_Subaru_Impreza_HX_AWD_Wagon_%2B_1998_Subaru_Legacy_LX_AWD_%2810142477914%29.jpg', '2026-02-16 15:48:26'),
(89, 92, 'https://upload.wikimedia.org/wikipedia/commons/6/69/2016_Subaru_Liberty_%28MY16%29_2.5i_sedan_%282018-11-02%29_02.jpg', '2026-02-16 15:48:27'),
(90, 92, 'https://upload.wikimedia.org/wikipedia/commons/3/3a/SUBARU_LEGACY_Patrol-Car_%28right_Angle%29.jpg', '2026-02-16 15:48:27'),
(91, 92, 'https://upload.wikimedia.org/wikipedia/commons/f/f3/2000_Subaru_Legacy_Saloon_GL_AWD_2_litre_%289741749412%29.jpg', '2026-02-16 15:48:27'),
(92, 91, 'https://upload.wikimedia.org/wikipedia/commons/2/22/Kyosho_Mini-Z_AWD_Subaru_Impreza_WRC_Scale_Model.jpg', '2026-02-16 15:48:28'),
(93, 91, 'https://upload.wikimedia.org/wikipedia/commons/d/d7/Kyosho_Mini-Z_Subaru_Impreza_WRC_AWD_-_California_United_States.jpg', '2026-02-16 15:48:28'),
(94, 91, 'https://upload.wikimedia.org/wikipedia/commons/5/5f/Subaru_Impreza_WRX_STI_Police_Car_%2812488369343%29.jpg', '2026-02-16 15:48:28'),
(95, 91, 'https://upload.wikimedia.org/wikipedia/commons/2/22/Kyosho_Mini-Z_AWD_Subaru_Impreza_WRC_Scale_Model.jpg', '2026-02-16 15:48:28'),
(96, 91, 'https://upload.wikimedia.org/wikipedia/commons/d/d7/Kyosho_Mini-Z_Subaru_Impreza_WRC_AWD_-_California_United_States.jpg', '2026-02-16 15:48:28'),
(97, 91, 'https://upload.wikimedia.org/wikipedia/commons/5/5f/Subaru_Impreza_WRX_STI_Police_Car_%2812488369343%29.jpg', '2026-02-16 15:48:28'),
(98, 90, 'https://upload.wikimedia.org/wikipedia/commons/2/28/Auto_Subaru_Forester_Moscow_VDNKh-North_tram_stop_%D0%A5182%D0%A5%D0%9077_2014-06_1404073091.JPG', '2026-02-16 15:48:29'),
(99, 90, 'https://upload.wikimedia.org/wikipedia/commons/4/40/Subaru_Forester_%28SL%29_e-BOXER_Auto_Zuerich_2024_DSC_6490.jpg', '2026-02-16 15:48:29'),
(100, 90, 'https://upload.wikimedia.org/wikipedia/commons/4/42/Subaru_Forester_and_Outback_in_Plaza_Subaru_Bandung_01.jpg', '2026-02-16 15:48:29'),
(101, 90, 'https://upload.wikimedia.org/wikipedia/commons/2/28/Auto_Subaru_Forester_Moscow_VDNKh-North_tram_stop_%D0%A5182%D0%A5%D0%9077_2014-06_1404073091.JPG', '2026-02-16 15:48:29'),
(102, 90, 'https://upload.wikimedia.org/wikipedia/commons/4/40/Subaru_Forester_%28SL%29_e-BOXER_Auto_Zuerich_2024_DSC_6490.jpg', '2026-02-16 15:48:29'),
(103, 90, 'https://upload.wikimedia.org/wikipedia/commons/4/42/Subaru_Forester_and_Outback_in_Plaza_Subaru_Bandung_01.jpg', '2026-02-16 15:48:29'),
(104, 83, 'https://upload.wikimedia.org/wikipedia/commons/1/12/Foxtron_Model_T_Kaohsiung_City_Bus_002.jpg', '2026-02-16 15:48:46'),
(105, 83, 'https://upload.wikimedia.org/wikipedia/commons/b/bb/Nissan_Rogue_Sport_%2840697009812%29.jpg', '2026-02-16 15:48:46'),
(106, 83, 'https://upload.wikimedia.org/wikipedia/commons/7/71/Nissan_Rogue_Sport_%2840697002982%29.jpg', '2026-02-16 15:48:46'),
(107, 82, 'https://upload.wikimedia.org/wikipedia/commons/c/c7/Nissan_Terrano_BYD21_2.7T_4WD_Charcoal_Pearl_01.jpg', '2026-02-16 15:48:47'),
(108, 82, 'https://upload.wikimedia.org/wikipedia/commons/2/2e/Nissan_Terrano_BYD21_2.7T_4WD_Charcoal_Pearl_02.jpg', '2026-02-16 15:48:47'),
(109, 82, 'https://upload.wikimedia.org/wikipedia/commons/8/8c/The_Nissan_Terrano_n%C2%B0_433_T1_Marathon_class_winner_at_the_Paris-Dakar_1989_exposed_at_the_ToKyo_Motorshow.jpg', '2026-02-16 15:48:47'),
(110, 81, 'https://upload.wikimedia.org/wikipedia/commons/1/11/Nissan_Frontier_Buenos_Aires_Police_in_2025.jpg', '2026-02-16 15:48:49'),
(111, 81, 'https://upload.wikimedia.org/wikipedia/commons/c/c7/Nissan_Frontier_Pro_PHEV_002.jpg', '2026-02-16 15:48:49'),
(112, 81, 'https://upload.wikimedia.org/wikipedia/commons/0/07/Nissan_Frontier_Pro_PHEV_001.jpg', '2026-02-16 15:48:49'),
(113, 80, 'https://upload.wikimedia.org/wikipedia/commons/2/25/CarPlay_displaying_music_in_Nissan.png', '2026-02-16 15:48:50'),
(114, 80, 'https://upload.wikimedia.org/wikipedia/commons/b/bb/2013_Nissan_Altima_%40_the_2012_New_York_International_Auto_Show_%286905496002%29.jpg', '2026-02-16 15:48:50'),
(115, 80, 'https://upload.wikimedia.org/wikipedia/commons/4/4f/2013_Nissan_Altima_%40_the_2012_New_York_International_Auto_Show_%287051586149%29.jpg', '2026-02-16 15:48:50'),
(116, 79, 'https://upload.wikimedia.org/wikipedia/commons/3/30/Moscow%2C_Mitsubishi_Outlander_%281st_gen%29_Aug_2025_03.jpg', '2026-02-16 15:48:52'),
(117, 79, 'https://upload.wikimedia.org/wikipedia/commons/1/19/Moscow%2C_Mitsubishi_Outlander_%281st_gen%29_Aug_2025_02.jpg', '2026-02-16 15:48:52'),
(118, 79, 'https://upload.wikimedia.org/wikipedia/commons/2/22/Moscow%2C_Mitsubishi_Outlander_%281st_gen%29_Aug_2025_01.jpg', '2026-02-16 15:48:52'),
(119, 78, 'https://upload.wikimedia.org/wikipedia/commons/b/b6/MERCEDES-BENZ_GLC_COUPE_%28C253%29_China_%283%29.jpg', '2026-02-16 15:48:53'),
(120, 78, 'https://upload.wikimedia.org/wikipedia/commons/6/64/MERCEDES-BENZ_GLC_COUPE_%28C253%29_China_%282%29.jpg', '2026-02-16 15:48:53'),
(121, 78, 'https://upload.wikimedia.org/wikipedia/commons/d/dc/MERCEDES-BENZ_GLC_COUPE_%28C253%29_China.jpg', '2026-02-16 15:48:53'),
(122, 89, 'https://upload.wikimedia.org/wikipedia/commons/5/5f/The_frontview_of_Subaru_CROSSTREK_Limited_%285AA-GUD%29_used_as_a_SUBARU_Lifesaver_Car_of_Hyogo_prefecture.jpg', '2026-02-16 15:53:17'),
(123, 89, 'https://upload.wikimedia.org/wikipedia/commons/8/80/The_rearview_of_Subaru_CROSSTREK_Limited_%285AA-GUD%29_used_as_a_SUBARU_Lifesaver_Car_of_Hyogo_prefecture.jpg', '2026-02-16 15:53:17'),
(124, 89, 'https://upload.wikimedia.org/wikipedia/commons/9/9a/Subaru_Crosstrek_%28GU%29_e-BOXER_Auto_Zuerich_2024_DSC_6500.jpg', '2026-02-16 15:53:17'),
(125, 77, 'https://upload.wikimedia.org/wikipedia/commons/3/31/MERCEDES-BENZ_C-CLASS_LWB_SEDAN_%28W205%29_China_%2831%29.jpg', '2026-02-16 15:53:59'),
(126, 77, 'https://upload.wikimedia.org/wikipedia/commons/4/43/MERCEDES-BENZ_C-CLASS_LWB_SEDAN_%28W205%29_China_%2828%29.jpg', '2026-02-16 15:53:59'),
(127, 77, 'https://upload.wikimedia.org/wikipedia/commons/4/4d/MERCEDES-BENZ_C-CLASS_LWB_SEDAN_%28W205%29_China_%2829%29.jpg', '2026-02-16 15:53:59'),
(128, 104, 'https://upload.wikimedia.org/wikipedia/commons/8/80/Volkswagen_2010_GTI_MKVI.jpg', '2026-02-16 16:05:43'),
(129, 105, 'https://upload.wikimedia.org/wikipedia/commons/6/6b/VOLKSWAGEN_JETTA_A7_China_%2829%29.jpg', '2026-02-16 16:05:53'),
(130, 105, 'https://upload.wikimedia.org/wikipedia/commons/5/5c/Volkswagen_Jetta_GLI_%28A7%29_Washington_DC_Metro_Area%2C_USA_%281%29.jpg', '2026-02-16 16:05:53'),
(131, 105, 'https://upload.wikimedia.org/wikipedia/commons/7/73/VOLKSWAGEN_JETTA_%28CHINA%2C_SECOND_GENERATION%29_%2826%29.jpg', '2026-02-16 16:05:53'),
(135, 88, 'https://upload.wikimedia.org/wikipedia/commons/7/70/20090419470DR_Leipzig_Poststra%C3%9Fe_7_Porsche_Zentrum.jpg', '2026-02-16 16:08:55'),
(136, 88, 'https://upload.wikimedia.org/wikipedia/commons/2/26/20090419475DR_Leipzig_Poststra%C3%9Fe_7_Porsche_Zentrum.jpg', '2026-02-16 16:08:55'),
(137, 88, 'https://upload.wikimedia.org/wikipedia/commons/6/68/Oxela%C3%ABre_le_porche_en2018_l%27%C3%A9glise_Saint-Martin.jpg', '2026-02-16 16:08:55'),
(138, 87, 'https://upload.wikimedia.org/wikipedia/commons/7/70/20090419470DR_Leipzig_Poststra%C3%9Fe_7_Porsche_Zentrum.jpg', '2026-02-16 16:09:36'),
(139, 87, 'https://upload.wikimedia.org/wikipedia/commons/2/26/20090419475DR_Leipzig_Poststra%C3%9Fe_7_Porsche_Zentrum.jpg', '2026-02-16 16:09:36'),
(140, 87, 'https://upload.wikimedia.org/wikipedia/commons/6/68/Oxela%C3%ABre_le_porche_en2018_l%27%C3%A9glise_Saint-Martin.jpg', '2026-02-16 16:09:36'),
(141, 86, 'https://upload.wikimedia.org/wikipedia/commons/a/aa/NISSAN_Z_%28RZ34%29_China.jpg', '2026-02-16 16:09:59'),
(142, 86, 'https://upload.wikimedia.org/wikipedia/commons/9/99/NISSAN_Z_%28RZ34%29_China_%282%29.jpg', '2026-02-16 16:09:59'),
(143, 86, 'https://upload.wikimedia.org/wikipedia/commons/1/14/2003_Nissan_Fairlady_Z_2.jpg', '2026-02-16 16:09:59'),
(144, 85, 'https://upload.wikimedia.org/wikipedia/commons/a/a0/Nissan_Versa_C11_1.8_SL_Sedan_Fresh_Powder_diplomatic.jpg', '2026-02-16 16:10:45'),
(145, 85, 'https://upload.wikimedia.org/wikipedia/commons/8/81/Nissan_Versa_C11_1.8_SL_Sedan_Fresh_Powder_diplomatic_01.jpg', '2026-02-16 16:10:45'),
(146, 85, 'https://upload.wikimedia.org/wikipedia/commons/1/1a/Nissan_Versa_C11_1.8_SL_Sedan_Fresh_Powder_diplomatic_02.jpg', '2026-02-16 16:10:45'),
(147, 84, 'https://upload.wikimedia.org/wikipedia/commons/3/3f/Nissan_Sylphy_B17_1.8_V_Grayish_Bronze_02.jpg', '2026-02-16 16:11:16'),
(148, 84, 'https://upload.wikimedia.org/wikipedia/commons/f/fc/2024_Nissan_Sentra_%28B18%29_DSC_3754_%28cropped%29.jpg', '2026-02-16 16:11:16'),
(149, 84, 'https://upload.wikimedia.org/wikipedia/commons/0/0c/2024_Nissan_Sentra_%28B18%29_DSC_3754.jpg', '2026-02-16 16:11:16'),
(153, 1, 'https://upload.wikimedia.org/wikipedia/commons/0/01/Acura_Integra_Type_S_%28DE5%29_%28front_three-quarter_view%29_at_Osaka_Auto_Messe_2026.jpg', '2026-03-02 17:08:12'),
(154, 1, 'https://upload.wikimedia.org/wikipedia/commons/d/d8/Acura_Integra_Type_S_%28DE5%29_%28rear_view%29_at_Osaka_Auto_Messe_2026.jpg', '2026-03-02 17:08:12'),
(155, 1, 'https://upload.wikimedia.org/wikipedia/commons/2/21/Acura_Integra_Type_S_%28DE5%29_%28side_view%29_at_Osaka_Auto_Messe_2026.jpg', '2026-03-02 17:08:12'),
(177, 3, 'https://upload.wikimedia.org/wikipedia/commons/0/0a/Audi_A3_Allstreet_IMG_3202.jpg', '2026-03-10 17:35:59'),
(178, 3, 'https://upload.wikimedia.org/wikipedia/commons/d/df/Audi_A3_8Y_DSC_7501.jpg', '2026-03-10 17:35:59'),
(179, 3, 'https://upload.wikimedia.org/wikipedia/commons/9/9b/Audi_A3_8Y_DSC_7498.jpg', '2026-03-10 17:35:59'),
(180, 59, 'https://upload.wikimedia.org/wikipedia/commons/5/50/Jeep_Gladiator_%28JT%29_Washington_DC_Metro_Area%2C_USA.jpg', '2026-03-21 07:10:20'),
(181, 59, 'https://upload.wikimedia.org/wikipedia/commons/1/17/Jeep_Gladiator_Bramsche.jpg', '2026-03-21 07:10:20'),
(182, 59, 'https://upload.wikimedia.org/wikipedia/commons/3/37/Jeep_Gladiator_in_Ukiah_-_December_2023_-_Sarah_Stierch.jpg', '2026-03-21 07:10:20'),
(183, 6, 'https://upload.wikimedia.org/wikipedia/commons/b/b8/Audi_A8_%28D5%29_Washington_DC_Metro_Area%2C_USA_%282%29.jpg', '2026-03-22 15:36:01'),
(184, 6, 'https://upload.wikimedia.org/wikipedia/commons/b/be/Audi_A8_%28D5%29_Washington_DC_Metro_Area%2C_USA_%281%29.jpg', '2026-03-22 15:36:01'),
(185, 6, 'https://upload.wikimedia.org/wikipedia/commons/f/f9/Audi_A8_%28D4%29_Washington_DC_Metro_Area%2C_USA.jpg', '2026-03-22 15:36:01'),
(186, 7, 'https://upload.wikimedia.org/wikipedia/commons/0/03/Audi_Q3_FJ_IMG_4232.jpg', '2026-03-22 15:36:04'),
(187, 7, 'https://upload.wikimedia.org/wikipedia/commons/0/08/Audi_Q3_FJ_DSC_3763.jpg', '2026-03-22 15:36:04'),
(188, 7, 'https://upload.wikimedia.org/wikipedia/commons/9/9b/Audi_Q3_FJ_DSC_3747.jpg', '2026-03-22 15:36:04'),
(189, 5, 'https://upload.wikimedia.org/wikipedia/commons/6/65/Audi_A6_Avant_C9_DSC_2833.jpg', '2026-03-22 15:36:08'),
(190, 5, 'https://upload.wikimedia.org/wikipedia/commons/e/eb/Audi_A6_C9_IAA_2025_DSC_1920.jpg', '2026-03-22 15:36:08'),
(191, 5, 'https://upload.wikimedia.org/wikipedia/commons/7/7e/Audi_A6_C9_IAA_2025_DSC_1917.jpg', '2026-03-22 15:36:08'),
(192, 4, 'https://upload.wikimedia.org/wikipedia/commons/8/84/DSC00875_Unmarked_Audi_A4%2C_Polizia_di_Stato%2C_Front_Right.jpg', '2026-03-22 15:36:11'),
(193, 4, 'https://upload.wikimedia.org/wikipedia/commons/3/35/Audi_A4_B9_sedans_%28FL%29_1X7A2441.jpg', '2026-03-22 15:36:11'),
(194, 4, 'https://upload.wikimedia.org/wikipedia/commons/8/84/Audi_A4_B9_sedans_%28FL%29_1X7A2439.jpg', '2026-03-22 15:36:11'),
(195, 12, 'https://upload.wikimedia.org/wikipedia/commons/6/60/BMW_X7_M50i_-_01.jpg', '2026-03-22 15:36:30'),
(196, 12, 'https://upload.wikimedia.org/wikipedia/commons/8/8c/BMW_X7_M50i_-_02.jpg', '2026-03-22 15:36:30'),
(197, 12, 'https://upload.wikimedia.org/wikipedia/commons/9/91/BMW_G07_X7_M60i_DSC_8564.jpg', '2026-03-22 15:36:30'),
(198, 13, 'https://upload.wikimedia.org/wikipedia/commons/7/77/BMW_Z4_%28G29%2C_facelift%29_M40i_DSC_7273_%28cropped%29.jpg', '2026-03-22 15:36:35'),
(199, 13, 'https://upload.wikimedia.org/wikipedia/commons/5/5f/BMW_Z4_%28G29%2C_facelift%29_M40i_DSC_7273.jpg', '2026-03-22 15:36:35'),
(200, 13, 'https://upload.wikimedia.org/wikipedia/commons/1/12/BMW_G29_1X7A1570.jpg', '2026-03-22 15:36:35'),
(201, 14, 'https://upload.wikimedia.org/wikipedia/commons/f/fd/BUICK_ENCORE_PLUS_%28BUICK_ENCORE_GX_FACELIFT%29_%282%29.jpg', '2026-03-22 15:36:39'),
(202, 14, 'https://upload.wikimedia.org/wikipedia/commons/2/25/BUICK_ENCORE_PLUS_%28BUICK_ENCORE_GX_FACELIFT%29.jpg', '2026-03-22 15:36:39'),
(203, 14, 'https://upload.wikimedia.org/wikipedia/commons/d/d6/BUICK_ENCORE_GX_China_%286%29.jpg', '2026-03-22 15:36:39'),
(204, 15, 'https://upload.wikimedia.org/wikipedia/commons/5/5c/BUICK_ENVISION_PLUS_China_%2815%29.jpg', '2026-03-22 15:36:43'),
(205, 15, 'https://upload.wikimedia.org/wikipedia/commons/b/b5/BUICK_ENVISION_PLUS_China_%2816%29.jpg', '2026-03-22 15:36:43'),
(206, 15, 'https://upload.wikimedia.org/wikipedia/commons/2/22/BUICK_ENVISION_PLUS_China_%2813%29.jpg', '2026-03-22 15:36:43'),
(207, 16, 'https://upload.wikimedia.org/wikipedia/commons/e/ea/Buick_Envista_Washington_DC_Metro_Area%2C_USA.jpg', '2026-03-22 15:37:32'),
(208, 16, 'https://upload.wikimedia.org/wikipedia/commons/8/87/2024_Buick_Envista_interior.jpg', '2026-03-22 15:37:32'),
(209, 16, 'https://upload.wikimedia.org/wikipedia/commons/1/10/2024_Buick_Envista_Preferred_in_White.jpg', '2026-03-22 15:37:32'),
(210, 17, 'https://upload.wikimedia.org/wikipedia/commons/a/a9/CADILLAC_CT4_China_%2811%29.jpg', '2026-03-22 15:37:37'),
(211, 17, 'https://upload.wikimedia.org/wikipedia/commons/8/8c/CADILLAC_CT4_China_%289%29.jpg', '2026-03-22 15:37:37'),
(212, 17, 'https://upload.wikimedia.org/wikipedia/commons/9/9a/CADILLAC_CT4_China_%288%29.jpg', '2026-03-22 15:37:37'),
(213, 47, 'https://upload.wikimedia.org/wikipedia/commons/2/2e/HONDA_ODYSSEY_RC_China_%2854%29.jpg', '2026-03-22 15:38:59'),
(214, 47, 'https://upload.wikimedia.org/wikipedia/commons/6/65/1996_Honda_Odyssey_RA1.jpg', '2026-03-22 15:38:59'),
(215, 47, 'https://upload.wikimedia.org/wikipedia/commons/c/ce/HONDA_ODYSSEY_%28RB3%2C4%29_China_%2853%29.jpg', '2026-03-22 15:38:59'),
(216, 32, 'https://upload.wikimedia.org/wikipedia/commons/2/29/Dodge_Durango_HB_Limited_Brilliant_Black_Crystal_Pearl_01.jpg', '2026-03-22 15:39:18'),
(217, 32, 'https://upload.wikimedia.org/wikipedia/commons/f/fe/Dodge_Durango_RT_%28WD%29_Washington_DC_Metro_Area%2C_USA.jpg', '2026-03-22 15:39:18'),
(218, 32, 'https://upload.wikimedia.org/wikipedia/commons/b/bb/Dodge_Durango_SRT_Hellcat.jpg', '2026-03-22 15:39:18'),
(219, 2, 'https://upload.wikimedia.org/wikipedia/commons/f/f8/ACURA_MDX_%28YD3%29_China_%288%29.jpg', '2026-03-22 15:39:27'),
(220, 2, 'https://upload.wikimedia.org/wikipedia/commons/f/f1/ACURA_MDX_%28YD3%29_China_%287%29.jpg', '2026-03-22 15:39:27'),
(221, 2, 'https://upload.wikimedia.org/wikipedia/commons/4/49/ACURA_MDX_%28YD2%29_China_%2823%29.jpg', '2026-03-22 15:39:27'),
(222, 31, 'https://upload.wikimedia.org/wikipedia/commons/6/68/2020_Chrysler_Voyager.jpg', '2026-03-22 15:39:41'),
(223, 31, 'https://upload.wikimedia.org/wikipedia/commons/f/f7/2000_Chrysler_Voyager%2C_rear_left%2C_09-06-2025.jpg', '2026-03-22 15:39:41'),
(224, 31, 'https://upload.wikimedia.org/wikipedia/commons/c/c0/2000_Chrysler_Voyager%2C_front_left%2C_09-06-2025.jpg', '2026-03-22 15:39:41'),
(225, 46, 'https://upload.wikimedia.org/wikipedia/commons/2/2d/Honda_CR-V_%286th_generation%29_hybrid_DSC_8549.jpg', '2026-03-22 15:39:49'),
(226, 46, 'https://upload.wikimedia.org/wikipedia/commons/9/9e/Honda_CR-V_%286th_generation%29_hybrid_DSC_8550.jpg', '2026-03-22 15:39:49'),
(227, 46, 'https://upload.wikimedia.org/wikipedia/commons/4/4b/Honda_CR-V_%286th_generation%29_hybrid_DSC_7915.jpg', '2026-03-22 15:39:49'),
(228, 76, 'https://upload.wikimedia.org/wikipedia/commons/b/b1/Mazda_CX-90_%28KK%29_Washington_DC_Metro_Area%2C_USA_%281%29.jpg', '2026-03-22 15:40:19'),
(229, 76, 'https://upload.wikimedia.org/wikipedia/commons/6/6f/Mazda_CX-90_%28KK%29_Washington_DC_Metro_Area%2C_USA.jpg', '2026-03-22 15:40:19'),
(230, 76, 'https://upload.wikimedia.org/wikipedia/commons/b/b1/Mazda_CX-90_3.3_e-Skyactiv-G_AWD_HEV_Turbo_Exclusive_Rhodium_White_Premium.jpg', '2026-03-22 15:40:19'),
(231, 28, 'https://upload.wikimedia.org/wikipedia/commons/6/66/Chevrolet_tahoe_taxi.jpg', '2026-03-22 15:41:19'),
(232, 28, 'https://upload.wikimedia.org/wikipedia/commons/1/19/Chevrolet_Tahoe_%28GMTK2XX%29_Washington_DC_Metro_Area%2C_USA_%282%29.jpg', '2026-03-22 15:41:19'),
(233, 28, 'https://upload.wikimedia.org/wikipedia/commons/0/0d/Chevrolet_Tahoe_%28GMT820%29_Washington_DC_Metro_Area%2C_USA.jpg', '2026-03-22 15:41:19'),
(234, 75, 'https://upload.wikimedia.org/wikipedia/commons/e/ec/2022_Mazda_CX-5_2.0_front.jpg', '2026-03-22 15:41:37'),
(235, 75, 'https://upload.wikimedia.org/wikipedia/commons/3/3f/MAZDA_CX-5_%28KF%29_China_%2812%29.jpg', '2026-03-22 15:41:37'),
(236, 75, 'https://upload.wikimedia.org/wikipedia/commons/c/cb/MAZDA_CX-5_%28KF%29_China_%2811%29.jpg', '2026-03-22 15:41:37'),
(237, 29, 'https://upload.wikimedia.org/wikipedia/commons/a/a0/CHEVROLET_TRAX_China_%287%29.jpg', '2026-03-22 15:41:55'),
(238, 29, 'https://upload.wikimedia.org/wikipedia/commons/7/79/CHEVROLET_TRAX_China_%286%29.jpg', '2026-03-22 15:41:55'),
(239, 29, 'https://upload.wikimedia.org/wikipedia/commons/d/d2/2021_Chevrolet_Trax_LT%2C_Windsor%2C_Ontario%2C_2025-07-01.jpg', '2026-03-22 15:41:55'),
(240, 44, 'https://upload.wikimedia.org/wikipedia/commons/f/f2/GMC_Yukon_Denali_%28GMTT1XX%29_Washington_DC_Metro_Area%2C_USA_%286%29.jpg', '2026-03-22 15:42:03'),
(241, 44, 'https://upload.wikimedia.org/wikipedia/commons/6/66/Chevrolet_tahoe_taxi.jpg', '2026-03-22 15:42:03'),
(242, 44, 'https://upload.wikimedia.org/wikipedia/commons/f/fc/GMC_Yukon_Denali_%28GMTT1XX%29_Washington_DC_Metro_Area%2C_USA_%285%29.jpg', '2026-03-22 15:42:03'),
(243, 74, 'https://upload.wikimedia.org/wikipedia/commons/8/8a/Mazda_CX-30_%28DM%29_Washington_DC_Metro_Area%2C_USA_%284%29.jpg', '2026-03-22 15:42:13'),
(244, 74, 'https://upload.wikimedia.org/wikipedia/commons/2/23/Mazda_CX-30_%28DM%29_Washington_DC_Metro_Area%2C_USA_%283%29.jpg', '2026-03-22 15:42:13'),
(245, 74, 'https://upload.wikimedia.org/wikipedia/commons/c/c3/Mazda_CX-30_%28DM%29_Washington_DC_Metro_Area%2C_USA_%282%29.jpg', '2026-03-22 15:42:13'),
(246, 43, 'https://upload.wikimedia.org/wikipedia/commons/2/20/20_GMC_Sierra_1500_SLE.jpg', '2026-03-22 15:42:42'),
(247, 43, 'https://upload.wikimedia.org/wikipedia/commons/b/bd/GMC_Sierra_1500_Denali_%28GMTT1XX%29_Washington_DC_Metro_Area%2C_USA.jpg', '2026-03-22 15:42:42'),
(248, 43, 'https://upload.wikimedia.org/wikipedia/commons/0/06/23_GMC_Sierra_1500_Elevation.jpg', '2026-03-22 15:42:42'),
(249, 58, 'https://upload.wikimedia.org/wikipedia/commons/d/d0/Jaguar_F-Pace_SVR_%2855015%29.jpg', '2026-03-22 15:42:48'),
(250, 58, 'https://upload.wikimedia.org/wikipedia/commons/d/db/Jaguar_F-Pace_SVR_%2834896%29.jpg', '2026-03-22 15:42:48'),
(251, 58, 'https://upload.wikimedia.org/wikipedia/commons/9/91/JAGUAR_F-PACE_China_%283%29.jpg', '2026-03-22 15:42:48'),
(252, 73, 'https://upload.wikimedia.org/wikipedia/commons/5/53/2019_Mazda_3_Hatchback.jpg', '2026-03-22 15:42:52'),
(253, 73, 'https://upload.wikimedia.org/wikipedia/commons/d/d5/MAZDA_CX-3_China_%286%29.jpg', '2026-03-22 15:42:52'),
(254, 73, 'https://upload.wikimedia.org/wikipedia/commons/6/64/2012_Mazda_3_MPS.jpg', '2026-03-22 15:42:52'),
(255, 72, 'https://upload.wikimedia.org/wikipedia/commons/5/5e/LINCOLN_CORSAIR_China_%2824%29.jpg', '2026-03-22 15:43:09'),
(256, 72, 'https://upload.wikimedia.org/wikipedia/commons/c/cc/LINCOLN_CORSAIR_China_%2820%29.jpg', '2026-03-22 15:43:09'),
(257, 72, 'https://upload.wikimedia.org/wikipedia/commons/5/57/LINCOLN_CORSAIR_China_%2819%29.jpg', '2026-03-22 15:43:09'),
(258, 27, 'https://upload.wikimedia.org/wikipedia/commons/b/b2/Chevrolet_Suburban_%28GMTT1XX%29_Washington_DC_Metro_Area%2C_USA_%2810%29.jpg', '2026-03-22 15:43:21'),
(259, 27, 'https://upload.wikimedia.org/wikipedia/commons/7/7d/Chevrolet_Suburban_%28GMTT1XX%29_Washington_DC_Metro_Area%2C_USA_%289%29.jpg', '2026-03-22 15:43:21'),
(260, 27, 'https://upload.wikimedia.org/wikipedia/commons/3/3a/Chevrolet_Suburban_%28GMTK2XX%29_Washington_DC_Metro_Area%2C_USA_%284%29.jpg', '2026-03-22 15:43:21'),
(261, 42, 'https://upload.wikimedia.org/wikipedia/commons/2/2e/Chevrolet_Colorado_RG_2.8_LT_Z71_Black_Meet_Kettle.jpg', '2026-03-22 15:43:26'),
(262, 42, 'https://upload.wikimedia.org/wikipedia/commons/1/1c/GMC_Canyon_Denali_%28RG%29_Washington_DC_Metro_Area%2C_USA.jpg', '2026-03-22 15:43:26'),
(263, 42, 'https://upload.wikimedia.org/wikipedia/commons/c/c5/Chevrolet_Colorado_Z71_%28Mk_I%29_Washington_DC_Metro_Area%2C_USA.jpg', '2026-03-22 15:43:26'),
(264, 57, 'https://upload.wikimedia.org/wikipedia/commons/b/b5/INFINITI_QX60_HYBRID_%28L50%29_China_%2818%29.jpg', '2026-03-22 15:43:32'),
(265, 57, 'https://upload.wikimedia.org/wikipedia/commons/d/d8/Infiniti_QX60_%28L51%29_Washington_DC_Metro_Area%2C_USA.jpg', '2026-03-22 15:43:32'),
(266, 57, 'https://upload.wikimedia.org/wikipedia/commons/0/00/Infiniti_QX60_%28L50%29_Washington_DC_Metro_Area%2C_USA_%281%29.jpg', '2026-03-22 15:43:32'),
(267, 18, 'https://upload.wikimedia.org/wikipedia/commons/9/99/2024_Cadillac_Escalade_in_Denver%2C_CO.jpg', '2026-03-22 15:47:49'),
(268, 18, 'https://upload.wikimedia.org/wikipedia/commons/e/ef/CADILLAC_ESCALADE_HYBRID_China.jpg', '2026-03-22 15:47:49'),
(269, 18, 'https://upload.wikimedia.org/wikipedia/commons/8/8f/Cadillac_Escalade_ESV_%28GMTT1XX%29_Washington_DC_Metro_Area%2C_USA.jpg', '2026-03-22 15:47:49'),
(270, 33, 'https://upload.wikimedia.org/wikipedia/commons/d/d9/Dodge_Hornet_Washington_DC_Metro_Area%2C_USA.jpg', '2026-03-22 16:01:32'),
(271, 33, 'https://upload.wikimedia.org/wikipedia/commons/0/04/Guardia_di_Finanza_Alfa_Romeo_Tonale_%28cropped%29.jpg', '2026-03-22 16:01:32'),
(272, 33, 'https://upload.wikimedia.org/wikipedia/commons/b/b6/Alfa_Romeo_Tonale_IMG_9748_%28cropped%29.jpg', '2026-03-22 16:01:32'),
(273, 19, 'https://upload.wikimedia.org/wikipedia/commons/2/23/CADILLAC_XT4_China_%2818%29.jpg', '2026-03-22 16:02:59'),
(274, 19, 'https://upload.wikimedia.org/wikipedia/commons/5/51/CADILLAC_XT4_China_%2817%29.jpg', '2026-03-22 16:02:59'),
(275, 19, 'https://upload.wikimedia.org/wikipedia/commons/6/61/Cadillac_XT4_MG_0793.jpg', '2026-03-22 16:02:59'),
(276, 20, 'https://upload.wikimedia.org/wikipedia/commons/6/68/CADILLAC_XT5_China_%2837%29.jpg', '2026-03-22 16:03:20'),
(277, 20, 'https://upload.wikimedia.org/wikipedia/commons/0/04/Cadillac_XT5_II_004.jpg', '2026-03-22 16:03:20'),
(278, 20, 'https://upload.wikimedia.org/wikipedia/commons/f/fe/Cadillac_XT5_II_001.jpg', '2026-03-22 16:03:20'),
(279, 21, 'https://upload.wikimedia.org/wikipedia/commons/0/02/CADILLAC_XT6_China_%2833%29.jpg', '2026-03-22 16:03:27'),
(280, 21, 'https://upload.wikimedia.org/wikipedia/commons/0/00/CADILLAC_XT6_China_%2830%29.jpg', '2026-03-22 16:03:27'),
(281, 21, 'https://upload.wikimedia.org/wikipedia/commons/5/54/CADILLAC_XT6_China_%2828%29.jpg', '2026-03-22 16:03:27'),
(282, 22, 'https://upload.wikimedia.org/wikipedia/commons/1/1d/1988_Chevrolet_Blazer_C10_Hardtop.jpg', '2026-03-22 16:06:26'),
(283, 22, 'https://upload.wikimedia.org/wikipedia/commons/b/b0/Chevrolet_Blazer_EV_%28LT%2C_Riptide_Blue%29_-_rear_quarter_right.jpg', '2026-03-22 16:06:26'),
(284, 22, 'https://upload.wikimedia.org/wikipedia/commons/7/7d/Chevrolet_Blazer_EV_%28LT%2C_Riptide_Blue%29_-_badge_closeup.jpg', '2026-03-22 16:06:26'),
(285, 23, 'https://upload.wikimedia.org/wikipedia/commons/2/2e/Chevrolet_Colorado_RG_2.8_LT_Z71_Black_Meet_Kettle.jpg', '2026-03-22 16:06:30'),
(286, 23, 'https://upload.wikimedia.org/wikipedia/commons/9/99/24_Chevrolet_Colorado_ZR2_Bison.jpg', '2026-03-22 16:06:30'),
(287, 23, 'https://upload.wikimedia.org/wikipedia/commons/c/c5/Chevrolet_Colorado_Z71_%28Mk_I%29_Washington_DC_Metro_Area%2C_USA.jpg', '2026-03-22 16:06:30'),
(288, 24, 'https://upload.wikimedia.org/wikipedia/commons/b/b6/Chevrolet_Corvette_C3_at_Hindley_Street%2C_Adelaide.jpg', '2026-03-22 16:06:35'),
(289, 24, 'https://upload.wikimedia.org/wikipedia/commons/0/0d/1962_Chevrolet_Corvette_IMG_3669.jpg', '2026-03-22 16:06:35'),
(290, 24, 'https://upload.wikimedia.org/wikipedia/commons/7/7f/Chevrolet_Corvette%2C_BAS_24%2C_Brussels_%28P1170387-RR%29.jpg', '2026-03-22 16:06:35'),
(291, 25, 'https://upload.wikimedia.org/wikipedia/commons/e/e4/CHEVROLET_MALIBU_EIGHTH_GENERATION_China_%2817%29.jpg', '2026-03-22 16:06:43'),
(292, 25, 'https://upload.wikimedia.org/wikipedia/commons/d/da/Chevrolet_Chevelle_Malibu_August_2025.jpg', '2026-03-22 16:06:43'),
(293, 25, 'https://upload.wikimedia.org/wikipedia/commons/2/21/CHEVROLET_MALIBU_EIGHTH_GENERATION_China_%2812%29.jpg', '2026-03-22 16:06:43'),
(294, 26, 'https://upload.wikimedia.org/wikipedia/commons/4/4b/23_Chevrolet_Silverado_1500_LT_Trail_Boss.jpg', '2026-03-22 16:06:48'),
(295, 26, 'https://upload.wikimedia.org/wikipedia/commons/4/4f/23_Chevrolet_Silverado_1500_RST.jpg', '2026-03-22 16:06:48'),
(296, 26, 'https://upload.wikimedia.org/wikipedia/commons/0/09/15_Chevrolet_Silverado_1500_LT.jpg', '2026-03-22 16:06:48'),
(297, 30, 'https://upload.wikimedia.org/wikipedia/commons/4/4d/Chrysler_Pacifica_%28RU%29_Washington_DC_Metro_Area%2C_USA_%283%29.jpg', '2026-03-22 16:08:05'),
(298, 30, 'https://upload.wikimedia.org/wikipedia/commons/c/cd/Chrysler_Pacifica_Hybrid_%28RU%29_Washington_DC_Metro_Area%2C_USA.jpg', '2026-03-22 16:08:05'),
(299, 30, 'https://upload.wikimedia.org/wikipedia/commons/d/db/Chrysler_Pacifica_%28RU%29_Washington_DC_Metro_Area%2C_USA.jpg', '2026-03-22 16:08:05'),
(300, 41, 'https://upload.wikimedia.org/wikipedia/commons/b/b0/Ford_Ranger_%28P375%29_Washington_DC_Metro_Area%2C_USA.jpg', '2026-03-22 16:08:46'),
(301, 41, 'https://upload.wikimedia.org/wikipedia/commons/2/20/2022_Ford_Ranger_Raptor.jpg', '2026-03-22 16:08:46'),
(302, 41, 'https://upload.wikimedia.org/wikipedia/commons/3/3e/Ford_Ranger_Raptor_Talos.jpg', '2026-03-22 16:08:46'),
(303, 40, 'https://upload.wikimedia.org/wikipedia/commons/8/82/Ford_Mustang%2C_ADAC_Deutschland_Klassik_2025%2C_Schwetzingen_%2820250726-P1048595%29.jpg', '2026-03-22 16:09:35'),
(304, 40, 'https://upload.wikimedia.org/wikipedia/commons/1/1c/Ford_Mustang_VII_Convertible_Autofr%C3%BChling_Ulm_IMG_9339.jpg', '2026-03-22 16:09:35'),
(305, 40, 'https://upload.wikimedia.org/wikipedia/commons/1/15/1968_Ford_Mustang_V8%2C_EMS_23%2C_Essen_%28P1160889-RR%29.jpg', '2026-03-22 16:09:35'),
(306, 39, 'https://upload.wikimedia.org/wikipedia/commons/0/00/Ford_Maverick_%28538872007%29.jpg', '2026-03-22 16:09:39'),
(307, 39, 'https://upload.wikimedia.org/wikipedia/commons/0/0c/Ford_Maverick_Tremor_DSC_2885.jpg', '2026-03-22 16:09:39'),
(308, 39, 'https://upload.wikimedia.org/wikipedia/commons/9/9f/Ford_Maverick_%2842123387295%29.jpg', '2026-03-22 16:09:39'),
(309, 38, 'https://upload.wikimedia.org/wikipedia/commons/5/5f/2022_Ford_F-150_Lightning_%2827478%29.jpg', '2026-03-22 16:09:42'),
(310, 38, 'https://upload.wikimedia.org/wikipedia/commons/8/85/2022_Ford_F-150_Lightning.jpg', '2026-03-22 16:09:42'),
(311, 38, 'https://upload.wikimedia.org/wikipedia/commons/d/dd/Ford_F-150_%28fourteenth_generation%29_Rutesheimer_Autoschau_2025_DSC_9231.jpg', '2026-03-22 16:09:42'),
(312, 37, 'https://upload.wikimedia.org/wikipedia/commons/4/4c/Ford_Explorer_EV_Auto_Zuerich_2024_DSC_6362.jpg', '2026-03-22 16:09:46'),
(313, 37, 'https://upload.wikimedia.org/wikipedia/commons/b/b4/Ford_Explorer_EV_Auto_Zuerich_2024_DSC_6360.jpg', '2026-03-22 16:09:46'),
(314, 37, 'https://upload.wikimedia.org/wikipedia/commons/9/93/Ford_Explorer_EV_IMG_2120.jpg', '2026-03-22 16:09:46'),
(315, 36, 'https://upload.wikimedia.org/wikipedia/commons/2/29/FORD_KUGA%2C_FORD_ESCAPE_%28CX482%29_China_%2811%29.jpg', '2026-03-22 16:09:49'),
(316, 36, 'https://upload.wikimedia.org/wikipedia/commons/3/34/Ford_Escape_%28Mk_II%29_Washington_DC_Metro_Area%2C_USA.jpg', '2026-03-22 16:09:50'),
(317, 36, 'https://upload.wikimedia.org/wikipedia/commons/a/a6/Ford_Escape_%28fourth_generation%29_DSC_7799.jpg', '2026-03-22 16:09:50'),
(318, 35, 'https://upload.wikimedia.org/wikipedia/commons/2/29/FORD_KUGA%2C_FORD_ESCAPE_%28CX482%29_China_%2811%29.jpg', '2026-03-22 16:09:53'),
(319, 35, 'https://upload.wikimedia.org/wikipedia/commons/3/34/Ford_Escape_%28Mk_II%29_Washington_DC_Metro_Area%2C_USA.jpg', '2026-03-22 16:09:53'),
(320, 35, 'https://upload.wikimedia.org/wikipedia/commons/a/a6/Ford_Escape_%28fourth_generation%29_DSC_7799.jpg', '2026-03-22 16:09:53'),
(321, 34, 'https://upload.wikimedia.org/wikipedia/commons/a/a5/Ford_Bronco_%28U725%29_Washington_DC_Metro_Area%2C_USA_%284%29.jpg', '2026-03-22 16:09:57'),
(322, 34, 'https://upload.wikimedia.org/wikipedia/commons/3/32/FORD_BRONCO_SIXTH_GENERATION_China_%284%29.jpg', '2026-03-22 16:09:57'),
(323, 34, 'https://upload.wikimedia.org/wikipedia/commons/e/e4/Ford_Bronco%2C_Back%2C_Reykjahlid%2C_Iceland.jpg', '2026-03-22 16:09:57'),
(324, 48, 'https://upload.wikimedia.org/wikipedia/commons/d/d9/Honda_Passport_%28YF7-8%29_Washington_DC_Metro_Area%2C_USA_%281%29.jpg', '2026-03-22 17:12:16'),
(325, 48, 'https://upload.wikimedia.org/wikipedia/commons/d/d9/Honda_Passport_TrailSport_Elite_%28front_three-quarter_view1%29_at_Osaka_Auto_Messe_2026.jpg', '2026-03-22 17:12:16'),
(326, 48, 'https://upload.wikimedia.org/wikipedia/commons/3/3e/Honda_Passport_TrailSport_Elite_%28front_three-quarter_view2%29_at_Osaka_Auto_Messe_2026.jpg', '2026-03-22 17:12:16'),
(327, 49, 'https://upload.wikimedia.org/wikipedia/commons/c/c8/Honda_Pilot_%28YG1-YG2%29_Washington_DC_Metro_Area%2C_USA.jpg', '2026-03-22 17:12:32'),
(328, 49, 'https://upload.wikimedia.org/wikipedia/commons/2/23/Honda_Pilot_%28YF1%29_Washington_DC_Metro_Area%2C_USA_%282%29.jpg', '2026-03-22 17:12:32'),
(329, 49, 'https://upload.wikimedia.org/wikipedia/commons/d/d4/Honda_Pilot_%28YF6%29_Washington_DC_Metro_Area%2C_USA.jpg', '2026-03-22 17:12:32'),
(330, 50, 'https://upload.wikimedia.org/wikipedia/commons/a/ae/22_Honda_Ridgeline_Black_Edition.jpg', '2026-03-22 17:12:36'),
(331, 50, 'https://upload.wikimedia.org/wikipedia/commons/d/d3/Honda_Ridgeline_%28YK1%29_Washington_DC_Metro_Area%2C_USA_%281%29.jpg', '2026-03-22 17:12:36'),
(332, 50, 'https://upload.wikimedia.org/wikipedia/commons/b/bb/22_Honda_Ridgeline_Black_Edition_HPD.jpg', '2026-03-22 17:12:36'),
(333, 56, 'https://upload.wikimedia.org/wikipedia/commons/4/41/Hyundai_Tuscon_2025-08-03.jpg', '2026-03-22 17:13:27'),
(334, 56, 'https://upload.wikimedia.org/wikipedia/commons/5/53/Hyundai_Tucson_%28NX4%2C_SWB%29_PHEV_1X7A1858.jpg', '2026-03-22 17:13:27'),
(335, 56, 'https://upload.wikimedia.org/wikipedia/commons/6/6a/2018_Hyundai_Tuscon_Facelift_%2859%29.jpg', '2026-03-22 17:13:27'),
(336, 55, 'https://upload.wikimedia.org/wikipedia/commons/0/0b/A_Hyundai_auto_dealership_in_Burlington%2C_Vermont.jpg', '2026-03-22 17:13:32'),
(337, 55, 'https://upload.wikimedia.org/wikipedia/commons/8/8d/Hyundai_Inster_Cross_in_Hyundai_Citystore_Navigation_Display.jpg', '2026-03-22 17:13:32'),
(338, 55, 'https://upload.wikimedia.org/wikipedia/commons/3/33/Hyundai_Inster_Cross_in_Hyundai_Citystore_Fukuoka_Wheel.jpg', '2026-03-22 17:13:32'),
(339, 54, 'https://upload.wikimedia.org/wikipedia/commons/d/d4/2024_Hyundai_Santa_Fe_%28MX5%29_IMG_5309.jpg', '2026-03-22 17:13:35'),
(340, 54, 'https://upload.wikimedia.org/wikipedia/commons/c/c8/2024_Hyundai_Santa_Fe_%28MX5%29_IMG_5295.jpg', '2026-03-22 17:13:35'),
(341, 54, 'https://upload.wikimedia.org/wikipedia/commons/2/2c/HYUNDAI_SANTA_FE_%28DM%29_China_%2825%29.jpg', '2026-03-22 17:13:35'),
(342, 53, 'https://upload.wikimedia.org/wikipedia/commons/0/0f/26_Hyundai_Palisade_Limited.jpg', '2026-03-22 17:13:38'),
(343, 53, 'https://upload.wikimedia.org/wikipedia/commons/4/43/Hyundai_Palisade_LX2_Steel_Graphite_%2811%29.jpg', '2026-03-22 17:13:38'),
(344, 53, 'https://upload.wikimedia.org/wikipedia/commons/a/aa/Hyundai_Palisade_LX3_Design_Sketch_%285%29.jpg', '2026-03-22 17:13:38'),
(345, 52, 'https://upload.wikimedia.org/wikipedia/commons/0/0a/HYUNDAI_ENCINO_ELECTRIC_%28HYUNDAI_KONA_ELECTRIC_%28OS%29%29_%282%29.jpg', '2026-03-22 17:13:42'),
(346, 52, 'https://upload.wikimedia.org/wikipedia/commons/2/25/HYUNDAI_ENCINO_ELECTRIC_%28HYUNDAI_KONA_ELECTRIC_%28OS%29%29.jpg', '2026-03-22 17:13:42'),
(347, 52, 'https://upload.wikimedia.org/wikipedia/commons/4/42/HYUNDAI_ENCINO_%28HYUNDAI_KONA_%28OS%29%29.jpg', '2026-03-22 17:13:42'),
(348, 51, 'https://upload.wikimedia.org/wikipedia/commons/6/6d/2017_Hyundai_Elantra%2C_Windsor%2C_Ontario%2C_2025-07-01.jpg', '2026-03-22 17:13:45'),
(349, 51, 'https://upload.wikimedia.org/wikipedia/commons/f/f0/Hyundai_Elantra_%28AD%29_Motorworld_Munich_1X7A0053.jpg', '2026-03-22 17:13:45'),
(350, 51, 'https://upload.wikimedia.org/wikipedia/commons/f/f4/Hyundai_Elantra_%28AD%29_Motorworld_Munich_1X7A0069.jpg', '2026-03-22 17:13:45'),
(351, 103, 'https://cdn.motor1.com/images/mgl/7ZPR1o/s1/2024-volkswagen-atlas.jpg', '2026-03-23 02:32:40'),
(352, 103, 'https://cdn.motor1.com/images/mgl/qkWR8v/s1/2024-volkswagen-atlas.jpg', '2026-03-23 02:32:40'),
(353, 103, 'https://cdn.motor1.com/images/mgl/qkWR8v/s1/2024-volkswagen-atlas.jpg', '2026-03-23 02:32:40');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `bikes`
--
ALTER TABLE `bikes`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `uniq_bike` (`brand`,`model`);

--
-- Indexes for table `bike_images`
--
ALTER TABLE `bike_images`
  ADD PRIMARY KEY (`id`),
  ADD KEY `bike_id` (`bike_id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `quiz_results`
--
ALTER TABLE `quiz_results`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `results`
--
ALTER TABLE `results`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `reviews`
--
ALTER TABLE `reviews`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `saved_vehicles`
--
ALTER TABLE `saved_vehicles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `user_id` (`user_id`,`vehicle_id`);

--
-- Indexes for table `system_settings`
--
ALTER TABLE `system_settings`
  ADD PRIMARY KEY (`setting_key`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`user_id`),
  ADD UNIQUE KEY `email` (`email`),
  ADD UNIQUE KEY `username` (`username`),
  ADD UNIQUE KEY `username_2` (`username`),
  ADD UNIQUE KEY `email_2` (`email`);

--
-- Indexes for table `user_evaluations`
--
ALTER TABLE `user_evaluations`
  ADD PRIMARY KEY (`evaluation_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `vehicle_id` (`vehicle_id`);

--
-- Indexes for table `vehicle`
--
ALTER TABLE `vehicle`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `vehicle_images`
--
ALTER TABLE `vehicle_images`
  ADD PRIMARY KEY (`id`),
  ADD KEY `vehicle_id` (`vehicle_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `bikes`
--
ALTER TABLE `bikes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=77;

--
-- AUTO_INCREMENT for table `bike_images`
--
ALTER TABLE `bike_images`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=221;

--
-- AUTO_INCREMENT for table `password_resets`
--
ALTER TABLE `password_resets`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `quiz_results`
--
ALTER TABLE `quiz_results`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT for table `results`
--
ALTER TABLE `results`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `reviews`
--
ALTER TABLE `reviews`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `saved_vehicles`
--
ALTER TABLE `saved_vehicles`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `vehicle`
--
ALTER TABLE `vehicle`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=114;

--
-- AUTO_INCREMENT for table `vehicle_images`
--
ALTER TABLE `vehicle_images`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=354;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `bike_images`
--
ALTER TABLE `bike_images`
  ADD CONSTRAINT `bike_images_ibfk_1` FOREIGN KEY (`bike_id`) REFERENCES `bikes` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `results`
--
ALTER TABLE `results`
  ADD CONSTRAINT `results_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`) ON DELETE CASCADE;

--
-- Constraints for table `reviews`
--
ALTER TABLE `reviews`
  ADD CONSTRAINT `reviews_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`) ON DELETE CASCADE;

--
-- Constraints for table `vehicle_images`
--
ALTER TABLE `vehicle_images`
  ADD CONSTRAINT `vehicle_images_ibfk_1` FOREIGN KEY (`vehicle_id`) REFERENCES `vehicle` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
