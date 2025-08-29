-- phpMyAdmin SQL Dump
-- version 5.0.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 23, 2022 at 11:48 AM
-- Server version: 10.4.14-MariaDB
-- PHP Version: 7.4.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `pakmeds`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin_users`
--

CREATE TABLE `admin_users` (
  `id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin_users`
--

INSERT INTO `admin_users` (`id`, `username`, `password`) VALUES
(1, 'admin', 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `banner`
--

CREATE TABLE `banner` (
  `id` int(11) NOT NULL,
  `heading1` varchar(250) NOT NULL,
  `heading2` varchar(250) NOT NULL,
  `btn_txt` varchar(55) DEFAULT NULL,
  `btn_link` varchar(55) DEFAULT NULL,
  `image` varchar(250) NOT NULL,
  `order_no` int(11) NOT NULL,
  `status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `banner`
--

INSERT INTO `banner` (`id`, `heading1`, `heading2`, `btn_txt`, `btn_link`, `image`, `order_no`, `status`) VALUES
(5, '', '', '', '', '512196903_final-2nd.jpg', 0, 1),
(6, '', '', '', '', '470665394_bannare-3.jpg', 0, 1),
(7, '', '', '', '', '138415930_44.jpg', 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(11) NOT NULL,
  `categories` varchar(255) NOT NULL,
  `status` tinyint(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `categories`, `status`) VALUES
(1, 'Medicine', 1),
(2, 'Beauty', 1);

-- --------------------------------------------------------

--
-- Table structure for table `contact_us`
--

CREATE TABLE `contact_us` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(75) NOT NULL,
  `mobile` varchar(15) NOT NULL,
  `comment` text NOT NULL,
  `added_on` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `contact_us`
--

INSERT INTO `contact_us` (`id`, `name`, `email`, `mobile`, `comment`, `added_on`) VALUES
(1, 'Awais Khan Bangash', 'awaiskhanbangash7@gmail.com', '03489397973', 'Select City', '2022-06-26 01:36:01'),
(2, 'Awais Khan Bangash', 'awaiskhanbangash7@gmail.com', '03489397973', '<select>Select City</select>', '2022-06-26 01:36:27'),
(3, 'Awais Khan Bangash', 'awaiskhanbangash7@gmail.com', '03489397973', '54545', '2022-06-27 03:32:41'),
(4, 'Awais Khan Bangash', 'awaiskhanbangash7@gmail.com', '03489397973', '54545', '2022-06-27 03:33:49'),
(5, '45', 'cinodi9770@viemery.com', '03489397973', '58787', '2022-06-27 03:35:17');

-- --------------------------------------------------------

--
-- Table structure for table `coupon_master`
--

CREATE TABLE `coupon_master` (
  `id` int(11) NOT NULL,
  `coupon_code` varchar(250) NOT NULL,
  `coupon_value` int(11) NOT NULL,
  `coupon_type` varchar(250) NOT NULL,
  `cart_min_value` int(11) NOT NULL,
  `status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `coupon_master`
--

INSERT INTO `coupon_master` (`id`, `coupon_code`, `coupon_value`, `coupon_type`, `cart_min_value`, `status`) VALUES
(1, 'first50', 500, 'Rupee', 1000, 1),
(2, 'first5', 10, 'Percentage', 1000, 1);

-- --------------------------------------------------------

--
-- Table structure for table `order`
--

CREATE TABLE `order` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `address` varchar(250) NOT NULL,
  `city` varchar(50) NOT NULL,
  `zip` int(11) NOT NULL,
  `payment_type` varchar(20) NOT NULL,
  `total_price` float NOT NULL,
  `payment_status` varchar(20) NOT NULL,
  `order_status` int(11) NOT NULL,
  `coupon_id` int(11) NOT NULL,
  `coupon_value` varchar(250) NOT NULL,
  `coupon_code` varchar(250) NOT NULL,
  `added_on` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `order`
--

INSERT INTO `order` (`id`, `user_id`, `address`, `city`, `zip`, `payment_type`, `total_price`, `payment_status`, `order_status`, `coupon_id`, `coupon_value`, `coupon_code`, `added_on`) VALUES
(1, 1, '107', '4', 25001, 'COD', 84, 'Success', 2, 0, '0', '', '2022-06-25 03:33:22'),
(2, 1, 'shais', 'Peshawar', 5, 'COD', 244.3, 'pending', 4, 0, '0', '', '2022-06-26 12:32:14'),
(3, 1, '107', 'Peshawar', 25001, 'COD', 48860, 'Success', 5, 0, '0', '', '2022-06-26 08:57:58'),
(4, 1, 'shais', 'Peshawar', 25001, 'COD', 11970.7, 'Success', 5, 0, '0', '', '2022-06-26 09:03:23'),
(5, 1, '107', 'Peshawar', 25001, 'COD', 11970.7, 'pending', 4, 0, '0', '', '2022-06-26 12:17:58'),
(6, 1, '2', 'Peshawar', 25001, 'COD', 10016.3, 'pending', 3, 0, '0', '', '2022-06-26 12:20:07'),
(7, 1, 'shafi', '4', 25001, 'COD', 1954.4, 'pending', 4, 2, '195.44', 'first5', '2022-06-26 12:43:18'),
(8, 1, 'shais', 'Peshawar', 25001, 'COD', 1758.96, 'pending', 4, 2, '195.44', 'first5', '2022-06-26 12:48:15'),
(9, 1, 'shais', 'Peshawar', 25001, 'COD', 1758.96, 'pending', 4, 2, '195.44', 'first5', '2022-06-26 12:55:10'),
(10, 1, 'shais', 'Peshawar', 25001, 'COD', 244.3, 'pending', 4, 0, '', '', '2022-06-26 02:18:22'),
(11, 1, 'sdsfsd', 'sdfsd', 0, 'COD', 400, 'pending', 4, 0, '', '', '2022-06-30 02:38:20'),
(12, 1, 'asds', 'sada', 0, 'COD', 244.3, 'pending', 1, 0, '', '', '2022-07-01 07:25:36'),
(13, 1, 'dsfs', 'dsf', 0, 'COD', 400, 'pending', 1, 0, '', '', '2022-07-01 07:28:42'),
(14, 1, 'asda', 'asd', 0, 'COD', 400, 'pending', 1, 0, '', '', '2022-07-01 07:30:21'),
(15, 1, 'jkhjgj', 'hjk', 0, 'COD', 244.3, 'pending', 1, 0, '', '', '2022-08-02 11:01:18'),
(16, 1, 'sadas', 'sad', 23, 'COD', 120, 'pending', 1, 0, '', '', '2022-08-10 04:29:36'),
(17, 6, 'peshawar,gull bahar', 'peshawar', 250, 'COD', 250, 'Success', 5, 0, '', '', '2022-08-11 07:51:53');

-- --------------------------------------------------------

--
-- Table structure for table `order_detail`
--

CREATE TABLE `order_detail` (
  `id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `qty` int(11) NOT NULL,
  `price` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `order_detail`
--

INSERT INTO `order_detail` (`id`, `order_id`, `product_id`, `qty`, `price`) VALUES
(1, 1, 1, 1, 84),
(2, 2, 1, 1, 244.3),
(3, 3, 1, 200, 244.3),
(4, 4, 1, 49, 244.3),
(5, 5, 1, 49, 244.3),
(6, 6, 1, 41, 244.3),
(7, 7, 1, 8, 244.3),
(8, 8, 1, 8, 244.3),
(9, 9, 1, 8, 244.3),
(10, 10, 1, 1, 244.3),
(11, 11, 2, 1, 400),
(12, 12, 1, 1, 244.3),
(13, 13, 2, 1, 400),
(14, 14, 2, 1, 400),
(15, 15, 1, 1, 244.3),
(16, 16, 3, 1, 120),
(17, 17, 70, 1, 250);

-- --------------------------------------------------------

--
-- Table structure for table `order_status`
--

CREATE TABLE `order_status` (
  `id` int(11) NOT NULL,
  `name` varchar(32) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `order_status`
--

INSERT INTO `order_status` (`id`, `name`) VALUES
(1, 'Pending'),
(2, 'Processing'),
(3, 'Shipped'),
(4, 'Canceled'),
(5, 'Complete');

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `id` int(11) NOT NULL,
  `categories_id` int(11) NOT NULL,
  `sub_categories_id` int(250) NOT NULL,
  `name` varchar(255) NOT NULL,
  `mrp` float NOT NULL,
  `price` float NOT NULL,
  `qty` int(11) NOT NULL,
  `formula` int(11) NOT NULL,
  `image` varchar(255) NOT NULL,
  `short_desc` varchar(2000) NOT NULL,
  `description` text NOT NULL,
  `best_seller` int(11) NOT NULL,
  `meta_title` varchar(2000) NOT NULL,
  `meta_desc` varchar(2000) NOT NULL,
  `meta_keyword` varchar(2000) NOT NULL,
  `status` tinyint(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`id`, `categories_id`, `sub_categories_id`, `name`, `mrp`, `price`, `qty`, `formula`, `image`, `short_desc`, `description`, `best_seller`, `meta_title`, `meta_desc`, `meta_keyword`, `status`) VALUES
(1, 2, 18, 'Mancode Beard Oil -Cedar Wood & Rose Mary 60 ml', 349, 244.3, 25, 0, '201389877_mancode_beard_oil_cedar_wood_rose_mary_60_ml_0_1.jpg', '(Inclusive of all taxes)\r\n* Mkt: GLIDE ROUTE VENTURES LLP\r\n* Delivery charges if applicable will be applied at checkout', 'If your goal is a soft, healthy, manageable beard, then adding beard care products to your grooming routine is critical. There are a lot of things about your beard that are out of your control”the way you care for it isnt one of them. Our line of beard products offers everything you need to keep your beard looking and feeling awesome”and when your beard looks awesome, it gives you the confidence to keep on growing.\r\nProfessional Salon Treatment At Home: Professional salon treatment that instantly transforms the texture of your beard leaving it soft, silky, and easier to manage. Deeply conditions, detangles, hydrates, and revives dull and dry hair improving its manageability and elasticity and giving it a beautiful shine\r\nDeep Conditioner: Deeply conditions, detangles, hydrates, and revives dull and dry beard improving its manageability and elasticity and giving it a beautiful shine nourishes beard hair. Repairs, restores, and strengthens weak, damaged, and over processed hair to restore a healthy look while promoting natural hair growth.\r\nBeard Cleanser: Mancode a unique cleaning technology absorbs and removes excess oil, sweat and odor to completely refresh hair; Great for all hair types, leaving virtually no visible residue or powdery buildup behind; features a time-released fragrance to deliver a light, clean scent throughout the day.\r\nPackage Content: 1 Beard Wash & Conditioner; Quantity: 200 Ml, Package - (Pack of 1)', 1, 'Mancode Beard Oil -Cedar Wood & Rose Mary 60 ml', 'If your goal is a soft, healthy, manageable beard, then adding beard care products to your grooming routine is critical. There are a lot of things about your beard that are out of your control”the way you care for it isnt one of them. Our line of beard products offers everything you need to keep your beard looking and feeling awesome”and when your beard looks awesome, it gives you the confidence to keep on growing.\r\nProfessional Salon Treatment At Home: Professional salon treatment that instantly transforms the texture of your beard leaving it soft, silky, and easier to manage. Deeply conditions...', '', 1),
(2, 1, 1, 'Diamicron Mr Tablets 60mg 2X10\\\'s', 800, 400, 20, 0, '633283023_1.jpg', 'Uses\\r\\nIt is used to control blood sugar levels in type II diabetic patients.\\r\\n\\r\\nSide Effects\\r\\nDizziness, Vomiting, Diarrhea, Confusion, Weakness, Sweating, Changes in vision, Decreased heartbeat, Constipation, Skin rash.\\r\\n\\r\\nWhen not to use\\r\\nHypersensitivity to the drug and patients with Diabetic ketoacidosis and Impaired kidney function', 'Precaution\\r\\nBefore using it, tell your doctor or pharmacist if you are allergic to it;or if you have any other allergies. This product may contain inactive ingredients (such as sulfites), which can cause allergic reactions or other problems. Talk to your pharmacist for more details.\\r\\n\\r\\nPrecaution\\r\\nTell your doctor if your condition does not improve or if it worsens (your blood sugar is too high or too low).\\r\\n\\r\\nPrecaution\\r\\nThis medicine should be used with caution if you have a liver disease or the normal function of the liver is impaired.\\r\\n\\r\\nBreast Feeding\\r\\nUse of this medicine is not recommended while breastfeeding. Monitoring of the infant for signs of decreased blood sugar may be required if this medicine is taken. You should consult your doctor before taking this medicine.\\r\\n\\r\\nPregnancy\\r\\nPlease consult your doctor when taking this medicine if you are pregnant.\\r\\n\\r\\nDrugs to avoid\\r\\nTell your doctor of any over-the-counter or prescription medication you may take, including: sulfonamide antibiotics, blood thinners, antidepressants, aspirin, propranolol, rifampin, phenylbutazone, disopyramide, probenecid, clofibrate,water pills, steroids, oral contraceptives, cimetidine.', 0, 'Diamicron Mr Tablets 60mg 2X10\\\'s', 'Before using it, tell your doctor or pharmacist if you are allergic to it;or if you have any other allergies. This product may contain inactive ingredients (such as sulfites), which can cause allergic reactions or other problems. Talk to your pharmacist for more details.', '', 1),
(3, 2, 14, 'Nature\'s Essence Flawless Gel Face Wash - Papaya 100 ml', 152, 120, 25, 0, '536259082_natures_essence_flawless_gel_face_wash_papaya_100_ml_0_1.jpg', 'Mkt: NATURE\'s ESSENCE PVT LTD\r\n* Country of Origin: India\r\n* Delivery charges if applicable will be applied at checkout', 'The contents of this website are for informational purposes only and not intended to be a substitute for professional medical advice, diagnosis, or treatment. Please seek the advice of a physician or other qualified health provider with any questions you may have regarding a medical condition. Do not disregard professional medical advice or delay in seeking it because of something you have read on this website.', 0, 'Nature\'s Essence Flawless Gel Face Wash - Papaya 100 ml', 'The contents of this website are for informational purposes only and not intended to be a substitute for professional medical advice, diagnosis, or treatment. Please seek the advice of a physician or other qualified health provider with any questions you may have regarding a medical condition. Do not disregard professional medical advice or delay in seeking it because of something you have read on this website.', '', 1),
(4, 1, 1, 'Dettol Instant Hand Sanitizer - Original 50 ml', 105, 100, 20, 0, '886495631_dettol_instant_hand_sanitizer_original_50_ml_33218_0_1.jpg', 'Your Trusted Dettol offers a new and improved Dettol Hand Sanitizer that is rinse-free and non-sticky.', 'Your Trusted Dettol offers a new and improved Dettol Hand Sanitizer that is rinse-free and non-sticky. It is specially formulated to kill 99.9% germs without water.\r\n Simply apply a few drops of the sanitizer on your hand and rub them thoroughly and voila!\r\nOn the go protection\r\nSafe for all skin types\r\nRinse-Free and Non-sticky', 1, 'Your Trusted Dettol offers a new and improved Dettol Hand Sanitizer that is rinse-free and non-sticky.', 'Your Trusted Dettol offers a new and improved Dettol Hand Sanitizer that is rinse-free and non-sticky. It is specially formulated to kill 99.9% germs without water.\r\n Simply apply a few drops of the sanitizer on your hand and rub them thoroughly and voila!\r\nOn the go protection\r\nSafe for all skin types\r\nRinse-Free and Non-sticky', '', 1),
(5, 1, 1, 'Ourdaily Vitamin C & Zinc Tablet 15\'s', 155, 150, 15, 0, '650898157_ourdaily_vitamin_c_zinc_tablet_15s_0_2.jpg', 'Ourdaily Vitamin C & Zinc', 'Ourdaily Vitamin C & Zinc', 0, '', '', '', 1),
(6, 1, 1, 'Status N95 Face Mask - White (Pack of 20)', 850, 780, 10, 0, '494596645_status_n95_face_mask_white_pack_of_20_0_1.jpg', 'Status N95 Face Mask - White', 'Status N95 Face Mask - White\r\nDISCLAIMER\r\nThe contents of this website are for informational purposes only and not intended to be a substitute for professional medical advice, diagnosis, or treatment. Please seek the advice of a physician or other qualified health provider with any questions you may have regarding a medical condition. Do not disregard professional medical advice or delay in seeking it because of something you have read on this website.', 1, 'Status N95 Face Mask - White', 'Status N95 Face Mask - White\r\nDISCLAIMER\r\nThe contents of this website are for informational purposes only and not intended to be a substitute for professional medical advice, diagnosis, or treatment. Please seek the advice of a physician or other qualified health provider with any questions you may have regarding a medical condition. Do not disregard professional medical advice or delay in seeking it because of something you have read on this website.', '', 1),
(7, 1, 1, 'Shake HandZ-E Alcohol Hand Rub With Pump 200 ml', 350, 275, 10, 0, '960241235_shake_handz_e_alcohol_hand_rub_with_pump_200_ml_0_0.jpg', 'Shake HandZ-E Alcohol Hand Rub With Pump 200 ml', 'Shake HandZ-E Alcohol Hand Rub With Pump 200 ml', 1, 'Shake HandZ-E Alcohol Hand Rub With Pump 200 ml', 'Shake HandZ-E Alcohol Hand Rub With Pump 200 ml', '', 1),
(8, 1, 1, 'Oxy5 Refillable Portable Oxygen Can 6 Litre', 1550, 1300, 15, 0, '168520659_oxy5_refillable_portable_oxygen_can_6_litre_0_1.jpg', 'Oxy5 Refillable Portable Oxygen Can 6 Litre', 'Oxy5 Refillable Portable Oxygen Can 6 Litre', 1, 'Oxy5 Refillable Portable Oxygen Can 6 Litre', 'Oxy5 Refillable Portable Oxygen Can 6 Litre', '', 1),
(9, 1, 1, 'Omron Compressor Nebulizer (NE-C101)', 4500, 4000, 10, 0, '893005243_omron_compressor_nebulizer_ne_c101_0.jpg', '(Inclusive of all taxes)\r\n* Mkt: Handylife\r\n* Country of Origin:pakistan\r\n* Delivery charges if applicable will be applied at checkout\r\nOmron Compressor Nebulizer (NE-C101)', 'Omron NE-C101 makes managing your respiratory health easy. It\'s simple to use, efficient, ensuring quick and reliable treatment for you and your loved ones.', 0, 'Omron Compressor Nebulizer (NE-C101)', 'Omron NE-C101 makes managing your respiratory health easy. It\'s simple to use, efficient, ensuring quick and reliable treatment for you and your loved ones.', '', 1),
(10, 1, 1, 'Dettol Antiseptic Liquid 1 ltr', 950, 900, 15, 0, '856694831_dettol_antiseptic_liquid_1_ltr_0_2.jpg', 'Dettol Antiseptic Liquid provides protection to you and your family against illness-causing germs and comes in a fresh pine fragrance. The topical antiseptic liquid sanitizes your home and helps maintain your personal hygiene.', 'Dettol Antiseptic Liquid provides protection to you and your family against illness-causing germs and comes in a fresh pine fragrance. The topical antiseptic liquid sanitizes your home and helps maintain your personal hygiene.\r\n\r\nThe Dettol first aid antiseptic liquid can be used to protect against infection from cuts and scratches, disinfect toys, and sanitize baby wear leaving everything clean and fresh. It can also be used as a household disinfectant and cleaner on surfaces or in laundry cleaning to kill germs. This liquid antiseptic is recommended by the Indian Medical Association and can be kept in your emergency first aid kit.', 1, 'Dettol Antiseptic Liquid 1 ltr', 'Dettol Antiseptic Liquid provides protection to you and your family against illness-causing germs and comes in a fresh pine fragrance. The topical antiseptic liquid sanitizes your home and helps maintain your personal hygiene.\r\n\r\nThe Dettol first aid antiseptic liquid can be used to protect against infection from cuts and scratches, disinfect toys, and sanitize baby wear leaving everything clean and fresh. It can also be used as a household disinfectant and cleaner on surfaces or in laundry cleaning to kill germs. This liquid antiseptic is recommended by the Indian Medical Association and can be kept in your emergency first aid kit.', '', 1),
(11, 1, 1, '3-Ply Disposable Surgical Face Mask 10\'s', 150, 120, 25, 0, '486621827_3_ply_disposable_surgical_face_mask_10s_0_0.jpg', '3-Ply Disposable Surgical Face Mask 10\'s', '3-Ply Disposable Surgical Face Mask 10\'s', 1, '3-Ply Disposable Surgical Face Mask 10\'s', '3-Ply Disposable Surgical Face Mask 10\'s', '', 1),
(12, 1, 1, 'Airwell 5-Layer N95 Face Mask - Blue', 350, 250, 10, 0, '495514091_essentium_phygen_5_layer_n95_face_mask_blue_0_1.jpg', 'Airwell 5-Layer N95 Face Mask - Blue', 'Airwell 5-Layer N95 Face Mask - Blue', 0, 'Airwell 5-Layer N95 Face Mask - Blue', 'Airwell 5-Layer N95 Face Mask - Blue', '', 1),
(13, 1, 2, 'Ensure Diabetes Care Powder - Vanilla Flavour 1 kg (Refill Pack)', 5000, 4500, 5, 0, '978402219_ensure_diabetes_care_powder_vanilla_flavour_1_kg_refill_pack_0_0.jpg', 'Ensure Diabetes Care Powder - Vanilla Flavour 1 kg (Refill Pack)', 'Ensure Diabetes Care Powder - Vanilla Flavour 1 kg (Refill Pack)', 1, 'Ensure Diabetes Care Powder - Vanilla Flavour 1 kg (Refill Pack)', 'Ensure Diabetes Care Powder - Vanilla Flavour 1 kg (Refill Pack)', '', 1),
(14, 1, 2, 'Ensure Diabetes Care Powder - Vanilla Flavour 400 gm (Pet Jar)', 2200, 2000, 5, 0, '778925896_ensure_diabetes_care_powder_vanilla_flavour_400_gm_pet_jar_0.jpg', 'Ensure diabetes care is diabetes-specific nutrition. It is sugar (sucrose) free, has high-quality protein and balanced ratio of protein:carbs: fat along with micronutrients to support overall health.', 'Ensure diabetes care is diabetes-specific nutrition. It is sugar (sucrose) free, has high-quality protein and balanced ratio of protein:carbs: fat along with micronutrients to support overall health. When included in the diet as partial meal replacement either in breakfast, lunch or dinner, it can help to keep blood glucose and weight under control. It contains nutrients that help provide steady carbs build muscle mass heart-healthy digestive health.', 1, 'Ensure diabetes care is diabetes-specific nutrition. It is sugar (sucrose) free, has high-quality protein and balanced ratio of protein:carbs: fat along with micronutrients to support overall health.', 'Ensure diabetes care is diabetes-specific nutrition. It is sugar (sucrose) free, has high-quality protein and balanced ratio of protein:carbs: fat along with micronutrients to support overall health. When included in the diet as partial meal replacement either in breakfast, lunch or dinner, it can help to keep blood glucose and weight under control. It contains nutrients that help provide steady carbs build muscle mass heart-healthy digestive health.', '', 1),
(15, 1, 2, 'Ensure Diabetes Care Powder - Chocolate Flavour 200 gm (Refill Pack)', 1200, 1130, 5, 0, '147996319_ensure_diabetes_care_powder_chocolate_flavour_200_gm_refill_pack_0_1.jpg', 'Ensure Diabetes Care Powder - Chocolate Flavour 200 gm (Refill Pack)', 'Ensure Diabetes Care Powder - Chocolate Flavour 200 gm (Refill Pack)', 1, 'Ensure Diabetes Care Powder - Chocolate Flavour 200 gm (Refill Pack)', 'Ensure Diabetes Care Powder - Chocolate Flavour 200 gm (Refill Pack)', '', 1),
(16, 1, 2, 'Sugar Free Gold Pellet 500\'s', 800, 750, 20, 0, '670059857_sugar_free_gold_pellet_500s_0_3.jpg', 'Sugar Free Gold Pellet 500\'s', 'Sugar Free Gold Pellet 500\'s', 1, 'Sugar Free Gold Pellet 500\'s', '', '', 1),
(17, 1, 2, 'Sugar Free Gold Powder 100 gm', 450, 350, 10, 0, '584004205_sugar_free_gold_powder_100_gm_0_1.jpg', 'Sugar Free Gold Powder 100 gm', 'Sugar Free Gold Powder 100 gm', 1, 'Sugar Free Gold Powder 100 gm', 'Sugar Free Gold Powder 100 gm', '', 1),
(18, 1, 2, 'Sugar Free Natura Sweet 200 Drops 10 ml', 430, 390, 25, 0, '898549366_sugar_free_natura_sweet_200_drops_10_ml_0_3.jpg', 'Sugar Free Natura Sweet 200 Drops 10 ml', 'Sugar Free Natura Sweet 200 Drops 10 ml', 1, 'Sugar Free Natura Sweet 200 Drops 10 ml', 'Sugar Free Natura Sweet 200 Drops 10 ml', '', 1),
(19, 1, 2, 'Sugar Free Natura Sachet 25\'s', 120, 90, 25, 0, '688608121_sugar_free_natura_sachet_25s_0_1.jpg', 'Sugar Free Natura Sachet 25\'s', 'Sugar Free Natura Sachet 25\'s', 1, 'Sugar Free Natura Sachet 25\'s', 'Sugar Free Natura Sachet 25\'s', '', 1),
(20, 1, 3, 'InStyle ISHM05 (including UV blue lens) - Grey', 11349, 11300, 5, 0, '748618315_full_rim_incl_lenses_rectangle_grey_grey_medium_0_0.jpg', 'Full Rim, Rectangle, Grey - Grey, Medium, 53-18-140, Mens.', 'Full Rim, Rectangle, Grey - Grey, Medium, 53-18-140, Mens. The fine lines of this luxe acetate frame combined with the oh-so thin metal double bridge and temples, makes it a must-have this season. Single Vision 1.5 index lens with UV blue coating. VX fog ID on lens is proof of authenticity.', 0, 'InStyle ISHM05 (including UV blue lens) - Grey', 'Full Rim, Rectangle, Grey - Grey, Medium, 53-18-140, Mens. The fine lines of this luxe acetate frame combined with the oh-so thin metal double bridge and temples, makes it a must-have this season. Single Vision 1.5 index lens with UV blue coating. VX fog ID on lens is proof of authenticity.', '', 1),
(21, 1, 3, 'InStyle ISFF30 (including UV blue lens) - Black', 11350, 11300, 5, 0, '799974058_full_rim_incl_lenses_rounds_black_gold_medium_0_1.jpg', 'Full Rim, Rounds, Black--Gold, Medium, 51-18-140, Women.', 'Full Rim, Rounds, Black--Gold, Medium, 51-18-140, Women. The round clubmaster. An update on a retro classic!. Single Vision 1.5 index lens with UV blue coating. VX fog ID on lens is proof of authenticity.', 1, 'Full Rim, Rounds, Black--Gold, Medium, 51-18-140, Women.', 'Full Rim, Rounds, Black--Gold, Medium, 51-18-140, Women. The round clubmaster. An update on a retro classic!. Single Vision 1.5 index lens with UV blue coating. VX fog ID on lens is proof of authenticity.', '', 1),
(22, 1, 3, 'InStyle ISFF26 (including UV blue lens) - Black', 11350, 11300, 5, 0, '152980612_full_rim_incl_lenses_rounds_black_gold_small_0_0.jpg', 'Full Rim, Rounds, Black--Gold, Small, 48-21-140, Women.', 'Full Rim, Rounds, Black--Gold, Small, 48-21-140, Women. This bold, round black acetate frame with it\'s polished metal double bridge and temples makes a very strong first impression. Single Vision 1.5 index lens with UV blue coating. VX fog ID on lens is proof of authenticity.', 1, 'Full Rim, Rounds, Black--Gold, Small, 48-21-140, Women.', 'Full Rim, Rounds, Black--Gold, Small, 48-21-140, Women. This bold, round black acetate frame with it\'s polished metal double bridge and temples makes a very strong first impression. Single Vision 1.5 index lens with UV blue coating. VX fog ID on lens is proof of authenticity.', '', 1),
(23, 1, 3, 'Renu Fresh Multi Purpose Solution 500 ml', 1500, 1400, 5, 0, '760778434_renu_fresh_multi_purpose_solution_500_ml_0_1.jpg', 'Renu Fresh multi-purpose solution is specially formulated to work with your natural tears.', 'Renu Fresh multi-purpose solution is specially formulated to work with your natural tears. Experience the feeling of wearing a fresh pair of lenses cushioned in moisture. Cleans loosens and removes accumulations of film, protein, other deposits, and debris from soft contact lenses. Removes protein most effectively when used daily. Destroys harmful micro-organisms on the surface of the lens. Rinses, stores, and wets lenses before insertion.', 1, 'Renu Fresh multi-purpose solution is specially formulated to work with your natural tears.', 'Renu Fresh multi-purpose solution is specially formulated to work with your natural tears. Experience the feeling of wearing a fresh pair of lenses cushioned in moisture. Cleans loosens and removes accumulations of film, protein, other deposits, and debris from soft contact lenses. Removes protein most effectively when used daily. Destroys harmful micro-organisms on the surface of the lens. Rinses, stores, and wets lenses before insertion.', '', 1),
(24, 1, 3, 'Vision Express 81133 Black Grey Rectangle Sunglasses 1\'s', 3000, 2800, 5, 0, '962793532_vision_express_81133_black_grey_rectangle_sunglasses_1s_0_0.jpg', 'Vision Express 81133 Black Grey Rectangle Sunglasses 1\'s', 'Vision Express 81133 Black Grey Rectangle Sunglasses 1\'s', 1, 'Vision Express 81133 Black Grey Rectangle Sunglasses 1\'s', 'Vision Express 81133 Black Grey Rectangle Sunglasses 1\'s', '', 1),
(25, 1, 3, 'Renu Fresh Multi Purpose Solution 60 ml', 400, 350, 5, 0, '170402376_renu_fresh_multi_purpose_solution_60_ml_3_0.jpg', 'Renu Fresh multi-purpose solution is specially formulated to work with your natural tears.', 'Renu Fresh multi-purpose solution is specially formulated to work with your natural tears. Experience the feeling of wearing a fresh pair of lenses cushioned in moisture. Cleans loosens and removes accumulations of film, protein, other deposits, and debris from soft contact lenses. Removes protein most effectively when used daily. Destroys harmful micro-organisms on the surface of the lens. Rinses, stores, and wets lenses before insertion.', 1, 'Renu Fresh multi-purpose solution is specially formulated to work with your natural tears.', 'Renu Fresh multi-purpose solution is specially formulated to work with your natural tears. Experience the feeling of wearing a fresh pair of lenses cushioned in moisture. Cleans loosens and removes accumulations of film, protein, other deposits, and debris from soft contact lenses. Removes protein most effectively when used daily. Destroys harmful micro-organisms on the surface of the lens. Rinses, stores, and wets lenses before insertion.', '', 1),
(26, 1, 3, 'Biotrue Multi Purpose Solution 60 ml', 300, 280, 25, 0, '273328975_biotrue_multi_purpose_solution_60_ml_0_0.jpg', 'Biotrue multi-purpose solution today - and experience advanced lens care inspired by the biology of your eyes. Biotrue was developed following intensive study on how the eye works naturally to clean, hydrate and keep itself healthy.', 'Biotrue multi-purpose solution today - and experience advanced lens care inspired by the biology of your eyes. Biotrue was developed following intensive study on how the eye works naturally to clean, hydrate and keep itself healthy.\r\n\r\nBiotrue provides exceptional disinfection and is the only solution that brings together three bio-inspired innovations:\r\n\r\nMatches the pH of healthy tears\r\nUtilises lubricant found naturally in the eyes\r\nKeeps certain beneficial tear proteins active', 0, 'Biotrue multi-purpose solution today - and experience advanced lens care inspired by the biology of your eyes. Biotrue was developed following intensive study on how the eye works naturally to clean, hydrate and keep itself healthy.', 'Biotrue multi-purpose solution today - and experience advanced lens care inspired by the biology of your eyes. Biotrue was developed following intensive study on how the eye works naturally to clean, hydrate and keep itself healthy.\r\n\r\nBiotrue provides exceptional disinfection and is the only solution that brings together three bio-inspired innovations:\r\n\r\nMatches the pH of healthy tears\r\nUtilises lubricant found naturally in the eyes\r\nKeeps certain beneficial tear proteins active', '', 1),
(27, 1, 6, 'American\'s Wormolin Drops 20 ml', 55, 45, 25, 0, '823296374_americans_wormolin_drops_15_ml_0_1.jpg', 'American\'s Wormolin Drops 20 ml', 'American\'s Wormolin Drops 20 ml', 1, 'American\'s Wormolin Drops 20 ml', 'American\'s Wormolin Drops 20 ml', '', 1),
(28, 1, 6, 'Sri Sri Tattva Organic Tulasi Arka Drops 30 ml', 200, 190, 10, 0, '950312358_sri_sri_tattva_organic_tulasi_arka_drops_30_ml_0.jpg', 'According to Ayurveda, Tulsi Arka is useful in cough, cold and hiccups. It also helps in Sore Throat, Bronchitis, Bronchial Asthma and Malaria.', 'According to Ayurveda, Tulsi Arka is useful in cough, cold and hiccups. It also helps in Sore Throat, Bronchitis, Bronchial Asthma and Malaria.', 1, 'According to Ayurveda, Tulsi Arka is useful in cough, cold and hiccups. It also helps in Sore Throat, Bronchitis, Bronchial Asthma and Malaria.', 'According to Ayurveda, Tulsi Arka is useful in cough, cold and hiccups. It also helps in Sore Throat, Bronchitis, Bronchial Asthma and Malaria.', '', 1),
(29, 1, 6, 'American\'s Tulsi Basak Plus Drops 20 ml', 100, 75, 10, 0, '872747602_americans_tulsi_basak_plus_drops_20_ml_0_1.jpg', 'American\'s Tulsi Basak Plus Drops 20 ml', 'American\'s Tulsi Basak Plus Drops 20 ml', 1, 'American\'s Tulsi Basak Plus Drops 20 ml', 'American\'s Tulsi Basak Plus Drops 20 ml', '', 1),
(30, 1, 6, 'American\'s Skinovita Ointment 10 gm', 110, 80, 10, 0, '775112181_americans_skinovita_ointment_10_gm_0_1.jpg', 'American\'s Skinovita Ointment 10 gm', 'American\'s Skinovita Ointment 10 gm', 1, 'American\'s Skinovita Ointment 10 gm', 'American\'s Skinovita Ointment 10 gm', '', 1),
(31, 1, 6, 'American\'s Rheuma Kare Drops 15 ml', 110, 80, 10, 0, '395617981_americans_rheuma_kare_drops_15_ml_0_1.jpg', 'American\'s Rheuma Kare Drops 15 ml', 'American\'s Rheuma Kare Drops 15 ml', 1, 'American\'s Rheuma Kare Drops 15 ml', 'American\'s Rheuma Kare Drops 15 ml', '', 1),
(32, 1, 6, 'American\'s Femino Kare Drops 20 ml', 110, 80, 10, 0, '890687906_americans_femino_kare_drops_15_ml_0_1.jpg', 'American\'s Femino Kare Drops 20 ml', 'American\'s Femino Kare Drops 20 ml', 1, 'American\'s Femino Kare Drops 20 ml', 'American\'s Femino Kare Drops 20 ml', '', 1),
(33, 1, 6, 'American\'s Diarro Kare Drops 20 ml', 110, 70, 5, 0, '977288548_americans_diarro_kare_drops_15_ml_0_1.jpg', 'American\'s Diarro Kare Drops 20 ml', 'American\'s Diarro Kare Drops 20 ml', 1, 'American\'s Diarro Kare Drops 20 ml', 'American\'s Diarro Kare Drops 20 ml', '', 1),
(34, 1, 6, 'American\'s Livo 10 Drops 20 ml', 110, 80, 5, 0, '688738900_americans_livo_10_drops_15_ml_0_0.jpg', 'American\'s Livo 10 Drops 20 ml', 'American\'s Livo 10 Drops 20 ml', 0, 'American\'s Livo 10 Drops 20 ml', 'American\'s Livo 10 Drops 20 ml', '', 1),
(35, 1, 6, 'American\'s Cardio Kare Drops 20 ml', 150, 120, 5, 0, '462204108_americans_cardio_kare_drops_15_ml_0_0.jpg', 'American\'s Cardio Kare Drops 20 ml', 'American\'s Cardio Kare Drops 20 ml', 1, 'American\'s Cardio Kare Drops 20 ml', 'American\'s Cardio Kare Drops 20 ml', '', 1),
(36, 1, 6, 'American\'s Babyplex Syrup 60 ml', 200, 150, 10, 0, '830651175_americans_babyplex_syrup_60_ml_0_1.jpg', 'American\'s Babyplex Syrup 60 ml', 'American\'s Babyplex Syrup 60 ml', 1, 'American\'s Babyplex Syrup 60 ml', 'American\'s Babyplex Syrup 60 ml', '', 1),
(37, 1, 7, 'OurDaily Vitamin E Softgel Capsules 10\'s', 120, 100, 10, 0, '201571186_ourdaily_vitamin_e_softgel_capsules_10s_0_0.jpg', 'OurDaily Vitamin E Softgel Capsules 10\'s', 'OurDaily Vitamin E Softgel Capsules 10\'s', 0, 'OurDaily Vitamin E Softgel Capsules 10\'s', 'OurDaily Vitamin E Softgel Capsules 10\'s', '', 1),
(38, 1, 7, 'Evion 400mg Capsule 10\'S', 110, 80, 5, 0, '283833054_ourdaily_vitamin_e_softgel_capsules_10s_1_0.jpg', 'Evion 400mg Capsule 10\'S', 'Evion 400mg Capsule 10\'S', 1, 'Evion 400mg Capsule 10\'S', 'Evion 400mg Capsule 10\'S', '', 1),
(39, 1, 7, 'PRO_FORM CARBON CX Bike', 170, 165, 3, 0, '855443632_222e001f-3e1e-47b2-8a59-1446033b1d86-600x632.jpg', 'PRO_FORM CARBON CX Bike', 'SPECIFICATIONS:\r\n\r\nTABLET HOLDER\r\n\r\nTablet holder included\r\n\r\n? DISPLAY Large LCD Window Display\r\n\r\nSEAT\r\n\r\nErgonomic, Padded Seat\r\n\r\n? HANDLE BARS\r\n\r\nMulti-Position, Adjustable Handlebars\r\n\r\nPEDAL\r\n\r\nOptional Toe Cages\r\n\r\nRESISTANCE LEVEL 16 Level\r\n\r\nWATER BOTTLE HOLDER:\r\n\r\nStay hidrated through out your workout by keeping your water bottle close\r\n\r\nFLY WHEEL\r\n\r\n13KG Inertia-Enhanced Flywheel\r\n\r\nMAX. USER WEIGHT: 150 kg.\r\n\r\nFOOTPRINT: 51? H X 21.9? W X 52.5? D.\r\n\r\n? PRODUCT DIMENSION: 133 L X 64 W X 159CM H.\r\n\r\nTRANSPORT WHEELS Front-Mounted Transport Wheels', 1, 'PRO_FORM CARBON CX Bike', 'SPECIFICATIONS:\r\n\r\nTABLET HOLDER\r\n\r\nTablet holder included\r\n\r\n? DISPLAY Large LCD Window Display\r\n\r\nSEAT\r\n\r\nErgonomic, Padded Seat\r\n\r\n? HANDLE BARS\r\n\r\nMulti-Position, Adjustable Handlebars\r\n\r\nPEDAL\r\n\r\nOptional Toe Cages\r\n\r\nRESISTANCE LEVEL 16 Level\r\n\r\nWATER BOTTLE HOLDER:\r\n\r\nStay hidrated through out your workout by keeping your water bottle close\r\n\r\nFLY WHEEL\r\n\r\n13KG Inertia-Enhanced Flywheel\r\n\r\nMAX. USER WEIGHT: 150 kg.\r\n\r\nFOOTPRINT: 51? H X 21.9? W X 52.5? D.\r\n\r\n? PRODUCT DIMENSION: 133 L X 64 W X 159CM H.\r\n\r\nTRANSPORT WHEELS Front-Mounted Transport Wheels', '', 1),
(40, 1, 7, '2 IN 1 DETACHABLE PALM PERCUSSION MASSAGER', 2500, 2300, 5, 0, '116352090_Detachable-Palm-Percussion-Massager-Main-Pic.jpg', 'The 2 in 1 Detachable Palm Percussion Massager is another premium quality massager presented by the Telebrands. The Detachable Palm Percussion Massager is basically a 2 in 1 massager that can be used as the hand massager and it can also be changed in to a dedicated palm massager.', 'The 2 in 1 Detachable Palm Percussion Massager is another premium quality massager presented by the Telebrands. The Detachable Palm Percussion Massager is basically a 2 in 1 massager that can be used as the hand massager and it can also be changed in to a dedicated palm massager.\r\n\r\nThe 2 in 1 Detachable Palm Percussion Massager helps to lower the pain in different areas in the body. The 2 in 1 Detachable Palm Percussion Massager helps to reinvigorate and stimulate the muscles in different areas of the body with the help of Reflexology Therapy.\r\n\r\nThe 2 in 1 Detachable Palm Percussion Massager comes with the large, comfortable and handy design that helps the user to easily use the massager on arms, legs, shoulders and back, where ordinary body massager cannot be reached.\r\n\r\nThe 2 in 1 Detachable Palm Percussion Massager comes with the infrared therapy massager that also helps to provide instant relief from pain in the body. The 2 in 1 Detachable Palm Percussion Massager uses the light therapy settings that accelerates maximum muscle stimulation.\r\n\r\nThe 2 in 1 Detachable Palm Percussion Massager comes with the detachable Velcro hand strap, which can easily be detach and attach with the massager, as per the need.\r\n\r\nIf you are interested to purchase the 2 in 1 Detachable Palm Percussion Massager, then you just have to dial the number 0321.4115583 from your landline or mobile number.\r\n\r\nAdditional Specifications of the 2 in 1 Detachable Palm Percussion Massager:\r\n\r\nTop quality 2 in 1 Detachable Palm Percussion Massager\r\nPremium quality body massager\r\n2 in 1 Body massager as Body massager and Palm massager\r\nDetachable\r\nFeatures 3200 RPM vibration\r\nComes with the large and ergonomic handle\r\nLightweight\r\nBox Contains:\r\n\r\n1 x 2 in 1 Detachable Palm Percussion Massager', 1, 'The 2 in 1 Detachable Palm Percussion Massager is another premium quality massager presented by the Telebrands. The Detachable Palm Percussion Massager is basically a 2 in 1 massager that can be used as the hand massager and it can also be changed in to a dedicated palm massager.\r\n\r\nThe 2 in 1 Detachable Palm Percussion Massager helps to lower the pain in different areas in the body. The 2 in 1 Detachable Palm Percussion Massager helps to reinvigorate and stimulate the muscles in different areas of the body with the help of Reflexology Therapy.\r\n\r\nThe 2 in 1 Detachable Palm Percussion Massager comes with the large, comfortable and handy design that helps the user to easily use the massager on arms, legs, shoulders and back, where ordinary body massager cannot be reached.\r\n\r\nThe 2 in 1 Detachable Palm Percussion Massager comes with the infrared therapy massager that also helps to provide instant relief from pain in the body. The 2 in 1 Detachable Palm Percussion Massager uses the light therapy settings that accelerates maximum muscle stimulation.\r\n\r\nThe 2 in 1 Detachable Palm Percussion Massager comes with the detachable Velcro hand strap, which can easily be detach and attach with the massager, as per the need.\r\n\r\nIf you are interested to purchase the 2 in 1 Detachable Palm Percussion Massager, then you just have to dial the number 0321.4115583 from your landline or mobile number.\r\n\r\nAdditional Specifications of the 2 in 1 Detachable Palm Percussion Massager:\r\n\r\nTop quality 2 in 1 Detachable Palm Percussion Massager\r\nPremium quality body massager\r\n2 in 1 Body massager as Body massager and Palm massager\r\nDetachable\r\nFeatures 3200 RPM vibration\r\nComes with the large and ergonomic handle\r\nLightweight\r\nBox Contains:\r\n\r\n1 x 2 in 1 Detachable Palm Percussion Massager', 'The 2 in 1 Detachable Palm Percussion Massager is another premium quality massager presented by the Telebrands. The Detachable Palm Percussion Massager is basically a 2 in 1 massager that can be used as the hand massager and it can also be changed in to a dedicated palm massager.\r\n\r\nThe 2 in 1 Detachable Palm Percussion Massager helps to lower the pain in different areas in the body. The 2 in 1 Detachable Palm Percussion Massager helps to reinvigorate and stimulate the muscles in different areas of the body with the help of Reflexology Therapy.\r\n\r\nThe 2 in 1 Detachable Palm Percussion Massager comes with the large, comfortable and handy design that helps the user to easily use the massager on arms, legs, shoulders and back, where ordinary body massager cannot be reached.\r\n\r\nThe 2 in 1 Detachable Palm Percussion Massager comes with the infrared therapy massager that also helps to provide instant relief from pain in the body. The 2 in 1 Detachable Palm Percussion Massager uses the light therapy settings that accelerates maximum muscle stimulation.\r\n\r\nThe 2 in 1 Detachable Palm Percussion Massager comes with the detachable Velcro hand strap, which can easily be detach and attach with the massager, as per the need.\r\n\r\nIf you are interested to purchase the 2 in 1 Detachable Palm Percussion Massager, then you just have to dial the number 0321.4115583 from your landline or mobile number.\r\n\r\nAdditional Specifications of the 2 in 1 Detachable Palm Percussion Massager:\r\n\r\nTop quality 2 in 1 Detachable Palm Percussion Massager\r\nPremium quality body massager\r\n2 in 1 Body massager as Body massager and Palm massager\r\nDetachable\r\nFeatures 3200 RPM vibration\r\nComes with the large and ergonomic handle\r\nLightweight\r\nBox Contains:\r\n\r\n1 x 2 in 1 Detachable Palm Percussion Massager', '', 1),
(41, 1, 8, 'Enfamil A.R Powder 400g powder', 4000, 3800, 10, 0, '944338836_download.jfif', '-Skim milk, vegetable oils, lactose, vitamin A,D,E,K,C.\\r\\n-400g\\r\\n-0-12 months\\r\\n-Formulated with nutrients with levels, nutritionally balanced, all ingredients are of non-GMO origin.', 'Description\\r\\nEnfamil A.R.  is suitable for infants from birth on when not breastfed. Enfamil A.R. is for the dietary management of regurgitation or spitting up and can be used as a sole source of nourishment up to 6 months of age and as the basis of diversified diet for older infants. Enfamil A.R.  is a nutritionally complete, pre-thickened formula containing a unique rice starch thickener that is thin in the bottle and thickens in the stomach\\r\\nIngredients\\r\\n-Skim milk\\r\\n-Vegetable oils\\r\\n-Rice starch\\r\\n-Lactose\\r\\n-Glucose syrup\\r\\n-Calcium carbonate\\r\\n-Emulsifier (soy lecithin)\\r\\n-Ferrous sulfate\\r\\n-Potassium chloride\\r\\n-D-Biotin\\r\\n-Riboflavin\\r\\n-Cholecalciferol\\r\\n-Ascorbic acid\\r\\n-Nicainamide\\r\\n-Retinyl palmitate\\r\\n-Pantothenate\\r\\n-Cupric sulfate\\r\\n-Vitamin A,D,E,K,C,B6,B12\\r\\n-Folic acid\\r\\n-Zinc\\r\\n-Iron\\r\\n-Copper\\r\\n-Magnesium\\r\\n-Iodine\\r\\nForm\\r\\nPowder\\r\\nSize\\r\\n400g\\r\\nKey Benefits\\r\\n-It is for the dietary management of regurgitation or spitting up.\\r\\n-It can be used as a sole source of nourishment for up to 6 months of age.\\r\\n-It is nutritionally complete and pre- thickened formula containing a unique rice starch thickener that is thin in the bottle and thickens in the stomach. -Consists a blend of prebiotics for digestive health.\\r\\n-Enfamil A.R. contains a unique blend of omega 3 (DHA) and omega 6 (ARA) fatty acids. These fatty acids are naturally found in breast milk.\\r\\n-DHA at the level present in Enfamil A.R.  (at least 0.3 % of total fatty acids) has been clinically proven and is officially recognized that it contributes to normal visual development of the infant with an intake of 100 mg of DHA/day. It is also known for playing a structural and functional role in brain development.\\r\\nSafety Information/Precautions\\r\\n-Only prepare one feed at a time, discard the unused preparation.\\r\\n-Consult your doctor before giving Enfamil A.R to your child, especially if your child has any kind of allergy to Enfamil A.R or its constituents.\\r\\n-Do not dissolve Enfamil A.R in any other liquid other than clean water.\\r\\n-Use the prescribed amount of Enfamil A.R only Do not overdose or lessen the quantity without consulting your doctor.\\r\\n-Enfamil A.R must be used under medical supervision.\\r\\nFaqs\\r\\n1. How to know If my child is allergic to Enfamil A.R?\\r\\n\\r\\nRead the ingredients carefully on the label to avoid the known allergens. If allergic, your child may show the following symptoms:\\r\\n-Excessive crying\\r\\n-Bloating\\r\\n-Loose watery stools\\r\\n-Vomiting\\r\\n\\r\\n2. Can I reuse the mixed preparation?\\r\\n\\r\\nOnly prepare one feed at a time as the mixed preparation will spoil if left unused for one hour. Please prepare one feed at a time only.\\r\\n\\r\\n3. Can I store this product in the fridge?\\r\\n\\r\\nNo, please don’t store this product in the fridge. Store Enfamil A.R at room temperature away from direct sunlight or any source of heat. Keep it out of the reach of children and pets.\\r\\n\\r\\n4. What are the possible side effects of this formula?\\r\\n\\r\\nNo such side effects have been reported yet with the recommended dose of this formula.\\r\\n\\r\\n5. What will happen if I use less quantity of powder than prescribed?\\r\\n\\r\\nPlease take the proper ratio of water and powder as mentioned on the chart or as described by the doctor. If you use less quantity, then your child may not get the nutrients required in proper proportion.', 1, '-Skim milk, vegetable oils, lactose, vitamin A,D,E,K,C.\\r\\n-400g\\r\\n-0-12 months\\r\\n-Formulated with nutrients with levels, nutritionally balanced, all ingredients are of non-GMO origin.', 'Description\\r\\nEnfamil A.R.  is suitable for infants from birth on when not breastfed. Enfamil A.R. is for the dietary management of regurgitation or spitting up and can be used as a sole source of nourishment up to 6 months of age and as the basis of diversified diet for older infants. Enfamil A.R.  is a nutritionally complete, pre-thickened formula containing a unique rice starch thickener that is thin in the bottle and thickens in the stomach\\r\\nIngredients\\r\\n-Skim milk\\r\\n-Vegetable oils\\r\\n-Rice starch\\r\\n-Lactose\\r\\n-Glucose syrup\\r\\n-Calcium carbonate\\r\\n-Emulsifier (soy lecithin)\\r\\n-Ferrous sulfate\\r\\n-Potassium chloride\\r\\n-D-Biotin\\r\\n-Riboflavin\\r\\n-Cholecalciferol\\r\\n-Ascorbic acid\\r\\n-Nicainamide\\r\\n-Retinyl palmitate\\r\\n-Pantothenate\\r\\n-Cupric sulfate\\r\\n-Vitamin A,D,E,K,C,B6,B12\\r\\n-Folic acid\\r\\n-Zinc\\r\\n-Iron\\r\\n-Copper\\r\\n-Magnesium\\r\\n-Iodine\\r\\nForm\\r\\nPowder\\r\\nSize\\r\\n400g\\r\\nKey Benefits\\r\\n-It is for the dietary management of regurgitation or spitting up.\\r\\n-It can be used as a sole source of nourishment for up to 6 months of age.\\r\\n-It is nutritionally complete and pre- thickened formula containing a unique rice starch thickener that is thin in the bottle and thickens in the stomach. -Consists a blend of prebiotics for digestive health.\\r\\n-Enfamil A.R. contains a unique blend of omega 3 (DHA) and omega 6 (ARA) fatty acids. These fatty acids are naturally found in breast milk.\\r\\n-DHA at the level present in Enfamil A.R.  (at least 0.3 % of total fatty acids) has been clinically proven and is officially recognized that it contributes to normal visual development of the infant with an intake of 100 mg of DHA/day. It is also known for playing a structural and functional role in brain development.\\r\\nSafety Information/Precautions\\r\\n-Only prepare one feed at a time, discard the unused preparation.\\r\\n-Consult your doctor before giving Enfamil A.R to your child, especially if your child has any kind of allergy to Enfamil A.R or its constit', '', 1),
(42, 1, 8, 'Enfamil A+ 2 400gm milk powder', 3000, 2800, 5, 0, '786849402_A+.jfif', '-DHA & ARA (brain nourishing nutrients), calcium, iron, protein\r\n-Enfamil A+ Stage 2 Follow-up Formula6-12 months\r\n-400 gm Highly nourishing infant formula\r\n-DHA & ARA aids in brain development\r\n-Rich in vital nutrients iron, calcium & protein', 'Description\r\nEnfamil A+ formula is scientifically designed to fulfill all the nutritional requirements of an infant. It contains expert-recommended levels of DHA & ARA (fatty acids present in breast milk) that are most essential for cognitive development (how children think, explore, figure out things) during the early years of infancy. DHA not only helps in promoting healthy brain function but also aids in developing correct vision.  It is rich in essential nutrients like choline (for memory and learning), iron, calcium; magnesium, phosphorus, & vitamin D for strong teeth and bones; zinc (for brain cell growth), protein; copper, glucose, and riboflavin for energy to the brain cells. Enfamil A+ also contains prebiotics blend PDX & GOS that boost the growth of useful gut bacteria which eventually strengthen the immune system. It is manufactured by Mead Johnson Nutrition which is considered the world’s leading pediatric nutrition provider. It is easily digested by the infant and designed for feeding babies needing special care but don’t have special nutritional requirements.\r\nIngredients\r\n-GOS (galactooligosaccharide)\r\n-PDX (polydextrose)\r\n-Calcium, Vitamin D, Phosphorus & Magnesium\r\n-Omega 3 fatty acids\r\n-Vitamin A, C, E\r\n-Vitamin B6, B12 & folic acid\r\n-Iodine\r\n-Copper, glucose & riboflavin\r\n-Protein\r\n-Thiamine\r\n-Selenium & Zinc\r\nForm\r\nPowder infant formula\r\nFlavor/Variant/Type/Size:\r\n-Enfamil A+ Stage 2 Follow-up Formula\r\n-400 gm\r\nKey Benefits\r\n-Scientifically designed advanced baby formula meeting nutritional requirements of mother’s breast milk\r\n-It contains DHA & ARA levels close to WHO recommendations, which is significant in the cognitive development of infants\r\n-Rich in essential nutrients that benefit the brain cells, promote brain and vision development, protect the brain from stress, & promote learning and memory\r\n-It also contains Omega 3 fatty acids that protect heart health\r\nDirection For Use\r\n-Before making the formula for infant feeding, properly wash your hands\r\n-Boil clean bottles, nipples, caps, and utensils in water for 5 minutes\r\n-Boil fresh water for five minutes, cool to room temperature before pouring the necessary amount of cooled boiled water into the bottle and adding the content\r\n. -Lastly, fasten the bottle cap and shake vigorously\r\nStorage\r\n-Keep in a cool, dry place.After opening the package, keep it tightly closed, in a dry place, and utilize the contents within a month\r\n-Avoid high heat and do not freeze the powder\r\nFaqs\r\n1. Why is DHA important for your child?\r\n\r\nDHA is an abbreviation for Docosahexaenoic Acid. DHA is a crucial brain building ingredient, and DHA supplementation has been shown to result in cognitive benefits during the first five years of life.\r\n\r\n2.Can my child take Enfamil A+ Stage 1 at any age?\r\n\r\nEnfamil A+ can be given to a child as young as two years old. Please refer to the product package before selecting appropriate Enfamil product for your child\'s age. Before using, please consult your pediatrician.\r\n\r\n3.Is it better to make the feed with water or milk?\r\n\r\nEnfamil A+ must be mixed with water. Please follow the preparation and use instructions on the product label.\r\n\r\n4. What amount of powder should be included in the feed?\r\n\r\nPlease see the feeding table given on the product package for specifics on how much Enfamil A+ powder and water to use.\r\n\r\n5. Is Enfamil A+ safe for infants?\r\n\r\nEnfamil A+ supports normal brain development. As your baby\'s brain development will be 85 percent complete by the age of three, it is critical to provide your newborn with brain-developing DHA, a form of Omega-3 fat that acts as a building block of an infant\'s quickly growing brain.', 1, '-DHA & ARA (brain nourishing nutrients), calcium, iron, protein\r\n-Enfamil A+ Stage 2 Follow-up Formula6-12 months\r\n-400 gm Highly nourishing infant formula\r\n-DHA & ARA aids in brain development\r\n-Rich in vital nutrients iron, calcium & protein', 'Description\r\nEnfamil A+ formula is scientifically designed to fulfill all the nutritional requirements of an infant. It contains expert-recommended levels of DHA & ARA (fatty acids present in breast milk) that are most essential for cognitive development (how children think, explore, figure out things) during the early years of infancy. DHA not only helps in promoting healthy brain function but also aids in developing correct vision.  It is rich in essential nutrients like choline (for memory and learning), iron, calcium; magnesium, phosphorus, & vitamin D for strong teeth and bones; zinc (for brain cell growth), protein; copper, glucose, and riboflavin for energy to the brain cells. Enfamil A+ also contains prebiotics blend PDX & GOS that boost the growth of useful gut bacteria which eventually strengthen the immune system. It is manufactured by Mead Johnson Nutrition which is considered the world’s leading pediatric nutrition provider. It is easily digested by the infant and designed for feeding babies needing special care but don’t have special nutritional requirements.\r\nIngredients\r\n-GOS (galactooligosaccharide)\r\n-PDX (polydextrose)\r\n-Calcium, Vitamin D, Phosphorus & Magnesium\r\n-Omega 3 fatty acids\r\n-Vitamin A, C, E\r\n-Vitamin B6, B12 & folic acid\r\n-Iodine\r\n-Copper, glucose & riboflavin\r\n-Protein\r\n-Thiamine\r\n-Selenium & Zinc\r\nForm\r\nPowder infant formula\r\nFlavor/Variant/Type/Size:\r\n-Enfamil A+ Stage 2 Follow-up Formula\r\n-400 gm\r\nKey Benefits\r\n-Scientifically designed advanced baby formula meeting nutritional requirements of mother’s breast milk\r\n-It contains DHA & ARA levels close to WHO recommendations, which is significant in the cognitive development of infants\r\n-Rich in essential nutrients that benefit the brain cells, promote brain and vision development, protect the brain from stress, & promote learning and memory\r\n-It also contains Omega 3 fatty acids that protect heart health\r\nDirection For Use\r\n-Before making the formula for infant feeding, properly wash ', '', 1);
INSERT INTO `product` (`id`, `categories_id`, `sub_categories_id`, `name`, `mrp`, `price`, `qty`, `formula`, `image`, `short_desc`, `description`, `best_seller`, `meta_title`, `meta_desc`, `meta_keyword`, `status`) VALUES
(43, 1, 8, 'Enfamil A+ 2 800gm milk powder', 5500, 5100, 5, 0, '465775412_A+.jfif', '-DHA & ARA (brain nourishing nutrients), calcium, iron, protein\r\n-Enfamil A+ Stage 2 Follow-up Formula\r\n-6-12 months, 800 gm\r\n-Highly nourishing infant formula, DHA & ARA aids in brain development, rich in vital nutrients iron, calcium & protein', 'Description\r\nEnfamil A+ formula is scientifically designed to fulfill all the nutritional requirements of an infant. It contains expert-recommended levels of DHA & ARA (fatty acids present in breast milk) that are most essential for cognitive development (how children think, explore, figure out things) during the early years of infancy. DHA not only helps in promoting healthy brain function but also aids in developing correct vision.  It is rich in essential nutrients like choline (for memory and learning), iron, calcium; magnesium, phosphorus, & vitamin D for strong teeth and bones; zinc (for brain cell growth), protein; copper, glucose, and riboflavin for energy to the brain cells. Enfamil A+ also contains prebiotics blend PDX & GOS that boost the growth of useful gut bacteria which eventually strengthen the immune system. It is manufactured by Mead Johnson Nutrition which is considered the world’s leading pediatric nutrition provider. It is easily digested by the infant and designed for feeding babies needing special care but don’t have special nutritional requirements.\r\nIngredients\r\n-GOS (galactooligosaccharide)\r\n-PDX (polydextrose)\r\n-Calcium, Vitamin D, Phosphorus & Magnesium\r\n-Omega 3 fatty acids\r\n-Vitamin A, C, E\r\n-Vitamin B6, B12 & folic acid\r\n-Iodine\r\n-Copper, glucose & riboflavin\r\n-Protein\r\n-Thiamine\r\n-Selenium & Zinc\r\nForm\r\nPowder infant formula\r\nFlavor/Variant/Type/Size:\r\n-Enfamil A+ Stage 2 Follow-up Formula\r\n-800 gm\r\nKey Benefits\r\n-Scientifically designed advanced baby formula meeting nutritional requirements of mother’s breast milk\r\n-It contains DHA & ARA levels close to WHO recommendations, which is significant in the cognitive development of infants\r\n-Rich in essential nutrients that benefit the brain cells, promote brain and vision development, protect the brain from stress, & promote learning and memory\r\n-It also contains Omega 3 fatty acids that protect heart health\r\n-Enfamil A+ is entrusted by parents and health care professionals all around the world\r\nDirection For Use\r\n-Before making the formula for infant feeding, properly wash your hands\r\n-Boil clean bottles, nipples, caps, and utensils in water for 5 minutes\r\n-Boil fresh water for five minutes, cool to room temperature before pouring the necessary amount of cooled boiled water into the bottle and adding the content\r\n-Lastly, fasten the bottle cap and shake vigorously\r\nStorage\r\n-Keep in a cool, dry place\r\n-After opening the package, keep it tightly closed, in a dry place, and utilize the contents within a month\r\n-Avoid high heat and do not freeze the powder\r\nFaqs\r\n1.Why is DHA important for your child?\r\n\r\nDHA is an abbreviation for Docosahexaenoic Acid. DHA is a crucial brain building ingredient, and DHA supplementation has been shown to result in cognitive benefits during the first five years of life.\r\n\r\n2.Can my child take Enfamil A+ Stage 1 at any age?\r\n\r\nEnfamil A+ can be given to a child as young as two years old. Please refer to the product package before selecting appropriate Enfamil product for your child\'s age. Before using, please consult your pediatrician.\r\n\r\n3.Is it better to make the feed with water or milk?\r\n\r\nEnfamil A+ must be mixed with water. Please follow the preparation and use instructions on the product label.\r\n\r\n4. What amount of powder should be included in the feed?\r\n\r\nPlease see the feeding table given on the product package for specifics on how much Enfamil A+ powder and water to use.\r\n\r\n5. Is Enfamil A+ safe for infants?\r\n\r\nEnfamil A+ supports normal brain development. As your baby\'s brain development will be 85 percent complete by the age of three, it is critical to provide your newborn with brain-developing DHA, a form of Omega-3 fat that acts as a building block of an infant\'s quickly growing brain.', 1, 'Description\r\nEnfamil A+ formula is scientifically designed to fulfill all the nutritional requirements of an infant. It contains expert-recommended levels of DHA & ARA (fatty acids present in breast milk) that are most essential for cognitive development (how children think, explore, figure out things) during the early years of infancy. DHA not only helps in promoting healthy brain function but also aids in developing correct vision.  It is rich in essential nutrients like choline (for memory and learning), iron, calcium; magnesium, phosphorus, & vitamin D for strong teeth and bones; zinc (for brain cell growth), protein; copper, glucose, and riboflavin for energy to the brain cells. Enfamil A+ also contains prebiotics blend PDX & GOS that boost the growth of useful gut bacteria which eventually strengthen the immune system. It is manufactured by Mead Johnson Nutrition which is considered the world’s leading pediatric nutrition provider. It is easily digested by the infant and designed for feeding babies needing special care but don’t have special nutritional requirements.\r\nIngredients\r\n-GOS (galactooligosaccharide)\r\n-PDX (polydextrose)\r\n-Calcium, Vitamin D, Phosphorus & Magnesium\r\n-Omega 3 fatty acids\r\n-Vitamin A, C, E\r\n-Vitamin B6, B12 & folic acid\r\n-Iodine\r\n-Copper, glucose & riboflavin\r\n-Protein\r\n-Thiamine\r\n-Selenium & Zinc\r\nForm\r\nPowder infant formula\r\nFlavor/Variant/Type/Size:\r\n-Enfamil A+ Stage 2 Follow-up Formula\r\n-800 gm\r\nKey Benefits\r\n-Scientifically designed advanced baby formula meeting nutritional requirements of mother’s breast milk\r\n-It contains DHA & ARA levels close to WHO recommendations, which is significant in the cognitive development of infants\r\n-Rich in essential nutrients that benefit the brain cells, promote brain and vision development, protect the brain from stress, & promote learning and memory\r\n-It also contains Omega 3 fatty acids that protect heart health\r\n-Enfamil A+ is entrusted by parents and health care professionals all around the', 'Description\r\nEnfamil A+ formula is scientifically designed to fulfill all the nutritional requirements of an infant. It contains expert-recommended levels of DHA & ARA (fatty acids present in breast milk) that are most essential for cognitive development (how children think, explore, figure out things) during the early years of infancy. DHA not only helps in promoting healthy brain function but also aids in developing correct vision.  It is rich in essential nutrients like choline (for memory and learning), iron, calcium; magnesium, phosphorus, & vitamin D for strong teeth and bones; zinc (for brain cell growth), protein; copper, glucose, and riboflavin for energy to the brain cells. Enfamil A+ also contains prebiotics blend PDX & GOS that boost the growth of useful gut bacteria which eventually strengthen the immune system. It is manufactured by Mead Johnson Nutrition which is considered the world’s leading pediatric nutrition provider. It is easily digested by the infant and designed for feeding babies needing special care but don’t have special nutritional requirements.\r\nIngredients\r\n-GOS (galactooligosaccharide)\r\n-PDX (polydextrose)\r\n-Calcium, Vitamin D, Phosphorus & Magnesium\r\n-Omega 3 fatty acids\r\n-Vitamin A, C, E\r\n-Vitamin B6, B12 & folic acid\r\n-Iodine\r\n-Copper, glucose & riboflavin\r\n-Protein\r\n-Thiamine\r\n-Selenium & Zinc\r\nForm\r\nPowder infant formula\r\nFlavor/Variant/Type/Size:\r\n-Enfamil A+ Stage 2 Follow-up Formula\r\n-800 gm\r\nKey Benefits\r\n-Scientifically designed advanced baby formula meeting nutritional requirements of mother’s breast milk\r\n-It contains DHA & ARA levels close to WHO recommendations, which is significant in the cognitive development of infants\r\n-Rich in essential nutrients that benefit the brain cells, promote brain and vision development, protect the brain from stress, & promote learning and memory\r\n-It also contains Omega 3 fatty acids that protect heart health\r\n-Enfamil A+ is entrusted by parents and health care professionals all around the', '', 1),
(44, 1, 8, 'Enfamil A+ 1 400gm milk powder', 3000, 2800, 5, 0, '621322350_yello.jfif', 'Active/Main ingredients: DHA & ARA (brain nourishing nutrients), choline, iron\r\n-Variant/Type: Enfamil A+ Stage 1 Infant Formula\r\n-Age/Weight: 0-6 months, 400 gm\r\n-Key benefits: Highly nourishing infant formula, DHA & ARA aids in brain development, rich in vital nutrients choline and iron', 'Description\r\nEnfamil A+ formula is scientifically designed to fulfill all the nutritional requirements of an infant. It contains expert-recommended levels of DHA & ARA (fatty acids present in breast milk) that are most essential for cognitive development (how children think, explore, figure out things) during the early years of infancy. DHA not only helps in promoting healthy brain function but also aids in developing correct vision.  It is rich in essential nutrients like choline (for memory and learning), iron, calcium; magnesium, phosphorus, & vitamin D for strong teeth and bones; zinc (for brain cell growth), protein; copper, glucose, and riboflavin for energy to the brain cells. Enfamil A+ also contains prebiotics blend PDX & GOS that boost the growth of useful gut bacteria which eventually strengthen the immune system. It is manufactured by Mead Johnson Nutrition which is considered the world’s leading pediatric nutrition provider. It is easily digested by the infant and designed for feeding babies needing special care but don’t have special nutritional requirements.\r\nIngredients\r\n-GOS (galactooligosaccharide)\r\n-PDX (polydextrose)\r\n-Calcium, Vitamin D, Phosphorus & Magnesium\r\n-Omega 3 fatty acids -Vitamin A, C, E\r\n-Vitamin B6, B12 & folic acid\r\n-Iodine\r\n-Copper, glucose & riboflavin\r\n-Protein\r\n-Thiamine\r\n-Selenium & Zinc\r\nForm\r\nPowder infant formula\r\nFlavor/Variant/Type/Size\r\n-Enfamil A+ Stage 1 Infant Formula\r\n-400 gm\r\nKey Benefits\r\n-Scientifically designed advanced baby formula meeting nutritional requirements of mother’s breast milk\r\n-It contains DHA & ARA levels close to WHO recommendations, which is significant in the cognitive development of infants\r\n-Rich in essential nutrients that benefit the brain cells, promote brain and vision development, protect the brain from stress, & promote learning and memory\r\n-It also contains Omega 3 fatty acids that protect heart health\r\n-Enfamil A+ is entrusted by parents and health care professionals all around the world\r\n \r\nDirection For Use\r\n-Before making the formula for infant feeding, properly wash your hands\r\n-Boil clean bottles, nipples, caps, and utensils in water for 5 minutes\r\n-Boil clean water for five minutes, cool to room temperature before pouring the necessary amount of cooled boiled water into the bottle and adding the -content\r\n-Lastly, fasten the bottle cap and shake vigorously\r\nDosage\r\n-Before making the formula for infant feeding, properly wash your hands\r\n-Boil clean bottles, nipples, caps, and utensils in water for 5 minutes\r\n-Boil clean water for five minutes, cool to room temperature before pouring the necessary amount of cooled boiled water into the bottle and adding the -content\r\n-Lastly, fasten the bottle cap and shake vigorously\r\nStorage\r\n-Keep in a cool, dry place\r\n-After opening the package, keep it tightly closed, in a dry place, and utilize the contents within a month\r\n-Avoid high heat and do not freeze the powder\r\nFaqs\r\n1. Why is DHA important for your child?\r\n\r\nDHA is an abbreviation for Docosahexaenoic Acid. DHA is a crucial brain building ingredient, and DHA supplementation has proven to progressive results in cognitive development during the first five years of life.\r\n\r\n2.Can my child take Enfamil A+ Stage 1 at any age?\r\n\r\nEnfamil A+ can be given to a child as young as two years old. Please refer to the product package before selecting appropriate Enfamil product for your child\'s age. Before using, please consult your pediatrician.\r\n\r\n3. Is it better to make the feed with water or milk?\r\n\r\nEnfamil A+ must be mixed with water. Please follow the preparation and use instructions on the product label.\r\n\r\n4. What amount of powder should be included into the feed?\r\n\r\nPlease see the feeding table given on product package for specifics on how much Enfamil A+ powder and water to use.\r\n\r\n5. Is Enfamil A+ safe for infants?\r\n\r\nEnfamil A+ supports normal brain development. As your baby\'s brain development will be 85 percent complete by the age of three, it is critical to provide your newborn with brain-developing DHA, a form of Omega-3 fat that acts as a building block of an infant\'s quickly growing brain.', 1, 'Description\r\nEnfamil A+ formula is scientifically designed to fulfill all the nutritional requirements of an infant. It contains expert-recommended levels of DHA & ARA (fatty acids present in breast milk) that are most essential for cognitive development (how children think, explore, figure out things) during the early years of infancy. DHA not only helps in promoting healthy brain function but also aids in developing correct vision.  It is rich in essential nutrients like choline (for memory and learning), iron, calcium; magnesium, phosphorus, & vitamin D for strong teeth and bones; zinc (for brain cell growth), protein; copper, glucose, and riboflavin for energy to the brain cells. Enfamil A+ also contains prebiotics blend PDX & GOS that boost the growth of useful gut bacteria which eventually strengthen the immune system. It is manufactured by Mead Johnson Nutrition which is considered the world’s leading pediatric nutrition provider. It is easily digested by the infant and designed for feeding babies needing special care but don’t have special nutritional requirements.\r\nIngredients\r\n-GOS (galactooligosaccharide)\r\n-PDX (polydextrose)\r\n-Calcium, Vitamin D, Phosphorus & Magnesium\r\n-Omega 3 fatty acids -Vitamin A, C, E\r\n-Vitamin B6, B12 & folic acid\r\n-Iodine\r\n-Copper, glucose & riboflavin\r\n-Protein\r\n-Thiamine\r\n-Selenium & Zinc\r\nForm\r\nPowder infant formula\r\nFlavor/Variant/Type/Size\r\n-Enfamil A+ Stage 1 Infant Formula\r\n-400 gm\r\nKey Benefits\r\n-Scientifically designed advanced baby formula meeting nutritional requirements of mother’s breast milk\r\n-It contains DHA & ARA levels close to WHO recommendations, which is significant in the cognitive development of infants\r\n-Rich in essential nutrients that benefit the brain cells, promote brain and vision development, protect the brain from stress, & promote learning and memory\r\n-It also contains Omega 3 fatty acids that protect heart health\r\n-Enfamil A+ is entrusted by parents and health care professionals all around the worl', 'Description\r\nEnfamil A+ formula is scientifically designed to fulfill all the nutritional requirements of an infant. It contains expert-recommended levels of DHA & ARA (fatty acids present in breast milk) that are most essential for cognitive development (how children think, explore, figure out things) during the early years of infancy. DHA not only helps in promoting healthy brain function but also aids in developing correct vision.  It is rich in essential nutrients like choline (for memory and learning), iron, calcium; magnesium, phosphorus, & vitamin D for strong teeth and bones; zinc (for brain cell growth), protein; copper, glucose, and riboflavin for energy to the brain cells. Enfamil A+ also contains prebiotics blend PDX & GOS that boost the growth of useful gut bacteria which eventually strengthen the immune system. It is manufactured by Mead Johnson Nutrition which is considered the world’s leading pediatric nutrition provider. It is easily digested by the infant and designed for feeding babies needing special care but don’t have special nutritional requirements.\r\nIngredients\r\n-GOS (galactooligosaccharide)\r\n-PDX (polydextrose)\r\n-Calcium, Vitamin D, Phosphorus & Magnesium\r\n-Omega 3 fatty acids -Vitamin A, C, E\r\n-Vitamin B6, B12 & folic acid\r\n-Iodine\r\n-Copper, glucose & riboflavin\r\n-Protein\r\n-Thiamine\r\n-Selenium & Zinc\r\nForm\r\nPowder infant formula\r\nFlavor/Variant/Type/Size\r\n-Enfamil A+ Stage 1 Infant Formula\r\n-400 gm\r\nKey Benefits\r\n-Scientifically designed advanced baby formula meeting nutritional requirements of mother’s breast milk\r\n-It contains DHA & ARA levels close to WHO recommendations, which is significant in the cognitive development of infants\r\n-Rich in essential nutrients that benefit the brain cells, promote brain and vision development, protect the brain from stress, & promote learning and memory\r\n-It also contains Omega 3 fatty acids that protect heart health\r\n-Enfamil A+ is entrusted by parents and health care professionals all around the worl', '', 1),
(45, 1, 8, 'Enfamil A+ 1 800gm milk powder', 5500, 5300, 5, 0, '203174965_yello.jfif', '-DHA & ARA (brain nourishing nutrients), choline, iron\r\n-Enfamil A+ Stage 1 Infant Formula\r\n-0-6 months, 800 gm\r\n-Highly nourishing infant formula, DHA & ARA aid in brain development, rich in vital nutrients, choline, and iron', 'Description\r\nEnfamil A+ formula is scientifically designed to fulfill all the nutritional requirements of an infant. It contains expert-recommended levels of DHA & ARA (fatty acids present in breast milk) that are most essential for cognitive development (how children think, explore, figure out things) during the early years of infancy. DHA not only helps in promoting healthy brain function but also aids in developing correct vision.  It is rich in essential nutrients like choline (for memory and learning), iron, calcium; magnesium, phosphorus, & vitamin D for strong teeth and bones; zinc (for brain cell growth), protein; copper, glucose, and riboflavin for energy to the brain cells. Enfamil A+ also contains prebiotics blend PDX & GOS that boost the growth of useful gut bacteria which eventually strengthen the immune system. It is manufactured by Mead Johnson Nutrition which is considered the world’s leading pediatric nutrition provider. It is easily digested by the infant and designed for feeding babies needing special care but don’t have special nutritional requirements.\r\nIngredients\r\n-GOS (galactooligosaccharide)\r\n-PDX (polydextrose)\r\n-Calcium, Vitamin D, Phosphorus & Magnesium\r\n-Omega 3 fatty acids\r\n-Vitamin A, C, E\r\n-Vitamin B6, B12 & folic acid\r\n-Iodine\r\n-Copper, glucose & riboflavin\r\n-Protein\r\n-Thiamine\r\n-Selenium & Zinc\r\nForm\r\nPowder infant formula\r\nFlavor/Variant/Type/Size\r\n-Enfamil A+ Stage 1 Infant Formula\r\n-800 gm\r\nKey Benefits\r\n-Scientifically designed advanced baby formula having nutritional values similar to mother’s breast milk\r\n-It contains DHA & ARA levels close to WHO recommendations, that are significant in the cognitive development of infants\r\n-Rich in essential nutrients that benefit the brain cells, promote brain and vision development, protect the brain from stress, & promote learning and memory\r\n-It also contains Omega 3 fatty acids that protect heart health\r\n-Enfamil A+ is entrusted by parents and health care professionals all around the world\r\nFaqs\r\n1. Why is DHA important for your child?\r\n\r\nDHA is an abbreviation for Docosahexaenoic Acid. DHA is a crucial brain-building ingredient, and DHA supplementation has proven to progressive results in cognitive development during the first five years of life.\r\n\r\n2. Can my child take Enfamil A+ Stage 1 at any age?\r\n\r\nEnfamil A+ can be given to a child as young as two years old. Please refer to the product package before selecting the appropriate Enfamil product for your child\'s age. Before using, please consult your pediatrician.\r\n\r\n3. Is it better to make the feed with water or milk?\r\n\r\nEnfamil A+ must be mixed with water. Please follow the preparation and use instructions on the product label.\r\n\r\n4. What amount of powder should be included in the feed?\r\n\r\nPlease see the feeding table given on the product package for specifics on how much Enfamil A+ powder and water to use.\r\n\r\n5. Is Enfamil A+ safe for infants?\r\n\r\nEnfamil A+ supports normal brain development. As your baby\'s brain development will be 85 percent complete by the age of three, it is critical to provide your newborn with brain-developing DHA, a form of Omega-3 fat that acts as a building block of an infant\'s quickly growing brain.', 1, 'Description\r\nEnfamil A+ formula is scientifically designed to fulfill all the nutritional requirements of an infant. It contains expert-recommended levels of DHA & ARA (fatty acids present in breast milk) that are most essential for cognitive development (how children think, explore, figure out things) during the early years of infancy. DHA not only helps in promoting healthy brain function but also aids in developing correct vision.  It is rich in essential nutrients like choline (for memory and learning), iron, calcium; magnesium, phosphorus, & vitamin D for strong teeth and bones; zinc (for brain cell growth), protein; copper, glucose, and riboflavin for energy to the brain cells. Enfamil A+ also contains prebiotics blend PDX & GOS that boost the growth of useful gut bacteria which eventually strengthen the immune system. It is manufactured by Mead Johnson Nutrition which is considered the world’s leading pediatric nutrition provider. It is easily digested by the infant and designed for feeding babies needing special care but don’t have special nutritional requirements.\r\nIngredients\r\n-GOS (galactooligosaccharide)\r\n-PDX (polydextrose)\r\n-Calcium, Vitamin D, Phosphorus & Magnesium\r\n-Omega 3 fatty acids\r\n-Vitamin A, C, E\r\n-Vitamin B6, B12 & folic acid\r\n-Iodine\r\n-Copper, glucose & riboflavin\r\n-Protein\r\n-Thiamine\r\n-Selenium & Zinc\r\nForm\r\nPowder infant formula\r\nFlavor/Variant/Type/Size\r\n-Enfamil A+ Stage 1 Infant Formula\r\n-800 gm\r\nKey Benefits\r\n-Scientifically designed advanced baby formula having nutritional values similar to mother’s breast milk\r\n-It contains DHA & ARA levels close to WHO recommendations, that are significant in the cognitive development of infants\r\n-Rich in essential nutrients that benefit the brain cells, promote brain and vision development, protect the brain from stress, & promote learning and memory\r\n-It also contains Omega 3 fatty acids that protect heart health\r\n-Enfamil A+ is entrusted by parents and health care professionals all around the wo', 'Description\r\nEnfamil A+ formula is scientifically designed to fulfill all the nutritional requirements of an infant. It contains expert-recommended levels of DHA & ARA (fatty acids present in breast milk) that are most essential for cognitive development (how children think, explore, figure out things) during the early years of infancy. DHA not only helps in promoting healthy brain function but also aids in developing correct vision.  It is rich in essential nutrients like choline (for memory and learning), iron, calcium; magnesium, phosphorus, & vitamin D for strong teeth and bones; zinc (for brain cell growth), protein; copper, glucose, and riboflavin for energy to the brain cells. Enfamil A+ also contains prebiotics blend PDX & GOS that boost the growth of useful gut bacteria which eventually strengthen the immune system. It is manufactured by Mead Johnson Nutrition which is considered the world’s leading pediatric nutrition provider. It is easily digested by the infant and designed for feeding babies needing special care but don’t have special nutritional requirements.\r\nIngredients\r\n-GOS (galactooligosaccharide)\r\n-PDX (polydextrose)\r\n-Calcium, Vitamin D, Phosphorus & Magnesium\r\n-Omega 3 fatty acids\r\n-Vitamin A, C, E\r\n-Vitamin B6, B12 & folic acid\r\n-Iodine\r\n-Copper, glucose & riboflavin\r\n-Protein\r\n-Thiamine\r\n-Selenium & Zinc\r\nForm\r\nPowder infant formula\r\nFlavor/Variant/Type/Size\r\n-Enfamil A+ Stage 1 Infant Formula\r\n-800 gm\r\nKey Benefits\r\n-Scientifically designed advanced baby formula having nutritional values similar to mother’s breast milk\r\n-It contains DHA & ARA levels close to WHO recommendations, that are significant in the cognitive development of infants\r\n-Rich in essential nutrients that benefit the brain cells, promote brain and vision development, protect the brain from stress, & promote learning and memory\r\n-It also contains Omega 3 fatty acids that protect heart health\r\n-Enfamil A+ is entrusted by parents and health care professionals all around the wo', '', 1),
(46, 1, 8, 'Beurer Digital Steam Sterilizer - BY 76', 11000, 10500, 2, 0, '746597455_Capture.JPG', '-Kills bacteria and germs.\r\n-Digital LED display.\r\n-Disinfects up to 6 bottles in 7 minutes.\r\n-Dishwasher safe accessories.\r\n-Sterilizes without chemical additives.\r\n-Automatic switch-off.\r\n-Cord Winder.', 'Sterilize your baby\'s products with ease. This device uses hot steam and helps you sterilize your baby\'s products. This device is compliant with all feeding bottles.', 1, 'Sterilize your baby\'s products with ease. This device uses hot steam and helps you sterilize your baby\'s products. This device is compliant with all feeding bottles.', 'Sterilize your baby\'s products with ease. This device uses hot steam and helps you sterilize your baby\'s products. This device is compliant with all feeding bottles.', '', 1),
(47, 1, 8, 'Pampers Value Pack Junior (2-5kgs)', 1000, 950, 10, 0, '950717462_2.JPG', '-3 distinct absorption channels, Magic gel, Soft stretchy sides\r\n-Pampers New Baby-Dry, Size 1\r\n-5 months, 2-5 kg\r\n-Provides dryness for 13 hours, evenly disperses & locks wetness better, silky soft breathable material that caresses skin.', 'Description\r\nPampers New Baby Dry provides unbeatable wetness protection for up to 13 hours via its 3 distinct absorption channels that soak up moisture 3 times faster. It comes with trusted German technology that ensures less worry for your active little one. It has a wide Ultra Absorb core for excellent leakage protection & a comfortable fit. Moreover, it contains lotion in its inner surface which protects the baby’s bottom from irritation and rashes. It is made with silky soft breathable material which caresses the skin and ensures air circulation.\r\nFeatures\r\n-Ultra-absorb core\r\n-Anti-leakage barriers\r\n-Silky softness\r\n-Breathable material\r\n-Baby lotion\r\nForm\r\nDiapers\r\nVariant/Type/Size:\r\nPampers Value Pack Junior, Size 1\r\nKey Benefits\r\n-Provides 13 hours long ultra-dry protection by 3 absorbing channels with even distribution of wetness.\r\n-Magic gel aids in locking away wetness.\r\n-Contains baby lotion that keeps baby skin soft & free from rashes.\r\n-Soft stretchy sides which gently wrap the little one & its breathable material gives way to constant air circulation.\r\nFaqs\r\n1. What are the differences seen between Pampers Swaddlers & Pampers Baby Dry?\r\n\r\nPampers Baby Dry has 3 layers of protection to avoid leakage, while Pampers Swaddlers offers extra absorbency. Pampers Swaddlers has a more comfortable & accurate fit for babies than Pampers Baby Dry.\r\n\r\n2. Which can be more suitable as overnight Pampers?\r\n\r\nThe disposable diapers i.e. Pampers Baby Dry are effective for overnight use. They have got better absorbency in preventing leaks overnight.\r\n\r\n3. How many diapers does a growing baby require in a day?\r\n\r\nA baby who is about 6 to 14 months can require about 5 to 7 diapers or more in a day.\r\n\r\n4. How can you know which pamper size to buy for your child?\r\n\r\nYou may buy the right size by looking at the fastening tapes; they should not reach the center of the waistband. If they do, get a bigger diaper size. If the tape overlaps, then it means the diaper is too big, and you should size down.\r\n\r\n5. What does diaper rash indicate?\r\n\r\nIf the baby is constantly getting a diaper rash even after putting the diaper properly on the baby, then the diaper is too small and is not keeping the baby sufficiently dry.', 1, 'Description\r\nPampers New Baby Dry provides unbeatable wetness protection for up to 13 hours via its 3 distinct absorption channels that soak up moisture 3 times faster. It comes with trusted German technology that ensures less worry for your active little one. It has a wide Ultra Absorb core for excellent leakage protection & a comfortable fit. Moreover, it contains lotion in its inner surface which protects the baby’s bottom from irritation and rashes. It is made with silky soft breathable material which caresses the skin and ensures air circulation.\r\nFeatures\r\n-Ultra-absorb core\r\n-Anti-leakage barriers\r\n-Silky softness\r\n-Breathable material\r\n-Baby lotion\r\nForm\r\nDiapers\r\nVariant/Type/Size:\r\nPampers Value Pack Junior, Size 1\r\nKey Benefits\r\n-Provides 13 hours long ultra-dry protection by 3 absorbing channels with even distribution of wetness.\r\n-Magic gel aids in locking away wetness.\r\n-Contains baby lotion that keeps baby skin soft & free from rashes.\r\n-Soft stretchy sides which gently wrap the little one & its breathable material gives way to constant air circulation.\r\nFaqs\r\n1. What are the differences seen between Pampers Swaddlers & Pampers Baby Dry?\r\n\r\nPampers Baby Dry has 3 layers of protection to avoid leakage, while Pampers Swaddlers offers extra absorbency. Pampers Swaddlers has a more comfortable & accurate fit for babies than Pampers Baby Dry.\r\n\r\n2. Which can be more suitable as overnight Pampers?\r\n\r\nThe disposable diapers i.e. Pampers Baby Dry are effective for overnight use. They have got better absorbency in preventing leaks overnight.\r\n\r\n3. How many diapers does a growing baby require in a day?\r\n\r\nA baby who is about 6 to 14 months can require about 5 to 7 diapers or more in a day.\r\n\r\n4. How can you know which pamper size to buy for your child?\r\n\r\nYou may buy the right size by looking at the fastening tapes; they should not reach the center of the waistband. If they do, get a bigger diaper size. If the tape overlaps, then it means the diaper is too big,', 'Description\r\nPampers New Baby Dry provides unbeatable wetness protection for up to 13 hours via its 3 distinct absorption channels that soak up moisture 3 times faster. It comes with trusted German technology that ensures less worry for your active little one. It has a wide Ultra Absorb core for excellent leakage protection & a comfortable fit. Moreover, it contains lotion in its inner surface which protects the baby’s bottom from irritation and rashes. It is made with silky soft breathable material which caresses the skin and ensures air circulation.\r\nFeatures\r\n-Ultra-absorb core\r\n-Anti-leakage barriers\r\n-Silky softness\r\n-Breathable material\r\n-Baby lotion\r\nForm\r\nDiapers\r\nVariant/Type/Size:\r\nPampers Value Pack Junior, Size 1\r\nKey Benefits\r\n-Provides 13 hours long ultra-dry protection by 3 absorbing channels with even distribution of wetness.\r\n-Magic gel aids in locking away wetness.\r\n-Contains baby lotion that keeps baby skin soft & free from rashes.\r\n-Soft stretchy sides which gently wrap the little one & its breathable material gives way to constant air circulation.\r\nFaqs\r\n1. What are the differences seen between Pampers Swaddlers & Pampers Baby Dry?\r\n\r\nPampers Baby Dry has 3 layers of protection to avoid leakage, while Pampers Swaddlers offers extra absorbency. Pampers Swaddlers has a more comfortable & accurate fit for babies than Pampers Baby Dry.\r\n\r\n2. Which can be more suitable as overnight Pampers?\r\n\r\nThe disposable diapers i.e. Pampers Baby Dry are effective for overnight use. They have got better absorbency in preventing leaks overnight.\r\n\r\n3. How many diapers does a growing baby require in a day?\r\n\r\nA baby who is about 6 to 14 months can require about 5 to 7 diapers or more in a day.\r\n\r\n4. How can you know which pamper size to buy for your child?\r\n\r\nYou may buy the right size by looking at the fastening tapes; they should not reach the center of the waistband. If they do, get a bigger diaper size. If the tape overlaps, then it means the diaper is too big,', '', 1),
(48, 1, 8, 'Pampers Baby Wipes 64 Counts wipes', 500, 400, 5, 0, '528358015_download (1).jfif', '-Aloe lotion\r\n-Baby wipes, 64 pieces\r\n-Babies\r\n-Ultra-soft and gentle, alcohol-free, and most suitable for cleaning sensitive', 'Description\r\nPampers baby wipes are dermatologically tested to be gentle on a baby’s delicate skin and to preserve its natural pH. Its soft grip texture allows easy and thorough cleaning of the baby\'s skin, whether while changing diaper, hands, or face. Pampers baby wipes are infused with a subtle refreshing scent that keeps your baby smelling fresh for a long time.\r\nIngredients\r\n-Aqua\r\n-Citric acid\r\n-PEG-40 Hydrogenated castor oil\r\n-Sodium citrate\r\n-Sorbitan caprylate\r\n-Sodium benzoate\r\n-Sodium EDTA\r\n-BIS-PEG/PPG-16/16 PEG/PPG-16/16 Dimethicone\r\n-Parfum\r\n-Xanthan Gum\r\n-Caprylic/Capric Triglyceride\r\nForm\r\nPieces\r\nFlavor/ Variant/Type/Size:\r\n64 pieces\r\nKey Benefits\r\n-Pampers baby wipes are gentle on the baby’s delicate skin\r\n-They are multipurpose wipes that can be used to clean a baby\'s face, hands, and bottoms while changing diapers\r\n-It keeps the baby’s skin healthy and soft by preserving its natural pH\r\n-The soft grip texture of Pampers baby wipes makes it easy to use and helps to clean firmly\r\n-These wipes are infused with a subtle scent that leaves your babies smelling fresh\r\nDirection For Use\r\n-Pop the lid open and peel back the label\r\n-Pull out and use\r\n-Reseal the remaining wipes in order to prevent them from drying out\r\n-Do not flush used wipes\r\n-Do not use a wipe more than once\r\n-Dispose of used wipes in a garbage bin\r\nDosage\r\nPampers baby wipes should be used as per need.\r\nStorage\r\n-Store Pampers baby wipes at room temperature and away from direct heat, sunlight, and moisture\r\n-Keep them out of reach of children and pets\r\nSafety Information/Precautions\r\n-Avoid contact Pampers baby wipes with eyes, nose, or mouth\r\n-In case your baby chews or swallows a baby wipe, consult a doctor immediately\r\n-Do not rub your baby’s skin vigorously with a wipe\r\n-Do not use baby wipes to clean a baby’s hair\r\n-Stop using Pampers baby wipes if it causes irritation\r\nFaqs\r\n1.Do you have to use a Pampers baby wipe every time you change a diaper?\r\n\r\nNo, it\'s not necessary. To avoid irritation you can skip using a wipe if your baby has only urinated. But it\'s necessary to clean with a wipe if your baby has pooped.\r\n\r\n2. Can Pampers baby wipes be used on the face?\r\n\r\nYes, they can be used on the face and hands.\r\n\r\n3. Can I use Pampers baby wipes to clean my baby’s eyes?\r\n\r\nNo, pampers baby wipes shouldn’t be used to clean eyes.\r\n\r\n4. Are Pampers baby wipes safe?\r\n\r\nYes, Pampers baby wipes are dermatologically tested. Hence, proven safe to use.\r\n\r\n5. Can adults use Pampers baby wipes?\r\n\r\nYes, Pampers baby wipes can be used by adults.', 1, 'Pampers Baby Wipes 64 Counts wipes', 'Description\r\nPampers baby wipes are dermatologically tested to be gentle on a baby’s delicate skin and to preserve its natural pH. Its soft grip texture allows easy and thorough cleaning of the baby\'s skin, whether while changing diaper, hands, or face. Pampers baby wipes are infused with a subtle refreshing scent that keeps your baby smelling fresh for a long time.\r\nIngredients\r\n-Aqua\r\n-Citric acid\r\n-PEG-40 Hydrogenated castor oil\r\n-Sodium citrate\r\n-Sorbitan caprylate\r\n-Sodium benzoate\r\n-Sodium EDTA\r\n-BIS-PEG/PPG-16/16 PEG/PPG-16/16 Dimethicone\r\n-Parfum\r\n-Xanthan Gum\r\n-Caprylic/Capric Triglyceride\r\nForm\r\nPieces\r\nFlavor/ Variant/Type/Size:\r\n64 pieces\r\nKey Benefits\r\n-Pampers baby wipes are gentle on the baby’s delicate skin\r\n-They are multipurpose wipes that can be used to clean a baby\'s face, hands, and bottoms while changing diapers\r\n-It keeps the baby’s skin healthy and soft by preserving its natural pH\r\n-The soft grip texture of Pampers baby wipes makes it easy to use and helps to clean firmly\r\n-These wipes are infused with a subtle scent that leaves your babies smelling fresh\r\nDirection For Use\r\n-Pop the lid open and peel back the label\r\n-Pull out and use\r\n-Reseal the remaining wipes in order to prevent them from drying out\r\n-Do not flush used wipes\r\n-Do not use a wipe more than once\r\n-Dispose of used wipes in a garbage bin\r\nDosage\r\nPampers baby wipes should be used as per need.\r\nStorage\r\n-Store Pampers baby wipes at room temperature and away from direct heat, sunlight, and moisture\r\n-Keep them out of reach of children and pets\r\nSafety Information/Precautions\r\n-Avoid contact Pampers baby wipes with eyes, nose, or mouth\r\n-In case your baby chews or swallows a baby wipe, consult a doctor immediately\r\n-Do not rub your baby’s skin vigorously with a wipe\r\n-Do not use baby wipes to clean a baby’s hair\r\n-Stop using Pampers baby wipes if it causes irritation\r\nFaqs\r\n1.Do you have to use a Pampers baby wipe every time you change a diaper?\r\n\r\nNo, it\'s not necessary. To avo', '', 1),
(49, 1, 8, 'JOHNSON’S Blossom Baby Powder 100 gm Bottle powder', 250, 200, 5, 0, '377988164_download (2).jfif', 'JOHNSON’S Blossom Baby Powder 100 gm Bottle powder', 'Description\r\nJohnson\'s Baby Powder Blossoms can be used to keep your baby\'s skin dry, velvety, and smooth after each bath or diaper change. The powder is best for babies because it doesn\'t create allergies or irritation to the skin. As rubbing and chaffing can easily irritate the delicate sensitive skin of a baby, the friction-less layer created by JOHNSON\'S Baby Powder keeps your baby\'s skin healthy and silky-soft. JOHNSON\'S Baby Powder is formulated with tiny, round, and slippery particles that glide over baby\'s skin to prevent friction and leave it feeling beautifully soft and dry while offering calming comfort. It also has a clean, classic aroma.\r\nIngredients\r\n-Parfum (fragrance)\r\n-Talc\r\n-Sodium Citrate\r\n-Citric acid.\r\nForm\r\nPowder\r\nType/Size\r\nJohnson’s Baby Powder Blossoms,100 gm\r\nKey Benefits\r\n-This product is designed to keep the skin of your infant nice, fresh, and pleasant\r\n-Intended to protect babies from infection and irritation from external harsh environment\r\n-Purified talc present\r\n-No added parabens or phthalates (harmful chemicals)\r\n-Provides immediate relief from nappy rash\r\n-Clinically proven to be very gentle and mild on the baby’s skin\r\n-Contains clean, classic scent\r\n-This powder is dermatologically tested to be hypoallergenic (unlikely to produce allergic reaction)\r\nDirection For Use\r\n-Apply on your hand and then gently smear on your baby’s body including folds of the skin post bath and diaper change\r\n-Shake bottle away from the face when applying on your hand for application on baby’s body\r\n-Can also be used to freshen up your baby in the evening\r\n-Can also be used in adults anytime they want skin to feel fresh, soft & comfortable\r\nStorage\r\n-Store in a cool and dry place\r\n-Close tightly after each use\r\n-Keep away from the reach of children\r\nSafety Information/Precautions\r\n-For external use only\r\n-Avoid contact of powder with child’s face as its inhalation can cause breathing problems\r\n-Don’t use if the quality seal of powder is broken\r\nFaqs\r\n1. Is Johnson baby powder safe to use?\r\n\r\nJohnson & Johnson has maintained that their talc-based baby powder is safe to use. Talc, the world\'s softest mineral, is used to absorb moisture and improve the feel of hundreds of items.\r\n\r\n2. What are some side effects observed with talcum powder?\r\n\r\nRespiratory (breathing) problems are observed in infants if they inhale or ingest talcum powder particles.\r\n\r\n3. Can baby powder be applied on vagina?\r\n\r\nReports suggest that women should not use products containing natural minerals on their genitals, such as baby powder, genital antiperspirants and deodorants, body wipes, and bath bombs.\r\n\r\n4. What is a safe substitute for baby powder?\r\n\r\nAny moisture-absorbing powders containing cornstarch, baking soda, tapioca starch, arrowroot starch, kaolin clay, rice starch, and oat flour blends are examples of healthy alternatives to baby powder.\r\n\r\n5. Is it safe to use baby powder now?\r\n\r\nYes, baby powder is now generally considered safe to use. However, like any product you use on your infant, it\'s a good idea to be cautious.', 1, 'Description\r\nJohnson\'s Baby Powder Blossoms can be used to keep your baby\'s skin dry, velvety, and smooth after each bath or diaper change. The powder is best for babies because it doesn\'t create allergies or irritation to the skin. As rubbing and chaffing can easily irritate the delicate sensitive skin of a baby, the friction-less layer created by JOHNSON\'S Baby Powder keeps your baby\'s skin healthy and silky-soft. JOHNSON\'S Baby Powder is formulated with tiny, round, and slippery particles that glide over baby\'s skin to prevent friction and leave it feeling beautifully soft and dry while offering calming comfort. It also has a clean, classic aroma.\r\nIngredients\r\n-Parfum (fragrance)\r\n-Talc\r\n-Sodium Citrate\r\n-Citric acid.\r\nForm\r\nPowder\r\nType/Size\r\nJohnson’s Baby Powder Blossoms,100 gm\r\nKey Benefits\r\n-This product is designed to keep the skin of your infant nice, fresh, and pleasant\r\n-Intended to protect babies from infection and irritation from external harsh environment\r\n-Purified talc present\r\n-No added parabens or phthalates (harmful chemicals)\r\n-Provides immediate relief from nappy rash\r\n-Clinically proven to be very gentle and mild on the baby’s skin\r\n-Contains clean, classic scent\r\n-This powder is dermatologically tested to be hypoallergenic (unlikely to produce allergic reaction)\r\nDirection For Use\r\n-Apply on your hand and then gently smear on your baby’s body including folds of the skin post bath and diaper change\r\n-Shake bottle away from the face when applying on your hand for application on baby’s body\r\n-Can also be used to freshen up your baby in the evening\r\n-Can also be used in adults anytime they want skin to feel fresh, soft & comfortable\r\nStorage\r\n-Store in a cool and dry place\r\n-Close tightly after each use\r\n-Keep away from the reach of children\r\nSafety Information/Precautions\r\n-For external use only\r\n-Avoid contact of powder with child’s face as its inhalation can cause breathing problems\r\n-Don’t use if the quality seal of powder is broken\r\nFaqs\r\n1', 'Description\r\nJohnson\'s Baby Powder Blossoms can be used to keep your baby\'s skin dry, velvety, and smooth after each bath or diaper change. The powder is best for babies because it doesn\'t create allergies or irritation to the skin. As rubbing and chaffing can easily irritate the delicate sensitive skin of a baby, the friction-less layer created by JOHNSON\'S Baby Powder keeps your baby\'s skin healthy and silky-soft. JOHNSON\'S Baby Powder is formulated with tiny, round, and slippery particles that glide over baby\'s skin to prevent friction and leave it feeling beautifully soft and dry while offering calming comfort. It also has a clean, classic aroma.\r\nIngredients\r\n-Parfum (fragrance)\r\n-Talc\r\n-Sodium Citrate\r\n-Citric acid.\r\nForm\r\nPowder\r\nType/Size\r\nJohnson’s Baby Powder Blossoms,100 gm\r\nKey Benefits\r\n-This product is designed to keep the skin of your infant nice, fresh, and pleasant\r\n-Intended to protect babies from infection and irritation from external harsh environment\r\n-Purified talc present\r\n-No added parabens or phthalates (harmful chemicals)\r\n-Provides immediate relief from nappy rash\r\n-Clinically proven to be very gentle and mild on the baby’s skin\r\n-Contains clean, classic scent\r\n-This powder is dermatologically tested to be hypoallergenic (unlikely to produce allergic reaction)\r\nDirection For Use\r\n-Apply on your hand and then gently smear on your baby’s body including folds of the skin post bath and diaper change\r\n-Shake bottle away from the face when applying on your hand for application on baby’s body\r\n-Can also be used to freshen up your baby in the evening\r\n-Can also be used in adults anytime they want skin to feel fresh, soft & comfortable\r\nStorage\r\n-Store in a cool and dry place\r\n-Close tightly after each use\r\n-Keep away from the reach of children\r\nSafety Information/Precautions\r\n-For external use only\r\n-Avoid contact of powder with child’s face as its inhalation can cause breathing problems\r\n-Don’t use if the quality seal of powder is broken\r\nFaqs\r\n1', '', 1),
(50, 2, 11, 'Lifebuoy Shampoo Herbal 175ml', 250, 200, 25, 0, '255639660_1.JPG', 'Lifebuoy Shampoo Herbal 175ml', 'Lifebuoy Shampoo Herbal 175ml', 1, 'Lifebuoy Shampoo Herbal 175ml', 'Lifebuoy Shampoo Herbal 175ml', '', 1),
(51, 2, 11, 'Sunsilk Black Shine 185ml Shampoo', 2600, 2500, 10, 0, '204642651_download (3).jfif', 'Sunsilk Black Shine 185ml Shampoo', 'Sunsilk Black Shine 185ml Shampoo', 1, 'Sunsilk Black Shine 185ml Shampoo', 'Sunsilk Black Shine 185ml Shampoo', '', 1),
(52, 2, 11, 'LUX Splash 130gm Soap', 100, 90, 5, 0, '763460913_download.jfif', 'LUX Splash 130gm Soap', 'LUX Splash 130gm Soap', 1, 'LUX Splash 130gm Soap', 'LUX Splash 130gm Soap', '', 1),
(53, 2, 11, 'Colgate Extra Clean Soft Tooth Brush 3pcs', 250, 150, 5, 0, '820623426_download (1).jfif', 'Colgate Extra Clean Soft Tooth Brush 3pcs', 'Colgate Extra Clean Soft Tooth Brush 3pcs', 1, 'Colgate Extra Clean Soft Tooth Brush 3pcs', 'Colgate Extra Clean Soft Tooth Brush 3pcs', '', 1),
(54, 2, 11, 'Sensodyne Original Toothpaste 100 gm', 300, 250, 10, 0, '609367331_download (2).jfif', 'Sensodyne Original Toothpaste 100 gm', 'Sensodyne Original Toothpaste 100 gm', 1, 'Sensodyne Original Toothpaste 100 gm', 'Sensodyne Original Toothpaste 100 gm', '', 1),
(55, 2, 11, 'Clear Cool Black Shine Shampoo 90ml', 200, 150, 10, 0, '398818931_4002273-68.jpg', 'Clear Cool Black Shine Shampoo 90ml', 'Clear Cool Black Shine Shampoo 90ml', 1, 'Clear Cool Black Shine Shampoo 90ml', 'Clear Cool Black Shine Shampoo 90ml', '', 1),
(56, 2, 12, 'LAYLA MAT LIPSTICK - LIP PAQUE M -11', 600, 550, 5, 0, '664767503_download (1).jfif', 'LAYLA MAT LIPSTICK - LIP PAQUE M -11', 'LAYLA MAT LIPSTICK - LIP PAQUE M -11', 1, 'LAYLA MAT LIPSTICK - LIP PAQUE M -11', 'LAYLA MAT LIPSTICK - LIP PAQUE M -11', '', 1),
(57, 2, 12, 'Saeed Ghani Kajal Pencil 0.36 gm', 350, 250, 3, 0, '533747467_download.png', 'Saeed Ghani Kajal Pencil 0.36 gm', 'Saeed Ghani Kajal Pencil 0.36 gm', 1, 'Saeed Ghani Kajal Pencil 0.36 gm', 'Saeed Ghani Kajal Pencil 0.36 gm', '', 1),
(58, 2, 12, 'Lakme Perfecting Liquid Foundation Natural Pearl 27 Ml', 500, 450, 5, 0, '436652645_lakme_perfecting_liquid_foundation_pearl_27_ml_1_0.jpg', 'Lakme Perfecting Liquid Foundation Natural Pearl 27 Ml', 'Lakme Perfecting Liquid Foundation Natural Pearl 27 Ml', 1, 'Lakme Perfecting Liquid Foundation Natural Pearl 27 Ml', 'Lakme Perfecting Liquid Foundation Natural Pearl 27 Ml', '', 1),
(59, 2, 12, 'Blue Heaven Get Bold Eyeliner (Waterproof) Black Diamond 7 ml', 300, 250, 3, 0, '798002347_2.jpg', 'Blue Heaven Get Bold Eyeliner (Waterproof) Black Diamond 7 ml', 'Blue Heaven Get Bold Eyeliner (Waterproof) Black Diamond 7 ml', 1, 'Blue Heaven Get Bold Eyeliner (Waterproof) Black Diamond 7 ml', 'Blue Heaven Get Bold Eyeliner (Waterproof) Black Diamond 7 ml', '', 1),
(60, 2, 12, 'Lakme 9 To 5 Weightless Mousse Foundation Rose Ivory 6 Gm', 800, 700, 5, 0, '644117437_lakme_9_to_5_weightless_mousse_foundation_rose_ivory_6_gm_0_1.jpg', 'Lakme 9 To 5 Weightless Mousse Foundation Rose Ivory 6 Gm', 'Lakme 9 To 5 Weightless Mousse Foundation Rose Ivory 6 Gm', 1, 'Lakme 9 To 5 Weightless Mousse Foundation Rose Ivory 6 Gm', 'Lakme 9 To 5 Weightless Mousse Foundation Rose Ivory 6 Gm', '', 1),
(61, 2, 12, 'Faces Canada Weightless Stay Matte Compact Spf-20 Vitamin E & Shea Butter Ivory 01 9 Gm Make-Up Face Makeup', 600, 500, 3, 0, '815864142_faces_canada_weightless_stay_matte_compact_spf_20_vitamin_e_shea_butter_ivory_01_9_gm_0_0.jpg', 'Faces Canada Weightless Stay Matte Compact Spf-20 Vitamin E & Shea Butter Ivory 01 9 Gm\r\nMake-Up Face Makeup', 'Faces Canada Weightless Stay Matte Compact Spf-20 Vitamin E & Shea Butter Ivory 01 9 Gm\r\nMake-Up Face Makeup', 1, 'Faces Canada Weightless Stay Matte Compact Spf-20 Vitamin E & Shea Butter Ivory 01 9 Gm\r\nMake-Up Face Makeup', 'Faces Canada Weightless Stay Matte Compact Spf-20 Vitamin E & Shea Butter Ivory 01 9 Gm\r\nMake-Up Face Makeup', '', 1),
(62, 2, 12, 'Lakme Jewel Sindoor Maroon 4.5 ml', 700, 600, 5, 0, '591270523_lakme_jewel_sindoor_maroon_4_5_ml_445259_0_0.jpg', 'Lakme Jewel Sindoor Maroon 4.5 ml', 'Lakme Jewel Sindoor Maroon 4.5 ml', 1, 'Lakme Jewel Sindoor Maroon 4.5 ml', 'Lakme Jewel Sindoor Maroon 4.5 ml', '', 1);
INSERT INTO `product` (`id`, `categories_id`, `sub_categories_id`, `name`, `mrp`, `price`, `qty`, `formula`, `image`, `short_desc`, `description`, `best_seller`, `meta_title`, `meta_desc`, `meta_keyword`, `status`) VALUES
(63, 2, 12, 'Maybelline New York Fit Me Matte+Poreless Liquid Foundation Tube, 128 Warm Nude 18 gm', 1000, 900, 5, 0, '439896180_maybelline_new_york_fit_me_matteporeless_liquid_foundation_tube,_128_warm_nude_18_gm_0_0.jpg', 'Maybelline New York Fit Me Matte+Poreless Liquid Foundation Tube, 128 Warm Nude 18 gm', 'Maybelline New York Fit Me Matte+Poreless Liquid Foundation Tube, 128 Warm Nude 18 gm', 1, 'Maybelline New York Fit Me Matte+Poreless Liquid Foundation Tube, 128 Warm Nude 18 gm', 'Maybelline New York Fit Me Matte+Poreless Liquid Foundation Tube, 128 Warm Nude 18 gm', '', 1),
(64, 2, 13, 'Schwarzkopf Igora Royal Color Cream 5-0 Light Brown 60 ML', 1400, 1300, 5, 0, '905805307_download (2).jfif', 'Schwarzkopf Igora Royal Color Cream 5-0 Light Brown 60 ML', 'Schwarzkopf Igora Royal Color Cream 5-0 Light Brown 60 ML', 1, 'Schwarzkopf Igora Royal Color Cream 5-0 Light Brown 60 ML', 'Schwarzkopf Igora Royal Color Cream 5-0 Light Brown 60 ML', '', 1),
(65, 2, 13, 'Loreal Shampoo Keratin Straight 360Ml Pk', 700, 600, 10, 0, '934050694_download.jfif', 'Loreal Shampoo Keratin Straight 360Ml Pk', 'Loreal Shampoo Keratin Straight 360Ml Pk', 1, 'Loreal Shampoo Keratin Straight 360Ml Pk', 'Loreal Shampoo Keratin Straight 360Ml Pk', '', 1),
(66, 2, 13, 'Schwarzkopf Developer 6% 60ml', 500, 400, 5, 0, '710246847_download (1).jfif', 'Schwarzkopf Developer 6% 60ml', 'Schwarzkopf Developer 6% 60ml', 1, 'Schwarzkopf Developer 6% 60ml', 'Schwarzkopf Developer 6% 60ml', '', 1),
(67, 2, 13, 'Anne French Hair Removing Cream 56g', 130, 100, 5, 0, '457399366_images.jfif', 'Anne French Hair Removing Cream 56g', 'Anne French Hair Removing Cream 56g', 1, 'Anne French Hair Removing Cream 56g', 'Anne French Hair Removing Cream 56g', '', 1),
(68, 2, 13, 'Schwarzkopf Bonacure Color Freeze Shampoo 250ml', 2800, 2600, 5, 0, '283858145_download (3).jfif', 'Schwarzkopf Bonacure Color Freeze Shampoo 250ml', 'Schwarzkopf Bonacure Color Freeze Shampoo 250ml', 1, 'Schwarzkopf Bonacure Color Freeze Shampoo 250ml', 'Schwarzkopf Bonacure Color Freeze Shampoo 250ml', '', 1),
(69, 2, 13, 'Saeed Ghani Mustard Oil 100 ml', 250, 200, 5, 0, '259332938_download (4).jfif', 'Saeed Ghani Mustard Oil 100 ml', 'Saeed Ghani Mustard Oil 100 ml', 1, 'Saeed Ghani Mustard Oil 100 ml', 'Saeed Ghani Mustard Oil 100 ml', '', 1),
(70, 2, 14, 'Minimalist Vitamin C Face Serum 30 ml', 300, 250, 5, 0, '946086872_minimalist_vitamin_c_face_serum_30_ml_0_2.jpg', 'Minimalist Vitamin C Face Serum 30 ml', 'Minimalist Vitamin C Face Serum 30 ml', 1, 'Minimalist Vitamin C Face Serum 30 ml', 'Minimalist Vitamin C Face Serum 30 ml', '', 1),
(71, 2, 14, 'Vlcc 7X Ultra Whitening & Brightening Charcoal Peel Off Mask 100 Gm', 4510, 250, 5, 0, '663855024_vlcc_7x_ultra_whitening_brightening_charcoal_peel_off_mask_100_gm_0_2.jpg', 'Vlcc 7X Ultra Whitening & Brightening Charcoal Peel Off Mask 100 Gm', 'Vlcc 7X Ultra Whitening & Brightening Charcoal Peel Off Mask 100 Gm', 0, 'Vlcc 7X Ultra Whitening & Brightening Charcoal Peel Off Mask 100 Gm', 'Vlcc 7X Ultra Whitening & Brightening Charcoal Peel Off Mask 100 Gm', '', 1),
(72, 2, 15, 'GUBB 3D Face & Body Massager 550 gm', 3000, 2900, 5, 0, '615712077_gubb_3d_face_body_massager_550_gm_0_0.jpg', 'GUBB 3D Face & Body Massager 550 gm', 'GUBB 3D Face & Body Massager 550 gm', 1, 'GUBB 3D Face & Body Massager 550 gm', 'GUBB 3D Face & Body Massager 550 gm', '', 1),
(73, 2, 15, 'GUBB Derma Roller - Red 72 gm', 1200, 1100, 3, 0, '536820170_gubb_derma_roller_red_72_gm_0_0.jpg', 'GUBB Derma Roller - Red 72 gm', 'GUBB Derma Roller - Red 72 gm', 1, 'GUBB Derma Roller - Red 72 gm', 'GUBB Derma Roller - Red 72 gm', '', 1),
(74, 2, 15, 'GUBB Face & Eyebrow Razor - 3 Foldable Facial Razors 50 gm', 500, 460, 5, 0, '957408249_gubb_face_eyebrow_razor_3_foldable_facial_razors_50_gm_0_0.jpg', 'GUBB Face & Eyebrow Razor - 3 Foldable Facial Razors 50 gm', 'GUBB Face & Eyebrow Razor - 3 Foldable Facial Razors 50 gm', 0, 'GUBB Face & Eyebrow Razor - 3 Foldable Facial Razors 50 gm', 'GUBB Face & Eyebrow Razor - 3 Foldable Facial Razors 50 gm', '', 1),
(75, 2, 15, 'House of Beauty 3D Face Massager 1\'s', 8000, 7500, 5, 0, '826180920_house_of_beauty_3d_face_massager_1s_0_1.jpg', 'House of Beauty 3D Face Massager 1\'s', 'House of Beauty 3D Face Massager 1\'s', 1, 'House of Beauty 3D Face Massager 1\'s', 'House of Beauty 3D Face Massager 1\'s', '', 1),
(76, 2, 17, 'Revlon Love Her Madly Perfumed Body Spray 100 Ml', 550, 450, 5, 0, '157375463_revlon_love_her_madly_perfumed_body_spray_100_ml_0_0.jpg', 'Revlon Love Her Madly Perfumed Body Spray 100 Ml', 'Revlon Love Her Madly Perfumed Body Spray 100 Ml', 1, 'Revlon Love Her Madly Perfumed Body Spray 100 Ml', 'Revlon Love Her Madly Perfumed Body Spray 100 Ml', '', 1),
(77, 2, 17, 'Manish Malhotra Beauty By MyGlamm Ginger & Tulsi purifying sheet Mask 25 ml', 800, 700, 5, 0, '614999247_manish_malhotra_beauty_by_myglamm_ginger_tulsi_purifying_sheet_mask_28_gm_0_0.jpg', 'Manish Malhotra Beauty By MyGlamm Ginger & Tulsi purifying sheet Mask 25 ml', 'Manish Malhotra Beauty By MyGlamm Ginger & Tulsi purifying sheet Mask 25 ml', 1, 'Manish Malhotra Beauty By MyGlamm Ginger & Tulsi purifying sheet Mask 25 ml', 'Manish Malhotra Beauty By MyGlamm Ginger & Tulsi purifying sheet Mask 25 ml', '', 1),
(78, 2, 17, 'Revlon Charlie Perfumed Body Spray - Blue 150 Ml', 800, 750, 5, 0, '759634915_revlon_charlie_perfumed_body_spray_blue_150_ml_0_1.jpg', 'Revlon Charlie Perfumed Body Spray - Blue 150 Ml', 'Revlon Charlie Perfumed Body Spray - Blue 150 Ml', 1, 'Revlon Charlie Perfumed Body Spray - Blue 150 Ml', 'Revlon Charlie Perfumed Body Spray - Blue 150 Ml', '', 1),
(79, 2, 17, 'Revlon Charlie Crystal Chic Perfumed Body Spray 150 Ml', 800, 750, 20, 0, '406839144_revlon_charlie_crystal_chic_perfumed_body_spray_150_ml_0_1.jpg', 'Revlon Charlie Crystal Chic Perfumed Body Spray 150 Ml', 'Revlon Charlie Crystal Chic Perfumed Body Spray 150 Ml', 1, 'Revlon Charlie Crystal Chic Perfumed Body Spray 150 Ml', 'Revlon Charlie Crystal Chic Perfumed Body Spray 150 Ml', '', 1),
(80, 2, 18, 'ustraa Beard Growth Oil 35 ml', 1100, 1000, 3, 0, '470224267_ustraa_beard_growth_oil_35_ml_0_1.jpg', 'ustraa Beard Growth Oil 35 ml', 'ustraa Beard Growth Oil 35 ml', 1, 'ustraa Beard Growth Oil 35 ml', 'ustraa Beard Growth Oil 35 ml', '', 1),
(81, 2, 18, 'The Man Company Moustache Growth Oil Roll-On 8 ml', 1110, 1000, 3, 0, '466649955_the_man_company_moustache_growth_oil_roll_on_8_ml_0_0.jpg', 'The Man Company Moustache Growth Oil Roll-On 8 ml', 'The Man Company Moustache Growth Oil Roll-On 8 ml', 1, 'The Man Company Moustache Growth Oil Roll-On 8 ml', 'The Man Company Moustache Growth Oil Roll-On 8 ml', '', 1),
(82, 2, 18, 'The Beard Story Beard Softner Cream 50 gm', 800, 750, 5, 0, '960592242_the_beard_story_beard_softner_cream_50_gm_167425_0_3.jpg', 'The Beard Story Beard Softner Cream 50 gm', 'The Beard Story Beard Softner Cream 50 gm', 1, 'The Beard Story Beard Softner Cream 50 gm', 'The Beard Story Beard Softner Cream 50 gm', '', 1),
(83, 2, 18, 'Gillette Mach 3 Cartridges 12\'s', 3000, 2900, 2, 0, '432574701_gillette_mach_3_cartridges_12_s_0.jpg', 'Gillette Mach 3 Cartridges 12\'s', 'Gillette Mach 3 Cartridges 12\'s', 1, 'Gillette Mach 3 Cartridges 12\'s', 'Gillette Mach 3 Cartridges 12\'s', '', 1);

-- --------------------------------------------------------

--
-- Table structure for table `product_review`
--

CREATE TABLE `product_review` (
  `id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `rating` varchar(20) NOT NULL,
  `review` text NOT NULL,
  `status` int(11) NOT NULL,
  `added_on` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `product_review`
--

INSERT INTO `product_review` (`id`, `product_id`, `user_id`, `rating`, `review`, `status`, `added_on`) VALUES
(1, 1, 1, 'Good', 'gdfgdfghdfhdghfghdf', 1, '2022-06-26 20:35:10'),
(2, 1, 1, 'Good', 'tyhuhyhdfsgds', 1, '2022-06-26 20:37:18'),
(3, 1, 1, 'Fantastic', 'sfsdfgsdgvb gfv', 1, '2022-06-26 08:44:30');

-- --------------------------------------------------------

--
-- Table structure for table `sub_categories`
--

CREATE TABLE `sub_categories` (
  `id` int(11) NOT NULL,
  `categories_id` int(11) NOT NULL,
  `sub_categories` varchar(250) NOT NULL,
  `status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `sub_categories`
--

INSERT INTO `sub_categories` (`id`, `categories_id`, `sub_categories`, `status`) VALUES
(1, 1, 'COVID Essentials', 1),
(2, 1, 'Diabetes', 1),
(3, 1, 'Eyewear', 1),
(4, 1, 'Ayush', 1),
(5, 1, 'Ayurvedic', 1),
(6, 1, 'Homeopathy', 1),
(7, 1, 'Fitness', 1),
(8, 1, 'Mom & Baby', 1),
(9, 1, 'Devices', 1),
(10, 1, 'Surgicals', 1),
(11, 2, 'Personal Care', 1),
(12, 2, 'Make-Up', 1),
(13, 2, 'Hair', 1),
(14, 2, 'Skin Care', 1),
(15, 2, 'Tools & Appliances', 1),
(16, 2, 'Mom & Baby', 1),
(17, 2, 'Fragrances', 1),
(18, 2, 'Men\'s Grooming', 1);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `cnic` varchar(25) NOT NULL,
  `password` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `mobile` varchar(15) NOT NULL,
  `added_on` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `cnic`, `password`, `email`, `mobile`, `added_on`) VALUES
(1, 'Awais Khan', '17301-2692010-3', '123', 'awaiskhanbangash7@gmail.com', '03489397973', '2022-06-25 03:27:44'),
(2, 'Awais Khan Bangash', '17301-2692010-3', '202cb962ac59075b964b07152d234b70', 'kodinac893@exoacre.com', '03489397973', '2022-06-25 05:01:04'),
(3, 'khan', '1451', 'khan', 'goral65123@logodez.com', '4545', '2022-08-07 08:22:26'),
(4, 'khan', '1451', 'khan', 'defiwon674@logodez.com', '4545', '2022-08-07 08:24:21'),
(5, 'khan', '4545', 'admin', 'yetel79948@logodez.com', '154', '2022-08-07 08:24:56'),
(6, 'ali', '173011029208', '12345', 'acopy360@gmail.com', '03110990414', '2022-08-11 07:51:00');

-- --------------------------------------------------------

--
-- Table structure for table `wishlist`
--

CREATE TABLE `wishlist` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `added_on` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `wishlist`
--

INSERT INTO `wishlist` (`id`, `user_id`, `product_id`, `added_on`) VALUES
(3, 1, 1, '2022-08-02 11:01:43'),
(4, 1, 2, '2022-08-10 04:28:44');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin_users`
--
ALTER TABLE `admin_users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `banner`
--
ALTER TABLE `banner`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contact_us`
--
ALTER TABLE `contact_us`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `coupon_master`
--
ALTER TABLE `coupon_master`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `order`
--
ALTER TABLE `order`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `order_detail`
--
ALTER TABLE `order_detail`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `order_status`
--
ALTER TABLE `order_status`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product_review`
--
ALTER TABLE `product_review`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sub_categories`
--
ALTER TABLE `sub_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wishlist`
--
ALTER TABLE `wishlist`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin_users`
--
ALTER TABLE `admin_users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `banner`
--
ALTER TABLE `banner`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `contact_us`
--
ALTER TABLE `contact_us`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `coupon_master`
--
ALTER TABLE `coupon_master`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `order`
--
ALTER TABLE `order`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `order_detail`
--
ALTER TABLE `order_detail`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `order_status`
--
ALTER TABLE `order_status`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=84;

--
-- AUTO_INCREMENT for table `product_review`
--
ALTER TABLE `product_review`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `sub_categories`
--
ALTER TABLE `sub_categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `wishlist`
--
ALTER TABLE `wishlist`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
