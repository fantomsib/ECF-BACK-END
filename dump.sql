CREATE TABLE IF NOT EXISTS `author` (
  `id_author` int NOT NULL AUTO_INCREMENT,
  `name` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id_author`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4;

INSERT INTO `author` (`id_author`, `name`) VALUES
(1, 'Jonny John'),
(2, 'Eduard Uspenskiy'),
(3, 'Jen Sensero'),
(4, 'Douglas Brinkley'),
(5, 'Frank Herbert'),
(6, 'Kelley McNeil'),
(7, 'Simon Gervais'),
(8, 'Christine Nolfi ');

CREATE TABLE IF NOT EXISTS `books` (
  `id_book` int NOT NULL AUTO_INCREMENT,
  `title_book` varchar(100) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `print_date` date DEFAULT NULL,
  `description` text,
  `active` tinyint(1) DEFAULT '1',
  PRIMARY KEY (`id_book`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4;


INSERT INTO `books` (`id_book`, `title_book`, `image`, `print_date`, `description`, `active`) VALUES
(1, '42 Title', 'https://medialeaks.ru/wp-content/uploads/2019/09/imgonline-com-ua-Resize-JHE7IbTFUKx4-600x338.jpg', '2010-02-27', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book', 1),
(2, 'Gena', 'https://s3.vcdn.biz/static/f/777168201/image.jpgved=0CAkQjRxqFwoTCMC48enkyvMCFQAAAAAdAAAAABAD', '2010-02-27', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book', 1),
(3, 'Nissyu', 'https://images.ua.prom.st/1672806312_w640_h640_ni-sy-bud.jpg', '2010-02-27', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book', 1),
(4, 'Dune', 'https://m.media-amazon.com/images/I/517+uE+Ek2L.jpg', '0000-00-00', 'Set on the desert planet Arrakis, Dune is the story of the boy Paul Atreides, who would become the mysterious man known as Maud\'dib. He would avenge the traitorous plot against his noble family - and would bring to fruition humankind\'s most ancient and unattainable', 1),
(5, 'To Rescue the Republic', 'https://images-na.ssl-images-amazon.com/images/I/51MKdCsSIDS._SY291_BO1,204,203,200_QL40_FMwebp_.jpg', '2020-10-13', 'An epic history spanning the battlegrounds of the Civil War and the violent turmoil of Reconstruction to the forgotten electoral crisis that nearly fractured a reunited nation, Bret Baier’s To Rescue the Republic', 1),
(6, 'A Day Like This', 'https://m.media-amazon.com/images/I/51uYWhRO1KL.jpg', '2021-01-11', 'Annie Beyers has everything—a beautiful house, a loving husband, and an adorable daughter. It’s a day like any other when she takes Hannah to the pediatrician…until she wakes hours later from a car accident. ', 1),
(7, 'The Last Protector', 'https://m.media-amazon.com/images/I/51o7t1f9DWL.jpg', '2019-05-11', 'Former air force combat rescue officer Special Agent Clayton White now works for the Secret Service performing routine escort missions for politicians. These missions may not be quite as exciting as his', 1),
(8, 'The Passing Storm', 'https://m.media-amazon.com/images/I/51PtxrjH9iL.jpg', '2015-10-12', 'Early into the tempestuous decade of her thirties, Rae Langdon struggles to work through a grief she never anticipated. With her father, Connor, she tends to their Ohio farm, a forty-acre spread that itself', 1);

CREATE TABLE IF NOT EXISTS `books_author` (
  `id_book` int DEFAULT NULL,
  `id_author` int DEFAULT NULL,
  `id` int NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4;


INSERT INTO `books_author` (`id_book`, `id_author`, `id`) VALUES
(1, 1, 1),
(2, 2, 2),
(3, 3, 3),
(4, 5, 4),
(5, 4, 5),
(6, 6, 6),
(7, 7, 7),
(8, 8, 8);

CREATE TABLE IF NOT EXISTS `books_genre` (
  `id_book` int DEFAULT NULL,
  `id_genre` int DEFAULT NULL,
  `id` int NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`),
  KEY `id_book` (`id_book`),
  KEY `id_genre` (`id_genre`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4;


INSERT INTO `books_genre` (`id_book`, `id_genre`, `id`) VALUES
(1, 1, 1),
(2, 2, 2),
(3, 2, 3),
(4, 1, 4),
(5, 3, 5),
(6, 2, 6),
(7, 5, 7),
(8, 3, 8);

CREATE TABLE IF NOT EXISTS `genre` (
  `id_genre` int NOT NULL AUTO_INCREMENT,
  `name` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id_genre`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4;

INSERT INTO `genre` (`id_genre`, `name`) VALUES
(1, 'Fantasy'),
(2, 'Classics'),
(3, 'Action and Adventure'),
(4, 'Detective and Mystery'),
(5, 'Horror');


CREATE TABLE IF NOT EXISTS `rent` (
  `id_rent` int NOT NULL AUTO_INCREMENT,
  `id_book` int DEFAULT NULL,
  `reservation_date` date DEFAULT NULL,
  `date_rent` date DEFAULT NULL,
  `date_return` date DEFAULT NULL,
  `id_user` int DEFAULT NULL,
  PRIMARY KEY (`id_rent`)
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=utf8mb4;

INSERT INTO `rent` (`id_rent`, `id_book`, `reservation_date`, `date_rent`, `date_return`, `id_user`) VALUES
(14, 2, '2021-10-20', '2021-09-01', '2021-10-18', 1),
(16, 3, '2021-09-08', '2021-10-18', '2021-10-18', 1),
(24, 2, '2021-10-22', '2021-10-19', '2021-10-19', 1),
(25, 1, '2021-10-22', '2021-10-19', '2021-10-19', 1),
(26, 2, '2021-10-22', '2021-10-19', '2021-10-19', 1),
(27, 3, '2021-10-22', '2021-10-19', '2021-10-19', 1),
(28, 1, '2021-10-22', '2021-10-19', '2021-10-19', 1),
(29, 2, '2021-10-22', '2021-10-19', '2021-10-19', 1),
(30, 3, '2021-10-22', '2021-10-19', '2021-10-19', 1),
(31, 3, '2021-10-22', '2021-10-19', '2021-10-19', 1);


CREATE TABLE IF NOT EXISTS `users` (
  `id_user` int NOT NULL AUTO_INCREMENT,
  `email_user` varchar(100) DEFAULT NULL,
  `name_user` varchar(100) DEFAULT NULL,
  `surname_user` varchar(50) DEFAULT NULL,
  `data_of_birth` date DEFAULT NULL,
  `password` varchar(100) DEFAULT NULL,
  `code_postale_user` int DEFAULT NULL,
  `id_role` int DEFAULT NULL,
  PRIMARY KEY (`id_user`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4;

INSERT INTO `users` (`id_user`, `email_user`, `name_user`, `surname_user`, `data_of_birth`, `password`, `code_postale_user`, `id_role`) VALUES
(1, 'admin@books.fr', 'admin', NULL, NULL, '$2y$10$C5n6MaMMDm93oX3q9bitTeJoDSB3.8Sg86bQrfKoCd9FYLg5G8Hyq', NULL, 4),
(2, 'test@nu.ri', 'test', 'test', '2019-06-12', '$2y$10$VS571QfeNP.sSbUJh1hJvuoGDz6SLzVvBxa9m45ZtuM', 12345, 2),
(11, 'test@re', 'name', 'famely', '2003-05-14', '$2y$10$zTxgcfwu0TTPJE/GwA8fneXBJmgzrnCBpecmeu48DAfHpqBpOKp0.', 12345, 2),
(12, 'test@test.test', 'sdf', 'dsf', '2021-02-03', '$2y$10$0DS76sjJRg8vKKi1dSzmwei/y.kdSQMkd2OWxgAMsBokTyFlbYWEu', 123, 2),
(14, 'test@test.com', 'st', 'st', '2019-05-08', '$2y$10$hkyQDznbIaJi/SdxamfUvu/2bMMMgmu7fPhdWoE8707pxwrYQy.Je', 0, 2);


CREATE TABLE IF NOT EXISTS `users_roles` (
  `id_role` int NOT NULL AUTO_INCREMENT,
  `name_role` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id_role`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 ROW_FORMAT=COMPACT;


INSERT INTO `users_roles` (`id_role`, `name_role`) VALUES
(1, 'not confirmed'),
(2, 'member'),
(3, 'worker'),
(4, 'admin');

CREATE TABLE IF NOT EXISTS `users_token` (
  `token` varchar(50) DEFAULT NULL,
  `id_user` int DEFAULT NULL,
  `date_expired` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;


INSERT INTO `users_token` (`token`, `id_user`, `date_expired`) VALUES
('a5aaf1e3ec303e22c4b3f30350cbbdd9', 1, '2021-10-24'),
('6d78ef7bfd7b35e15aa22b7ad259e802', 1, '2021-10-24'),
('9fa02f16be47556f5cc889804cd48096', 1, '2021-10-24'),
('553e214b48ea290132bd3e78038c7ea4', 1, '2021-10-24'),
('48f779e7fc74320f43283a807005779b', 1, '2021-10-24'),
('04213a258dc922828f6fd369d9ca418f', 1, '2021-10-24'),
('3ad25e75fd85374d69763c7f31cdcacd', 1, '2021-10-24'),
('06a69a684f186cc6c709a0ef48ab1eb6', 1, '2021-10-24'),
('0a1399b730a9335865a03f981e1ff28e', 1, '2021-10-24'),
('3349287d0cc87da9616dffd60e3873cc', 1, '2021-10-24'),
('53a23dd1818d0ea7f7033a9862081543', 1, '2021-10-24'),
('9e51e9810c8042bbff707424acfdf049', 1, '2021-10-24'),
('ec64bba1dfaa493e4ed6d2bf0ec4d389', 1, '2021-10-24'),
('376a399f0eb46483aafd9578861f252d', 1, '2021-10-24'),
('a2778e32a0fb9dfbe7ae5c680d39c3eb', 11, '2021-10-24'),
('be7bfba25cc43e98afdc564ddf638ada', 1, '2021-10-24'),
('6fc1e461432fb62330120c854a2b162e', 1, '2021-10-24'),
('38b6c2d7a4de6d87f9d9cc7fa3d1b1f6', 1, '2021-10-24'),
('0a0e592e90c1b2bb8c6ec368da3b35b3', 1, '2021-10-24'),
('d78ff1015eee26e6e959116c418be285', 1, '2021-10-24'),
('1f6a374638b4ea79def1186fd17a8fe6', 1, '2021-10-24'),
('81f802bfd0c36f46975a6aa0304320fd', 1, '2021-10-24'),
('75c155ee306b1746697d5e2c5027b86a', 1, '2021-10-24'),
('7567a218f3ab2ed07de9ceec270fe0c1', 1, '2021-10-24'),
('503f2da769e7e3a4f144305f4b257134', 1, '2021-10-24'),
('fe8989f64a17af57a57661a92a6a5b4c', 1, '2021-10-24'),
('1f606da429fcf5bb4a31d39e5c46d18a', 1, '2021-10-24'),
('ad9e73ab53e2fcf3dc709cd334a3ff59', 1, '2021-10-24'),
('201ad815609dcadfd72c57d49ac64711', 1, '2021-10-24'),
('13d35ce19fa7374182fe36fe64126c89', 1, '2021-10-24'),
('2b00a12e46003b3aa6eaaf6e3cfd9b68', 1, '2021-10-24'),
('c5a1791aef18ad668ab969bdc7b36c25', 1, '2021-10-24'),
('f63e1373b322f75bb7e65459ac2d2e1c', 1, '2021-10-24'),
('3c2ee102876af1c6dc8c373d17e5d137', 1, '2021-10-24'),
('645ecd6f19dfe160c9aaa28772673139', 1, '2021-10-24'),
('476c03355b39546234aa09cb2b706f04', 1, '2021-10-24'),
('8b0eb4b57738b28769bef5d7bd8498cd', 1, '2021-10-24'),
('6f0aca9e12c65e98bc1054fd051b1a78', 1, '2021-10-24'),
('df7fe4e25026b55fb5c00b27097c81f7', 1, '2021-10-24'),
('13dd3e2e6e09a48bcaedb8606186a09f', 1, '2021-10-25'),
('1c20a00456db83ceece804d436311f2d', 1, '2021-10-25'),
('bd171180e62724161d9b0d0699ad3b7c', 1, '2021-10-25'),
('c754b2be546c08461b392d3b8c2fc457', 1, '2021-10-25'),
('e07b9f843b7bb2ac64756a650365e0c1', 1, '2021-10-25'),
('68d985b942149a9da7d543b3a4a174c9', 1, '2021-10-25'),
('117dbe6bf36e76fbb35c6cfb57fc09ae', 1, '2021-10-25'),
('1f2898c4c414f832df0db8e3c4a7f6f4', 1, '2021-10-25'),
('94ea2f088e4e6736b8503228c9ee3e14', 1, '2021-10-25'),
('5f15b2aac40a067dd152a7f4a65c305b', 1, '2021-10-26'),
('ad53d103547b6d567218a093806cfdf1', 1, '2021-10-26'),
('5c2d67c6106169e8ba0d7ad7e2b675cb', 1, '2021-10-26'),
('d7dd2194fb41603d4b476927c1d0c501', 1, '2021-10-26'),
('5f8518c9aa3fec8ea510577a47a37031', 1, '2021-10-26'),
('d27e489dea4972534f18368a234220b1', 1, '2021-10-26'),
('81d0755a5df75cf17c364f8f758cdd29', 1, '2021-10-26'),
('fdaa3f497c71234d4758972fe6d7f54d', 1, '2021-10-26'),
('155c190208bd99963b0e9c42c4f4b063', 1, '2021-10-26'),
('49e7fd52b966dd6dbe643cfe4856227c', 1, '2021-10-26'),
('8fb3737304795bb14e28a53c94c50620', 1, '2021-10-26'),
('adae5c8d9dc1ef754b4d5f212bcdd8aa', 1, '2021-10-26'),
('ec55e28d45219ee056c878727bb93ce2', 1, '2021-10-26'),
('aee906c56233a243aa915ec8616e6440', 1, '2021-10-26'),
('02d4a8ef4cb50c3ad2293fe8cc0b5904', 12, '2021-10-26'),
('335d463d40bd98478f4b65e95e24828a', 1, '2021-10-26'),
('17961ab2fc60986ec8478da02aba2ebd', 1, '2021-10-26'),
('f4a87f8bbcfb10ffe31d5ee0ca9de02d', 1, '2021-10-26'),
('e524c40ea1c6afb9496bbef4487ea177', 1, '2021-10-26'),
('2d839c26fc767efc16e2e0f3b95fbcb5', 1, '2021-10-26'),
('41a339345e07f66b2b58aabad78a4b10', 14, '2021-10-26'),
('8dcdd0b6a9c748c776ee2901b46580e2', 1, '2021-10-26'),
('8e75dcd0443e9fdf78300bd0a8187a6b', 1, '2021-10-26'),
('59b82d6d40641086c0f8b7d23f72d297', 1, '2021-10-26'),
('8cfe62efd3de072e604acb573585d1b4', 1, '2021-10-26');