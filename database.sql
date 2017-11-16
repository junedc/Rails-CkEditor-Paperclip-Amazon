-- Dumping structure for table temp.ar_internal_metadata
CREATE TABLE IF NOT EXISTS `ar_internal_metadata` (
  `key` varchar(255) NOT NULL,
  `value` varchar(255) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table temp.ar_internal_metadata: ~1 rows (approximately)
/*!40000 ALTER TABLE `ar_internal_metadata` DISABLE KEYS */;
INSERT INTO `ar_internal_metadata` (`key`, `value`, `created_at`, `updated_at`) VALUES
	('environment', 'development', '2017-09-19 05:21:12', '2017-09-19 05:21:12');
/*!40000 ALTER TABLE `ar_internal_metadata` ENABLE KEYS */;

-- Dumping structure for table temp.ckeditor_assets
CREATE TABLE IF NOT EXISTS `ckeditor_assets` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `data_file_name` varchar(255) NOT NULL,
  `data_content_type` varchar(255) DEFAULT NULL,
  `data_file_size` int(11) DEFAULT NULL,
  `data_fingerprint` varchar(255) DEFAULT NULL,
  `type` varchar(30) DEFAULT NULL,
  `width` int(11) DEFAULT NULL,
  `height` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `index_ckeditor_assets_on_type` (`type`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- Dumping data for table temp.ckeditor_assets: ~3 rows (approximately)
/*!40000 ALTER TABLE `ckeditor_assets` DISABLE KEYS */;
INSERT INTO `ckeditor_assets` (`id`, `data_file_name`, `data_content_type`, `data_file_size`, `data_fingerprint`, `type`, `width`, `height`, `created_at`, `updated_at`) VALUES
	(1, 'download.jpg', 'image/jpeg', 5765, 'd12d5490eccedbfd957a98b15fffc621', 'Ckeditor::Picture', 236, 213, '2017-09-19 23:25:25', '2017-09-19 23:25:25'),
	(2, 'images.jpg', 'image/jpeg', 5028, '0699b31df07d06b35c319d5a4c284102', 'Ckeditor::AttachmentFile', 275, 183, '2017-09-19 23:33:36', '2017-09-19 23:33:36'),
	(3, 'example-shrunk.png', 'image/png', 15391, '916322338c85b8646074649ad1947486', 'Ckeditor::Picture', 200, 150, '2017-09-19 23:40:58', '2017-09-19 23:40:58');
/*!40000 ALTER TABLE `ckeditor_assets` ENABLE KEYS */;

-- Dumping structure for table temp.products
CREATE TABLE IF NOT EXISTS `products` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `image_file_name` varchar(255) DEFAULT NULL,
  `image_content_type` varchar(255) DEFAULT NULL,
  `image_file_size` int(11) DEFAULT NULL,
  `image_updated_at` datetime DEFAULT NULL,
  `content` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- Dumping data for table temp.products: ~4 rows (approximately)
/*!40000 ALTER TABLE `products` DISABLE KEYS */;
INSERT INTO `products` (`id`, `name`, `created_at`, `updated_at`, `image_file_name`, `image_content_type`, `image_file_size`, `image_updated_at`, `content`) VALUES
	(1, 'MY NEW PRODUCT', '2017-09-19 22:32:08', '2017-10-18 20:51:38', 'download.jpg', 'image/jpeg', 5765, '2017-10-18 20:50:31', '<p><img alt="" src="http://s3.amazonaws.com/firstybucket/home/junedc/Desktop/rails-paperclip-s3-example/public/ckeditor_assets/pictures/3/content_example-shrunk.png" /><img alt="" src="http://s3-ap-southeast-2.amazonaws.com/firstybucket/home/junedc/Desktop/rails-paperclip-s3-example/public/ckeditor_assets/pictures/3/content_example-shrunk.png" style="width: 200px; height: 150px;" /><img alt="" src="http://s3-ap-southeast-2.amazonaws.com/firstybucket/home/junedc/Desktop/rails-paperclip-s3-example/public/ckeditor_assets/pictures/1/content_download.jpg" style="width: 236px; height: 213px;" /></p>\r\n'),
	(2, 'product 2', '2017-09-19 22:35:40', '2017-09-20 00:17:15', 'download1.jpg', 'image/jpeg', 27958, '2017-09-19 22:35:40', '<p><img alt="" src="http://s3.amazonaws.com/firstybucket/home/junedc/Desktop/rails-paperclip-s3-example/public/ckeditor_assets/pictures/3/content_example-shrunk.png" /><img alt="" src="http://s3-ap-southeast-2.amazonaws.com/firstybucket/home/junedc/Desktop/rails-paperclip-s3-example/public/ckeditor_assets/pictures/3/content_example-shrunk.png" style="width: 200px; height: 150px;" /><img alt="" src="http://s3-ap-southeast-2.amazonaws.com/firstybucket/home/junedc/Desktop/rails-paperclip-s3-example/public/ckeditor_assets/pictures/1/content_download.jpg" style="width: 236px; height: 213px;" /></p>\r\n'),
	(3, 'test test', '2017-09-19 23:05:47', '2017-09-19 23:05:47', 'images.jpg', 'image/jpeg', 5028, '2017-09-19 23:05:47', '<p><img alt="" src="http://s3.amazonaws.com/firstybucket/home/junedc/Desktop/rails-paperclip-s3-example/public/ckeditor_assets/pictures/3/content_example-shrunk.png" /><img alt="" src="http://s3-ap-southeast-2.amazonaws.com/firstybucket/home/junedc/Desktop/rails-paperclip-s3-example/public/ckeditor_assets/pictures/3/content_example-shrunk.png" style="width: 200px; height: 150px;" /></p>\r\n'),
	(4, 'gggg', '2017-09-19 23:07:23', '2017-09-20 00:00:38', 'download.jpg', 'image/jpeg', 5765, '2017-09-19 23:07:23', '<p><img alt="" src="http://s3.amazonaws.com/firstybucket/home/junedc/Desktop/rails-paperclip-s3-example/public/ckeditor_assets/pictures/3/content_example-shrunk.png" /><img alt="" src="http://s3-ap-southeast-2.amazonaws.com/firstybucket/home/junedc/Desktop/rails-paperclip-s3-example/public/ckeditor_assets/pictures/3/content_example-shrunk.png" style="width: 200px; height: 150px;" /></p>\r\n');
/*!40000 ALTER TABLE `products` ENABLE KEYS */;

-- Dumping structure for table temp.schema_migrations
CREATE TABLE IF NOT EXISTS `schema_migrations` (
  `version` varchar(255) NOT NULL,
  PRIMARY KEY (`version`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table temp.schema_migrations: ~5 rows (approximately)
/*!40000 ALTER TABLE `schema_migrations` DISABLE KEYS */;
INSERT INTO `schema_migrations` (`version`) VALUES
	('20170115123330'),
	('20170115123558'),
	('20170919045513'),
	('20170919165713'),
	('20170920111118');
