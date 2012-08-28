-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Server version:               5.5.16-log - MySQL Community Server (GPL)
-- Server OS:                    Win64
-- HeidiSQL version:             7.0.0.4152
-- Date/time:                    2012-08-29 01:53:03
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!40014 SET FOREIGN_KEY_CHECKS=0 */;

-- Dumping structure for table frontend.catalogs
DROP TABLE IF EXISTS `catalogs`;
CREATE TABLE IF NOT EXISTS `catalogs` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `catname` varchar(50) NOT NULL,
  `alias` varchar(50) NOT NULL,
  `content` text NOT NULL,
  `parent_id` int(5) NOT NULL,
  `date` date NOT NULL,
  `status` int(2) NOT NULL,
  `intrash` int(2) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=20 DEFAULT CHARSET=utf8;

-- Dumping data for table frontend.catalogs: 12 rows
DELETE FROM `catalogs`;
/*!40000 ALTER TABLE `catalogs` DISABLE KEYS */;
INSERT INTO `catalogs` (`id`, `catname`, `alias`, `content`, `parent_id`, `date`, `status`, `intrash`) VALUES
	(1, 'Каталог номер 1', 'catalog1', '<p>Описание каталога номер 1</p>', 0, '2012-06-20', 1, 0),
	(2, 'Каталог номер 2', 'catalog2', 'Описание каталога номер 2', 1, '2012-06-20', 1, 0),
	(3, 'Каталог номер 3', 'catalog3', 'Описание каталога номер 3', 1, '2012-06-20', 1, 0),
	(4, 'Каталог номер 4', 'catalog4', 'Описание каталога номер 4', 1, '2012-06-14', 1, 0),
	(5, 'Каталог номер 5', 'catalog5', 'Описание каталога номер 5', 2, '2012-06-14', 1, 0),
	(7, 'Каталог номер 6', 'catalog6', 'Описание каталога номер 6', 2, '2012-06-16', 1, 0),
	(8, 'Каталог номер 7', 'catalog7', 'Описание каталога номер 7', 2, '2012-06-16', 1, 0),
	(9, 'Каталог номер 8', 'catalog8', 'Описание каталога номер 8', 2, '2012-06-21', 1, 0),
	(10, 'Каталог номер 9', 'catalog9', 'Описание каталога номер 9', 2, '2012-06-09', 1, 0),
	(11, 'Каталог номер 10', 'catalog10', 'Описание каталога номер 10', 2, '2012-06-02', 1, 0),
	(12, 'Каталог номер 11', 'catalog11', 'Описание каталога номер 11', 2, '2012-06-15', 1, 0),
	(13, 'Каталог номер 12', 'catalog12', 'Описание каталога номер 12', 2, '2012-06-30', 1, 0);
/*!40000 ALTER TABLE `catalogs` ENABLE KEYS */;


-- Dumping structure for table frontend.config
DROP TABLE IF EXISTS `config`;
CREATE TABLE IF NOT EXISTS `config` (
  `group_name` varchar(128) NOT NULL DEFAULT '',
  `config_key` varchar(128) NOT NULL DEFAULT '',
  `config_value` text,
  PRIMARY KEY (`group_name`,`config_key`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- Dumping data for table frontend.config: 12 rows
DELETE FROM `config`;
/*!40000 ALTER TABLE `config` DISABLE KEYS */;
INSERT INTO `config` (`group_name`, `config_key`, `config_value`) VALUES
	('site', 'sitename', 's:27:"Название сайта";'),
	('site', 'description', 's:27:"Описание сайта";'),
	('site', 'session', 's:4:"3600";'),
	('site', 'keywords', 's:47:"ключевые слова, ключевики";'),
	('site', 'robots', 's:14:"index,nofollow";'),
	('site', 'email', 's:14:"admin@admin.ru";'),
	('site', 'email_from', 's:14:"Admin frontend";'),
	('site', 'copyright', 's:34:"Все права защищены";'),
	('site', 'page404', 's:36:"Страница не найдена";'),
	('site', 'status', 's:1:"1";'),
	('site', 'debug', 's:1:"0";'),
	('site', 'cache', 's:1:"0";');
/*!40000 ALTER TABLE `config` ENABLE KEYS */;


-- Dumping structure for table frontend.mails
DROP TABLE IF EXISTS `mails`;
CREATE TABLE IF NOT EXISTS `mails` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `to` varchar(50) NOT NULL,
  `subject` varchar(70) NOT NULL,
  `from` varchar(50) NOT NULL,
  `message` text NOT NULL,
  `date` date NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- Dumping data for table frontend.mails: 0 rows
DELETE FROM `mails`;
/*!40000 ALTER TABLE `mails` DISABLE KEYS */;
/*!40000 ALTER TABLE `mails` ENABLE KEYS */;


-- Dumping structure for table frontend.modules
DROP TABLE IF EXISTS `modules`;
CREATE TABLE IF NOT EXISTS `modules` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `name` varchar(250) NOT NULL,
  `systemname` varchar(50) NOT NULL,
  `content` text NOT NULL,
  `author_id` int(5) NOT NULL,
  `type` varchar(10) NOT NULL,
  `date` date NOT NULL,
  `status` int(3) NOT NULL,
  `intrash` int(3) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=35 DEFAULT CHARSET=utf8;

-- Dumping data for table frontend.modules: 3 rows
DELETE FROM `modules`;
/*!40000 ALTER TABLE `modules` DISABLE KEYS */;
INSERT INTO `modules` (`id`, `name`, `systemname`, `content`, `author_id`, `type`, `date`, `status`, `intrash`) VALUES
	(2, 'Модуль навигации', 'mod1', '<p>Код модуля 1</p>\n', 1, 'HTML', '2012-06-16', 1, 0),
	(3, 'Модуль валидации', 'mod2', '<p>Код модуля 2</p>\n', 1, 'PHP', '2012-06-16', 1, 0),
	(5, 'Модуль пагинации', 'mod3', '<p>Код модуля 3</p>\n', 1, 'JS', '2012-06-16', 1, 0);
/*!40000 ALTER TABLE `modules` ENABLE KEYS */;


-- Dumping structure for table frontend.pages
DROP TABLE IF EXISTS `pages`;
CREATE TABLE IF NOT EXISTS `pages` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `pagename` varchar(250) NOT NULL,
  `alias` varchar(250) NOT NULL,
  `metadesc` text NOT NULL,
  `metakeywords` text NOT NULL,
  `content` text NOT NULL,
  `catalog_id` int(10) NOT NULL,
  `author_id` int(10) NOT NULL,
  `date` date NOT NULL,
  `status` int(3) NOT NULL,
  `intrash` int(3) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=43 DEFAULT CHARSET=utf8;

-- Dumping data for table frontend.pages: 36 rows
DELETE FROM `pages`;
/*!40000 ALTER TABLE `pages` DISABLE KEYS */;
INSERT INTO `pages` (`id`, `pagename`, `alias`, `metadesc`, `metakeywords`, `content`, `catalog_id`, `author_id`, `date`, `status`, `intrash`) VALUES
	(1, 'страница 1', 'page1', 'описание страницы 1', 'страница, страница номер 20, двадцатая страница, страничка', '<p>\n	Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean fringilla nibh quis odio sagittis imperdiet. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Ut et odio neque, at accumsan ipsum. Phasellus ac bibendum massa.</p>\n<p>\n	Donec egestas erat quis nunc consectetur scelerisque pretium tortor tristique. Suspendisse id diam ac ante ultricies convallis. Curabitur imperdiet porttitor est non scelerisque. Sed condimentum adipiscing ligula nec mollis.</p>\n<p>\n	Nam risus nisi, pharetra nec rutrum quis, venenatis quis felis. Vivamus porta, turpis ut tempus pretium, erat mauris egestas nibh, eu tincidunt ante odio ac metus. Fusce tortor purus, vulputate et malesuada in, vehicula quis tellus.</p>\n<p>\n	Nullam vestibulum ligula at nunc vulputate sit amet pulvinar nunc sollicitudin. Vestibulum dignissim placerat metus, in pellentesque odio viverra in.</p>\n', 1, 1, '2012-06-22', 1, 0),
	(2, 'страница 2', 'page2', 'описание страницы 2', 'ключевые слова', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean fringilla nibh quis odio sagittis imperdiet. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Ut et odio neque, at accumsan ipsum. Phasellus ac bibendum massa.</p>\n<p>\n	Donec egestas erat quis nunc consectetur scelerisque pretium tortor tristique. Suspendisse id diam ac ante ultricies convallis. Curabitur imperdiet porttitor est non scelerisque. Sed condimentum adipiscing ligula nec mollis.</p>\n<p>\n	Nam risus nisi, pharetra nec rutrum quis, venenatis quis felis. Vivamus porta, turpis ut tempus pretium, erat mauris egestas nibh, eu tincidunt ante odio ac metus. Fusce tortor purus, vulputate et malesuada in, vehicula quis tellus.</p>\n<p>\n	Nullam vestibulum ligula at nunc vulputate sit amet pulvinar nunc sollicitudin. Vestibulum dignissim placerat metus, in pellentesque odio viverra in.</p>\n', 1, 1, '2012-08-01', 1, 0),
	(3, 'страница 3', 'page3', 'описание страницы 3', 'ключевые слова', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean fringilla nibh quis odio sagittis imperdiet. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Ut et odio neque, at accumsan ipsum. Phasellus ac bibendum massa.</p>\n<p>\n	Donec egestas erat quis nunc consectetur scelerisque pretium tortor tristique. Suspendisse id diam ac ante ultricies convallis. Curabitur imperdiet porttitor est non scelerisque. Sed condimentum adipiscing ligula nec mollis.</p>\n<p>\n	Nam risus nisi, pharetra nec rutrum quis, venenatis quis felis. Vivamus porta, turpis ut tempus pretium, erat mauris egestas nibh, eu tincidunt ante odio ac metus. Fusce tortor purus, vulputate et malesuada in, vehicula quis tellus.</p>\n<p>\n	Nullam vestibulum ligula at nunc vulputate sit amet pulvinar nunc sollicitudin. Vestibulum dignissim placerat metus, in pellentesque odio viverra in.</p>\n', 1, 2, '2012-08-01', 1, 0),
	(4, 'страница 4', 'page4', 'описание страницы 4', 'ключевые слова', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean fringilla nibh quis odio sagittis imperdiet. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Ut et odio neque, at accumsan ipsum. Phasellus ac bibendum massa.</p>\n<p>\n	Donec egestas erat quis nunc consectetur scelerisque pretium tortor tristique. Suspendisse id diam ac ante ultricies convallis. Curabitur imperdiet porttitor est non scelerisque. Sed condimentum adipiscing ligula nec mollis.</p>\n<p>\n	Nam risus nisi, pharetra nec rutrum quis, venenatis quis felis. Vivamus porta, turpis ut tempus pretium, erat mauris egestas nibh, eu tincidunt ante odio ac metus. Fusce tortor purus, vulputate et malesuada in, vehicula quis tellus.</p>\n<p>\n	Nullam vestibulum ligula at nunc vulputate sit amet pulvinar nunc sollicitudin. Vestibulum dignissim placerat metus, in pellentesque odio viverra in.</p>\n', 1, 2, '2012-08-01', 1, 0),
	(5, 'страница 5', 'page5', 'описание страницы 5', 'ключевые слова', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean fringilla nibh quis odio sagittis imperdiet. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Ut et odio neque, at accumsan ipsum. Phasellus ac bibendum massa.</p>\n<p>\n	Donec egestas erat quis nunc consectetur scelerisque pretium tortor tristique. Suspendisse id diam ac ante ultricies convallis. Curabitur imperdiet porttitor est non scelerisque. Sed condimentum adipiscing ligula nec mollis.</p>\n<p>\n	Nam risus nisi, pharetra nec rutrum quis, venenatis quis felis. Vivamus porta, turpis ut tempus pretium, erat mauris egestas nibh, eu tincidunt ante odio ac metus. Fusce tortor purus, vulputate et malesuada in, vehicula quis tellus.</p>\n<p>\n	Nullam vestibulum ligula at nunc vulputate sit amet pulvinar nunc sollicitudin. Vestibulum dignissim placerat metus, in pellentesque odio viverra in.</p>\n', 1, 2, '2012-08-01', 1, 0),
	(6, 'страница 6', 'page6', 'описание страницы 6', 'ключевые слова, слова ключевые, словечки', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean fringilla nibh quis odio sagittis imperdiet. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Ut et odio neque, at accumsan ipsum. Phasellus ac bibendum massa. \n<p>Donec egestas erat quis nunc consectetur scelerisque pretium tortor tristique. Suspendisse id diam ac ante ultricies convallis. Curabitur imperdiet porttitor est non scelerisque. Sed condimentum adipiscing ligula nec mollis. </p>\n<p>Nam risus nisi, pharetra nec rutrum quis, venenatis quis felis. Vivamus porta, turpis ut tempus pretium, erat mauris egestas nibh, eu tincidunt ante odio ac metus. Fusce tortor purus, vulputate et malesuada in, vehicula quis tellus. </p>\n<p>Nullam vestibulum ligula at nunc vulputate sit amet pulvinar nunc sollicitudin. Vestibulum dignissim placerat metus, in pellentesque odio viverra in.</p>\n', 2, 2, '2012-06-22', 1, 0),
	(7, 'страница 7', 'page7', 'описание страницы 7', 'ключевые слова, слова ключевые, словечки', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean fringilla nibh quis odio sagittis imperdiet. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Ut et odio neque, at accumsan ipsum. Phasellus ac bibendum massa. \n<p>Donec egestas erat quis nunc consectetur scelerisque pretium tortor tristique. Suspendisse id diam ac ante ultricies convallis. Curabitur imperdiet porttitor est non scelerisque. Sed condimentum adipiscing ligula nec mollis. </p>\n<p>Nam risus nisi, pharetra nec rutrum quis, venenatis quis felis. Vivamus porta, turpis ut tempus pretium, erat mauris egestas nibh, eu tincidunt ante odio ac metus. Fusce tortor purus, vulputate et malesuada in, vehicula quis tellus. </p>\n<p>Nullam vestibulum ligula at nunc vulputate sit amet pulvinar nunc sollicitudin. Vestibulum dignissim placerat metus, in pellentesque odio viverra in.</p>\n', 2, 3, '2012-06-18', 1, 0),
	(8, 'страница 8', 'page8', 'Описание страницы 8', 'ключевые слова, слова ключевые, словечки', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean fringilla nibh quis odio sagittis imperdiet. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Ut et odio neque, at accumsan ipsum. Phasellus ac bibendum massa. \n<p>Donec egestas erat quis nunc consectetur scelerisque pretium tortor tristique. Suspendisse id diam ac ante ultricies convallis. Curabitur imperdiet porttitor est non scelerisque. Sed condimentum adipiscing ligula nec mollis. </p>\n<p>Nam risus nisi, pharetra nec rutrum quis, venenatis quis felis. Vivamus porta, turpis ut tempus pretium, erat mauris egestas nibh, eu tincidunt ante odio ac metus. Fusce tortor purus, vulputate et malesuada in, vehicula quis tellus. </p>\n<p>Nullam vestibulum ligula at nunc vulputate sit amet pulvinar nunc sollicitudin. Vestibulum dignissim placerat metus, in pellentesque odio viverra in.</p>\n', 2, 3, '2012-06-23', 1, 0),
	(9, 'страница 9', 'page9', 'Описание страницы 9', 'ключевые слова, слова ключевые, словечки', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean fringilla nibh quis odio sagittis imperdiet. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Ut et odio neque, at accumsan ipsum. Phasellus ac bibendum massa. \n<p>Donec egestas erat quis nunc consectetur scelerisque pretium tortor tristique. Suspendisse id diam ac ante ultricies convallis. Curabitur imperdiet porttitor est non scelerisque. Sed condimentum adipiscing ligula nec mollis. </p>\n<p>Nam risus nisi, pharetra nec rutrum quis, venenatis quis felis. Vivamus porta, turpis ut tempus pretium, erat mauris egestas nibh, eu tincidunt ante odio ac metus. Fusce tortor purus, vulputate et malesuada in, vehicula quis tellus. </p>\n<p>Nullam vestibulum ligula at nunc vulputate sit amet pulvinar nunc sollicitudin. Vestibulum dignissim placerat metus, in pellentesque odio viverra in.</p>\n', 2, 3, '2012-06-23', 1, 0),
	(10, 'страница 10', 'page10', 'Описание страницы 10', 'ключевые слова, слова ключевые, словечки', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean fringilla nibh quis odio sagittis imperdiet. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Ut et odio neque, at accumsan ipsum. Phasellus ac bibendum massa. \n<p>Donec egestas erat quis nunc consectetur scelerisque pretium tortor tristique. Suspendisse id diam ac ante ultricies convallis. Curabitur imperdiet porttitor est non scelerisque. Sed condimentum adipiscing ligula nec mollis. </p>\n<p>Nam risus nisi, pharetra nec rutrum quis, venenatis quis felis. Vivamus porta, turpis ut tempus pretium, erat mauris egestas nibh, eu tincidunt ante odio ac metus. Fusce tortor purus, vulputate et malesuada in, vehicula quis tellus. </p>\n<p>Nullam vestibulum ligula at nunc vulputate sit amet pulvinar nunc sollicitudin. Vestibulum dignissim placerat metus, in pellentesque odio viverra in.</p>\n', 3, 3, '2012-06-29', 1, 0),
	(11, 'страница 11', 'page11', 'Описание страницы 11', 'ключевые слова, слова ключевые, словечки', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean fringilla nibh quis odio sagittis imperdiet. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Ut et odio neque, at accumsan ipsum. Phasellus ac bibendum massa. \n<p>Donec egestas erat quis nunc consectetur scelerisque pretium tortor tristique. Suspendisse id diam ac ante ultricies convallis. Curabitur imperdiet porttitor est non scelerisque. Sed condimentum adipiscing ligula nec mollis. </p>\n<p>Nam risus nisi, pharetra nec rutrum quis, venenatis quis felis. Vivamus porta, turpis ut tempus pretium, erat mauris egestas nibh, eu tincidunt ante odio ac metus. Fusce tortor purus, vulputate et malesuada in, vehicula quis tellus. </p>\n<p>Nullam vestibulum ligula at nunc vulputate sit amet pulvinar nunc sollicitudin. Vestibulum dignissim placerat metus, in pellentesque odio viverra in.</p>\n', 3, 1, '2012-06-30', 1, 0),
	(12, 'страница 12', 'page12', 'Описание страницы 12', 'ключевые слова, слова ключевые, словечки', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean fringilla nibh quis odio sagittis imperdiet. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Ut et odio neque, at accumsan ipsum. Phasellus ac bibendum massa. \n<p>Donec egestas erat quis nunc consectetur scelerisque pretium tortor tristique. Suspendisse id diam ac ante ultricies convallis. Curabitur imperdiet porttitor est non scelerisque. Sed condimentum adipiscing ligula nec mollis. </p>\n<p>Nam risus nisi, pharetra nec rutrum quis, venenatis quis felis. Vivamus porta, turpis ut tempus pretium, erat mauris egestas nibh, eu tincidunt ante odio ac metus. Fusce tortor purus, vulputate et malesuada in, vehicula quis tellus. </p>\n<p>Nullam vestibulum ligula at nunc vulputate sit amet pulvinar nunc sollicitudin. Vestibulum dignissim placerat metus, in pellentesque odio viverra in.</p>\n', 3, 1, '2012-06-28', 1, 0),
	(13, 'страница 13', 'page13', 'Описание страницы 13', 'ключевые слова, слова ключевые, словечки', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean fringilla nibh quis odio sagittis imperdiet. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Ut et odio neque, at accumsan ipsum. Phasellus ac bibendum massa. \n<p>Donec egestas erat quis nunc consectetur scelerisque pretium tortor tristique. Suspendisse id diam ac ante ultricies convallis. Curabitur imperdiet porttitor est non scelerisque. Sed condimentum adipiscing ligula nec mollis. </p>\n<p>Nam risus nisi, pharetra nec rutrum quis, venenatis quis felis. Vivamus porta, turpis ut tempus pretium, erat mauris egestas nibh, eu tincidunt ante odio ac metus. Fusce tortor purus, vulputate et malesuada in, vehicula quis tellus. </p>\n<p>Nullam vestibulum ligula at nunc vulputate sit amet pulvinar nunc sollicitudin. Vestibulum dignissim placerat metus, in pellentesque odio viverra in.</p>\n', 3, 1, '2012-06-15', 1, 0),
	(14, 'страница 14', 'page14', 'описание страницы 36\n', 'ключевые слова, слова ключевые, словечки', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean fringilla nibh quis odio sagittis imperdiet. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Ut et odio neque, at accumsan ipsum. Phasellus ac bibendum massa.</p>\n<p>\n	Donec egestas erat quis nunc consectetur scelerisque pretium tortor tristique. Suspendisse id diam ac ante ultricies convallis. Curabitur imperdiet porttitor est non scelerisque. Sed condimentum adipiscing ligula nec mollis.</p>\n<p>\n	Nam risus nisi, pharetra nec rutrum quis, venenatis quis felis. Vivamus porta, turpis ut tempus pretium, erat mauris egestas nibh, eu tincidunt ante odio ac metus. Fusce tortor purus, vulputate et malesuada in, vehicula quis tellus.</p>\n<p>\n	Nullam vestibulum ligula at nunc vulputate sit amet pulvinar nunc sollicitudin. Vestibulum dignissim placerat metus, in pellentesque odio viverra in.</p>\n', 4, 1, '2012-08-01', 1, 0),
	(15, 'страница 15', 'page15', 'Описание страницы 37', 'ключевые слова, слова ключевые, словечки', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean fringilla nibh quis odio sagittis imperdiet. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Ut et odio neque, at accumsan ipsum. Phasellus ac bibendum massa.</p>\n<p>\n	Donec egestas erat quis nunc consectetur scelerisque pretium tortor tristique. Suspendisse id diam ac ante ultricies convallis. Curabitur imperdiet porttitor est non scelerisque. Sed condimentum adipiscing ligula nec mollis.</p>\n<p>\n	Nam risus nisi, pharetra nec rutrum quis, venenatis quis felis. Vivamus porta, turpis ut tempus pretium, erat mauris egestas nibh, eu tincidunt ante odio ac metus. Fusce tortor purus, vulputate et malesuada in, vehicula quis tellus.</p>\n<p>\n	Nullam vestibulum ligula at nunc vulputate sit amet pulvinar nunc sollicitudin. Vestibulum dignissim placerat metus, in pellentesque odio viverra in.</p>\n', 4, 2, '2012-08-01', 1, 0),
	(16, 'страница 16', 'page16', 'Описание страницы 16', 'ключевые слова, слова ключевые, словечки', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean fringilla nibh quis odio sagittis imperdiet. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Ut et odio neque, at accumsan ipsum. Phasellus ac bibendum massa. \n<p>Donec egestas erat quis nunc consectetur scelerisque pretium tortor tristique. Suspendisse id diam ac ante ultricies convallis. Curabitur imperdiet porttitor est non scelerisque. Sed condimentum adipiscing ligula nec mollis. </p>\n<p>Nam risus nisi, pharetra nec rutrum quis, venenatis quis felis. Vivamus porta, turpis ut tempus pretium, erat mauris egestas nibh, eu tincidunt ante odio ac metus. Fusce tortor purus, vulputate et malesuada in, vehicula quis tellus. </p>\n<p>Nullam vestibulum ligula at nunc vulputate sit amet pulvinar nunc sollicitudin. Vestibulum dignissim placerat metus, in pellentesque odio viverra in.</p>\n', 4, 2, '2012-06-22', 1, 0),
	(17, 'страница 17', 'page17', 'описание страницы 17', 'ключевые слова', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean fringilla nibh quis odio sagittis imperdiet. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Ut et odio neque, at accumsan ipsum. Phasellus ac bibendum massa.</p>\n<p>\n	Donec egestas erat quis nunc consectetur scelerisque pretium tortor tristique. Suspendisse id diam ac ante ultricies convallis. Curabitur imperdiet porttitor est non scelerisque. Sed condimentum adipiscing ligula nec mollis.</p>\n<p>\n	Nam risus nisi, pharetra nec rutrum quis, venenatis quis felis. Vivamus porta, turpis ut tempus pretium, erat mauris egestas nibh, eu tincidunt ante odio ac metus. Fusce tortor purus, vulputate et malesuada in, vehicula quis tellus.</p>\n<p>\n	Nullam vestibulum ligula at nunc vulputate sit amet pulvinar nunc sollicitudin. Vestibulum dignissim placerat metus, in pellentesque odio viverra in.</p>\n', 5, 2, '2012-08-01', 1, 0),
	(25, 'страница 19', 'page19', 'описание страницы 19', 'ключевые слова', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean fringilla nibh quis odio sagittis imperdiet. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Ut et odio neque, at accumsan ipsum. Phasellus ac bibendum massa.</p>\n<p>\n	Donec egestas erat quis nunc consectetur scelerisque pretium tortor tristique. Suspendisse id diam ac ante ultricies convallis. Curabitur imperdiet porttitor est non scelerisque. Sed condimentum adipiscing ligula nec mollis.</p>\n<p>\n	Nam risus nisi, pharetra nec rutrum quis, venenatis quis felis. Vivamus porta, turpis ut tempus pretium, erat mauris egestas nibh, eu tincidunt ante odio ac metus. Fusce tortor purus, vulputate et malesuada in, vehicula quis tellus.</p>\n<p>\n	Nullam vestibulum ligula at nunc vulputate sit amet pulvinar nunc sollicitudin. Vestibulum dignissim placerat metus, in pellentesque odio viverra in.</p>\n', 5, 2, '2012-08-01', 1, 0),
	(26, 'страница 20', 'page20', 'описание страницы 20', 'ключевые слова', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean fringilla nibh quis odio sagittis imperdiet. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Ut et odio neque, at accumsan ipsum. Phasellus ac bibendum massa.</p>\n<p>\n	Donec egestas erat quis nunc consectetur scelerisque pretium tortor tristique. Suspendisse id diam ac ante ultricies convallis. Curabitur imperdiet porttitor est non scelerisque. Sed condimentum adipiscing ligula nec mollis.</p>\n<p>\n	Nam risus nisi, pharetra nec rutrum quis, venenatis quis felis. Vivamus porta, turpis ut tempus pretium, erat mauris egestas nibh, eu tincidunt ante odio ac metus. Fusce tortor purus, vulputate et malesuada in, vehicula quis tellus.</p>\n<p>\n	Nullam vestibulum ligula at nunc vulputate sit amet pulvinar nunc sollicitudin. Vestibulum dignissim placerat metus, in pellentesque odio viverra in.</p>\n', 5, 2, '2012-08-01', 1, 0),
	(27, 'страница 21', 'page21', 'описание страницы 21', 'ключевые слова', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean fringilla nibh quis odio sagittis imperdiet. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Ut et odio neque, at accumsan ipsum. Phasellus ac bibendum massa.</p>\n<p>\n	Donec egestas erat quis nunc consectetur scelerisque pretium tortor tristique. Suspendisse id diam ac ante ultricies convallis. Curabitur imperdiet porttitor est non scelerisque. Sed condimentum adipiscing ligula nec mollis.</p>\n<p>\n	Nam risus nisi, pharetra nec rutrum quis, venenatis quis felis. Vivamus porta, turpis ut tempus pretium, erat mauris egestas nibh, eu tincidunt ante odio ac metus. Fusce tortor purus, vulputate et malesuada in, vehicula quis tellus.</p>\n<p>\n	Nullam vestibulum ligula at nunc vulputate sit amet pulvinar nunc sollicitudin. Vestibulum dignissim placerat metus, in pellentesque odio viverra in.</p>\n', 5, 2, '2012-08-01', 1, 0),
	(24, 'страница 18', 'page18', 'описание страницы 18', 'ключевые слова', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean fringilla nibh quis odio sagittis imperdiet. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Ut et odio neque, at accumsan ipsum. Phasellus ac bibendum massa.</p>\n<p>\n	Donec egestas erat quis nunc consectetur scelerisque pretium tortor tristique. Suspendisse id diam ac ante ultricies convallis. Curabitur imperdiet porttitor est non scelerisque. Sed condimentum adipiscing ligula nec mollis.</p>\n<p>\n	Nam risus nisi, pharetra nec rutrum quis, venenatis quis felis. Vivamus porta, turpis ut tempus pretium, erat mauris egestas nibh, eu tincidunt ante odio ac metus. Fusce tortor purus, vulputate et malesuada in, vehicula quis tellus.</p>\n<p>\n	Nullam vestibulum ligula at nunc vulputate sit amet pulvinar nunc sollicitudin. Vestibulum dignissim placerat metus, in pellentesque odio viverra in.</p>\n', 5, 2, '2012-08-01', 1, 0),
	(28, 'страница 22', 'page22', 'описание страницы 22', 'ключевые слова', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean fringilla nibh quis odio sagittis imperdiet. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Ut et odio neque, at accumsan ipsum. Phasellus ac bibendum massa.</p>\n<p>\n	Donec egestas erat quis nunc consectetur scelerisque pretium tortor tristique. Suspendisse id diam ac ante ultricies convallis. Curabitur imperdiet porttitor est non scelerisque. Sed condimentum adipiscing ligula nec mollis.</p>\n<p>\n	Nam risus nisi, pharetra nec rutrum quis, venenatis quis felis. Vivamus porta, turpis ut tempus pretium, erat mauris egestas nibh, eu tincidunt ante odio ac metus. Fusce tortor purus, vulputate et malesuada in, vehicula quis tellus.</p>\n<p>\n	Nullam vestibulum ligula at nunc vulputate sit amet pulvinar nunc sollicitudin. Vestibulum dignissim placerat metus, in pellentesque odio viverra in.</p>\n', 5, 2, '2012-08-01', 1, 0),
	(29, 'страница 23', 'page23', 'описание страницы 23', 'ключевые слова', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean fringilla nibh quis odio sagittis imperdiet. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Ut et odio neque, at accumsan ipsum. Phasellus ac bibendum massa.</p>\n<p>\n	Donec egestas erat quis nunc consectetur scelerisque pretium tortor tristique. Suspendisse id diam ac ante ultricies convallis. Curabitur imperdiet porttitor est non scelerisque. Sed condimentum adipiscing ligula nec mollis.</p>\n<p>\n	Nam risus nisi, pharetra nec rutrum quis, venenatis quis felis. Vivamus porta, turpis ut tempus pretium, erat mauris egestas nibh, eu tincidunt ante odio ac metus. Fusce tortor purus, vulputate et malesuada in, vehicula quis tellus.</p>\n<p>\n	Nullam vestibulum ligula at nunc vulputate sit amet pulvinar nunc sollicitudin. Vestibulum dignissim placerat metus, in pellentesque odio viverra in.</p>\n', 5, 2, '2012-08-01', 1, 0),
	(30, 'страница 24', 'page24', 'описание страницы 24', 'ключевые слова', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean fringilla nibh quis odio sagittis imperdiet. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Ut et odio neque, at accumsan ipsum. Phasellus ac bibendum massa.</p>\n<p>\n	Donec egestas erat quis nunc consectetur scelerisque pretium tortor tristique. Suspendisse id diam ac ante ultricies convallis. Curabitur imperdiet porttitor est non scelerisque. Sed condimentum adipiscing ligula nec mollis.</p>\n<p>\n	Nam risus nisi, pharetra nec rutrum quis, venenatis quis felis. Vivamus porta, turpis ut tempus pretium, erat mauris egestas nibh, eu tincidunt ante odio ac metus. Fusce tortor purus, vulputate et malesuada in, vehicula quis tellus.</p>\n<p>\n	Nullam vestibulum ligula at nunc vulputate sit amet pulvinar nunc sollicitudin. Vestibulum dignissim placerat metus, in pellentesque odio viverra in.</p>\n', 5, 2, '2012-08-01', 1, 0),
	(31, 'страница 25', 'page25', 'описание страницы 25', 'ключевые слова', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean fringilla nibh quis odio sagittis imperdiet. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Ut et odio neque, at accumsan ipsum. Phasellus ac bibendum massa.</p>\n<p>\n	Donec egestas erat quis nunc consectetur scelerisque pretium tortor tristique. Suspendisse id diam ac ante ultricies convallis. Curabitur imperdiet porttitor est non scelerisque. Sed condimentum adipiscing ligula nec mollis.</p>\n<p>\n	Nam risus nisi, pharetra nec rutrum quis, venenatis quis felis. Vivamus porta, turpis ut tempus pretium, erat mauris egestas nibh, eu tincidunt ante odio ac metus. Fusce tortor purus, vulputate et malesuada in, vehicula quis tellus.</p>\n<p>\n	Nullam vestibulum ligula at nunc vulputate sit amet pulvinar nunc sollicitudin. Vestibulum dignissim placerat metus, in pellentesque odio viverra in.</p>\n', 5, 2, '2012-08-01', 1, 0),
	(32, 'страница 26', 'page26', 'описание страницы 26', 'ключевые слова', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean fringilla nibh quis odio sagittis imperdiet. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Ut et odio neque, at accumsan ipsum. Phasellus ac bibendum massa.</p>\n<p>\n	Donec egestas erat quis nunc consectetur scelerisque pretium tortor tristique. Suspendisse id diam ac ante ultricies convallis. Curabitur imperdiet porttitor est non scelerisque. Sed condimentum adipiscing ligula nec mollis.</p>\n<p>\n	Nam risus nisi, pharetra nec rutrum quis, venenatis quis felis. Vivamus porta, turpis ut tempus pretium, erat mauris egestas nibh, eu tincidunt ante odio ac metus. Fusce tortor purus, vulputate et malesuada in, vehicula quis tellus.</p>\n<p>\n	Nullam vestibulum ligula at nunc vulputate sit amet pulvinar nunc sollicitudin. Vestibulum dignissim placerat metus, in pellentesque odio viverra in.</p>\n', 5, 2, '2012-08-01', 1, 0),
	(33, 'страница 27', 'page27', 'описание страницы 27', 'ключевые слова', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean fringilla nibh quis odio sagittis imperdiet. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Ut et odio neque, at accumsan ipsum. Phasellus ac bibendum massa.</p>\n<p>\n	Donec egestas erat quis nunc consectetur scelerisque pretium tortor tristique. Suspendisse id diam ac ante ultricies convallis. Curabitur imperdiet porttitor est non scelerisque. Sed condimentum adipiscing ligula nec mollis.</p>\n<p>\n	Nam risus nisi, pharetra nec rutrum quis, venenatis quis felis. Vivamus porta, turpis ut tempus pretium, erat mauris egestas nibh, eu tincidunt ante odio ac metus. Fusce tortor purus, vulputate et malesuada in, vehicula quis tellus.</p>\n<p>\n	Nullam vestibulum ligula at nunc vulputate sit amet pulvinar nunc sollicitudin. Vestibulum dignissim placerat metus, in pellentesque odio viverra in.</p>\n', 5, 2, '2012-08-01', 1, 0),
	(34, 'страница 28', 'page28', 'описание страницы 28', 'ключевые слова', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean fringilla nibh quis odio sagittis imperdiet. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Ut et odio neque, at accumsan ipsum. Phasellus ac bibendum massa.</p>\n<p>\n	Donec egestas erat quis nunc consectetur scelerisque pretium tortor tristique. Suspendisse id diam ac ante ultricies convallis. Curabitur imperdiet porttitor est non scelerisque. Sed condimentum adipiscing ligula nec mollis.</p>\n<p>\n	Nam risus nisi, pharetra nec rutrum quis, venenatis quis felis. Vivamus porta, turpis ut tempus pretium, erat mauris egestas nibh, eu tincidunt ante odio ac metus. Fusce tortor purus, vulputate et malesuada in, vehicula quis tellus.</p>\n<p>\n	Nullam vestibulum ligula at nunc vulputate sit amet pulvinar nunc sollicitudin. Vestibulum dignissim placerat metus, in pellentesque odio viverra in.</p>\n', 5, 2, '2012-08-01', 1, 0),
	(35, 'страница 29', 'page29', 'описание страницы 29', 'ключевые слова', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean fringilla nibh quis odio sagittis imperdiet. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Ut et odio neque, at accumsan ipsum. Phasellus ac bibendum massa.</p>\n<p>\n	Donec egestas erat quis nunc consectetur scelerisque pretium tortor tristique. Suspendisse id diam ac ante ultricies convallis. Curabitur imperdiet porttitor est non scelerisque. Sed condimentum adipiscing ligula nec mollis.</p>\n<p>\n	Nam risus nisi, pharetra nec rutrum quis, venenatis quis felis. Vivamus porta, turpis ut tempus pretium, erat mauris egestas nibh, eu tincidunt ante odio ac metus. Fusce tortor purus, vulputate et malesuada in, vehicula quis tellus.</p>\n<p>\n	Nullam vestibulum ligula at nunc vulputate sit amet pulvinar nunc sollicitudin. Vestibulum dignissim placerat metus, in pellentesque odio viverra in.</p>\n', 5, 2, '2012-08-01', 1, 0),
	(36, 'страница 30', 'page30', 'описание страницы 30', 'ключевые слова', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean fringilla nibh quis odio sagittis imperdiet. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Ut et odio neque, at accumsan ipsum. Phasellus ac bibendum massa.</p>\n<p>\n	Donec egestas erat quis nunc consectetur scelerisque pretium tortor tristique. Suspendisse id diam ac ante ultricies convallis. Curabitur imperdiet porttitor est non scelerisque. Sed condimentum adipiscing ligula nec mollis.</p>\n<p>\n	Nam risus nisi, pharetra nec rutrum quis, venenatis quis felis. Vivamus porta, turpis ut tempus pretium, erat mauris egestas nibh, eu tincidunt ante odio ac metus. Fusce tortor purus, vulputate et malesuada in, vehicula quis tellus.</p>\n<p>\n	Nullam vestibulum ligula at nunc vulputate sit amet pulvinar nunc sollicitudin. Vestibulum dignissim placerat metus, in pellentesque odio viverra in.</p>\n', 5, 2, '2012-08-01', 1, 0),
	(37, 'страница 31', 'page31', 'описание страницы 31', 'ключевые слова', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean fringilla nibh quis odio sagittis imperdiet. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Ut et odio neque, at accumsan ipsum. Phasellus ac bibendum massa.</p>\n<p>\n	Donec egestas erat quis nunc consectetur scelerisque pretium tortor tristique. Suspendisse id diam ac ante ultricies convallis. Curabitur imperdiet porttitor est non scelerisque. Sed condimentum adipiscing ligula nec mollis.</p>\n<p>\n	Nam risus nisi, pharetra nec rutrum quis, venenatis quis felis. Vivamus porta, turpis ut tempus pretium, erat mauris egestas nibh, eu tincidunt ante odio ac metus. Fusce tortor purus, vulputate et malesuada in, vehicula quis tellus.</p>\n<p>\n	Nullam vestibulum ligula at nunc vulputate sit amet pulvinar nunc sollicitudin. Vestibulum dignissim placerat metus, in pellentesque odio viverra in.</p>\n', 5, 2, '2012-08-01', 1, 0),
	(38, 'страница 32', 'page32', 'описание страницы 32', 'ключевые слова', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean fringilla nibh quis odio sagittis imperdiet. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Ut et odio neque, at accumsan ipsum. Phasellus ac bibendum massa.</p>\n<p>\n	Donec egestas erat quis nunc consectetur scelerisque pretium tortor tristique. Suspendisse id diam ac ante ultricies convallis. Curabitur imperdiet porttitor est non scelerisque. Sed condimentum adipiscing ligula nec mollis.</p>\n<p>\n	Nam risus nisi, pharetra nec rutrum quis, venenatis quis felis. Vivamus porta, turpis ut tempus pretium, erat mauris egestas nibh, eu tincidunt ante odio ac metus. Fusce tortor purus, vulputate et malesuada in, vehicula quis tellus.</p>\n<p>\n	Nullam vestibulum ligula at nunc vulputate sit amet pulvinar nunc sollicitudin. Vestibulum dignissim placerat metus, in pellentesque odio viverra in.</p>\n', 5, 2, '2012-08-01', 1, 0),
	(39, 'страница 33', 'page33', 'описание страницы 33', 'ключевые слова', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean fringilla nibh quis odio sagittis imperdiet. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Ut et odio neque, at accumsan ipsum. Phasellus ac bibendum massa.</p>\n<p>\n	Donec egestas erat quis nunc consectetur scelerisque pretium tortor tristique. Suspendisse id diam ac ante ultricies convallis. Curabitur imperdiet porttitor est non scelerisque. Sed condimentum adipiscing ligula nec mollis.</p>\n<p>\n	Nam risus nisi, pharetra nec rutrum quis, venenatis quis felis. Vivamus porta, turpis ut tempus pretium, erat mauris egestas nibh, eu tincidunt ante odio ac metus. Fusce tortor purus, vulputate et malesuada in, vehicula quis tellus.</p>\n<p>\n	Nullam vestibulum ligula at nunc vulputate sit amet pulvinar nunc sollicitudin. Vestibulum dignissim placerat metus, in pellentesque odio viverra in.</p>\n', 5, 2, '2012-08-01', 1, 0),
	(40, 'страница 34', 'page34', 'описание страницы 34', 'ключевые слова', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean fringilla nibh quis odio sagittis imperdiet. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Ut et odio neque, at accumsan ipsum. Phasellus ac bibendum massa.</p>\n<p>\n	Donec egestas erat quis nunc consectetur scelerisque pretium tortor tristique. Suspendisse id diam ac ante ultricies convallis. Curabitur imperdiet porttitor est non scelerisque. Sed condimentum adipiscing ligula nec mollis.</p>\n<p>\n	Nam risus nisi, pharetra nec rutrum quis, venenatis quis felis. Vivamus porta, turpis ut tempus pretium, erat mauris egestas nibh, eu tincidunt ante odio ac metus. Fusce tortor purus, vulputate et malesuada in, vehicula quis tellus.</p>\n<p>\n	Nullam vestibulum ligula at nunc vulputate sit amet pulvinar nunc sollicitudin. Vestibulum dignissim placerat metus, in pellentesque odio viverra in.</p>\n', 5, 2, '2012-08-01', 1, 0),
	(41, 'страница 35', 'page35', 'описание страницы 35', 'ключевые слова', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean fringilla nibh quis odio sagittis imperdiet. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Ut et odio neque, at accumsan ipsum. Phasellus ac bibendum massa.</p>\n<p>\n	Donec egestas erat quis nunc consectetur scelerisque pretium tortor tristique. Suspendisse id diam ac ante ultricies convallis. Curabitur imperdiet porttitor est non scelerisque. Sed condimentum adipiscing ligula nec mollis.</p>\n<p>\n	Nam risus nisi, pharetra nec rutrum quis, venenatis quis felis. Vivamus porta, turpis ut tempus pretium, erat mauris egestas nibh, eu tincidunt ante odio ac metus. Fusce tortor purus, vulputate et malesuada in, vehicula quis tellus.</p>\n<p>\n	Nullam vestibulum ligula at nunc vulputate sit amet pulvinar nunc sollicitudin. Vestibulum dignissim placerat metus, in pellentesque odio viverra in.</p>\n', 5, 2, '2012-08-01', 1, 0),
	(42, 'страница 36', 'page36', 'описание страницы 36', 'ключевые слова', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean fringilla nibh quis odio sagittis imperdiet. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Ut et odio neque, at accumsan ipsum. Phasellus ac bibendum massa.</p>\n<p>\n	Donec egestas erat quis nunc consectetur scelerisque pretium tortor tristique. Suspendisse id diam ac ante ultricies convallis. Curabitur imperdiet porttitor est non scelerisque. Sed condimentum adipiscing ligula nec mollis.</p>\n<p>\n	Nam risus nisi, pharetra nec rutrum quis, venenatis quis felis. Vivamus porta, turpis ut tempus pretium, erat mauris egestas nibh, eu tincidunt ante odio ac metus. Fusce tortor purus, vulputate et malesuada in, vehicula quis tellus.</p>\n<p>\n	Nullam vestibulum ligula at nunc vulputate sit amet pulvinar nunc sollicitudin. Vestibulum dignissim placerat metus, in pellentesque odio viverra in.</p>\n', 5, 2, '2012-08-01', 1, 0);
/*!40000 ALTER TABLE `pages` ENABLE KEYS */;


-- Dumping structure for table frontend.roles
DROP TABLE IF EXISTS `roles`;
CREATE TABLE IF NOT EXISTS `roles` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `description` varchar(250) NOT NULL,
  `pages` int(3) NOT NULL,
  `cats` int(3) NOT NULL,
  `users` int(3) NOT NULL,
  `mods` int(3) NOT NULL,
  `mails` int(3) NOT NULL,
  `stats` int(3) NOT NULL,
  `opts` int(3) NOT NULL,
  `trash` int(3) NOT NULL,
  `status` int(3) NOT NULL,
  `intrash` int(3) NOT NULL DEFAULT '0',
  `date` date NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

-- Dumping data for table frontend.roles: 3 rows
DELETE FROM `roles`;
/*!40000 ALTER TABLE `roles` DISABLE KEYS */;
INSERT INTO `roles` (`id`, `name`, `description`, `pages`, `cats`, `users`, `mods`, `mails`, `stats`, `opts`, `trash`, `status`, `intrash`, `date`) VALUES
	(1, 'login', 'Зарегистрированный', 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, '2012-07-01'),
	(2, 'admin', 'Администратор', 1, 1, 1, 1, 1, 1, 1, 1, 1, 0, '2012-07-02'),
	(3, 'mana', 'Менеджерe', 1, 1, 1, 1, 1, 1, 1, 1, 1, 0, '2012-08-19');
/*!40000 ALTER TABLE `roles` ENABLE KEYS */;


-- Dumping structure for table frontend.roles_users
DROP TABLE IF EXISTS `roles_users`;
CREATE TABLE IF NOT EXISTS `roles_users` (
  `user_id` int(10) unsigned NOT NULL,
  `role_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`user_id`,`role_id`),
  KEY `fk_role_id` (`role_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table frontend.roles_users: ~5 rows (approximately)
DELETE FROM `roles_users`;
/*!40000 ALTER TABLE `roles_users` DISABLE KEYS */;
INSERT INTO `roles_users` (`user_id`, `role_id`) VALUES
	(1, 1),
	(2, 1),
	(3, 1),
	(1, 2),
	(2, 3);
/*!40000 ALTER TABLE `roles_users` ENABLE KEYS */;


-- Dumping structure for table frontend.users
DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `email` varchar(50) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(250) NOT NULL,
  `firstname` varchar(50) NOT NULL,
  `lastname` varchar(50) NOT NULL,
  `datereg` date NOT NULL,
  `status` int(3) NOT NULL,
  `logins` int(50) NOT NULL,
  `last_login` date NOT NULL,
  `intrash` int(3) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

-- Dumping data for table frontend.users: 3 rows
DELETE FROM `users`;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` (`id`, `email`, `username`, `password`, `firstname`, `lastname`, `datereg`, `status`, `logins`, `last_login`, `intrash`) VALUES
	(1, 'int3rhard@gmail.com', 'admin', 'ac6f6788b30fa58d5fbddad35140bad44b0ce132dec42bf54f160f1ac451722d', 'Dima', 'Dimich', '2012-06-28', 1, 258, '0000-00-00', 0),
	(2, 'admin@admin.ru', 'man', 'ac6f6788b30fa58d5fbddad35140bad44b0ce132dec42bf54f160f1ac451722d', 'asdsad ', 'adad ', '2012-07-04', 1, 16, '0000-00-00', 0),
	(3, 'manager@admin.ru', 'registerman', 'ac6f6788b30fa58d5fbddad35140bad44b0ce132dec42bf54f160f1ac451722d', 'oleg', 'ololo', '2012-07-31', 1, 4, '0000-00-00', 0);
/*!40000 ALTER TABLE `users` ENABLE KEYS */;


-- Dumping structure for table frontend.user_tokens
DROP TABLE IF EXISTS `user_tokens`;
CREATE TABLE IF NOT EXISTS `user_tokens` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(11) unsigned NOT NULL,
  `user_agent` varchar(40) NOT NULL,
  `token` varchar(40) NOT NULL,
  `type` varchar(100) NOT NULL,
  `created` int(10) unsigned NOT NULL,
  `expires` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `uniq_token` (`token`),
  KEY `fk_user_id` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table frontend.user_tokens: ~0 rows (approximately)
DELETE FROM `user_tokens`;
/*!40000 ALTER TABLE `user_tokens` DISABLE KEYS */;
/*!40000 ALTER TABLE `user_tokens` ENABLE KEYS */;
/*!40014 SET FOREIGN_KEY_CHECKS=1 */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
