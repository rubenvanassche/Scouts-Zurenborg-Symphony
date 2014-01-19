
-- *** STRUCTURE:`tbl_fields_author` ***
DROP TABLE IF EXISTS`tbl_fields_author`;
CREATE TABLE`tbl_fields_author` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `field_id` int(11) unsigned NOT NULL,
  `allow_multiple_selection` enum('yes','no') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'no',
  `default_to_current_user` enum('yes','no') COLLATE utf8_unicode_ci NOT NULL,
  `author_types` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `field_id` (`field_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- *** DATA:`tbl_fields_author` ***

-- *** STRUCTURE:`tbl_fields_checkbox` ***
DROP TABLE IF EXISTS`tbl_fields_checkbox`;
CREATE TABLE`tbl_fields_checkbox` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `field_id` int(11) unsigned NOT NULL,
  `default_state` enum('on','off') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'on',
  `description` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `field_id` (`field_id`)
) ENGINE=MyISAM AUTO_INCREMENT=61 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- *** DATA:`tbl_fields_checkbox` ***
INSERT INTO`tbl_fields_checkbox` (`id`, `field_id`, `default_state`, `description`) VALUES (54, 86, 'off', NULL);
INSERT INTO`tbl_fields_checkbox` (`id`, `field_id`, `default_state`, `description`) VALUES (45, 80, 'on', NULL);
INSERT INTO`tbl_fields_checkbox` (`id`, `field_id`, `default_state`, `description`) VALUES (55, 87, 'off', NULL);
INSERT INTO`tbl_fields_checkbox` (`id`, `field_id`, `default_state`, `description`) VALUES (56, 88, 'off', NULL);
INSERT INTO`tbl_fields_checkbox` (`id`, `field_id`, `default_state`, `description`) VALUES (57, 89, 'off', NULL);
INSERT INTO`tbl_fields_checkbox` (`id`, `field_id`, `default_state`, `description`) VALUES (58, 90, 'off', NULL);
INSERT INTO`tbl_fields_checkbox` (`id`, `field_id`, `default_state`, `description`) VALUES (59, 91, 'off', NULL);
INSERT INTO`tbl_fields_checkbox` (`id`, `field_id`, `default_state`, `description`) VALUES (60, 92, 'off', NULL);
INSERT INTO`tbl_fields_checkbox` (`id`, `field_id`, `default_state`, `description`) VALUES (46, 114, 'off', NULL);

-- *** STRUCTURE:`tbl_fields_date` ***
DROP TABLE IF EXISTS`tbl_fields_date`;
CREATE TABLE`tbl_fields_date` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `field_id` int(11) unsigned NOT NULL,
  `pre_populate` enum('yes','no') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'no',
  PRIMARY KEY (`id`),
  KEY `field_id` (`field_id`)
) ENGINE=MyISAM AUTO_INCREMENT=17 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- *** DATA:`tbl_fields_date` ***

-- *** STRUCTURE:`tbl_fields_input` ***
DROP TABLE IF EXISTS`tbl_fields_input`;
CREATE TABLE`tbl_fields_input` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `field_id` int(11) unsigned NOT NULL,
  `validator` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `field_id` (`field_id`)
) ENGINE=MyISAM AUTO_INCREMENT=276 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- *** DATA:`tbl_fields_input` ***
INSERT INTO`tbl_fields_input` (`id`, `field_id`, `validator`) VALUES (215, 105, NULL);
INSERT INTO`tbl_fields_input` (`id`, `field_id`, `validator`) VALUES (262, 46, NULL);
INSERT INTO`tbl_fields_input` (`id`, `field_id`, `validator`) VALUES (206, 44, NULL);
INSERT INTO`tbl_fields_input` (`id`, `field_id`, `validator`) VALUES (271, 34, NULL);
INSERT INTO`tbl_fields_input` (`id`, `field_id`, `validator`) VALUES (275, 35, NULL);
INSERT INTO`tbl_fields_input` (`id`, `field_id`, `validator`) VALUES (127, 58, NULL);
INSERT INTO`tbl_fields_input` (`id`, `field_id`, `validator`) VALUES (270, 33, NULL);
INSERT INTO`tbl_fields_input` (`id`, `field_id`, `validator`) VALUES (248, 32, '/^\\w(?:\\.?[\\w%+-]+)*@\\w(?:[\\w-]*\\.)+?[a-z]{2,}$/i');
INSERT INTO`tbl_fields_input` (`id`, `field_id`, `validator`) VALUES (247, 30, NULL);
INSERT INTO`tbl_fields_input` (`id`, `field_id`, `validator`) VALUES (234, 66, NULL);
INSERT INTO`tbl_fields_input` (`id`, `field_id`, `validator`) VALUES (224, 107, NULL);
INSERT INTO`tbl_fields_input` (`id`, `field_id`, `validator`) VALUES (226, 109, '/^-?(?:\\d+(?:\\.\\d+)?|\\.\\d+)$/i');
INSERT INTO`tbl_fields_input` (`id`, `field_id`, `validator`) VALUES (272, 50, '/^-?(?:\\d+(?:\\.\\d+)?|\\.\\d+)$/i');
INSERT INTO`tbl_fields_input` (`id`, `field_id`, `validator`) VALUES (273, 51, NULL);
INSERT INTO`tbl_fields_input` (`id`, `field_id`, `validator`) VALUES (274, 52, '/^-?(?:\\d+(?:\\.\\d+)?|\\.\\d+)$/i');
INSERT INTO`tbl_fields_input` (`id`, `field_id`, `validator`) VALUES (244, 60, NULL);
INSERT INTO`tbl_fields_input` (`id`, `field_id`, `validator`) VALUES (235, 67, NULL);
INSERT INTO`tbl_fields_input` (`id`, `field_id`, `validator`) VALUES (236, 68, NULL);
INSERT INTO`tbl_fields_input` (`id`, `field_id`, `validator`) VALUES (238, 69, '/^-?(?:\\d+(?:\\.\\d+)?|\\.\\d+)$/i');
INSERT INTO`tbl_fields_input` (`id`, `field_id`, `validator`) VALUES (239, 70, '/^-?(?:\\d+(?:\\.\\d+)?|\\.\\d+)$/i');
INSERT INTO`tbl_fields_input` (`id`, `field_id`, `validator`) VALUES (237, 76, NULL);
INSERT INTO`tbl_fields_input` (`id`, `field_id`, `validator`) VALUES (214, 77, NULL);
INSERT INTO`tbl_fields_input` (`id`, `field_id`, `validator`) VALUES (245, 93, NULL);
INSERT INTO`tbl_fields_input` (`id`, `field_id`, `validator`) VALUES (257, 98, NULL);
INSERT INTO`tbl_fields_input` (`id`, `field_id`, `validator`) VALUES (249, 102, NULL);
INSERT INTO`tbl_fields_input` (`id`, `field_id`, `validator`) VALUES (250, 103, NULL);
INSERT INTO`tbl_fields_input` (`id`, `field_id`, `validator`) VALUES (227, 110, '/^-?(?:\\d+(?:\\.\\d+)?|\\.\\d+)$/i');
INSERT INTO`tbl_fields_input` (`id`, `field_id`, `validator`) VALUES (225, 111, NULL);
INSERT INTO`tbl_fields_input` (`id`, `field_id`, `validator`) VALUES (263, 113, NULL);
INSERT INTO`tbl_fields_input` (`id`, `field_id`, `validator`) VALUES (251, 115, '/^-?(?:\\d+(?:\\.\\d+)?|\\.\\d+)$/i');

-- *** STRUCTURE:`tbl_fields_select` ***
DROP TABLE IF EXISTS`tbl_fields_select`;
CREATE TABLE`tbl_fields_select` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `field_id` int(11) unsigned NOT NULL,
  `allow_multiple_selection` enum('yes','no') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'no',
  `show_association` enum('yes','no') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'yes',
  `sort_options` enum('yes','no') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'no',
  `static_options` text COLLATE utf8_unicode_ci,
  `dynamic_options` int(11) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `field_id` (`field_id`)
) ENGINE=MyISAM AUTO_INCREMENT=84 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- *** DATA:`tbl_fields_select` ***
INSERT INTO`tbl_fields_select` (`id`, `field_id`, `allow_multiple_selection`, `show_association`, `sort_options`, `static_options`, `dynamic_options`) VALUES (61, 106, 'no', 'no', 'no', 'rood,geel,paars,groen', NULL);
INSERT INTO`tbl_fields_select` (`id`, `field_id`, `allow_multiple_selection`, `show_association`, `sort_options`, `static_options`, `dynamic_options`) VALUES (65, 31, 'no', 'no', 'no', 'Kapoenen, Welka\'s, Jong Givers, Givers, Jins', NULL);
INSERT INTO`tbl_fields_select` (`id`, `field_id`, `allow_multiple_selection`, `show_association`, `sort_options`, `static_options`, `dynamic_options`) VALUES (83, 37, 'no', 'no', 'no', NULL, 30);
INSERT INTO`tbl_fields_select` (`id`, `field_id`, `allow_multiple_selection`, `show_association`, `sort_options`, `static_options`, `dynamic_options`) VALUES (53, 104, 'no', 'no', 'no', NULL, 58);
INSERT INTO`tbl_fields_select` (`id`, `field_id`, `allow_multiple_selection`, `show_association`, `sort_options`, `static_options`, `dynamic_options`) VALUES (74, 96, 'no', 'yes', 'no', NULL, 93);
INSERT INTO`tbl_fields_select` (`id`, `field_id`, `allow_multiple_selection`, `show_association`, `sort_options`, `static_options`, `dynamic_options`) VALUES (75, 97, 'no', 'no', 'no', NULL, 30);
INSERT INTO`tbl_fields_select` (`id`, `field_id`, `allow_multiple_selection`, `show_association`, `sort_options`, `static_options`, `dynamic_options`) VALUES (78, 101, 'no', 'yes', 'no', NULL, 93);
INSERT INTO`tbl_fields_select` (`id`, `field_id`, `allow_multiple_selection`, `show_association`, `sort_options`, `static_options`, `dynamic_options`) VALUES (59, 105, 'no', 'no', 'no', 'geel, groen, blauw, rood', NULL);
INSERT INTO`tbl_fields_select` (`id`, `field_id`, `allow_multiple_selection`, `show_association`, `sort_options`, `static_options`, `dynamic_options`) VALUES (81, 120, 'no', 'no', 'no', 'Lichtblauw, Rood, Groen, Geel', NULL);

-- *** STRUCTURE:`tbl_fields_selectbox_link` ***
DROP TABLE IF EXISTS`tbl_fields_selectbox_link`;
CREATE TABLE`tbl_fields_selectbox_link` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `field_id` int(11) unsigned NOT NULL,
  `allow_multiple_selection` enum('yes','no') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'no',
  `show_association` enum('yes','no') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'yes',
  `related_field_id` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `limit` int(4) unsigned NOT NULL DEFAULT '20',
  PRIMARY KEY (`id`),
  KEY `field_id` (`field_id`)
) ENGINE=MyISAM AUTO_INCREMENT=10 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- *** DATA:`tbl_fields_selectbox_link` ***

-- *** STRUCTURE:`tbl_fields_taglist` ***
DROP TABLE IF EXISTS`tbl_fields_taglist`;
CREATE TABLE`tbl_fields_taglist` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `field_id` int(11) unsigned NOT NULL,
  `validator` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `pre_populate_source` varchar(15) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `field_id` (`field_id`),
  KEY `pre_populate_source` (`pre_populate_source`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- *** DATA:`tbl_fields_taglist` ***

-- *** STRUCTURE:`tbl_fields_textarea` ***
DROP TABLE IF EXISTS`tbl_fields_textarea`;
CREATE TABLE`tbl_fields_textarea` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `field_id` int(11) unsigned NOT NULL,
  `formatter` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `size` int(3) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `field_id` (`field_id`)
) ENGINE=MyISAM AUTO_INCREMENT=69 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- *** DATA:`tbl_fields_textarea` ***
INSERT INTO`tbl_fields_textarea` (`id`, `field_id`, `formatter`, `size`) VALUES (59, 82, NULL, 5);
INSERT INTO`tbl_fields_textarea` (`id`, `field_id`, `formatter`, `size`) VALUES (57, 72, 'redactor', 15);
INSERT INTO`tbl_fields_textarea` (`id`, `field_id`, `formatter`, `size`) VALUES (56, 71, 'redactor', 5);
INSERT INTO`tbl_fields_textarea` (`id`, `field_id`, `formatter`, `size`) VALUES (65, 100, 'redactor', 15);
INSERT INTO`tbl_fields_textarea` (`id`, `field_id`, `formatter`, `size`) VALUES (68, 48, 'redactor', 15);
INSERT INTO`tbl_fields_textarea` (`id`, `field_id`, `formatter`, `size`) VALUES (51, 45, 'redactor', 15);
INSERT INTO`tbl_fields_textarea` (`id`, `field_id`, `formatter`, `size`) VALUES (63, 65, 'redactor', 15);
INSERT INTO`tbl_fields_textarea` (`id`, `field_id`, `formatter`, `size`) VALUES (58, 112, 'redactor', 15);

-- *** STRUCTURE:`tbl_fields_upload` ***
DROP TABLE IF EXISTS`tbl_fields_upload`;
CREATE TABLE`tbl_fields_upload` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `field_id` int(11) unsigned NOT NULL,
  `destination` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `validator` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `field_id` (`field_id`)
) ENGINE=MyISAM AUTO_INCREMENT=91 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- *** DATA:`tbl_fields_upload` ***
INSERT INTO`tbl_fields_upload` (`id`, `field_id`, `destination`, `validator`) VALUES (90, 36, '/workspace/Afbeeldingen/leiding', '/\\.(?:bmp|gif|jpe?g|png)$/i');
INSERT INTO`tbl_fields_upload` (`id`, `field_id`, `destination`, `validator`) VALUES (88, 47, '/workspace/Afbeeldingen/berichten', '/\\.(?:bmp|gif|jpe?g|png)$/i');
INSERT INTO`tbl_fields_upload` (`id`, `field_id`, `destination`, `validator`) VALUES (85, 99, '/workspace/Afbeeldingen/maandblad', NULL);
INSERT INTO`tbl_fields_upload` (`id`, `field_id`, `destination`, `validator`) VALUES (43, 81, '/workspace/Afbeeldingen/achtergrond', '/\\.(?:bmp|gif|jpe?g|png)$/i');
INSERT INTO`tbl_fields_upload` (`id`, `field_id`, `destination`, `validator`) VALUES (41, 59, '/workspace/Afbeeldingen/FAQ', '/\\.(?:bmp|gif|jpe?g|png)$/i');
INSERT INTO`tbl_fields_upload` (`id`, `field_id`, `destination`, `validator`) VALUES (75, 73, '/workspace/Afbeeldingen/andere', '/\\.(?:bmp|gif|jpe?g|png)$/i');
INSERT INTO`tbl_fields_upload` (`id`, `field_id`, `destination`, `validator`) VALUES (84, 63, '/workspace/Afbeeldingen/maandblad', '/\\.(?:bmp|gif|jpe?g|png)$/i');
INSERT INTO`tbl_fields_upload` (`id`, `field_id`, `destination`, `validator`) VALUES (71, 108, '/workspace/Afbeeldingen/verhuur', '/\\.(?:bmp|gif|jpe?g|png)$/i');

-- *** STRUCTURE:`tbl_entries_data_100` ***
DROP TABLE IF EXISTS`tbl_entries_data_100`;
CREATE TABLE`tbl_entries_data_100` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) unsigned NOT NULL,
  `value` mediumtext COLLATE utf8_unicode_ci,
  `value_formatted` mediumtext COLLATE utf8_unicode_ci,
  PRIMARY KEY (`id`),
  UNIQUE KEY `entry_id` (`entry_id`),
  FULLTEXT KEY `value` (`value`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- *** DATA:`tbl_entries_data_100` ***
INSERT INTO`tbl_entries_data_100` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (1, 56, 'klkdjflksjdlkfjslkdjfldksjfldsjflkdsjflkdsjlkdsjv,dncldkscn', NULL);
INSERT INTO`tbl_entries_data_100` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (2, 59, 'kldjflksdjfkldsfds', NULL);
INSERT INTO`tbl_entries_data_100` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (5, 60, NULL, NULL);

-- *** STRUCTURE:`tbl_entries_data_101` ***
DROP TABLE IF EXISTS`tbl_entries_data_101`;
CREATE TABLE`tbl_entries_data_101` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) unsigned NOT NULL,
  `handle` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `value` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `entry_id` (`entry_id`),
  KEY `handle` (`handle`),
  KEY `value` (`value`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- *** DATA:`tbl_entries_data_101` ***
INSERT INTO`tbl_entries_data_101` (`id`, `entry_id`, `handle`, `value`) VALUES (1, 56, 'mei-2012', 'Mei 2012');
INSERT INTO`tbl_entries_data_101` (`id`, `entry_id`, `handle`, `value`) VALUES (2, 59, 'juni-2012', 'Juni 2012');
INSERT INTO`tbl_entries_data_101` (`id`, `entry_id`, `handle`, `value`) VALUES (5, 60, 'mei-2012', 'Mei 2012');

-- *** STRUCTURE:`tbl_entries_data_102` ***
DROP TABLE IF EXISTS`tbl_entries_data_102`;
CREATE TABLE`tbl_entries_data_102` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) unsigned NOT NULL,
  `handle` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `value` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `entry_id` (`entry_id`),
  KEY `handle` (`handle`),
  KEY `value` (`value`)
) ENGINE=MyISAM AUTO_INCREMENT=18 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- *** DATA:`tbl_entries_data_102` ***
INSERT INTO`tbl_entries_data_102` (`id`, `entry_id`, `handle`, `value`) VALUES (10, 11, '2-ogen-en-een-mond-en-een-strikje-op-zn-kont', '2 ogen en een mond en een strikje op z\'n kont');
INSERT INTO`tbl_entries_data_102` (`id`, `entry_id`, `handle`, `value`) VALUES (11, 30, 'blauw-trouw-zwart-hard-wit-fit-groen-koen', 'Blauw ... Trouw,  Zwart ... Hard,  Wit ... Fit,  Groen ... Koen');
INSERT INTO`tbl_entries_data_102` (`id`, `entry_id`, `handle`, `value`) VALUES (13, 29, 'valken-duik-bevers-bouw-tijgers-spring-slangen-wurg', 'Valken ... Duik,  Bevers ... Bouw,  Tijgers ... Spring,  Slangen ... Wurg');
INSERT INTO`tbl_entries_data_102` (`id`, `entry_id`, `handle`, `value`) VALUES (12, 18, 'rood-groot-geel-speel-grijs-wijs-bruin-kruin', 'Rood ... Groot,  Geel ... Speel,  Grijs ... Wijs,  Bruin ... Kruin');
INSERT INTO`tbl_entries_data_102` (`id`, `entry_id`, `handle`, `value`) VALUES (14, 31, 'valken-duik-bevers-bouw-tijgers-spring-slangen-wurg', 'Valken ... Duik,  Bevers ... Bouw,  Tijgers ... Spring,  Slangen ... Wurg');
INSERT INTO`tbl_entries_data_102` (`id`, `entry_id`, `handle`, `value`) VALUES (15, 32, 'givers-vooruit', 'Givers vooruit');
INSERT INTO`tbl_entries_data_102` (`id`, `entry_id`, `handle`, `value`) VALUES (16, 33, 'givers-vooruit', 'Givers vooruit');
INSERT INTO`tbl_entries_data_102` (`id`, `entry_id`, `handle`, `value`) VALUES (17, 34, 'jinstappen-en-wegwezen', 'Jinstappen en wegwezen');

-- *** STRUCTURE:`tbl_entries_data_103` ***
DROP TABLE IF EXISTS`tbl_entries_data_103`;
CREATE TABLE`tbl_entries_data_103` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) unsigned NOT NULL,
  `handle` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `value` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `entry_id` (`entry_id`),
  KEY `handle` (`handle`),
  KEY `value` (`value`)
) ENGINE=MyISAM AUTO_INCREMENT=18 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- *** DATA:`tbl_entries_data_103` ***
INSERT INTO`tbl_entries_data_103` (`id`, `entry_id`, `handle`, `value`) VALUES (10, 11, '6-7-jaar', '6-7 jaar');
INSERT INTO`tbl_entries_data_103` (`id`, `entry_id`, `handle`, `value`) VALUES (11, 30, '8-10-jaar', '8-10 jaar');
INSERT INTO`tbl_entries_data_103` (`id`, `entry_id`, `handle`, `value`) VALUES (13, 29, '11-13-jaar', '11-13 jaar');
INSERT INTO`tbl_entries_data_103` (`id`, `entry_id`, `handle`, `value`) VALUES (12, 18, '8-10-jaar', '8-10 jaar');
INSERT INTO`tbl_entries_data_103` (`id`, `entry_id`, `handle`, `value`) VALUES (14, 31, '11-13-jaar', '11-13 jaar');
INSERT INTO`tbl_entries_data_103` (`id`, `entry_id`, `handle`, `value`) VALUES (15, 32, '14-17-jaar', '14-17 jaar');
INSERT INTO`tbl_entries_data_103` (`id`, `entry_id`, `handle`, `value`) VALUES (16, 33, '14-17-jaar', '14-17 jaar');
INSERT INTO`tbl_entries_data_103` (`id`, `entry_id`, `handle`, `value`) VALUES (17, 34, '18-jaar', '18 jaar');

-- *** STRUCTURE:`tbl_entries_data_104` ***
DROP TABLE IF EXISTS`tbl_entries_data_104`;
CREATE TABLE`tbl_entries_data_104` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) unsigned NOT NULL,
  `handle` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `value` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `entry_id` (`entry_id`),
  KEY `handle` (`handle`),
  KEY `value` (`value`)
) ENGINE=MyISAM AUTO_INCREMENT=10 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- *** DATA:`tbl_entries_data_104` ***
INSERT INTO`tbl_entries_data_104` (`id`, `entry_id`, `handle`, `value`) VALUES (2, 39, 'algemeen', 'Algemeen');
INSERT INTO`tbl_entries_data_104` (`id`, `entry_id`, `handle`, `value`) VALUES (3, 40, 'inschrijven', 'Inschrijven');
INSERT INTO`tbl_entries_data_104` (`id`, `entry_id`, `handle`, `value`) VALUES (4, 41, 'uniform', 'Uniform');
INSERT INTO`tbl_entries_data_104` (`id`, `entry_id`, `handle`, `value`) VALUES (5, 42, 'website', 'Website');
INSERT INTO`tbl_entries_data_104` (`id`, `entry_id`, `handle`, `value`) VALUES (6, 43, 'algemeen', 'Algemeen');
INSERT INTO`tbl_entries_data_104` (`id`, `entry_id`, `handle`, `value`) VALUES (9, 87, 'vzw', 'VZW');

-- *** STRUCTURE:`tbl_entries_data_105` ***
DROP TABLE IF EXISTS`tbl_entries_data_105`;
CREATE TABLE`tbl_entries_data_105` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) unsigned NOT NULL,
  `handle` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `value` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `entry_id` (`entry_id`),
  KEY `handle` (`handle`),
  KEY `value` (`value`)
) ENGINE=MyISAM AUTO_INCREMENT=26 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- *** DATA:`tbl_entries_data_105` ***

-- *** STRUCTURE:`tbl_entries_data_106` ***
DROP TABLE IF EXISTS`tbl_entries_data_106`;
CREATE TABLE`tbl_entries_data_106` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) unsigned NOT NULL,
  `handle` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `value` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `entry_id` (`entry_id`),
  KEY `handle` (`handle`),
  KEY `value` (`value`)
) ENGINE=MyISAM AUTO_INCREMENT=25 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- *** DATA:`tbl_entries_data_106` ***

-- *** STRUCTURE:`tbl_entries_data_107` ***
DROP TABLE IF EXISTS`tbl_entries_data_107`;
CREATE TABLE`tbl_entries_data_107` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) unsigned NOT NULL,
  `handle` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `value` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `entry_id` (`entry_id`),
  KEY `handle` (`handle`),
  KEY `value` (`value`)
) ENGINE=MyISAM AUTO_INCREMENT=10 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- *** DATA:`tbl_entries_data_107` ***
INSERT INTO`tbl_entries_data_107` (`id`, `entry_id`, `handle`, `value`) VALUES (9, 45, 'hamer', 'Hamer');
INSERT INTO`tbl_entries_data_107` (`id`, `entry_id`, `handle`, `value`) VALUES (8, 46, 'grondboor', 'Grondboor');
INSERT INTO`tbl_entries_data_107` (`id`, `entry_id`, `handle`, `value`) VALUES (7, 47, 'braadslee', 'Braadslee');
INSERT INTO`tbl_entries_data_107` (`id`, `entry_id`, `handle`, `value`) VALUES (6, 48, 'bijl', 'Bijl');

-- *** STRUCTURE:`tbl_entries_data_108` ***
DROP TABLE IF EXISTS`tbl_entries_data_108`;
CREATE TABLE`tbl_entries_data_108` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) unsigned NOT NULL,
  `file` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `size` int(11) unsigned DEFAULT NULL,
  `mimetype` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `meta` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `entry_id` (`entry_id`),
  KEY `file` (`file`),
  KEY `mimetype` (`mimetype`)
) ENGINE=MyISAM AUTO_INCREMENT=10 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- *** DATA:`tbl_entries_data_108` ***
INSERT INTO`tbl_entries_data_108` (`id`, `entry_id`, `file`, `size`, `mimetype`, `meta`) VALUES (9, 45, '/Afbeeldingen/verhuur/hamer.jpeg', 2637, 'image/jpeg', 'a:3:{s:8:\"creation\";s:25:\"2013-07-08T17:14:52+02:00\";s:5:\"width\";i:225;s:6:\"height\";i:225;}');
INSERT INTO`tbl_entries_data_108` (`id`, `entry_id`, `file`, `size`, `mimetype`, `meta`) VALUES (8, 46, '/Afbeeldingen/verhuur/grondboor.jpg', 4235, 'image/jpeg', 'a:3:{s:8:\"creation\";s:25:\"2013-07-08T17:14:41+02:00\";s:5:\"width\";i:300;s:6:\"height\";i:300;}');
INSERT INTO`tbl_entries_data_108` (`id`, `entry_id`, `file`, `size`, `mimetype`, `meta`) VALUES (7, 47, '/Afbeeldingen/verhuur/braadslee.jpeg', 3833, 'image/jpeg', 'a:3:{s:8:\"creation\";s:25:\"2013-07-08T17:14:30+02:00\";s:5:\"width\";i:225;s:6:\"height\";i:225;}');
INSERT INTO`tbl_entries_data_108` (`id`, `entry_id`, `file`, `size`, `mimetype`, `meta`) VALUES (6, 48, '/Afbeeldingen/verhuur/bijl.jpeg', 3681, 'image/jpeg', 'a:3:{s:8:\"creation\";s:25:\"2013-07-08T17:14:12+02:00\";s:5:\"width\";i:225;s:6:\"height\";i:225;}');

-- *** STRUCTURE:`tbl_entries_data_109` ***
DROP TABLE IF EXISTS`tbl_entries_data_109`;
CREATE TABLE`tbl_entries_data_109` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) unsigned NOT NULL,
  `handle` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `value` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `entry_id` (`entry_id`),
  KEY `handle` (`handle`),
  KEY `value` (`value`)
) ENGINE=MyISAM AUTO_INCREMENT=10 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- *** DATA:`tbl_entries_data_109` ***
INSERT INTO`tbl_entries_data_109` (`id`, `entry_id`, `handle`, `value`) VALUES (9, 45, 10, 10);
INSERT INTO`tbl_entries_data_109` (`id`, `entry_id`, `handle`, `value`) VALUES (8, 46, 1, 1);
INSERT INTO`tbl_entries_data_109` (`id`, `entry_id`, `handle`, `value`) VALUES (7, 47, 20, 20);
INSERT INTO`tbl_entries_data_109` (`id`, `entry_id`, `handle`, `value`) VALUES (6, 48, 17, 17);

-- *** STRUCTURE:`tbl_entries_data_110` ***
DROP TABLE IF EXISTS`tbl_entries_data_110`;
CREATE TABLE`tbl_entries_data_110` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) unsigned NOT NULL,
  `handle` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `value` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `entry_id` (`entry_id`),
  KEY `handle` (`handle`),
  KEY `value` (`value`)
) ENGINE=MyISAM AUTO_INCREMENT=10 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- *** DATA:`tbl_entries_data_110` ***
INSERT INTO`tbl_entries_data_110` (`id`, `entry_id`, `handle`, `value`) VALUES (9, 45, 15, 1.5);
INSERT INTO`tbl_entries_data_110` (`id`, `entry_id`, `handle`, `value`) VALUES (8, 46, 5, 5);
INSERT INTO`tbl_entries_data_110` (`id`, `entry_id`, `handle`, `value`) VALUES (7, 47, 1, 1);
INSERT INTO`tbl_entries_data_110` (`id`, `entry_id`, `handle`, `value`) VALUES (6, 48, 125, 1.25);

-- *** STRUCTURE:`tbl_entries_data_111` ***
DROP TABLE IF EXISTS`tbl_entries_data_111`;
CREATE TABLE`tbl_entries_data_111` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) unsigned NOT NULL,
  `handle` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `value` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `entry_id` (`entry_id`),
  KEY `handle` (`handle`),
  KEY `value` (`value`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- *** DATA:`tbl_entries_data_111` ***
INSERT INTO`tbl_entries_data_111` (`id`, `entry_id`, `handle`, `value`) VALUES (2, 47, 'voor-uw-beste-bakwerk', 'Voor uw beste bakwerk');

-- *** STRUCTURE:`tbl_entries_data_112` ***
DROP TABLE IF EXISTS`tbl_entries_data_112`;
CREATE TABLE`tbl_entries_data_112` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) unsigned NOT NULL,
  `value` mediumtext COLLATE utf8_unicode_ci,
  `value_formatted` mediumtext COLLATE utf8_unicode_ci,
  PRIMARY KEY (`id`),
  UNIQUE KEY `entry_id` (`entry_id`),
  FULLTEXT KEY `value` (`value`)
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- *** DATA:`tbl_entries_data_112` ***
INSERT INTO`tbl_entries_data_112` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (7, 17, '<p>Het huren van materiaal bij de scouts zurenborg is gratis voor leiding/oud-leiding voor anderen kunt u de prijzen hieronder gebruiken. Om te huren gelive een mail te sturen naar materiaalmeesters@scouts-zurenborg.be met wat u wilt. U kunt ook bellen naar de volgende personen :<br></p>', '<p>Het huren van materiaal bij de scouts zurenborg is gratis voor leiding/oud-leiding voor anderen kunt u de prijzen hieronder gebruiken. Om te huren gelive een mail te sturen naar materiaalmeesters@scouts-zurenborg.be met wat u wilt. U kunt ook bellen naar de volgende personen :<br/></p>');

-- *** STRUCTURE:`tbl_entries_data_113` ***
DROP TABLE IF EXISTS`tbl_entries_data_113`;
CREATE TABLE`tbl_entries_data_113` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) unsigned NOT NULL,
  `handle` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `value` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `entry_id` (`entry_id`),
  KEY `handle` (`handle`),
  KEY `value` (`value`)
) ENGINE=MyISAM AUTO_INCREMENT=25 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- *** DATA:`tbl_entries_data_113` ***
INSERT INTO`tbl_entries_data_113` (`id`, `entry_id`, `handle`, `value`) VALUES (22, 20, 'info-over-de-zomerkampen', 'Info over de zomerkampen');
INSERT INTO`tbl_entries_data_113` (`id`, `entry_id`, `handle`, `value`) VALUES (21, 77, 'inschrijven-voor-scoutsjaar-2013-2014', 'Inschrijven voor scoutsjaar 2013-2014');
INSERT INTO`tbl_entries_data_113` (`id`, `entry_id`, `handle`, `value`) VALUES (19, 78, 'schrijf-je-nu-in', 'Schrijf je nu in!');
INSERT INTO`tbl_entries_data_113` (`id`, `entry_id`, `handle`, `value`) VALUES (24, 79, 'slechts-€25', 'Slechts €25');
INSERT INTO`tbl_entries_data_113` (`id`, `entry_id`, `handle`, `value`) VALUES (23, 88, 'info-over-de-zomerkampen', 'Info over de zomerkampen');

-- *** STRUCTURE:`tbl_entries_data_114` ***
DROP TABLE IF EXISTS`tbl_entries_data_114`;
CREATE TABLE`tbl_entries_data_114` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) unsigned NOT NULL,
  `value` enum('yes','no') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'no',
  PRIMARY KEY (`id`),
  UNIQUE KEY `entry_id` (`entry_id`),
  KEY `value` (`value`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- *** DATA:`tbl_entries_data_114` ***
INSERT INTO`tbl_entries_data_114` (`id`, `entry_id`, `value`) VALUES (5, 57, 'yes');
INSERT INTO`tbl_entries_data_114` (`id`, `entry_id`, `value`) VALUES (2, 16, 'yes');

-- *** STRUCTURE:`tbl_entries_data_115` ***
DROP TABLE IF EXISTS`tbl_entries_data_115`;
CREATE TABLE`tbl_entries_data_115` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) unsigned NOT NULL,
  `handle` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `value` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `entry_id` (`entry_id`),
  KEY `handle` (`handle`),
  KEY `value` (`value`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- *** DATA:`tbl_entries_data_115` ***
INSERT INTO`tbl_entries_data_115` (`id`, `entry_id`, `handle`, `value`) VALUES (1, 11, 1, 1);
INSERT INTO`tbl_entries_data_115` (`id`, `entry_id`, `handle`, `value`) VALUES (2, 30, 2, 2);
INSERT INTO`tbl_entries_data_115` (`id`, `entry_id`, `handle`, `value`) VALUES (3, 18, 3, 3);
INSERT INTO`tbl_entries_data_115` (`id`, `entry_id`, `handle`, `value`) VALUES (4, 29, 4, 4);
INSERT INTO`tbl_entries_data_115` (`id`, `entry_id`, `handle`, `value`) VALUES (5, 31, 5, 5);
INSERT INTO`tbl_entries_data_115` (`id`, `entry_id`, `handle`, `value`) VALUES (6, 32, 6, 6);
INSERT INTO`tbl_entries_data_115` (`id`, `entry_id`, `handle`, `value`) VALUES (7, 33, 7, 7);
INSERT INTO`tbl_entries_data_115` (`id`, `entry_id`, `handle`, `value`) VALUES (8, 34, 8, 8);

-- *** STRUCTURE:`tbl_entries_data_120` ***
DROP TABLE IF EXISTS`tbl_entries_data_120`;
CREATE TABLE`tbl_entries_data_120` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) unsigned NOT NULL,
  `handle` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `value` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `entry_id` (`entry_id`),
  KEY `handle` (`handle`),
  KEY `value` (`value`)
) ENGINE=MyISAM AUTO_INCREMENT=18 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- *** DATA:`tbl_entries_data_120` ***
INSERT INTO`tbl_entries_data_120` (`id`, `entry_id`, `handle`, `value`) VALUES (12, 78, 'geel', 'Geel');
INSERT INTO`tbl_entries_data_120` (`id`, `entry_id`, `handle`, `value`) VALUES (14, 77, 'rood', 'Rood');
INSERT INTO`tbl_entries_data_120` (`id`, `entry_id`, `handle`, `value`) VALUES (16, 88, 'lichtblauw', 'Lichtblauw');
INSERT INTO`tbl_entries_data_120` (`id`, `entry_id`, `handle`, `value`) VALUES (15, 20, 'groen', 'Groen');
INSERT INTO`tbl_entries_data_120` (`id`, `entry_id`, `handle`, `value`) VALUES (17, 79, 'groen', 'Groen');

-- *** STRUCTURE:`tbl_entries_data_30` ***
DROP TABLE IF EXISTS`tbl_entries_data_30`;
CREATE TABLE`tbl_entries_data_30` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) unsigned NOT NULL,
  `handle` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `value` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `entry_id` (`entry_id`),
  KEY `handle` (`handle`),
  KEY `value` (`value`)
) ENGINE=MyISAM AUTO_INCREMENT=24 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- *** DATA:`tbl_entries_data_30` ***
INSERT INTO`tbl_entries_data_30` (`id`, `entry_id`, `handle`, `value`) VALUES (16, 11, 'kapoenen', 'Kapoenen');
INSERT INTO`tbl_entries_data_30` (`id`, `entry_id`, `handle`, `value`) VALUES (18, 18, 'jacala', 'Jacala');
INSERT INTO`tbl_entries_data_30` (`id`, `entry_id`, `handle`, `value`) VALUES (19, 29, 'jonggivers-i', 'Jonggivers I');
INSERT INTO`tbl_entries_data_30` (`id`, `entry_id`, `handle`, `value`) VALUES (17, 30, 'chikai', 'Chikai');
INSERT INTO`tbl_entries_data_30` (`id`, `entry_id`, `handle`, `value`) VALUES (20, 31, 'jonggivers-ii', 'Jonggivers II');
INSERT INTO`tbl_entries_data_30` (`id`, `entry_id`, `handle`, `value`) VALUES (21, 32, 'givers-i', 'Givers I');
INSERT INTO`tbl_entries_data_30` (`id`, `entry_id`, `handle`, `value`) VALUES (22, 33, 'givers-ii', 'Givers II');
INSERT INTO`tbl_entries_data_30` (`id`, `entry_id`, `handle`, `value`) VALUES (23, 34, 'jins', 'Jins');

-- *** STRUCTURE:`tbl_entries_data_31` ***
DROP TABLE IF EXISTS`tbl_entries_data_31`;
CREATE TABLE`tbl_entries_data_31` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) unsigned NOT NULL,
  `handle` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `value` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `entry_id` (`entry_id`),
  KEY `handle` (`handle`),
  KEY `value` (`value`)
) ENGINE=MyISAM AUTO_INCREMENT=24 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- *** DATA:`tbl_entries_data_31` ***
INSERT INTO`tbl_entries_data_31` (`id`, `entry_id`, `handle`, `value`) VALUES (16, 11, 'kapoenen', 'Kapoenen');
INSERT INTO`tbl_entries_data_31` (`id`, `entry_id`, `handle`, `value`) VALUES (18, 18, 'welkas', 'Welka\'s');
INSERT INTO`tbl_entries_data_31` (`id`, `entry_id`, `handle`, `value`) VALUES (19, 29, 'jong-givers', 'Jong Givers');
INSERT INTO`tbl_entries_data_31` (`id`, `entry_id`, `handle`, `value`) VALUES (17, 30, 'welkas', 'Welka\'s');
INSERT INTO`tbl_entries_data_31` (`id`, `entry_id`, `handle`, `value`) VALUES (20, 31, 'jong-givers', 'Jong Givers');
INSERT INTO`tbl_entries_data_31` (`id`, `entry_id`, `handle`, `value`) VALUES (21, 32, 'givers', 'Givers');
INSERT INTO`tbl_entries_data_31` (`id`, `entry_id`, `handle`, `value`) VALUES (22, 33, 'givers', 'Givers');
INSERT INTO`tbl_entries_data_31` (`id`, `entry_id`, `handle`, `value`) VALUES (23, 34, 'jins', 'Jins');

-- *** STRUCTURE:`tbl_entries_data_32` ***
DROP TABLE IF EXISTS`tbl_entries_data_32`;
CREATE TABLE`tbl_entries_data_32` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) unsigned NOT NULL,
  `handle` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `value` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `entry_id` (`entry_id`),
  KEY `handle` (`handle`),
  KEY `value` (`value`)
) ENGINE=MyISAM AUTO_INCREMENT=24 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- *** DATA:`tbl_entries_data_32` ***
INSERT INTO`tbl_entries_data_32` (`id`, `entry_id`, `handle`, `value`) VALUES (16, 11, 'kapoenen-scouts-zurenborgbe', 'kapoenen@scouts-zurenborg.be');
INSERT INTO`tbl_entries_data_32` (`id`, `entry_id`, `handle`, `value`) VALUES (18, 18, 'jacala-scoutszurenborgbe', 'jacala@scouts.zurenborg.be');
INSERT INTO`tbl_entries_data_32` (`id`, `entry_id`, `handle`, `value`) VALUES (17, 30, 'chikai-scouts-zurenborgbe', 'chikai@scouts-zurenborg.be');
INSERT INTO`tbl_entries_data_32` (`id`, `entry_id`, `handle`, `value`) VALUES (20, 31, 'jonggivers-scouts-zurenborgbe', 'jonggivers@scouts-zurenborg.be');
INSERT INTO`tbl_entries_data_32` (`id`, `entry_id`, `handle`, `value`) VALUES (19, 29, 'jonggivers-scouts-zurenborgbe', 'jonggivers@scouts-zurenborg.be');
INSERT INTO`tbl_entries_data_32` (`id`, `entry_id`, `handle`, `value`) VALUES (21, 32, 'givers-scouts-zurenborgbe', 'givers@scouts-zurenborg.be');
INSERT INTO`tbl_entries_data_32` (`id`, `entry_id`, `handle`, `value`) VALUES (22, 33, 'givers-scouts-zurenborgbe', 'givers@scouts-zurenborg.be');
INSERT INTO`tbl_entries_data_32` (`id`, `entry_id`, `handle`, `value`) VALUES (23, 34, 'jins-scouts-zurenborgbe', 'jins@scouts-zurenborg.be');

-- *** STRUCTURE:`tbl_entries_data_33` ***
DROP TABLE IF EXISTS`tbl_entries_data_33`;
CREATE TABLE`tbl_entries_data_33` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) unsigned NOT NULL,
  `handle` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `value` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `entry_id` (`entry_id`),
  KEY `handle` (`handle`),
  KEY `value` (`value`)
) ENGINE=MyISAM AUTO_INCREMENT=74 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- *** DATA:`tbl_entries_data_33` ***
INSERT INTO`tbl_entries_data_33` (`id`, `entry_id`, `handle`, `value`) VALUES (43, 12, 'ruben', 'Ruben');
INSERT INTO`tbl_entries_data_33` (`id`, `entry_id`, `handle`, `value`) VALUES (36, 91, 'maite', 'Maïte');
INSERT INTO`tbl_entries_data_33` (`id`, `entry_id`, `handle`, `value`) VALUES (44, 89, 'camile', 'Camile');
INSERT INTO`tbl_entries_data_33` (`id`, `entry_id`, `handle`, `value`) VALUES (40, 90, 'louis', 'Louis');
INSERT INTO`tbl_entries_data_33` (`id`, `entry_id`, `handle`, `value`) VALUES (37, 92, 'charlotte', 'Charlotte');
INSERT INTO`tbl_entries_data_33` (`id`, `entry_id`, `handle`, `value`) VALUES (42, 93, 'tinka', 'Tinka');
INSERT INTO`tbl_entries_data_33` (`id`, `entry_id`, `handle`, `value`) VALUES (45, 94, 'emily', 'Emily');
INSERT INTO`tbl_entries_data_33` (`id`, `entry_id`, `handle`, `value`) VALUES (46, 95, 'elise', 'Elise');
INSERT INTO`tbl_entries_data_33` (`id`, `entry_id`, `handle`, `value`) VALUES (47, 96, 'jonas', 'Jonas');
INSERT INTO`tbl_entries_data_33` (`id`, `entry_id`, `handle`, `value`) VALUES (48, 97, 'alexander', 'Alexander');
INSERT INTO`tbl_entries_data_33` (`id`, `entry_id`, `handle`, `value`) VALUES (49, 98, 'clara', 'Clara');
INSERT INTO`tbl_entries_data_33` (`id`, `entry_id`, `handle`, `value`) VALUES (50, 99, 'celine', 'Celine');
INSERT INTO`tbl_entries_data_33` (`id`, `entry_id`, `handle`, `value`) VALUES (51, 100, 'maxim', 'Maxim');
INSERT INTO`tbl_entries_data_33` (`id`, `entry_id`, `handle`, `value`) VALUES (52, 101, 'olivier', 'Olivier');
INSERT INTO`tbl_entries_data_33` (`id`, `entry_id`, `handle`, `value`) VALUES (53, 102, 'julie', 'Julie');
INSERT INTO`tbl_entries_data_33` (`id`, `entry_id`, `handle`, `value`) VALUES (57, 103, 'ella', 'Ella');
INSERT INTO`tbl_entries_data_33` (`id`, `entry_id`, `handle`, `value`) VALUES (58, 104, 'geerte', 'Geerte');
INSERT INTO`tbl_entries_data_33` (`id`, `entry_id`, `handle`, `value`) VALUES (59, 105, 'ella', 'Ella');
INSERT INTO`tbl_entries_data_33` (`id`, `entry_id`, `handle`, `value`) VALUES (60, 106, 'axl', 'Axl');
INSERT INTO`tbl_entries_data_33` (`id`, `entry_id`, `handle`, `value`) VALUES (61, 107, 'ruben', 'Ruben');
INSERT INTO`tbl_entries_data_33` (`id`, `entry_id`, `handle`, `value`) VALUES (62, 108, 'nicolaas', 'Nicolaas');
INSERT INTO`tbl_entries_data_33` (`id`, `entry_id`, `handle`, `value`) VALUES (68, 109, 'vince', 'Vince');
INSERT INTO`tbl_entries_data_33` (`id`, `entry_id`, `handle`, `value`) VALUES (64, 110, 'dimitri', 'Dimitri');
INSERT INTO`tbl_entries_data_33` (`id`, `entry_id`, `handle`, `value`) VALUES (65, 111, 'arne', 'Arne');
INSERT INTO`tbl_entries_data_33` (`id`, `entry_id`, `handle`, `value`) VALUES (66, 112, 'jeroen', 'Jeroen');
INSERT INTO`tbl_entries_data_33` (`id`, `entry_id`, `handle`, `value`) VALUES (69, 113, 'boris', 'Boris');
INSERT INTO`tbl_entries_data_33` (`id`, `entry_id`, `handle`, `value`) VALUES (70, 114, 'jef', 'Jef');
INSERT INTO`tbl_entries_data_33` (`id`, `entry_id`, `handle`, `value`) VALUES (71, 115, 'marie', 'Marie');
INSERT INTO`tbl_entries_data_33` (`id`, `entry_id`, `handle`, `value`) VALUES (72, 116, 'margot', 'Margot');
INSERT INTO`tbl_entries_data_33` (`id`, `entry_id`, `handle`, `value`) VALUES (73, 117, 'hanna', 'Hanna');

-- *** STRUCTURE:`tbl_entries_data_34` ***
DROP TABLE IF EXISTS`tbl_entries_data_34`;
CREATE TABLE`tbl_entries_data_34` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) unsigned NOT NULL,
  `handle` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `value` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `entry_id` (`entry_id`),
  KEY `handle` (`handle`),
  KEY `value` (`value`)
) ENGINE=MyISAM AUTO_INCREMENT=74 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- *** DATA:`tbl_entries_data_34` ***
INSERT INTO`tbl_entries_data_34` (`id`, `entry_id`, `handle`, `value`) VALUES (43, 12, 'tweelingenstraat', 'Tweelingenstraat');
INSERT INTO`tbl_entries_data_34` (`id`, `entry_id`, `handle`, `value`) VALUES (36, 91, 'vredestraat', 'Vredestraat');
INSERT INTO`tbl_entries_data_34` (`id`, `entry_id`, `handle`, `value`) VALUES (44, 89, 'draakstraat', 'Draakstraat');
INSERT INTO`tbl_entries_data_34` (`id`, `entry_id`, `handle`, `value`) VALUES (40, 90, 'draakstraat', 'Draakstraat');
INSERT INTO`tbl_entries_data_34` (`id`, `entry_id`, `handle`, `value`) VALUES (37, 92, 'esmoreitlaan', 'Esmoreitlaan');
INSERT INTO`tbl_entries_data_34` (`id`, `entry_id`, `handle`, `value`) VALUES (42, 93, 'ketstraat', 'Ketstraat');
INSERT INTO`tbl_entries_data_34` (`id`, `entry_id`, `handle`, `value`) VALUES (45, 94, 'arendstraat', 'Arendstraat');
INSERT INTO`tbl_entries_data_34` (`id`, `entry_id`, `handle`, `value`) VALUES (46, 95, 'oudestraat', 'Oudestraat');
INSERT INTO`tbl_entries_data_34` (`id`, `entry_id`, `handle`, `value`) VALUES (47, 96, 'mercatorstraat', 'Mercatorstraat');
INSERT INTO`tbl_entries_data_34` (`id`, `entry_id`, `handle`, `value`) VALUES (48, 97, 'jozef-balstraat', 'Jozef Balstraat');
INSERT INTO`tbl_entries_data_34` (`id`, `entry_id`, `handle`, `value`) VALUES (49, 98, 'bleekhofstraat', 'Bleekhofstraat');
INSERT INTO`tbl_entries_data_34` (`id`, `entry_id`, `handle`, `value`) VALUES (50, 99, 'mechelsesteenweg', 'Mechelsesteenweg');
INSERT INTO`tbl_entries_data_34` (`id`, `entry_id`, `handle`, `value`) VALUES (51, 100, 'cuperstraat', 'Cuperstraat');
INSERT INTO`tbl_entries_data_34` (`id`, `entry_id`, `handle`, `value`) VALUES (52, 101, 'raafstraat', 'Raafstraat');
INSERT INTO`tbl_entries_data_34` (`id`, `entry_id`, `handle`, `value`) VALUES (53, 102, 'raafstraat', 'Raafstraat');
INSERT INTO`tbl_entries_data_34` (`id`, `entry_id`, `handle`, `value`) VALUES (57, 103, 'wolfjagerslei', 'Wolfjagerslei');
INSERT INTO`tbl_entries_data_34` (`id`, `entry_id`, `handle`, `value`) VALUES (58, 104, 'bosduifstraat', 'Bosduifstraat');
INSERT INTO`tbl_entries_data_34` (`id`, `entry_id`, `handle`, `value`) VALUES (59, 105, 'brialmontlei', 'Brialmontlei');
INSERT INTO`tbl_entries_data_34` (`id`, `entry_id`, `handle`, `value`) VALUES (60, 106, 'nottebohmstraat', 'Nottebohmstraat');
INSERT INTO`tbl_entries_data_34` (`id`, `entry_id`, `handle`, `value`) VALUES (61, 107, 'grote-beerstraat', 'Grote Beerstraat');
INSERT INTO`tbl_entries_data_34` (`id`, `entry_id`, `handle`, `value`) VALUES (62, 108, 'lange-van-ruusbroecstraat', 'Lange Van Ruusbroecstraat');
INSERT INTO`tbl_entries_data_34` (`id`, `entry_id`, `handle`, `value`) VALUES (68, 109, 'stenenbrug', 'Stenenbrug');
INSERT INTO`tbl_entries_data_34` (`id`, `entry_id`, `handle`, `value`) VALUES (64, 110, 'dolfijnstraat', 'Dolfijnstraat');
INSERT INTO`tbl_entries_data_34` (`id`, `entry_id`, `handle`, `value`) VALUES (65, 111, 'magdalenastraat', 'Magdalenastraat');
INSERT INTO`tbl_entries_data_34` (`id`, `entry_id`, `handle`, `value`) VALUES (66, 112, 'daenenstraat', 'Daenenstraat');
INSERT INTO`tbl_entries_data_34` (`id`, `entry_id`, `handle`, `value`) VALUES (69, 113, 'van-daelstraat', 'Van Daelstraat');
INSERT INTO`tbl_entries_data_34` (`id`, `entry_id`, `handle`, `value`) VALUES (70, 114, 'van-marsenillestraat', 'Van Marsenillestraat');
INSERT INTO`tbl_entries_data_34` (`id`, `entry_id`, `handle`, `value`) VALUES (71, 115, 'helenalei', 'Helenalei');
INSERT INTO`tbl_entries_data_34` (`id`, `entry_id`, `handle`, `value`) VALUES (72, 116, 'thaliastraat', 'Thaliastraat');
INSERT INTO`tbl_entries_data_34` (`id`, `entry_id`, `handle`, `value`) VALUES (73, 117, 'theophiel-roucourtstraat', 'Theophiel Roucourtstraat');

-- *** STRUCTURE:`tbl_entries_data_35` ***
DROP TABLE IF EXISTS`tbl_entries_data_35`;
CREATE TABLE`tbl_entries_data_35` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) unsigned NOT NULL,
  `handle` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `value` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `entry_id` (`entry_id`),
  KEY `handle` (`handle`),
  KEY `value` (`value`)
) ENGINE=MyISAM AUTO_INCREMENT=74 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- *** DATA:`tbl_entries_data_35` ***
INSERT INTO`tbl_entries_data_35` (`id`, `entry_id`, `handle`, `value`) VALUES (43, 12, 0499284990, 0499284990);
INSERT INTO`tbl_entries_data_35` (`id`, `entry_id`, `handle`, `value`) VALUES (44, 89, 0498749585, 0498749585);
INSERT INTO`tbl_entries_data_35` (`id`, `entry_id`, `handle`, `value`) VALUES (40, 90, 0498749585, 0498749585);
INSERT INTO`tbl_entries_data_35` (`id`, `entry_id`, `handle`, `value`) VALUES (36, 91, 0477580737, 0477580737);
INSERT INTO`tbl_entries_data_35` (`id`, `entry_id`, `handle`, `value`) VALUES (37, 92, 0495583987, 0495583987);
INSERT INTO`tbl_entries_data_35` (`id`, `entry_id`, `handle`, `value`) VALUES (42, 93, 032903473, 032903473);
INSERT INTO`tbl_entries_data_35` (`id`, `entry_id`, `handle`, `value`) VALUES (45, 94, 0475301098, 0475301098);
INSERT INTO`tbl_entries_data_35` (`id`, `entry_id`, `handle`, `value`) VALUES (46, 95, 0495523411, 0495523411);
INSERT INTO`tbl_entries_data_35` (`id`, `entry_id`, `handle`, `value`) VALUES (47, 96, 0495879075, 0495879075);
INSERT INTO`tbl_entries_data_35` (`id`, `entry_id`, `handle`, `value`) VALUES (48, 97, 0494171681, 0494171681);
INSERT INTO`tbl_entries_data_35` (`id`, `entry_id`, `handle`, `value`) VALUES (49, 98, 0497431925, 0497431925);
INSERT INTO`tbl_entries_data_35` (`id`, `entry_id`, `handle`, `value`) VALUES (50, 99, 0477330413, 0477330413);
INSERT INTO`tbl_entries_data_35` (`id`, `entry_id`, `handle`, `value`) VALUES (51, 100, 0478473720, 0478473720);
INSERT INTO`tbl_entries_data_35` (`id`, `entry_id`, `handle`, `value`) VALUES (52, 101, 0495232860, 0495232860);
INSERT INTO`tbl_entries_data_35` (`id`, `entry_id`, `handle`, `value`) VALUES (53, 102, 0495232860, 0495232860);
INSERT INTO`tbl_entries_data_35` (`id`, `entry_id`, `handle`, `value`) VALUES (57, 103, 0475203048, 0475203048);
INSERT INTO`tbl_entries_data_35` (`id`, `entry_id`, `handle`, `value`) VALUES (58, 104, 0498401233, 0498401233);
INSERT INTO`tbl_entries_data_35` (`id`, `entry_id`, `handle`, `value`) VALUES (59, 105, 0474089410, 0474089410);
INSERT INTO`tbl_entries_data_35` (`id`, `entry_id`, `handle`, `value`) VALUES (60, 106, 0473673268, 0473673268);
INSERT INTO`tbl_entries_data_35` (`id`, `entry_id`, `handle`, `value`) VALUES (61, 107, 0496182557, 0496182557);
INSERT INTO`tbl_entries_data_35` (`id`, `entry_id`, `handle`, `value`) VALUES (62, 108, 04, 04);
INSERT INTO`tbl_entries_data_35` (`id`, `entry_id`, `handle`, `value`) VALUES (68, 109, 0477324416, 0477324416);
INSERT INTO`tbl_entries_data_35` (`id`, `entry_id`, `handle`, `value`) VALUES (64, 110, 0497947452, 0497947452);
INSERT INTO`tbl_entries_data_35` (`id`, `entry_id`, `handle`, `value`) VALUES (65, 111, 04, 04);
INSERT INTO`tbl_entries_data_35` (`id`, `entry_id`, `handle`, `value`) VALUES (66, 112, 0476809449, 0476809449);
INSERT INTO`tbl_entries_data_35` (`id`, `entry_id`, `handle`, `value`) VALUES (69, 113, 0498662912, 0498662912);
INSERT INTO`tbl_entries_data_35` (`id`, `entry_id`, `handle`, `value`) VALUES (70, 114, 0485056760, 0485056760);
INSERT INTO`tbl_entries_data_35` (`id`, `entry_id`, `handle`, `value`) VALUES (71, 115, 0476494927, 0476494927);
INSERT INTO`tbl_entries_data_35` (`id`, `entry_id`, `handle`, `value`) VALUES (72, 116, 0497482570, 0497482570);
INSERT INTO`tbl_entries_data_35` (`id`, `entry_id`, `handle`, `value`) VALUES (73, 117, 0477705610, 0477705610);

-- *** STRUCTURE:`tbl_entries_data_36` ***
DROP TABLE IF EXISTS`tbl_entries_data_36`;
CREATE TABLE`tbl_entries_data_36` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) unsigned NOT NULL,
  `file` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `size` int(11) unsigned DEFAULT NULL,
  `mimetype` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `meta` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `entry_id` (`entry_id`),
  KEY `file` (`file`),
  KEY `mimetype` (`mimetype`)
) ENGINE=MyISAM AUTO_INCREMENT=30 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- *** DATA:`tbl_entries_data_36` ***
INSERT INTO`tbl_entries_data_36` (`id`, `entry_id`, `file`, `size`, `mimetype`, `meta`) VALUES (29, 12, '/Afbeeldingen/leiding/ruben.jpg', 51551, 'image/jpeg', 'a:3:{s:8:\"creation\";s:25:\"2013-07-08T13:46:59+02:00\";s:5:\"width\";i:401;s:6:\"height\";i:401;}');

-- *** STRUCTURE:`tbl_entries_data_37` ***
DROP TABLE IF EXISTS`tbl_entries_data_37`;
CREATE TABLE`tbl_entries_data_37` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) unsigned NOT NULL,
  `handle` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `value` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `entry_id` (`entry_id`),
  KEY `handle` (`handle`),
  KEY `value` (`value`)
) ENGINE=MyISAM AUTO_INCREMENT=74 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- *** DATA:`tbl_entries_data_37` ***
INSERT INTO`tbl_entries_data_37` (`id`, `entry_id`, `handle`, `value`) VALUES (43, 12, 'chikai', 'Chikai');
INSERT INTO`tbl_entries_data_37` (`id`, `entry_id`, `handle`, `value`) VALUES (44, 89, 'kapoenen', 'Kapoenen');
INSERT INTO`tbl_entries_data_37` (`id`, `entry_id`, `handle`, `value`) VALUES (40, 90, 'chikai', 'Chikai');
INSERT INTO`tbl_entries_data_37` (`id`, `entry_id`, `handle`, `value`) VALUES (36, 91, 'kapoenen', 'Kapoenen');
INSERT INTO`tbl_entries_data_37` (`id`, `entry_id`, `handle`, `value`) VALUES (37, 92, 'kapoenen', 'Kapoenen');
INSERT INTO`tbl_entries_data_37` (`id`, `entry_id`, `handle`, `value`) VALUES (42, 93, 'kapoenen', 'Kapoenen');
INSERT INTO`tbl_entries_data_37` (`id`, `entry_id`, `handle`, `value`) VALUES (45, 94, 'chikai', 'Chikai');
INSERT INTO`tbl_entries_data_37` (`id`, `entry_id`, `handle`, `value`) VALUES (46, 95, 'chikai', 'Chikai');
INSERT INTO`tbl_entries_data_37` (`id`, `entry_id`, `handle`, `value`) VALUES (47, 96, 'jacala', 'Jacala');
INSERT INTO`tbl_entries_data_37` (`id`, `entry_id`, `handle`, `value`) VALUES (48, 97, 'jacala', 'Jacala');
INSERT INTO`tbl_entries_data_37` (`id`, `entry_id`, `handle`, `value`) VALUES (49, 98, 'jacala', 'Jacala');
INSERT INTO`tbl_entries_data_37` (`id`, `entry_id`, `handle`, `value`) VALUES (50, 99, 'jacala', 'Jacala');
INSERT INTO`tbl_entries_data_37` (`id`, `entry_id`, `handle`, `value`) VALUES (51, 100, 'jonggivers-ii', 'Jonggivers II');
INSERT INTO`tbl_entries_data_37` (`id`, `entry_id`, `handle`, `value`) VALUES (52, 101, 'jonggivers-ii', 'Jonggivers II');
INSERT INTO`tbl_entries_data_37` (`id`, `entry_id`, `handle`, `value`) VALUES (53, 102, 'givers-ii', 'Givers II');
INSERT INTO`tbl_entries_data_37` (`id`, `entry_id`, `handle`, `value`) VALUES (57, 103, 'jonggivers-ii', 'Jonggivers II');
INSERT INTO`tbl_entries_data_37` (`id`, `entry_id`, `handle`, `value`) VALUES (58, 104, 'jonggivers-ii', 'Jonggivers II');
INSERT INTO`tbl_entries_data_37` (`id`, `entry_id`, `handle`, `value`) VALUES (59, 105, 'jonggivers-i', 'Jonggivers I');
INSERT INTO`tbl_entries_data_37` (`id`, `entry_id`, `handle`, `value`) VALUES (60, 106, 'jonggivers-i', 'Jonggivers I');
INSERT INTO`tbl_entries_data_37` (`id`, `entry_id`, `handle`, `value`) VALUES (61, 107, 'jonggivers-i', 'Jonggivers I');
INSERT INTO`tbl_entries_data_37` (`id`, `entry_id`, `handle`, `value`) VALUES (62, 108, 'jonggivers-i', 'Jonggivers I');
INSERT INTO`tbl_entries_data_37` (`id`, `entry_id`, `handle`, `value`) VALUES (68, 109, 'jonggivers-i', 'Jonggivers I');
INSERT INTO`tbl_entries_data_37` (`id`, `entry_id`, `handle`, `value`) VALUES (64, 110, 'givers-i', 'Givers I');
INSERT INTO`tbl_entries_data_37` (`id`, `entry_id`, `handle`, `value`) VALUES (65, 111, 'givers-i', 'Givers I');
INSERT INTO`tbl_entries_data_37` (`id`, `entry_id`, `handle`, `value`) VALUES (66, 112, 'givers-i', 'Givers I');
INSERT INTO`tbl_entries_data_37` (`id`, `entry_id`, `handle`, `value`) VALUES (69, 113, 'givers-ii', 'Givers II');
INSERT INTO`tbl_entries_data_37` (`id`, `entry_id`, `handle`, `value`) VALUES (70, 114, 'givers-ii', 'Givers II');
INSERT INTO`tbl_entries_data_37` (`id`, `entry_id`, `handle`, `value`) VALUES (71, 115, 'jins', 'Jins');
INSERT INTO`tbl_entries_data_37` (`id`, `entry_id`, `handle`, `value`) VALUES (72, 116, 'jins', 'Jins');
INSERT INTO`tbl_entries_data_37` (`id`, `entry_id`, `handle`, `value`) VALUES (73, 117, 'jins', 'Jins');

-- *** STRUCTURE:`tbl_entries_data_44` ***
DROP TABLE IF EXISTS`tbl_entries_data_44`;
CREATE TABLE`tbl_entries_data_44` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) unsigned NOT NULL,
  `handle` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `value` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `entry_id` (`entry_id`),
  KEY `handle` (`handle`),
  KEY `value` (`value`)
) ENGINE=MyISAM AUTO_INCREMENT=10 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- *** DATA:`tbl_entries_data_44` ***
INSERT INTO`tbl_entries_data_44` (`id`, `entry_id`, `handle`, `value`) VALUES (2, 39, 'wanneer-begint-de-scouts', 'Wanneer begint de scouts?');
INSERT INTO`tbl_entries_data_44` (`id`, `entry_id`, `handle`, `value`) VALUES (3, 40, 'wanneer-kan-ik-me-inschrijven', 'Wanneer kan ik me inschrijven?');
INSERT INTO`tbl_entries_data_44` (`id`, `entry_id`, `handle`, `value`) VALUES (4, 41, 'waar-kan-ik-een-uniform-verkrijgen', 'Waar kan ik een uniform verkrijgen?');
INSERT INTO`tbl_entries_data_44` (`id`, `entry_id`, `handle`, `value`) VALUES (5, 42, 'welke-browser-heb-ik-nodig-om-de-website-te-bezoeken', 'Welke browser heb ik nodig om de website te bezoeken?');
INSERT INTO`tbl_entries_data_44` (`id`, `entry_id`, `handle`, `value`) VALUES (6, 43, 'wie-is-de-groepsleiding', 'Wie is de groepsleiding?');
INSERT INTO`tbl_entries_data_44` (`id`, `entry_id`, `handle`, `value`) VALUES (9, 87, 'hoe-kan-ik-in-de-vzw', 'Hoe kan ik in de VZW?');

-- *** STRUCTURE:`tbl_entries_data_45` ***
DROP TABLE IF EXISTS`tbl_entries_data_45`;
CREATE TABLE`tbl_entries_data_45` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) unsigned NOT NULL,
  `value` mediumtext COLLATE utf8_unicode_ci,
  `value_formatted` mediumtext COLLATE utf8_unicode_ci,
  PRIMARY KEY (`id`),
  UNIQUE KEY `entry_id` (`entry_id`),
  FULLTEXT KEY `value` (`value`)
) ENGINE=MyISAM AUTO_INCREMENT=10 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- *** DATA:`tbl_entries_data_45` ***
INSERT INTO`tbl_entries_data_45` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (2, 39, '<p>Half tien</p>', '<p>Half tien</p>');
INSERT INTO`tbl_entries_data_45` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (3, 40, '<p>Vanaf augustus.</p>', '<p>Vanaf augustus.</p>');
INSERT INTO`tbl_entries_data_45` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (4, 41, '<p>Scoutswinkel de hopper.</p>', '<p>Scoutswinkel de hopper.</p>');
INSERT INTO`tbl_entries_data_45` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (5, 42, '<p>Elke moderne browser kan de website bezoeken, let er wel op dat javascript niet uit staat.</p>', '<p>Elke moderne browser kan de website bezoeken, let er wel op dat javascript niet uit staat.</p>');
INSERT INTO`tbl_entries_data_45` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (6, 43, '<p>Geen idee voor de moment.</p>', '<p>Geen idee voor de moment.</p>');
INSERT INTO`tbl_entries_data_45` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (9, 87, '<blockquote style=\"margin: 0 0 0 40px; border: none; padding: 0px;\"><blockquote style=\"margin: 0 0 0 40px; border: none; padding: 0px;\"><p><strike><span style=\"color: #262626;\"><i><b>Vraag</b></i></span></strike></p> Esse!</blockquote></blockquote>\r\n', '<blockquote style=\"margin: 0 0 0 40px; border: none; padding: 0px;\"><blockquote style=\"margin: 0 0 0 40px; border: none; padding: 0px;\"><p><strike><span style=\"color: #262626;\"><i><b>Vraag</b></i></span></strike></p> Esse!</blockquote></blockquote>\r\n');

-- *** STRUCTURE:`tbl_entries_data_46` ***
DROP TABLE IF EXISTS`tbl_entries_data_46`;
CREATE TABLE`tbl_entries_data_46` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) unsigned NOT NULL,
  `handle` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `value` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `entry_id` (`entry_id`),
  KEY `handle` (`handle`),
  KEY `value` (`value`)
) ENGINE=MyISAM AUTO_INCREMENT=31 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- *** DATA:`tbl_entries_data_46` ***
INSERT INTO`tbl_entries_data_46` (`id`, `entry_id`, `handle`, `value`) VALUES (28, 20, 'kampen', 'Kampen');
INSERT INTO`tbl_entries_data_46` (`id`, `entry_id`, `handle`, `value`) VALUES (27, 77, 'inschrijven', 'Inschrijven');
INSERT INTO`tbl_entries_data_46` (`id`, `entry_id`, `handle`, `value`) VALUES (25, 78, 'antwandelen', 'Antwandelen');
INSERT INTO`tbl_entries_data_46` (`id`, `entry_id`, `handle`, `value`) VALUES (30, 79, 'groepsweekend', 'Groepsweekend');
INSERT INTO`tbl_entries_data_46` (`id`, `entry_id`, `handle`, `value`) VALUES (29, 88, 'kampen', 'Kampen');

-- *** STRUCTURE:`tbl_entries_data_47` ***
DROP TABLE IF EXISTS`tbl_entries_data_47`;
CREATE TABLE`tbl_entries_data_47` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) unsigned NOT NULL,
  `file` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `size` int(11) unsigned DEFAULT NULL,
  `mimetype` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `meta` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `entry_id` (`entry_id`),
  KEY `file` (`file`),
  KEY `mimetype` (`mimetype`)
) ENGINE=MyISAM AUTO_INCREMENT=31 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- *** DATA:`tbl_entries_data_47` ***
INSERT INTO`tbl_entries_data_47` (`id`, `entry_id`, `file`, `size`, `mimetype`, `meta`) VALUES (28, 20, '/Afbeeldingen/berichten/legertenten.jpg', 636253, 'image/jpeg', 'a:3:{s:8:\"creation\";s:25:\"2013-07-09T17:42:19+02:00\";s:5:\"width\";i:1600;s:6:\"height\";i:1200;}');
INSERT INTO`tbl_entries_data_47` (`id`, `entry_id`, `file`, `size`, `mimetype`, `meta`) VALUES (27, 77, '/Afbeeldingen/berichten/img_1390-784640.jpg', 135580, 'image/jpeg', 'a:3:{s:8:\"creation\";s:25:\"2013-07-09T17:45:22+02:00\";s:5:\"width\";i:1024;s:6:\"height\";i:407;}');
INSERT INTO`tbl_entries_data_47` (`id`, `entry_id`, `file`, `size`, `mimetype`, `meta`) VALUES (25, 78, '/Afbeeldingen/berichten/bg.jpg', 200976, 'image/jpeg', 'a:3:{s:8:\"creation\";s:25:\"2013-07-09T17:46:51+02:00\";s:5:\"width\";i:2169;s:6:\"height\";i:779;}');
INSERT INTO`tbl_entries_data_47` (`id`, `entry_id`, `file`, `size`, `mimetype`, `meta`) VALUES (30, 79, '/Afbeeldingen/berichten/groepsfoto_2009.jpg', 2176617, 'image/jpeg', 'a:3:{s:8:\"creation\";s:25:\"2013-07-09T17:51:22+02:00\";s:5:\"width\";i:3809;s:6:\"height\";i:1618;}');
INSERT INTO`tbl_entries_data_47` (`id`, `entry_id`, `file`, `size`, `mimetype`, `meta`) VALUES (29, 88, '/Afbeeldingen/berichten/legertenten.jpg', 636253, 'image/jpeg', 'a:3:{s:8:\"creation\";s:25:\"2013-07-09T17:42:19+02:00\";s:5:\"width\";i:1600;s:6:\"height\";i:1200;}');

-- *** STRUCTURE:`tbl_entries_data_48` ***
DROP TABLE IF EXISTS`tbl_entries_data_48`;
CREATE TABLE`tbl_entries_data_48` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) unsigned NOT NULL,
  `value` mediumtext COLLATE utf8_unicode_ci,
  `value_formatted` mediumtext COLLATE utf8_unicode_ci,
  PRIMARY KEY (`id`),
  UNIQUE KEY `entry_id` (`entry_id`),
  FULLTEXT KEY `value` (`value`)
) ENGINE=MyISAM AUTO_INCREMENT=31 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- *** DATA:`tbl_entries_data_48` ***
INSERT INTO`tbl_entries_data_48` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (28, 20, '<p><b>Prijzen</b></p><p>Klein kamp(kapoenen & welka\'s) €120<span><br></span><span>Groot kamp(jonggivers & givers) €120<span><br></span><span>Jin kamp €x</span></span></p>\r\n', '<p><b>Prijzen</b></p><p>Klein kamp(kapoenen &amp; welka\'s) €120<span><br/></span><span>Groot kamp(jonggivers &amp; givers) €120<span><br/></span><span>Jin kamp €x</span></span></p>');
INSERT INTO`tbl_entries_data_48` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (27, 77, '<p>Inschrijven kan op de openingsBBQ in september.</p>', '<p>Inschrijven kan op de openingsBBQ in september.</p>');
INSERT INTO`tbl_entries_data_48` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (25, 78, '<p>Antwandelen gaat dit jaar door van ...</p>', '<p>Antwandelen gaat dit jaar door van ...</p>');
INSERT INTO`tbl_entries_data_48` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (30, 79, '<p>Bezorg het geld bij iemand van de leiding.</p>', '<p>Bezorg het geld bij iemand van de leiding.</p>');
INSERT INTO`tbl_entries_data_48` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (29, 88, '<p><b>Prijzen</b></p><p>Klein kamp(kapoenen & welka\'s) €120<span><br></span><span>Groot kamp(jonggivers & givers) €120<span><br></span><span>Jin kamp €x</span></span></p>\r\n', '<p><b>Prijzen</b></p><p>Klein kamp(kapoenen &amp; welka\'s) €120<span><br/></span><span>Groot kamp(jonggivers &amp; givers) €120<span><br/></span><span>Jin kamp €x</span></span></p>');

-- *** STRUCTURE:`tbl_entries_data_50` ***
DROP TABLE IF EXISTS`tbl_entries_data_50`;
CREATE TABLE`tbl_entries_data_50` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) unsigned NOT NULL,
  `handle` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `value` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `entry_id` (`entry_id`),
  KEY `handle` (`handle`),
  KEY `value` (`value`)
) ENGINE=MyISAM AUTO_INCREMENT=70 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- *** DATA:`tbl_entries_data_50` ***
INSERT INTO`tbl_entries_data_50` (`id`, `entry_id`, `handle`, `value`) VALUES (39, 12, 29, 29);
INSERT INTO`tbl_entries_data_50` (`id`, `entry_id`, `handle`, `value`) VALUES (40, 89, 5, 5);
INSERT INTO`tbl_entries_data_50` (`id`, `entry_id`, `handle`, `value`) VALUES (36, 90, 5, 5);
INSERT INTO`tbl_entries_data_50` (`id`, `entry_id`, `handle`, `value`) VALUES (32, 91, 114, 114);
INSERT INTO`tbl_entries_data_50` (`id`, `entry_id`, `handle`, `value`) VALUES (33, 92, 1, 1);
INSERT INTO`tbl_entries_data_50` (`id`, `entry_id`, `handle`, `value`) VALUES (38, 93, 12, 12);
INSERT INTO`tbl_entries_data_50` (`id`, `entry_id`, `handle`, `value`) VALUES (41, 94, 25, 25);
INSERT INTO`tbl_entries_data_50` (`id`, `entry_id`, `handle`, `value`) VALUES (42, 95, 87, 87);
INSERT INTO`tbl_entries_data_50` (`id`, `entry_id`, `handle`, `value`) VALUES (43, 96, 104, 104);
INSERT INTO`tbl_entries_data_50` (`id`, `entry_id`, `handle`, `value`) VALUES (44, 97, 11, 11);
INSERT INTO`tbl_entries_data_50` (`id`, `entry_id`, `handle`, `value`) VALUES (45, 98, 22, 22);
INSERT INTO`tbl_entries_data_50` (`id`, `entry_id`, `handle`, `value`) VALUES (46, 99, 162, 162);
INSERT INTO`tbl_entries_data_50` (`id`, `entry_id`, `handle`, `value`) VALUES (47, 100, 12, 12);
INSERT INTO`tbl_entries_data_50` (`id`, `entry_id`, `handle`, `value`) VALUES (48, 101, 3, 3);
INSERT INTO`tbl_entries_data_50` (`id`, `entry_id`, `handle`, `value`) VALUES (49, 102, 3, 3);
INSERT INTO`tbl_entries_data_50` (`id`, `entry_id`, `handle`, `value`) VALUES (53, 103, 25, 25);
INSERT INTO`tbl_entries_data_50` (`id`, `entry_id`, `handle`, `value`) VALUES (54, 104, 12, 12);
INSERT INTO`tbl_entries_data_50` (`id`, `entry_id`, `handle`, `value`) VALUES (55, 105, 14, 14);
INSERT INTO`tbl_entries_data_50` (`id`, `entry_id`, `handle`, `value`) VALUES (56, 106, 31, 31);
INSERT INTO`tbl_entries_data_50` (`id`, `entry_id`, `handle`, `value`) VALUES (57, 107, 35, 35);
INSERT INTO`tbl_entries_data_50` (`id`, `entry_id`, `handle`, `value`) VALUES (58, 108, 112, 112);
INSERT INTO`tbl_entries_data_50` (`id`, `entry_id`, `handle`, `value`) VALUES (64, 109, 79, 79);
INSERT INTO`tbl_entries_data_50` (`id`, `entry_id`, `handle`, `value`) VALUES (60, 110, 10, 10);
INSERT INTO`tbl_entries_data_50` (`id`, `entry_id`, `handle`, `value`) VALUES (61, 111, 21, 21);
INSERT INTO`tbl_entries_data_50` (`id`, `entry_id`, `handle`, `value`) VALUES (62, 112, 15, 15);
INSERT INTO`tbl_entries_data_50` (`id`, `entry_id`, `handle`, `value`) VALUES (65, 113, 22, 22);
INSERT INTO`tbl_entries_data_50` (`id`, `entry_id`, `handle`, `value`) VALUES (66, 114, 26, 26);
INSERT INTO`tbl_entries_data_50` (`id`, `entry_id`, `handle`, `value`) VALUES (67, 115, 45, 45);
INSERT INTO`tbl_entries_data_50` (`id`, `entry_id`, `handle`, `value`) VALUES (68, 116, 75, 75);
INSERT INTO`tbl_entries_data_50` (`id`, `entry_id`, `handle`, `value`) VALUES (69, 117, 16, 16);

-- *** STRUCTURE:`tbl_entries_data_51` ***
DROP TABLE IF EXISTS`tbl_entries_data_51`;
CREATE TABLE`tbl_entries_data_51` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) unsigned NOT NULL,
  `handle` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `value` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `entry_id` (`entry_id`),
  KEY `handle` (`handle`),
  KEY `value` (`value`)
) ENGINE=MyISAM AUTO_INCREMENT=70 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- *** DATA:`tbl_entries_data_51` ***
INSERT INTO`tbl_entries_data_51` (`id`, `entry_id`, `handle`, `value`) VALUES (39, 12, 'antwerpen', 'Antwerpen');
INSERT INTO`tbl_entries_data_51` (`id`, `entry_id`, `handle`, `value`) VALUES (40, 89, 'antwerpen', 'Antwerpen');
INSERT INTO`tbl_entries_data_51` (`id`, `entry_id`, `handle`, `value`) VALUES (36, 90, 'antwerpen', 'Antwerpen');
INSERT INTO`tbl_entries_data_51` (`id`, `entry_id`, `handle`, `value`) VALUES (32, 91, 'berchem', 'Berchem');
INSERT INTO`tbl_entries_data_51` (`id`, `entry_id`, `handle`, `value`) VALUES (33, 92, 'antwerpen', 'Antwerpen');
INSERT INTO`tbl_entries_data_51` (`id`, `entry_id`, `handle`, `value`) VALUES (38, 93, 'antwerpen', 'Antwerpen');
INSERT INTO`tbl_entries_data_51` (`id`, `entry_id`, `handle`, `value`) VALUES (41, 94, 'antwerpen', 'Antwerpen');
INSERT INTO`tbl_entries_data_51` (`id`, `entry_id`, `handle`, `value`) VALUES (42, 95, 'wilrijk', 'Wilrijk');
INSERT INTO`tbl_entries_data_51` (`id`, `entry_id`, `handle`, `value`) VALUES (43, 96, 'antwerpen', 'Antwerpen');
INSERT INTO`tbl_entries_data_51` (`id`, `entry_id`, `handle`, `value`) VALUES (44, 97, 'berchem', 'Berchem');
INSERT INTO`tbl_entries_data_51` (`id`, `entry_id`, `handle`, `value`) VALUES (45, 98, 'antwerpen', 'Antwerpen');
INSERT INTO`tbl_entries_data_51` (`id`, `entry_id`, `handle`, `value`) VALUES (46, 99, 'antwerpen', 'Antwerpen');
INSERT INTO`tbl_entries_data_51` (`id`, `entry_id`, `handle`, `value`) VALUES (47, 100, 'antwerpen', 'Antwerpen');
INSERT INTO`tbl_entries_data_51` (`id`, `entry_id`, `handle`, `value`) VALUES (48, 101, 'antwerpen', 'Antwerpen');
INSERT INTO`tbl_entries_data_51` (`id`, `entry_id`, `handle`, `value`) VALUES (49, 102, 'antwerpen', 'Antwerpen');
INSERT INTO`tbl_entries_data_51` (`id`, `entry_id`, `handle`, `value`) VALUES (53, 103, 'borgerhout', 'Borgerhout');
INSERT INTO`tbl_entries_data_51` (`id`, `entry_id`, `handle`, `value`) VALUES (54, 104, 'antwerpen', 'Antwerpen');
INSERT INTO`tbl_entries_data_51` (`id`, `entry_id`, `handle`, `value`) VALUES (55, 105, 'antwerpen', 'Antwerpen');
INSERT INTO`tbl_entries_data_51` (`id`, `entry_id`, `handle`, `value`) VALUES (56, 106, 'antwerpen', 'Antwerpen');
INSERT INTO`tbl_entries_data_51` (`id`, `entry_id`, `handle`, `value`) VALUES (57, 107, 'antwerpen', 'Antwerpen');
INSERT INTO`tbl_entries_data_51` (`id`, `entry_id`, `handle`, `value`) VALUES (58, 108, 'antwerpen', 'Antwerpen');
INSERT INTO`tbl_entries_data_51` (`id`, `entry_id`, `handle`, `value`) VALUES (64, 109, 'borgerhout', 'Borgerhout');
INSERT INTO`tbl_entries_data_51` (`id`, `entry_id`, `handle`, `value`) VALUES (60, 110, 'antwerpen', 'Antwerpen');
INSERT INTO`tbl_entries_data_51` (`id`, `entry_id`, `handle`, `value`) VALUES (61, 111, 'antwerpen', 'Antwerpen');
INSERT INTO`tbl_entries_data_51` (`id`, `entry_id`, `handle`, `value`) VALUES (62, 112, 'berchem', 'Berchem');
INSERT INTO`tbl_entries_data_51` (`id`, `entry_id`, `handle`, `value`) VALUES (65, 113, 'borgerhout', 'Borgerhout');
INSERT INTO`tbl_entries_data_51` (`id`, `entry_id`, `handle`, `value`) VALUES (66, 114, 'berchem', 'Berchem');
INSERT INTO`tbl_entries_data_51` (`id`, `entry_id`, `handle`, `value`) VALUES (67, 115, 'berchem', 'Berchem');
INSERT INTO`tbl_entries_data_51` (`id`, `entry_id`, `handle`, `value`) VALUES (68, 116, 'berchem', 'Berchem');
INSERT INTO`tbl_entries_data_51` (`id`, `entry_id`, `handle`, `value`) VALUES (69, 117, 'berchem', 'Berchem');

-- *** STRUCTURE:`tbl_entries_data_52` ***
DROP TABLE IF EXISTS`tbl_entries_data_52`;
CREATE TABLE`tbl_entries_data_52` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) unsigned NOT NULL,
  `handle` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `value` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `entry_id` (`entry_id`),
  KEY `handle` (`handle`),
  KEY `value` (`value`)
) ENGINE=MyISAM AUTO_INCREMENT=70 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- *** DATA:`tbl_entries_data_52` ***
INSERT INTO`tbl_entries_data_52` (`id`, `entry_id`, `handle`, `value`) VALUES (39, 12, 2018, 2018);
INSERT INTO`tbl_entries_data_52` (`id`, `entry_id`, `handle`, `value`) VALUES (40, 89, 2018, 2018);
INSERT INTO`tbl_entries_data_52` (`id`, `entry_id`, `handle`, `value`) VALUES (36, 90, 2018, 2018);
INSERT INTO`tbl_entries_data_52` (`id`, `entry_id`, `handle`, `value`) VALUES (32, 91, 2600, 2600);
INSERT INTO`tbl_entries_data_52` (`id`, `entry_id`, `handle`, `value`) VALUES (33, 92, 2050, 2050);
INSERT INTO`tbl_entries_data_52` (`id`, `entry_id`, `handle`, `value`) VALUES (38, 93, 2018, 2018);
INSERT INTO`tbl_entries_data_52` (`id`, `entry_id`, `handle`, `value`) VALUES (41, 94, 2018, 2018);
INSERT INTO`tbl_entries_data_52` (`id`, `entry_id`, `handle`, `value`) VALUES (42, 95, 2610, 2610);
INSERT INTO`tbl_entries_data_52` (`id`, `entry_id`, `handle`, `value`) VALUES (43, 96, 2018, 2018);
INSERT INTO`tbl_entries_data_52` (`id`, `entry_id`, `handle`, `value`) VALUES (44, 97, 2600, 2600);
INSERT INTO`tbl_entries_data_52` (`id`, `entry_id`, `handle`, `value`) VALUES (45, 98, 2018, 2018);
INSERT INTO`tbl_entries_data_52` (`id`, `entry_id`, `handle`, `value`) VALUES (46, 99, 2018, 2018);
INSERT INTO`tbl_entries_data_52` (`id`, `entry_id`, `handle`, `value`) VALUES (47, 100, 2018, 2018);
INSERT INTO`tbl_entries_data_52` (`id`, `entry_id`, `handle`, `value`) VALUES (48, 101, 2018, 2018);
INSERT INTO`tbl_entries_data_52` (`id`, `entry_id`, `handle`, `value`) VALUES (49, 102, 2018, 2018);
INSERT INTO`tbl_entries_data_52` (`id`, `entry_id`, `handle`, `value`) VALUES (53, 103, 2140, 2140);
INSERT INTO`tbl_entries_data_52` (`id`, `entry_id`, `handle`, `value`) VALUES (54, 104, 2018, 2018);
INSERT INTO`tbl_entries_data_52` (`id`, `entry_id`, `handle`, `value`) VALUES (55, 105, 2018, 2018);
INSERT INTO`tbl_entries_data_52` (`id`, `entry_id`, `handle`, `value`) VALUES (56, 106, 2018, 2018);
INSERT INTO`tbl_entries_data_52` (`id`, `entry_id`, `handle`, `value`) VALUES (57, 107, 2018, 2018);
INSERT INTO`tbl_entries_data_52` (`id`, `entry_id`, `handle`, `value`) VALUES (58, 108, 2018, 2018);
INSERT INTO`tbl_entries_data_52` (`id`, `entry_id`, `handle`, `value`) VALUES (64, 109, 2140, 2140);
INSERT INTO`tbl_entries_data_52` (`id`, `entry_id`, `handle`, `value`) VALUES (60, 110, 2018, 2018);
INSERT INTO`tbl_entries_data_52` (`id`, `entry_id`, `handle`, `value`) VALUES (61, 111, 2018, 2018);
INSERT INTO`tbl_entries_data_52` (`id`, `entry_id`, `handle`, `value`) VALUES (62, 112, 2600, 2600);
INSERT INTO`tbl_entries_data_52` (`id`, `entry_id`, `handle`, `value`) VALUES (65, 113, 2140, 2140);
INSERT INTO`tbl_entries_data_52` (`id`, `entry_id`, `handle`, `value`) VALUES (66, 114, 2600, 2600);
INSERT INTO`tbl_entries_data_52` (`id`, `entry_id`, `handle`, `value`) VALUES (67, 115, 2600, 2600);
INSERT INTO`tbl_entries_data_52` (`id`, `entry_id`, `handle`, `value`) VALUES (68, 116, 2600, 2600);
INSERT INTO`tbl_entries_data_52` (`id`, `entry_id`, `handle`, `value`) VALUES (69, 117, 2600, 2600);

-- *** STRUCTURE:`tbl_entries_data_58` ***
DROP TABLE IF EXISTS`tbl_entries_data_58`;
CREATE TABLE`tbl_entries_data_58` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) unsigned NOT NULL,
  `handle` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `value` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `entry_id` (`entry_id`),
  KEY `handle` (`handle`),
  KEY `value` (`value`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- *** DATA:`tbl_entries_data_58` ***
INSERT INTO`tbl_entries_data_58` (`id`, `entry_id`, `handle`, `value`) VALUES (5, 35, 'algemeen', 'Algemeen');
INSERT INTO`tbl_entries_data_58` (`id`, `entry_id`, `handle`, `value`) VALUES (2, 36, 'inschrijven', 'Inschrijven');
INSERT INTO`tbl_entries_data_58` (`id`, `entry_id`, `handle`, `value`) VALUES (3, 37, 'website', 'Website');
INSERT INTO`tbl_entries_data_58` (`id`, `entry_id`, `handle`, `value`) VALUES (4, 38, 'uniform', 'Uniform');
INSERT INTO`tbl_entries_data_58` (`id`, `entry_id`, `handle`, `value`) VALUES (6, 86, 'vzw', 'VZW');

-- *** STRUCTURE:`tbl_entries_data_59` ***
DROP TABLE IF EXISTS`tbl_entries_data_59`;
CREATE TABLE`tbl_entries_data_59` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) unsigned NOT NULL,
  `file` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `size` int(11) unsigned DEFAULT NULL,
  `mimetype` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `meta` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `entry_id` (`entry_id`),
  KEY `file` (`file`),
  KEY `mimetype` (`mimetype`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- *** DATA:`tbl_entries_data_59` ***
INSERT INTO`tbl_entries_data_59` (`id`, `entry_id`, `file`, `size`, `mimetype`, `meta`) VALUES (5, 35, '/Afbeeldingen/FAQ/infinity.png', 8635, 'image/png', 'a:3:{s:8:\"creation\";s:25:\"2013-07-08T16:02:47+02:00\";s:5:\"width\";i:200;s:6:\"height\";i:200;}');
INSERT INTO`tbl_entries_data_59` (`id`, `entry_id`, `file`, `size`, `mimetype`, `meta`) VALUES (2, 36, '/Afbeeldingen/FAQ/clipboard.png', 4397, 'image/png', 'a:3:{s:8:\"creation\";s:25:\"2013-07-08T16:03:03+02:00\";s:5:\"width\";i:200;s:6:\"height\";i:200;}');
INSERT INTO`tbl_entries_data_59` (`id`, `entry_id`, `file`, `size`, `mimetype`, `meta`) VALUES (3, 37, '/Afbeeldingen/FAQ/imac.png', 7843, 'image/png', 'a:3:{s:8:\"creation\";s:25:\"2013-07-08T16:03:16+02:00\";s:5:\"width\";i:940;s:6:\"height\";i:778;}');
INSERT INTO`tbl_entries_data_59` (`id`, `entry_id`, `file`, `size`, `mimetype`, `meta`) VALUES (4, 38, '/Afbeeldingen/FAQ/bag.png', 4979, 'image/png', 'a:3:{s:8:\"creation\";s:25:\"2013-07-08T16:03:37+02:00\";s:5:\"width\";i:200;s:6:\"height\";i:200;}');
INSERT INTO`tbl_entries_data_59` (`id`, `entry_id`, `file`, `size`, `mimetype`, `meta`) VALUES (6, 86, '/Afbeeldingen/FAQ/colors.png', 10032, 'image/png', 'a:3:{s:8:\"creation\";s:25:\"2013-08-21T17:20:24+02:00\";s:5:\"width\";i:200;s:6:\"height\";i:200;}');

-- *** STRUCTURE:`tbl_entries_data_60` ***
DROP TABLE IF EXISTS`tbl_entries_data_60`;
CREATE TABLE`tbl_entries_data_60` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) unsigned NOT NULL,
  `handle` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `value` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `entry_id` (`entry_id`),
  KEY `handle` (`handle`),
  KEY `value` (`value`)
) ENGINE=MyISAM AUTO_INCREMENT=12 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- *** DATA:`tbl_entries_data_60` ***
INSERT INTO`tbl_entries_data_60` (`id`, `entry_id`, `handle`, `value`) VALUES (8, 16, 'mei', 'Mei');
INSERT INTO`tbl_entries_data_60` (`id`, `entry_id`, `handle`, `value`) VALUES (11, 57, 'juni', 'Juni');

-- *** STRUCTURE:`tbl_entries_data_63` ***
DROP TABLE IF EXISTS`tbl_entries_data_63`;
CREATE TABLE`tbl_entries_data_63` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) unsigned NOT NULL,
  `file` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `size` int(11) unsigned DEFAULT NULL,
  `mimetype` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `meta` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `entry_id` (`entry_id`),
  KEY `file` (`file`),
  KEY `mimetype` (`mimetype`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- *** DATA:`tbl_entries_data_63` ***
INSERT INTO`tbl_entries_data_63` (`id`, `entry_id`, `file`, `size`, `mimetype`, `meta`) VALUES (1, 53, '/Afbeeldingen/maandblad/slide-03.jpg', 518222, 'image/jpeg', 'a:3:{s:8:\"creation\";s:25:\"2013-07-08T20:09:56+02:00\";s:5:\"width\";i:2843;s:6:\"height\";i:1350;}');
INSERT INTO`tbl_entries_data_63` (`id`, `entry_id`, `file`, `size`, `mimetype`, `meta`) VALUES (2, 54, '/Afbeeldingen/maandblad/slide-03_1.jpg', 518222, 'image/jpeg', 'a:3:{s:8:\"creation\";s:25:\"2013-07-08T20:10:08+02:00\";s:5:\"width\";i:2843;s:6:\"height\";i:1350;}');
INSERT INTO`tbl_entries_data_63` (`id`, `entry_id`, `file`, `size`, `mimetype`, `meta`) VALUES (3, 55, '/Afbeeldingen/maandblad/slide-02.jpg', 279088, 'image/jpeg', 'a:3:{s:8:\"creation\";s:25:\"2013-07-08T20:10:28+02:00\";s:5:\"width\";i:2755;s:6:\"height\";i:1252;}');
INSERT INTO`tbl_entries_data_63` (`id`, `entry_id`, `file`, `size`, `mimetype`, `meta`) VALUES (4, 58, '/Afbeeldingen/maandblad/slide-02_1.jpg', 279088, 'image/jpeg', 'a:3:{s:8:\"creation\";s:25:\"2013-07-08T21:12:40+02:00\";s:5:\"width\";i:2755;s:6:\"height\";i:1252;}');

-- *** STRUCTURE:`tbl_entries_data_65` ***
DROP TABLE IF EXISTS`tbl_entries_data_65`;
CREATE TABLE`tbl_entries_data_65` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) unsigned NOT NULL,
  `value` mediumtext COLLATE utf8_unicode_ci,
  `value_formatted` mediumtext COLLATE utf8_unicode_ci,
  PRIMARY KEY (`id`),
  UNIQUE KEY `entry_id` (`entry_id`),
  FULLTEXT KEY `value` (`value`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- *** DATA:`tbl_entries_data_65` ***
INSERT INTO`tbl_entries_data_65` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (7, 16, '<p><p>Beste ouders, leden en leiding, De lente komt eraan en dat merken we in de drukke bezigheden op de scouts. Op <b>9 maart</b> geven de oud-leiding een Mastfuif in het zaaltje van de Zurenborger. Een week later, op <b>16 maart</b>, kan je lekkere <b>spaghetti</b> van de jins komen eten om hun buitenlandse reis te sponsoren. <b>24 maart</b> is het <b>geen scouts</b>, want de leiding gaat op weekend. Ook op <b>29 maart en 7 april</b> is het geen scouts door de Paasvakantie. De volgende datum die je in het groot in de agenda moet schrijven, is het<b>groepsweekend</b>, dat gaat door van <b>19 tot 21 april</b>. Er volgt een brief met meer informatie in de loop van maart.</p><p>En we blikken nog wat verder vooruit: op <b>zaterdag 4 mei</b> gaat onze tweede versie van <b>Ant\'wandelen</b> door. Ant\'wandelen is een actieve stadsrally waaraan je kan deelnemen met vrienden of met je gezin. Je schrijft je in op een bepaald startuur voor een bepaalde moeilijkheidsgraad met een groepje van 4 a 6 mensen. In elke moeilijkheidsgraad vallen er mooie prijzen te verdienen en bij aankomst kan je nog van een drankje genieten op het scoutslokaal. Binnenkort zullen jullie een poster meekrijgen, we willen dan ook vragen deze aan het raam te hangen en hopen jullie allemaal te verwelkomen op 4 mei!</p><p>Tot slot willen we aan alle leden vragen om zondag in uniform naar de scouts te komen, zo zijn we als groep makkelijk herkenbaar. Een uniform bestaat uit:<b>das</b>, scouts-T-shirt, blauwe jeansbroek en scoutshemd. Een das en T-shirt kan je voor of na een vergadering in het scoutswinkeltje kopen. Een scoutshemd kan je in de Hopper-scoutswinkels kopen. Soms zijn er tweedehands exemplaren te koop in het scoutswinkeltje. Vergeet ook zeker niet je naam overal in te zetten!</p><p>De groepsploeg, Wouter * Stina * Esse</p></p>\r\n', '<p><p>Beste ouders, leden en leiding, De lente komt eraan en dat merken we in de drukke bezigheden op de scouts. Op <b>9 maart</b> geven de oud-leiding een Mastfuif in het zaaltje van de Zurenborger. Een week later, op <b>16 maart</b>, kan je lekkere <b>spaghetti</b> van de jins komen eten om hun buitenlandse reis te sponsoren. <b>24 maart</b> is het <b>geen scouts</b>, want de leiding gaat op weekend. Ook op <b>29 maart en 7 april</b> is het geen scouts door de Paasvakantie. De volgende datum die je in het groot in de agenda moet schrijven, is het<b>groepsweekend</b>, dat gaat door van <b>19 tot 21 april</b>. Er volgt een brief met meer informatie in de loop van maart.</p><p>En we blikken nog wat verder vooruit: op <b>zaterdag 4 mei</b> gaat onze tweede versie van <b>Ant\'wandelen</b> door. Ant\'wandelen is een actieve stadsrally waaraan je kan deelnemen met vrienden of met je gezin. Je schrijft je in op een bepaald startuur voor een bepaalde moeilijkheidsgraad met een groepje van 4 a 6 mensen. In elke moeilijkheidsgraad vallen er mooie prijzen te verdienen en bij aankomst kan je nog van een drankje genieten op het scoutslokaal. Binnenkort zullen jullie een poster meekrijgen, we willen dan ook vragen deze aan het raam te hangen en hopen jullie allemaal te verwelkomen op 4 mei!</p><p>Tot slot willen we aan alle leden vragen om zondag in uniform naar de scouts te komen, zo zijn we als groep makkelijk herkenbaar. Een uniform bestaat uit:<b>das</b>, scouts-T-shirt, blauwe jeansbroek en scoutshemd. Een das en T-shirt kan je voor of na een vergadering in het scoutswinkeltje kopen. Een scoutshemd kan je in de Hopper-scoutswinkels kopen. Soms zijn er tweedehands exemplaren te koop in het scoutswinkeltje. Vergeet ook zeker niet je naam overal in te zetten!</p><p>De groepsploeg, Wouter * Stina * Esse</p></p>\r\n');
INSERT INTO`tbl_entries_data_65` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (10, 57, '<p></p><p>Beste ouders, leden en leiding, De lente komt eraan en dat merken we in de drukke bezigheden op de scouts. Op&nbsp;<b>9 maart</b>&nbsp;geven de oud-leiding een Mastfuif in het zaaltje van de Zurenborger. Een week later, op&nbsp;<b>16 maart</b>, kan je lekkere&nbsp;<b>spaghetti</b>&nbsp;van de jins komen eten om hun buitenlandse reis te sponsoren.&nbsp;<b>24 maart</b>&nbsp;is het&nbsp;<b>geen scouts</b>, want de leiding gaat op weekend. Ook op&nbsp;<b>29 maart en 7 april</b>&nbsp;is het geen scouts door de Paasvakantie. De volgende datum die je in het groot in de agenda moet schrijven, is het<b>groepsweekend</b>, dat gaat door van&nbsp;<b>19 tot 21 april</b>. Er volgt een brief met meer informatie in de loop van maart.</p><p>En we blikken nog wat verder vooruit: op&nbsp;<b>zaterdag 4 mei</b>&nbsp;gaat onze tweede versie van&nbsp;<b>Ant\'wandelen</b>&nbsp;door. Ant\'wandelen is een actieve stadsrally waaraan je kan deelnemen met vrienden of met je gezin. Je schrijft je in op een bepaald startuur voor een bepaalde moeilijkheidsgraad met een groepje van 4 a 6 mensen. In elke moeilijkheidsgraad vallen er mooie prijzen te verdienen en bij aankomst kan je nog van een drankje genieten op het scoutslokaal. Binnenkort zullen jullie een poster meekrijgen, we willen dan ook vragen deze aan het raam te hangen en hopen jullie allemaal te verwelkomen op 4 mei!</p><p>Tot slot willen we aan alle leden vragen om zondag in uniform naar de scouts te komen, zo zijn we als groep makkelijk herkenbaar. Een uniform bestaat uit:<b>das</b>, scouts-T-shirt, blauwe jeansbroek en scoutshemd. Een das en T-shirt kan je voor of na een vergadering in het scoutswinkeltje kopen. Een scoutshemd kan je in de Hopper-scoutswinkels kopen. Soms zijn er tweedehands exemplaren te koop in het scoutswinkeltje. Vergeet ook zeker niet je naam overal in te zetten!</p><p>De groepsploeg, Wouter * Stina * Esse</p><p></p>\r\n', '<p></p><p>Beste ouders, leden en leiding, De lente komt eraan en dat merken we in de drukke bezigheden op de scouts. Op&#160;<b>9 maart</b>&#160;geven de oud-leiding een Mastfuif in het zaaltje van de Zurenborger. Een week later, op&#160;<b>16 maart</b>, kan je lekkere&#160;<b>spaghetti</b>&#160;van de jins komen eten om hun buitenlandse reis te sponsoren.&#160;<b>24 maart</b>&#160;is het&#160;<b>geen scouts</b>, want de leiding gaat op weekend. Ook op&#160;<b>29 maart en 7 april</b>&#160;is het geen scouts door de Paasvakantie. De volgende datum die je in het groot in de agenda moet schrijven, is het<b>groepsweekend</b>, dat gaat door van&#160;<b>19 tot 21 april</b>. Er volgt een brief met meer informatie in de loop van maart.</p><p>En we blikken nog wat verder vooruit: op&#160;<b>zaterdag 4 mei</b>&#160;gaat onze tweede versie van&#160;<b>Ant\'wandelen</b>&#160;door. Ant\'wandelen is een actieve stadsrally waaraan je kan deelnemen met vrienden of met je gezin. Je schrijft je in op een bepaald startuur voor een bepaalde moeilijkheidsgraad met een groepje van 4 a 6 mensen. In elke moeilijkheidsgraad vallen er mooie prijzen te verdienen en bij aankomst kan je nog van een drankje genieten op het scoutslokaal. Binnenkort zullen jullie een poster meekrijgen, we willen dan ook vragen deze aan het raam te hangen en hopen jullie allemaal te verwelkomen op 4 mei!</p><p>Tot slot willen we aan alle leden vragen om zondag in uniform naar de scouts te komen, zo zijn we als groep makkelijk herkenbaar. Een uniform bestaat uit:<b>das</b>, scouts-T-shirt, blauwe jeansbroek en scoutshemd. Een das en T-shirt kan je voor of na een vergadering in het scoutswinkeltje kopen. Een scoutshemd kan je in de Hopper-scoutswinkels kopen. Soms zijn er tweedehands exemplaren te koop in het scoutswinkeltje. Vergeet ook zeker niet je naam overal in te zetten!</p><p>De groepsploeg, Wouter * Stina * Esse</p><p></p>\r\n');

-- *** STRUCTURE:`tbl_entries_data_66` ***
DROP TABLE IF EXISTS`tbl_entries_data_66`;
CREATE TABLE`tbl_entries_data_66` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) unsigned NOT NULL,
  `handle` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `value` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `entry_id` (`entry_id`),
  KEY `handle` (`handle`),
  KEY `value` (`value`)
) ENGINE=MyISAM AUTO_INCREMENT=14 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- *** DATA:`tbl_entries_data_66` ***
INSERT INTO`tbl_entries_data_66` (`id`, `entry_id`, `handle`, `value`) VALUES (13, 17, 'scouts-zurenborg', 'Scouts Zurenborg');

-- *** STRUCTURE:`tbl_entries_data_67` ***
DROP TABLE IF EXISTS`tbl_entries_data_67`;
CREATE TABLE`tbl_entries_data_67` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) unsigned NOT NULL,
  `handle` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `value` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `entry_id` (`entry_id`),
  KEY `handle` (`handle`),
  KEY `value` (`value`)
) ENGINE=MyISAM AUTO_INCREMENT=14 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- *** DATA:`tbl_entries_data_67` ***
INSERT INTO`tbl_entries_data_67` (`id`, `entry_id`, `handle`, `value`) VALUES (13, 17, 'scouts-gidsen-20-72-zurenborg-roelandgroep', 'Scouts-Gidsen 20-72 Zurenborg \"Roelandgroep\"');

-- *** STRUCTURE:`tbl_entries_data_68` ***
DROP TABLE IF EXISTS`tbl_entries_data_68`;
CREATE TABLE`tbl_entries_data_68` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) unsigned NOT NULL,
  `handle` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `value` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `entry_id` (`entry_id`),
  KEY `handle` (`handle`),
  KEY `value` (`value`)
) ENGINE=MyISAM AUTO_INCREMENT=14 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- *** DATA:`tbl_entries_data_68` ***
INSERT INTO`tbl_entries_data_68` (`id`, `entry_id`, `handle`, `value`) VALUES (13, 17, 'lange-van-ruusbroecstraat-43a-2018-antwerpen', 'Lange Van Ruusbroecstraat 43A 2018 Antwerpen');

-- *** STRUCTURE:`tbl_entries_data_69` ***
DROP TABLE IF EXISTS`tbl_entries_data_69`;
CREATE TABLE`tbl_entries_data_69` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) unsigned NOT NULL,
  `handle` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `value` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `entry_id` (`entry_id`),
  KEY `handle` (`handle`),
  KEY `value` (`value`)
) ENGINE=MyISAM AUTO_INCREMENT=14 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- *** DATA:`tbl_entries_data_69` ***
INSERT INTO`tbl_entries_data_69` (`id`, `entry_id`, `handle`, `value`) VALUES (13, 17, 51208252, 51.208252);

-- *** STRUCTURE:`tbl_entries_data_70` ***
DROP TABLE IF EXISTS`tbl_entries_data_70`;
CREATE TABLE`tbl_entries_data_70` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) unsigned NOT NULL,
  `handle` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `value` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `entry_id` (`entry_id`),
  KEY `handle` (`handle`),
  KEY `value` (`value`)
) ENGINE=MyISAM AUTO_INCREMENT=14 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- *** DATA:`tbl_entries_data_70` ***
INSERT INTO`tbl_entries_data_70` (`id`, `entry_id`, `handle`, `value`) VALUES (13, 17, 4427459, 4.427459);

-- *** STRUCTURE:`tbl_entries_data_71` ***
DROP TABLE IF EXISTS`tbl_entries_data_71`;
CREATE TABLE`tbl_entries_data_71` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) unsigned NOT NULL,
  `value` mediumtext COLLATE utf8_unicode_ci,
  `value_formatted` mediumtext COLLATE utf8_unicode_ci,
  PRIMARY KEY (`id`),
  UNIQUE KEY `entry_id` (`entry_id`),
  FULLTEXT KEY `value` (`value`)
) ENGINE=MyISAM AUTO_INCREMENT=14 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- *** DATA:`tbl_entries_data_71` ***
INSERT INTO`tbl_entries_data_71` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (13, 17, '<p>Meer inlichtingen kan men tijdens de vergaderingen verkrijgen om 09.30 uur. Buiten de uren van de scouts is dit mogelijk door te telefoneren naar \'Stina Lembrechts\'.<br></p>', '<p>Meer inlichtingen kan men tijdens de vergaderingen verkrijgen om 09.30 uur. Buiten de uren van de scouts is dit mogelijk door te telefoneren naar \'Stina Lembrechts\'.<br/></p>');

-- *** STRUCTURE:`tbl_entries_data_72` ***
DROP TABLE IF EXISTS`tbl_entries_data_72`;
CREATE TABLE`tbl_entries_data_72` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) unsigned NOT NULL,
  `value` mediumtext COLLATE utf8_unicode_ci,
  `value_formatted` mediumtext COLLATE utf8_unicode_ci,
  PRIMARY KEY (`id`),
  UNIQUE KEY `entry_id` (`entry_id`),
  FULLTEXT KEY `value` (`value`)
) ENGINE=MyISAM AUTO_INCREMENT=14 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- *** DATA:`tbl_entries_data_72` ***
INSERT INTO`tbl_entries_data_72` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (13, 17, '<p>Geen idee</p>', '<p>Geen idee</p>');

-- *** STRUCTURE:`tbl_entries_data_73` ***
DROP TABLE IF EXISTS`tbl_entries_data_73`;
CREATE TABLE`tbl_entries_data_73` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) unsigned NOT NULL,
  `file` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `size` int(11) unsigned DEFAULT NULL,
  `mimetype` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `meta` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `entry_id` (`entry_id`),
  KEY `file` (`file`),
  KEY `mimetype` (`mimetype`)
) ENGINE=MyISAM AUTO_INCREMENT=14 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- *** DATA:`tbl_entries_data_73` ***
INSERT INTO`tbl_entries_data_73` (`id`, `entry_id`, `file`, `size`, `mimetype`, `meta`) VALUES (13, 17, '/Afbeeldingen/andere/logo.png', 48140, 'image/png', 'a:3:{s:8:\"creation\";s:25:\"2013-07-08T00:28:44+02:00\";s:5:\"width\";i:491;s:6:\"height\";i:441;}');

-- *** STRUCTURE:`tbl_entries_data_76` ***
DROP TABLE IF EXISTS`tbl_entries_data_76`;
CREATE TABLE`tbl_entries_data_76` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) unsigned NOT NULL,
  `handle` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `value` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `entry_id` (`entry_id`),
  KEY `handle` (`handle`),
  KEY `value` (`value`)
) ENGINE=MyISAM AUTO_INCREMENT=14 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- *** DATA:`tbl_entries_data_76` ***
INSERT INTO`tbl_entries_data_76` (`id`, `entry_id`, `handle`, `value`) VALUES (13, 17, '068-2100343-29', '068-2100343-29');

-- *** STRUCTURE:`tbl_entries_data_77` ***
DROP TABLE IF EXISTS`tbl_entries_data_77`;
CREATE TABLE`tbl_entries_data_77` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) unsigned NOT NULL,
  `handle` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `value` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `entry_id` (`entry_id`),
  KEY `handle` (`handle`),
  KEY `value` (`value`)
) ENGINE=MyISAM AUTO_INCREMENT=26 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- *** DATA:`tbl_entries_data_77` ***

-- *** STRUCTURE:`tbl_entries_data_80` ***
DROP TABLE IF EXISTS`tbl_entries_data_80`;
CREATE TABLE`tbl_entries_data_80` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) unsigned NOT NULL,
  `value` enum('yes','no') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'yes',
  PRIMARY KEY (`id`),
  UNIQUE KEY `entry_id` (`entry_id`),
  KEY `value` (`value`)
) ENGINE=MyISAM AUTO_INCREMENT=26 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- *** DATA:`tbl_entries_data_80` ***

-- *** STRUCTURE:`tbl_entries_data_81` ***
DROP TABLE IF EXISTS`tbl_entries_data_81`;
CREATE TABLE`tbl_entries_data_81` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) unsigned NOT NULL,
  `file` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `size` int(11) unsigned DEFAULT NULL,
  `mimetype` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `meta` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `entry_id` (`entry_id`),
  KEY `file` (`file`),
  KEY `mimetype` (`mimetype`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- *** DATA:`tbl_entries_data_81` ***
INSERT INTO`tbl_entries_data_81` (`id`, `entry_id`, `file`, `size`, `mimetype`, `meta`) VALUES (1, 49, '/Afbeeldingen/achtergrond/slide-03.jpg', 518222, 'image/jpeg', 'a:3:{s:8:\"creation\";s:25:\"2013-07-08T18:04:55+02:00\";s:5:\"width\";i:2843;s:6:\"height\";i:1350;}');
INSERT INTO`tbl_entries_data_81` (`id`, `entry_id`, `file`, `size`, `mimetype`, `meta`) VALUES (4, 80, '/Afbeeldingen/achtergrond/dsc_0108.jpg', 1635976, 'image/jpeg', 'a:3:{s:8:\"creation\";s:25:\"2013-07-09T19:05:37+02:00\";s:5:\"width\";i:4154;s:6:\"height\";i:1694;}');
INSERT INTO`tbl_entries_data_81` (`id`, `entry_id`, `file`, `size`, `mimetype`, `meta`) VALUES (5, 81, '/Afbeeldingen/achtergrond/dsc_0102.jpg', 1676229, 'image/jpeg', 'a:3:{s:8:\"creation\";s:25:\"2013-07-09T19:05:48+02:00\";s:5:\"width\";i:4702;s:6:\"height\";i:1843;}');
INSERT INTO`tbl_entries_data_81` (`id`, `entry_id`, `file`, `size`, `mimetype`, `meta`) VALUES (6, 82, '/Afbeeldingen/achtergrond/dsc_0067.jpg', 1411493, 'image/jpeg', 'a:3:{s:8:\"creation\";s:25:\"2013-07-09T19:05:54+02:00\";s:5:\"width\";i:4529;s:6:\"height\";i:1311;}');
INSERT INTO`tbl_entries_data_81` (`id`, `entry_id`, `file`, `size`, `mimetype`, `meta`) VALUES (7, 83, '/Afbeeldingen/achtergrond/dsc_0055.jpg', 2146109, 'image/jpeg', 'a:3:{s:8:\"creation\";s:25:\"2013-07-09T19:05:59+02:00\";s:5:\"width\";i:4653;s:6:\"height\";i:1882;}');
INSERT INTO`tbl_entries_data_81` (`id`, `entry_id`, `file`, `size`, `mimetype`, `meta`) VALUES (8, 84, '/Afbeeldingen/achtergrond/dsc_0003.jpg', 1064699, 'image/jpeg', 'a:3:{s:8:\"creation\";s:25:\"2013-07-09T19:06:04+02:00\";s:5:\"width\";i:3622;s:6:\"height\";i:1078;}');

-- *** STRUCTURE:`tbl_entries_data_82` ***
DROP TABLE IF EXISTS`tbl_entries_data_82`;
CREATE TABLE`tbl_entries_data_82` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) unsigned NOT NULL,
  `value` mediumtext COLLATE utf8_unicode_ci,
  `value_formatted` mediumtext COLLATE utf8_unicode_ci,
  PRIMARY KEY (`id`),
  UNIQUE KEY `entry_id` (`entry_id`),
  FULLTEXT KEY `value` (`value`)
) ENGINE=MyISAM AUTO_INCREMENT=13 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- *** DATA:`tbl_entries_data_82` ***
INSERT INTO`tbl_entries_data_82` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (12, 17, 'cdd', NULL);

-- *** STRUCTURE:`tbl_entries_data_86` ***
DROP TABLE IF EXISTS`tbl_entries_data_86`;
CREATE TABLE`tbl_entries_data_86` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) unsigned NOT NULL,
  `value` enum('yes','no') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'no',
  PRIMARY KEY (`id`),
  UNIQUE KEY `entry_id` (`entry_id`),
  KEY `value` (`value`)
) ENGINE=MyISAM AUTO_INCREMENT=69 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- *** DATA:`tbl_entries_data_86` ***
INSERT INTO`tbl_entries_data_86` (`id`, `entry_id`, `value`) VALUES (38, 12, 'yes');
INSERT INTO`tbl_entries_data_86` (`id`, `entry_id`, `value`) VALUES (37, 93, 'yes');
INSERT INTO`tbl_entries_data_86` (`id`, `entry_id`, `value`) VALUES (39, 89, 'no');
INSERT INTO`tbl_entries_data_86` (`id`, `entry_id`, `value`) VALUES (35, 90, 'no');
INSERT INTO`tbl_entries_data_86` (`id`, `entry_id`, `value`) VALUES (31, 91, 'no');
INSERT INTO`tbl_entries_data_86` (`id`, `entry_id`, `value`) VALUES (32, 92, 'no');
INSERT INTO`tbl_entries_data_86` (`id`, `entry_id`, `value`) VALUES (40, 94, 'no');
INSERT INTO`tbl_entries_data_86` (`id`, `entry_id`, `value`) VALUES (41, 95, 'no');
INSERT INTO`tbl_entries_data_86` (`id`, `entry_id`, `value`) VALUES (42, 96, 'no');
INSERT INTO`tbl_entries_data_86` (`id`, `entry_id`, `value`) VALUES (43, 97, 'no');
INSERT INTO`tbl_entries_data_86` (`id`, `entry_id`, `value`) VALUES (44, 98, 'no');
INSERT INTO`tbl_entries_data_86` (`id`, `entry_id`, `value`) VALUES (45, 99, 'no');
INSERT INTO`tbl_entries_data_86` (`id`, `entry_id`, `value`) VALUES (46, 100, 'no');
INSERT INTO`tbl_entries_data_86` (`id`, `entry_id`, `value`) VALUES (47, 101, 'no');
INSERT INTO`tbl_entries_data_86` (`id`, `entry_id`, `value`) VALUES (48, 102, 'no');
INSERT INTO`tbl_entries_data_86` (`id`, `entry_id`, `value`) VALUES (52, 103, 'no');
INSERT INTO`tbl_entries_data_86` (`id`, `entry_id`, `value`) VALUES (53, 104, 'no');
INSERT INTO`tbl_entries_data_86` (`id`, `entry_id`, `value`) VALUES (54, 105, 'no');
INSERT INTO`tbl_entries_data_86` (`id`, `entry_id`, `value`) VALUES (55, 106, 'no');
INSERT INTO`tbl_entries_data_86` (`id`, `entry_id`, `value`) VALUES (56, 107, 'no');
INSERT INTO`tbl_entries_data_86` (`id`, `entry_id`, `value`) VALUES (57, 108, 'no');
INSERT INTO`tbl_entries_data_86` (`id`, `entry_id`, `value`) VALUES (63, 109, 'no');
INSERT INTO`tbl_entries_data_86` (`id`, `entry_id`, `value`) VALUES (59, 110, 'yes');
INSERT INTO`tbl_entries_data_86` (`id`, `entry_id`, `value`) VALUES (60, 111, 'no');
INSERT INTO`tbl_entries_data_86` (`id`, `entry_id`, `value`) VALUES (61, 112, 'no');
INSERT INTO`tbl_entries_data_86` (`id`, `entry_id`, `value`) VALUES (64, 113, 'no');
INSERT INTO`tbl_entries_data_86` (`id`, `entry_id`, `value`) VALUES (65, 114, 'no');
INSERT INTO`tbl_entries_data_86` (`id`, `entry_id`, `value`) VALUES (66, 115, 'yes');
INSERT INTO`tbl_entries_data_86` (`id`, `entry_id`, `value`) VALUES (67, 116, 'no');
INSERT INTO`tbl_entries_data_86` (`id`, `entry_id`, `value`) VALUES (68, 117, 'no');

-- *** STRUCTURE:`tbl_entries_data_87` ***
DROP TABLE IF EXISTS`tbl_entries_data_87`;
CREATE TABLE`tbl_entries_data_87` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) unsigned NOT NULL,
  `value` enum('yes','no') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'no',
  PRIMARY KEY (`id`),
  UNIQUE KEY `entry_id` (`entry_id`),
  KEY `value` (`value`)
) ENGINE=MyISAM AUTO_INCREMENT=69 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- *** DATA:`tbl_entries_data_87` ***
INSERT INTO`tbl_entries_data_87` (`id`, `entry_id`, `value`) VALUES (38, 12, 'yes');
INSERT INTO`tbl_entries_data_87` (`id`, `entry_id`, `value`) VALUES (37, 93, 'no');
INSERT INTO`tbl_entries_data_87` (`id`, `entry_id`, `value`) VALUES (39, 89, 'yes');
INSERT INTO`tbl_entries_data_87` (`id`, `entry_id`, `value`) VALUES (35, 90, 'no');
INSERT INTO`tbl_entries_data_87` (`id`, `entry_id`, `value`) VALUES (31, 91, 'no');
INSERT INTO`tbl_entries_data_87` (`id`, `entry_id`, `value`) VALUES (32, 92, 'no');
INSERT INTO`tbl_entries_data_87` (`id`, `entry_id`, `value`) VALUES (40, 94, 'no');
INSERT INTO`tbl_entries_data_87` (`id`, `entry_id`, `value`) VALUES (41, 95, 'no');
INSERT INTO`tbl_entries_data_87` (`id`, `entry_id`, `value`) VALUES (42, 96, 'yes');
INSERT INTO`tbl_entries_data_87` (`id`, `entry_id`, `value`) VALUES (43, 97, 'no');
INSERT INTO`tbl_entries_data_87` (`id`, `entry_id`, `value`) VALUES (44, 98, 'no');
INSERT INTO`tbl_entries_data_87` (`id`, `entry_id`, `value`) VALUES (45, 99, 'no');
INSERT INTO`tbl_entries_data_87` (`id`, `entry_id`, `value`) VALUES (46, 100, 'no');
INSERT INTO`tbl_entries_data_87` (`id`, `entry_id`, `value`) VALUES (47, 101, 'yes');
INSERT INTO`tbl_entries_data_87` (`id`, `entry_id`, `value`) VALUES (48, 102, 'yes');
INSERT INTO`tbl_entries_data_87` (`id`, `entry_id`, `value`) VALUES (52, 103, 'no');
INSERT INTO`tbl_entries_data_87` (`id`, `entry_id`, `value`) VALUES (53, 104, 'no');
INSERT INTO`tbl_entries_data_87` (`id`, `entry_id`, `value`) VALUES (54, 105, 'no');
INSERT INTO`tbl_entries_data_87` (`id`, `entry_id`, `value`) VALUES (55, 106, 'no');
INSERT INTO`tbl_entries_data_87` (`id`, `entry_id`, `value`) VALUES (56, 107, 'no');
INSERT INTO`tbl_entries_data_87` (`id`, `entry_id`, `value`) VALUES (57, 108, 'no');
INSERT INTO`tbl_entries_data_87` (`id`, `entry_id`, `value`) VALUES (63, 109, 'no');
INSERT INTO`tbl_entries_data_87` (`id`, `entry_id`, `value`) VALUES (59, 110, 'no');
INSERT INTO`tbl_entries_data_87` (`id`, `entry_id`, `value`) VALUES (60, 111, 'no');
INSERT INTO`tbl_entries_data_87` (`id`, `entry_id`, `value`) VALUES (61, 112, 'no');
INSERT INTO`tbl_entries_data_87` (`id`, `entry_id`, `value`) VALUES (64, 113, 'no');
INSERT INTO`tbl_entries_data_87` (`id`, `entry_id`, `value`) VALUES (65, 114, 'no');
INSERT INTO`tbl_entries_data_87` (`id`, `entry_id`, `value`) VALUES (66, 115, 'no');
INSERT INTO`tbl_entries_data_87` (`id`, `entry_id`, `value`) VALUES (67, 116, 'no');
INSERT INTO`tbl_entries_data_87` (`id`, `entry_id`, `value`) VALUES (68, 117, 'no');

-- *** STRUCTURE:`tbl_entries_data_88` ***
DROP TABLE IF EXISTS`tbl_entries_data_88`;
CREATE TABLE`tbl_entries_data_88` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) unsigned NOT NULL,
  `value` enum('yes','no') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'no',
  PRIMARY KEY (`id`),
  UNIQUE KEY `entry_id` (`entry_id`),
  KEY `value` (`value`)
) ENGINE=MyISAM AUTO_INCREMENT=69 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- *** DATA:`tbl_entries_data_88` ***
INSERT INTO`tbl_entries_data_88` (`id`, `entry_id`, `value`) VALUES (38, 12, 'no');
INSERT INTO`tbl_entries_data_88` (`id`, `entry_id`, `value`) VALUES (37, 93, 'no');
INSERT INTO`tbl_entries_data_88` (`id`, `entry_id`, `value`) VALUES (39, 89, 'yes');
INSERT INTO`tbl_entries_data_88` (`id`, `entry_id`, `value`) VALUES (35, 90, 'no');
INSERT INTO`tbl_entries_data_88` (`id`, `entry_id`, `value`) VALUES (31, 91, 'no');
INSERT INTO`tbl_entries_data_88` (`id`, `entry_id`, `value`) VALUES (32, 92, 'no');
INSERT INTO`tbl_entries_data_88` (`id`, `entry_id`, `value`) VALUES (40, 94, 'no');
INSERT INTO`tbl_entries_data_88` (`id`, `entry_id`, `value`) VALUES (41, 95, 'no');
INSERT INTO`tbl_entries_data_88` (`id`, `entry_id`, `value`) VALUES (42, 96, 'yes');
INSERT INTO`tbl_entries_data_88` (`id`, `entry_id`, `value`) VALUES (43, 97, 'no');
INSERT INTO`tbl_entries_data_88` (`id`, `entry_id`, `value`) VALUES (44, 98, 'no');
INSERT INTO`tbl_entries_data_88` (`id`, `entry_id`, `value`) VALUES (45, 99, 'no');
INSERT INTO`tbl_entries_data_88` (`id`, `entry_id`, `value`) VALUES (46, 100, 'no');
INSERT INTO`tbl_entries_data_88` (`id`, `entry_id`, `value`) VALUES (47, 101, 'no');
INSERT INTO`tbl_entries_data_88` (`id`, `entry_id`, `value`) VALUES (48, 102, 'no');
INSERT INTO`tbl_entries_data_88` (`id`, `entry_id`, `value`) VALUES (52, 103, 'no');
INSERT INTO`tbl_entries_data_88` (`id`, `entry_id`, `value`) VALUES (53, 104, 'no');
INSERT INTO`tbl_entries_data_88` (`id`, `entry_id`, `value`) VALUES (54, 105, 'no');
INSERT INTO`tbl_entries_data_88` (`id`, `entry_id`, `value`) VALUES (55, 106, 'no');
INSERT INTO`tbl_entries_data_88` (`id`, `entry_id`, `value`) VALUES (56, 107, 'no');
INSERT INTO`tbl_entries_data_88` (`id`, `entry_id`, `value`) VALUES (57, 108, 'no');
INSERT INTO`tbl_entries_data_88` (`id`, `entry_id`, `value`) VALUES (63, 109, 'no');
INSERT INTO`tbl_entries_data_88` (`id`, `entry_id`, `value`) VALUES (59, 110, 'no');
INSERT INTO`tbl_entries_data_88` (`id`, `entry_id`, `value`) VALUES (60, 111, 'no');
INSERT INTO`tbl_entries_data_88` (`id`, `entry_id`, `value`) VALUES (61, 112, 'no');
INSERT INTO`tbl_entries_data_88` (`id`, `entry_id`, `value`) VALUES (64, 113, 'no');
INSERT INTO`tbl_entries_data_88` (`id`, `entry_id`, `value`) VALUES (65, 114, 'no');
INSERT INTO`tbl_entries_data_88` (`id`, `entry_id`, `value`) VALUES (66, 115, 'no');
INSERT INTO`tbl_entries_data_88` (`id`, `entry_id`, `value`) VALUES (67, 116, 'no');
INSERT INTO`tbl_entries_data_88` (`id`, `entry_id`, `value`) VALUES (68, 117, 'no');

-- *** STRUCTURE:`tbl_entries_data_89` ***
DROP TABLE IF EXISTS`tbl_entries_data_89`;
CREATE TABLE`tbl_entries_data_89` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) unsigned NOT NULL,
  `value` enum('yes','no') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'no',
  PRIMARY KEY (`id`),
  UNIQUE KEY `entry_id` (`entry_id`),
  KEY `value` (`value`)
) ENGINE=MyISAM AUTO_INCREMENT=69 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- *** DATA:`tbl_entries_data_89` ***
INSERT INTO`tbl_entries_data_89` (`id`, `entry_id`, `value`) VALUES (38, 12, 'yes');
INSERT INTO`tbl_entries_data_89` (`id`, `entry_id`, `value`) VALUES (37, 93, 'no');
INSERT INTO`tbl_entries_data_89` (`id`, `entry_id`, `value`) VALUES (39, 89, 'no');
INSERT INTO`tbl_entries_data_89` (`id`, `entry_id`, `value`) VALUES (35, 90, 'no');
INSERT INTO`tbl_entries_data_89` (`id`, `entry_id`, `value`) VALUES (31, 91, 'no');
INSERT INTO`tbl_entries_data_89` (`id`, `entry_id`, `value`) VALUES (32, 92, 'no');
INSERT INTO`tbl_entries_data_89` (`id`, `entry_id`, `value`) VALUES (40, 94, 'no');
INSERT INTO`tbl_entries_data_89` (`id`, `entry_id`, `value`) VALUES (41, 95, 'no');
INSERT INTO`tbl_entries_data_89` (`id`, `entry_id`, `value`) VALUES (42, 96, 'no');
INSERT INTO`tbl_entries_data_89` (`id`, `entry_id`, `value`) VALUES (43, 97, 'no');
INSERT INTO`tbl_entries_data_89` (`id`, `entry_id`, `value`) VALUES (44, 98, 'no');
INSERT INTO`tbl_entries_data_89` (`id`, `entry_id`, `value`) VALUES (45, 99, 'no');
INSERT INTO`tbl_entries_data_89` (`id`, `entry_id`, `value`) VALUES (46, 100, 'no');
INSERT INTO`tbl_entries_data_89` (`id`, `entry_id`, `value`) VALUES (47, 101, 'no');
INSERT INTO`tbl_entries_data_89` (`id`, `entry_id`, `value`) VALUES (48, 102, 'no');
INSERT INTO`tbl_entries_data_89` (`id`, `entry_id`, `value`) VALUES (52, 103, 'no');
INSERT INTO`tbl_entries_data_89` (`id`, `entry_id`, `value`) VALUES (53, 104, 'no');
INSERT INTO`tbl_entries_data_89` (`id`, `entry_id`, `value`) VALUES (54, 105, 'no');
INSERT INTO`tbl_entries_data_89` (`id`, `entry_id`, `value`) VALUES (55, 106, 'no');
INSERT INTO`tbl_entries_data_89` (`id`, `entry_id`, `value`) VALUES (56, 107, 'no');
INSERT INTO`tbl_entries_data_89` (`id`, `entry_id`, `value`) VALUES (57, 108, 'no');
INSERT INTO`tbl_entries_data_89` (`id`, `entry_id`, `value`) VALUES (63, 109, 'no');
INSERT INTO`tbl_entries_data_89` (`id`, `entry_id`, `value`) VALUES (59, 110, 'no');
INSERT INTO`tbl_entries_data_89` (`id`, `entry_id`, `value`) VALUES (60, 111, 'no');
INSERT INTO`tbl_entries_data_89` (`id`, `entry_id`, `value`) VALUES (61, 112, 'no');
INSERT INTO`tbl_entries_data_89` (`id`, `entry_id`, `value`) VALUES (64, 113, 'no');
INSERT INTO`tbl_entries_data_89` (`id`, `entry_id`, `value`) VALUES (65, 114, 'no');
INSERT INTO`tbl_entries_data_89` (`id`, `entry_id`, `value`) VALUES (66, 115, 'no');
INSERT INTO`tbl_entries_data_89` (`id`, `entry_id`, `value`) VALUES (67, 116, 'no');
INSERT INTO`tbl_entries_data_89` (`id`, `entry_id`, `value`) VALUES (68, 117, 'no');

-- *** STRUCTURE:`tbl_entries_data_90` ***
DROP TABLE IF EXISTS`tbl_entries_data_90`;
CREATE TABLE`tbl_entries_data_90` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) unsigned NOT NULL,
  `value` enum('yes','no') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'no',
  PRIMARY KEY (`id`),
  UNIQUE KEY `entry_id` (`entry_id`),
  KEY `value` (`value`)
) ENGINE=MyISAM AUTO_INCREMENT=69 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- *** DATA:`tbl_entries_data_90` ***
INSERT INTO`tbl_entries_data_90` (`id`, `entry_id`, `value`) VALUES (38, 12, 'no');
INSERT INTO`tbl_entries_data_90` (`id`, `entry_id`, `value`) VALUES (37, 93, 'yes');
INSERT INTO`tbl_entries_data_90` (`id`, `entry_id`, `value`) VALUES (39, 89, 'no');
INSERT INTO`tbl_entries_data_90` (`id`, `entry_id`, `value`) VALUES (35, 90, 'no');
INSERT INTO`tbl_entries_data_90` (`id`, `entry_id`, `value`) VALUES (31, 91, 'no');
INSERT INTO`tbl_entries_data_90` (`id`, `entry_id`, `value`) VALUES (32, 92, 'no');
INSERT INTO`tbl_entries_data_90` (`id`, `entry_id`, `value`) VALUES (40, 94, 'no');
INSERT INTO`tbl_entries_data_90` (`id`, `entry_id`, `value`) VALUES (41, 95, 'no');
INSERT INTO`tbl_entries_data_90` (`id`, `entry_id`, `value`) VALUES (42, 96, 'no');
INSERT INTO`tbl_entries_data_90` (`id`, `entry_id`, `value`) VALUES (43, 97, 'yes');
INSERT INTO`tbl_entries_data_90` (`id`, `entry_id`, `value`) VALUES (44, 98, 'no');
INSERT INTO`tbl_entries_data_90` (`id`, `entry_id`, `value`) VALUES (45, 99, 'no');
INSERT INTO`tbl_entries_data_90` (`id`, `entry_id`, `value`) VALUES (46, 100, 'no');
INSERT INTO`tbl_entries_data_90` (`id`, `entry_id`, `value`) VALUES (47, 101, 'no');
INSERT INTO`tbl_entries_data_90` (`id`, `entry_id`, `value`) VALUES (48, 102, 'no');
INSERT INTO`tbl_entries_data_90` (`id`, `entry_id`, `value`) VALUES (52, 103, 'no');
INSERT INTO`tbl_entries_data_90` (`id`, `entry_id`, `value`) VALUES (53, 104, 'no');
INSERT INTO`tbl_entries_data_90` (`id`, `entry_id`, `value`) VALUES (54, 105, 'no');
INSERT INTO`tbl_entries_data_90` (`id`, `entry_id`, `value`) VALUES (55, 106, 'no');
INSERT INTO`tbl_entries_data_90` (`id`, `entry_id`, `value`) VALUES (56, 107, 'no');
INSERT INTO`tbl_entries_data_90` (`id`, `entry_id`, `value`) VALUES (57, 108, 'no');
INSERT INTO`tbl_entries_data_90` (`id`, `entry_id`, `value`) VALUES (63, 109, 'no');
INSERT INTO`tbl_entries_data_90` (`id`, `entry_id`, `value`) VALUES (59, 110, 'no');
INSERT INTO`tbl_entries_data_90` (`id`, `entry_id`, `value`) VALUES (60, 111, 'no');
INSERT INTO`tbl_entries_data_90` (`id`, `entry_id`, `value`) VALUES (61, 112, 'no');
INSERT INTO`tbl_entries_data_90` (`id`, `entry_id`, `value`) VALUES (64, 113, 'no');
INSERT INTO`tbl_entries_data_90` (`id`, `entry_id`, `value`) VALUES (65, 114, 'no');
INSERT INTO`tbl_entries_data_90` (`id`, `entry_id`, `value`) VALUES (66, 115, 'no');
INSERT INTO`tbl_entries_data_90` (`id`, `entry_id`, `value`) VALUES (67, 116, 'no');
INSERT INTO`tbl_entries_data_90` (`id`, `entry_id`, `value`) VALUES (68, 117, 'no');

-- *** STRUCTURE:`tbl_entries_data_91` ***
DROP TABLE IF EXISTS`tbl_entries_data_91`;
CREATE TABLE`tbl_entries_data_91` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) unsigned NOT NULL,
  `value` enum('yes','no') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'no',
  PRIMARY KEY (`id`),
  UNIQUE KEY `entry_id` (`entry_id`),
  KEY `value` (`value`)
) ENGINE=MyISAM AUTO_INCREMENT=69 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- *** DATA:`tbl_entries_data_91` ***
INSERT INTO`tbl_entries_data_91` (`id`, `entry_id`, `value`) VALUES (38, 12, 'no');
INSERT INTO`tbl_entries_data_91` (`id`, `entry_id`, `value`) VALUES (37, 93, 'no');
INSERT INTO`tbl_entries_data_91` (`id`, `entry_id`, `value`) VALUES (39, 89, 'no');
INSERT INTO`tbl_entries_data_91` (`id`, `entry_id`, `value`) VALUES (35, 90, 'no');
INSERT INTO`tbl_entries_data_91` (`id`, `entry_id`, `value`) VALUES (31, 91, 'no');
INSERT INTO`tbl_entries_data_91` (`id`, `entry_id`, `value`) VALUES (32, 92, 'no');
INSERT INTO`tbl_entries_data_91` (`id`, `entry_id`, `value`) VALUES (40, 94, 'no');
INSERT INTO`tbl_entries_data_91` (`id`, `entry_id`, `value`) VALUES (41, 95, 'no');
INSERT INTO`tbl_entries_data_91` (`id`, `entry_id`, `value`) VALUES (42, 96, 'no');
INSERT INTO`tbl_entries_data_91` (`id`, `entry_id`, `value`) VALUES (43, 97, 'no');
INSERT INTO`tbl_entries_data_91` (`id`, `entry_id`, `value`) VALUES (44, 98, 'no');
INSERT INTO`tbl_entries_data_91` (`id`, `entry_id`, `value`) VALUES (45, 99, 'no');
INSERT INTO`tbl_entries_data_91` (`id`, `entry_id`, `value`) VALUES (46, 100, 'no');
INSERT INTO`tbl_entries_data_91` (`id`, `entry_id`, `value`) VALUES (47, 101, 'no');
INSERT INTO`tbl_entries_data_91` (`id`, `entry_id`, `value`) VALUES (48, 102, 'no');
INSERT INTO`tbl_entries_data_91` (`id`, `entry_id`, `value`) VALUES (52, 103, 'no');
INSERT INTO`tbl_entries_data_91` (`id`, `entry_id`, `value`) VALUES (53, 104, 'no');
INSERT INTO`tbl_entries_data_91` (`id`, `entry_id`, `value`) VALUES (54, 105, 'no');
INSERT INTO`tbl_entries_data_91` (`id`, `entry_id`, `value`) VALUES (55, 106, 'yes');
INSERT INTO`tbl_entries_data_91` (`id`, `entry_id`, `value`) VALUES (56, 107, 'no');
INSERT INTO`tbl_entries_data_91` (`id`, `entry_id`, `value`) VALUES (57, 108, 'no');
INSERT INTO`tbl_entries_data_91` (`id`, `entry_id`, `value`) VALUES (63, 109, 'no');
INSERT INTO`tbl_entries_data_91` (`id`, `entry_id`, `value`) VALUES (59, 110, 'no');
INSERT INTO`tbl_entries_data_91` (`id`, `entry_id`, `value`) VALUES (60, 111, 'no');
INSERT INTO`tbl_entries_data_91` (`id`, `entry_id`, `value`) VALUES (61, 112, 'no');
INSERT INTO`tbl_entries_data_91` (`id`, `entry_id`, `value`) VALUES (64, 113, 'no');
INSERT INTO`tbl_entries_data_91` (`id`, `entry_id`, `value`) VALUES (65, 114, 'no');
INSERT INTO`tbl_entries_data_91` (`id`, `entry_id`, `value`) VALUES (66, 115, 'no');
INSERT INTO`tbl_entries_data_91` (`id`, `entry_id`, `value`) VALUES (67, 116, 'no');
INSERT INTO`tbl_entries_data_91` (`id`, `entry_id`, `value`) VALUES (68, 117, 'no');

-- *** STRUCTURE:`tbl_entries_data_92` ***
DROP TABLE IF EXISTS`tbl_entries_data_92`;
CREATE TABLE`tbl_entries_data_92` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) unsigned NOT NULL,
  `value` enum('yes','no') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'no',
  PRIMARY KEY (`id`),
  UNIQUE KEY `entry_id` (`entry_id`),
  KEY `value` (`value`)
) ENGINE=MyISAM AUTO_INCREMENT=69 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- *** DATA:`tbl_entries_data_92` ***
INSERT INTO`tbl_entries_data_92` (`id`, `entry_id`, `value`) VALUES (38, 12, 'no');
INSERT INTO`tbl_entries_data_92` (`id`, `entry_id`, `value`) VALUES (37, 93, 'no');
INSERT INTO`tbl_entries_data_92` (`id`, `entry_id`, `value`) VALUES (39, 89, 'no');
INSERT INTO`tbl_entries_data_92` (`id`, `entry_id`, `value`) VALUES (35, 90, 'no');
INSERT INTO`tbl_entries_data_92` (`id`, `entry_id`, `value`) VALUES (31, 91, 'no');
INSERT INTO`tbl_entries_data_92` (`id`, `entry_id`, `value`) VALUES (32, 92, 'no');
INSERT INTO`tbl_entries_data_92` (`id`, `entry_id`, `value`) VALUES (40, 94, 'no');
INSERT INTO`tbl_entries_data_92` (`id`, `entry_id`, `value`) VALUES (41, 95, 'no');
INSERT INTO`tbl_entries_data_92` (`id`, `entry_id`, `value`) VALUES (42, 96, 'no');
INSERT INTO`tbl_entries_data_92` (`id`, `entry_id`, `value`) VALUES (43, 97, 'no');
INSERT INTO`tbl_entries_data_92` (`id`, `entry_id`, `value`) VALUES (44, 98, 'no');
INSERT INTO`tbl_entries_data_92` (`id`, `entry_id`, `value`) VALUES (45, 99, 'no');
INSERT INTO`tbl_entries_data_92` (`id`, `entry_id`, `value`) VALUES (46, 100, 'no');
INSERT INTO`tbl_entries_data_92` (`id`, `entry_id`, `value`) VALUES (47, 101, 'no');
INSERT INTO`tbl_entries_data_92` (`id`, `entry_id`, `value`) VALUES (48, 102, 'no');
INSERT INTO`tbl_entries_data_92` (`id`, `entry_id`, `value`) VALUES (52, 103, 'no');
INSERT INTO`tbl_entries_data_92` (`id`, `entry_id`, `value`) VALUES (53, 104, 'no');
INSERT INTO`tbl_entries_data_92` (`id`, `entry_id`, `value`) VALUES (54, 105, 'no');
INSERT INTO`tbl_entries_data_92` (`id`, `entry_id`, `value`) VALUES (55, 106, 'no');
INSERT INTO`tbl_entries_data_92` (`id`, `entry_id`, `value`) VALUES (56, 107, 'no');
INSERT INTO`tbl_entries_data_92` (`id`, `entry_id`, `value`) VALUES (57, 108, 'no');
INSERT INTO`tbl_entries_data_92` (`id`, `entry_id`, `value`) VALUES (63, 109, 'no');
INSERT INTO`tbl_entries_data_92` (`id`, `entry_id`, `value`) VALUES (59, 110, 'no');
INSERT INTO`tbl_entries_data_92` (`id`, `entry_id`, `value`) VALUES (60, 111, 'no');
INSERT INTO`tbl_entries_data_92` (`id`, `entry_id`, `value`) VALUES (61, 112, 'no');
INSERT INTO`tbl_entries_data_92` (`id`, `entry_id`, `value`) VALUES (64, 113, 'no');
INSERT INTO`tbl_entries_data_92` (`id`, `entry_id`, `value`) VALUES (65, 114, 'no');
INSERT INTO`tbl_entries_data_92` (`id`, `entry_id`, `value`) VALUES (66, 115, 'no');
INSERT INTO`tbl_entries_data_92` (`id`, `entry_id`, `value`) VALUES (67, 116, 'no');
INSERT INTO`tbl_entries_data_92` (`id`, `entry_id`, `value`) VALUES (68, 117, 'no');

-- *** STRUCTURE:`tbl_entries_data_93` ***
DROP TABLE IF EXISTS`tbl_entries_data_93`;
CREATE TABLE`tbl_entries_data_93` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) unsigned NOT NULL,
  `handle` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `value` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `entry_id` (`entry_id`),
  KEY `handle` (`handle`),
  KEY `value` (`value`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- *** DATA:`tbl_entries_data_93` ***
INSERT INTO`tbl_entries_data_93` (`id`, `entry_id`, `handle`, `value`) VALUES (7, 16, 'mei-2012', 'Mei 2012');
INSERT INTO`tbl_entries_data_93` (`id`, `entry_id`, `handle`, `value`) VALUES (10, 57, 'juni-2012', 'Juni 2012');

-- *** STRUCTURE:`tbl_entries_data_96` ***
DROP TABLE IF EXISTS`tbl_entries_data_96`;
CREATE TABLE`tbl_entries_data_96` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) unsigned NOT NULL,
  `handle` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `value` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `entry_id` (`entry_id`),
  KEY `handle` (`handle`),
  KEY `value` (`value`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- *** DATA:`tbl_entries_data_96` ***
INSERT INTO`tbl_entries_data_96` (`id`, `entry_id`, `handle`, `value`) VALUES (1, 53, 'mei-2012', 'Mei 2012');
INSERT INTO`tbl_entries_data_96` (`id`, `entry_id`, `handle`, `value`) VALUES (2, 54, 'mei-2012', 'Mei 2012');
INSERT INTO`tbl_entries_data_96` (`id`, `entry_id`, `handle`, `value`) VALUES (3, 55, 'mei-2012', 'Mei 2012');
INSERT INTO`tbl_entries_data_96` (`id`, `entry_id`, `handle`, `value`) VALUES (4, 58, 'juni-2012', 'Juni 2012');

-- *** STRUCTURE:`tbl_entries_data_97` ***
DROP TABLE IF EXISTS`tbl_entries_data_97`;
CREATE TABLE`tbl_entries_data_97` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) unsigned NOT NULL,
  `handle` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `value` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `entry_id` (`entry_id`),
  KEY `handle` (`handle`),
  KEY `value` (`value`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- *** DATA:`tbl_entries_data_97` ***
INSERT INTO`tbl_entries_data_97` (`id`, `entry_id`, `handle`, `value`) VALUES (1, 53, 'kapoenen', 'Kapoenen');
INSERT INTO`tbl_entries_data_97` (`id`, `entry_id`, `handle`, `value`) VALUES (2, 54, 'jins', 'Jins');
INSERT INTO`tbl_entries_data_97` (`id`, `entry_id`, `handle`, `value`) VALUES (3, 55, 'givers-ii', 'Givers II');
INSERT INTO`tbl_entries_data_97` (`id`, `entry_id`, `handle`, `value`) VALUES (4, 58, 'kapoenen', 'Kapoenen');

-- *** STRUCTURE:`tbl_entries_data_98` ***
DROP TABLE IF EXISTS`tbl_entries_data_98`;
CREATE TABLE`tbl_entries_data_98` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) unsigned NOT NULL,
  `handle` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `value` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `entry_id` (`entry_id`),
  KEY `handle` (`handle`),
  KEY `value` (`value`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- *** DATA:`tbl_entries_data_98` ***
INSERT INTO`tbl_entries_data_98` (`id`, `entry_id`, `handle`, `value`) VALUES (1, 56, 'agenda', 'Agenda');
INSERT INTO`tbl_entries_data_98` (`id`, `entry_id`, `handle`, `value`) VALUES (2, 59, 'antwandelen', 'Antwandelen');
INSERT INTO`tbl_entries_data_98` (`id`, `entry_id`, `handle`, `value`) VALUES (5, 60, 'een-afbeelding', 'Een afbeelding');

-- *** STRUCTURE:`tbl_entries_data_99` ***
DROP TABLE IF EXISTS`tbl_entries_data_99`;
CREATE TABLE`tbl_entries_data_99` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) unsigned NOT NULL,
  `file` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `size` int(11) unsigned DEFAULT NULL,
  `mimetype` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `meta` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `entry_id` (`entry_id`),
  KEY `file` (`file`),
  KEY `mimetype` (`mimetype`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- *** DATA:`tbl_entries_data_99` ***
INSERT INTO`tbl_entries_data_99` (`id`, `entry_id`, `file`, `size`, `mimetype`, `meta`) VALUES (3, 60, '/Afbeeldingen/maandblad/slide-02_2.jpg', 279088, 'image/jpeg', 'a:3:{s:8:\"creation\";s:25:\"2013-07-08T21:40:27+02:00\";s:5:\"width\";i:2755;s:6:\"height\";i:1252;}');

-- *** DATA:`tbl_documentation` ***
INSERT INTO`tbl_documentation` (`id`, `title`, `pages`, `content`, `content_formatted`) VALUES (2, 'Informatie website', '/publish/informatie/edit/', '<b>Scoutsnaam</b><br />\r\nNaam van onze scouts<br /><br />\r\n<b>Volledige Scoutsnaam</b><br />\r\nNaam van onze scouts met alle aanhangsels<br /><br />\r\n<b>Adres</b><br />\r\nAdres van onze scouts<br /><br />\r\n<b>Rekeningnummer</b><br />\r\nRekeningnummer van onze scouts<br /><br />\r\n<b>Lengtegraad</b><br />\r\nLengtegraad(in graden) van ons scoutslokaal<br /><br />\r\n<b>Breedtegraad</b><br />\r\nBreedtegraad(in graden) van ons scoutslokaal<br /><br />\r\n<b>Contact Informatie</b><br />\r\nKorte info wie men moet contacteren als er vragen zijn<br /><br />\r\n<b>VZW Informatie</b><br />\r\nTekst over de VZW<br /><br />\r\n<b>VZW Logo</b><br />\r\nLogo van de VZW<br /><br />\r\n<b>Materiaalmeesters Logo</b><br />\r\nLogo van de Materiaalmeesters<br /><br />\r\n<b>Website Team Logo</b><br />\r\nLogo van de mensen die de website beheren<br /><br />\r\n<b>Statistieken Code</b><br />\r\nHTML code die op elke pagina geplaatst wordt om statistieken over de site bij te houden.<br /><br />', '<b>Scoutsnaam</b><br />\r\nNaam van onze scouts<br /><br />\r\n<b>Volledige Scoutsnaam</b><br />\r\nNaam van onze scouts met alle aanhangsels<br /><br />\r\n<b>Adres</b><br />\r\nAdres van onze scouts<br /><br />\r\n<b>Rekeningnummer</b><br />\r\nRekeningnummer van onze scouts<br /><br />\r\n<b>Lengtegraad</b><br />\r\nLengtegraad(in graden) van ons scoutslokaal<br /><br />\r\n<b>Breedtegraad</b><br />\r\nBreedtegraad(in graden) van ons scoutslokaal<br /><br />\r\n<b>Contact Informatie</b><br />\r\nKorte info wie men moet contacteren als er vragen zijn<br /><br />\r\n<b>VZW Informatie</b><br />\r\nTekst over de VZW<br /><br />\r\n<b>VZW Logo</b><br />\r\nLogo van de VZW<br /><br />\r\n<b>Materiaalmeesters Logo</b><br />\r\nLogo van de Materiaalmeesters<br /><br />\r\n<b>Website Team Logo</b><br />\r\nLogo van de mensen die de website beheren<br /><br />\r\n<b>Statistieken Code</b><br />\r\nHTML code die op elke pagina geplaatst wordt om statistieken over de site bij te houden.<br /><br />');
INSERT INTO`tbl_documentation` (`id`, `title`, `pages`, `content`, `content_formatted`) VALUES (5, 'Nieuwe Banner', '/publish/banners/new/', '<b>Titel</b><br />\r\nKleine tekst die de banner beschrijft<br /><br />\r\n<b>Titel voor link</b><br />\r\nKleine tekst die dient als link naar het bericht<br /><br />\r\n<b>Bericht</b><br />\r\nHet bericht dat bij de banner hoort<br /><br />\r\n<b>Actief</b><br />\r\nMoet deze banner getoond worden?<br /><br />', '<b>Titel</b><br />\r\nKleine tekst die de banner beschrijft<br /><br />\r\n<b>Titel voor link</b><br />\r\nKleine tekst die dient als link naar het bericht<br /><br />\r\n<b>Bericht</b><br />\r\nHet bericht dat bij de banner hoort<br /><br />\r\n<b>Actief</b><br />\r\nMoet deze banner getoond worden?<br /><br />');
INSERT INTO`tbl_documentation` (`id`, `title`, `pages`, `content`, `content_formatted`) VALUES (4, 'Banners', '/publish/banners/', 'Banners zijn kleine kaders op de site die naar voor springen wanneer er een bepaald evenement plaatsvind. Dit kan bijvoorbeeld een spaghetti avond zijn of de leden inschrijvingsperiode. Wanneer een banner actief is zal die op elke pagina te zien zijn. Om een banner te maken moet je eerst een bericht maken.', 'Banners zijn kleine kaders op de site die naar voor springen wanneer er een bepaald evenement plaatsvind. Dit kan bijvoorbeeld een spaghetti avond zijn of de leden inschrijvingsperiode. Wanneer een banner actief is zal die op elke pagina te zien zijn. Om een banner te maken moet je eerst een bericht maken.');
INSERT INTO`tbl_documentation` (`id`, `title`, `pages`, `content`, `content_formatted`) VALUES (6, 'Wijzig Banner', '/publish/banners/edit/', '<b>Titel</b><br />\r\nKleine tekst die de banner beschrijft<br /><br />\r\n<b>Titel voor link</b><br />\r\nKleine tekst die dient als link naar het bericht<br /><br />\r\n<b>Bericht</b><br />\r\nHet bericht dat bij de banner hoort<br /><br />\r\n<b>Actief</b><br />\r\nMoet deze banner getoond worden?<br /><br />', '<b>Titel</b><br />\r\nKleine tekst die de banner beschrijft<br /><br />\r\n<b>Titel voor link</b><br />\r\nKleine tekst die dient als link naar het bericht<br /><br />\r\n<b>Bericht</b><br />\r\nHet bericht dat bij de banner hoort<br /><br />\r\n<b>Actief</b><br />\r\nMoet deze banner getoond worden?<br /><br />');

-- *** DATA:`tbl_entries` ***
INSERT INTO`tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`, `modification_date`, `modification_date_gmt`) VALUES (89, 10, 1, '2013-09-12 16:24:31', '2013-09-12 14:24:31', '2013-09-12 16:31:29', '2013-09-12 14:31:29');
INSERT INTO`tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`, `modification_date`, `modification_date_gmt`) VALUES (93, 10, 1, '2013-09-12 16:29:14', '2013-09-12 14:29:14', '2013-09-12 16:30:10', '2013-09-12 14:30:10');
INSERT INTO`tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`, `modification_date`, `modification_date_gmt`) VALUES (16, 19, 1, '2013-04-24 20:59:19', '2013-04-24 18:59:19', '2013-07-08 22:01:52', '2013-07-08 20:01:52');
INSERT INTO`tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`, `modification_date`, `modification_date_gmt`) VALUES (100, 10, 1, '2013-09-12 16:39:19', '2013-09-12 14:39:19', '2013-09-12 16:39:19', '2013-09-12 14:39:19');
INSERT INTO`tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`, `modification_date`, `modification_date_gmt`) VALUES (12, 10, 1, '2013-01-02 23:52:02', '2013-01-02 22:52:02', '2013-09-12 16:31:08', '2013-09-12 14:31:08');
INSERT INTO`tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`, `modification_date`, `modification_date_gmt`) VALUES (11, 9, 1, '2013-01-02 23:51:29', '2013-01-02 22:51:29', '2013-07-08 23:18:50', '2013-07-08 21:18:50');
INSERT INTO`tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`, `modification_date`, `modification_date_gmt`) VALUES (29, 9, 1, '2013-07-08 12:44:07', '2013-07-08 10:44:07', '2013-07-08 23:19:27', '2013-07-08 21:19:27');
INSERT INTO`tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`, `modification_date`, `modification_date_gmt`) VALUES (18, 9, 1, '2013-05-04 00:50:45', '2013-05-03 22:50:45', '2013-07-08 23:19:09', '2013-07-08 21:19:09');
INSERT INTO`tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`, `modification_date`, `modification_date_gmt`) VALUES (17, 21, 1, '2013-04-24 21:56:00', '2013-04-24 19:56:00', '2013-08-20 22:32:16', '2013-08-20 20:32:16');
INSERT INTO`tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`, `modification_date`, `modification_date_gmt`) VALUES (20, 14, 1, '2013-06-27 20:10:14', '2013-06-27 18:10:14', '2013-09-07 00:06:03', '2013-09-06 22:06:03');
INSERT INTO`tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`, `modification_date`, `modification_date_gmt`) VALUES (82, 23, 1, '2013-07-09 19:05:54', '2013-07-09 17:05:54', '2013-07-09 19:05:54', '2013-07-09 17:05:54');
INSERT INTO`tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`, `modification_date`, `modification_date_gmt`) VALUES (79, 14, 1, '2013-07-09 17:51:22', '2013-07-09 15:51:22', '2013-09-07 00:07:01', '2013-09-06 22:07:01');
INSERT INTO`tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`, `modification_date`, `modification_date_gmt`) VALUES (78, 14, 1, '2013-07-09 17:46:51', '2013-07-09 15:46:51', '2013-09-07 00:01:53', '2013-09-06 22:01:53');
INSERT INTO`tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`, `modification_date`, `modification_date_gmt`) VALUES (77, 14, 1, '2013-07-09 17:45:22', '2013-07-09 15:45:22', '2013-09-07 00:05:55', '2013-09-06 22:05:55');
INSERT INTO`tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`, `modification_date`, `modification_date_gmt`) VALUES (101, 10, 1, '2013-09-12 16:40:04', '2013-09-12 14:40:04', '2013-09-12 16:40:04', '2013-09-12 14:40:04');
INSERT INTO`tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`, `modification_date`, `modification_date_gmt`) VALUES (99, 10, 1, '2013-09-12 16:36:54', '2013-09-12 14:36:54', '2013-09-12 16:36:54', '2013-09-12 14:36:54');
INSERT INTO`tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`, `modification_date`, `modification_date_gmt`) VALUES (98, 10, 1, '2013-09-12 16:36:09', '2013-09-12 14:36:09', '2013-09-12 16:36:09', '2013-09-12 14:36:09');
INSERT INTO`tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`, `modification_date`, `modification_date_gmt`) VALUES (30, 9, 1, '2013-07-08 14:11:50', '2013-07-08 12:11:50', '2013-07-08 23:18:58', '2013-07-08 21:18:58');
INSERT INTO`tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`, `modification_date`, `modification_date_gmt`) VALUES (31, 9, 1, '2013-07-08 14:13:26', '2013-07-08 12:13:26', '2013-07-08 23:19:34', '2013-07-08 21:19:34');
INSERT INTO`tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`, `modification_date`, `modification_date_gmt`) VALUES (32, 9, 1, '2013-07-08 14:14:14', '2013-07-08 12:14:14', '2013-07-08 23:19:43', '2013-07-08 21:19:43');
INSERT INTO`tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`, `modification_date`, `modification_date_gmt`) VALUES (33, 9, 1, '2013-07-08 14:14:34', '2013-07-08 12:14:34', '2013-07-08 23:19:49', '2013-07-08 21:19:49');
INSERT INTO`tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`, `modification_date`, `modification_date_gmt`) VALUES (34, 9, 1, '2013-07-08 14:15:21', '2013-07-08 12:15:21', '2013-07-08 23:19:56', '2013-07-08 21:19:56');
INSERT INTO`tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`, `modification_date`, `modification_date_gmt`) VALUES (35, 18, 1, '2013-07-08 16:02:47', '2013-07-08 14:02:47', '2013-07-08 22:10:27', '2013-07-08 20:10:27');
INSERT INTO`tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`, `modification_date`, `modification_date_gmt`) VALUES (36, 18, 1, '2013-07-08 16:03:03', '2013-07-08 14:03:03', '2013-07-08 16:03:03', '2013-07-08 14:03:03');
INSERT INTO`tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`, `modification_date`, `modification_date_gmt`) VALUES (37, 18, 1, '2013-07-08 16:03:16', '2013-07-08 14:03:16', '2013-07-08 16:03:16', '2013-07-08 14:03:16');
INSERT INTO`tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`, `modification_date`, `modification_date_gmt`) VALUES (38, 18, 1, '2013-07-08 16:03:37', '2013-07-08 14:03:37', '2013-07-08 16:03:37', '2013-07-08 14:03:37');
INSERT INTO`tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`, `modification_date`, `modification_date_gmt`) VALUES (39, 13, 1, '2013-07-08 16:04:47', '2013-07-08 14:04:47', '2013-07-08 16:04:52', '2013-07-08 14:04:52');
INSERT INTO`tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`, `modification_date`, `modification_date_gmt`) VALUES (40, 13, 1, '2013-07-08 16:05:16', '2013-07-08 14:05:16', '2013-07-08 16:05:16', '2013-07-08 14:05:16');
INSERT INTO`tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`, `modification_date`, `modification_date_gmt`) VALUES (41, 13, 1, '2013-07-08 16:05:36', '2013-07-08 14:05:36', '2013-07-08 16:05:36', '2013-07-08 14:05:36');
INSERT INTO`tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`, `modification_date`, `modification_date_gmt`) VALUES (42, 13, 1, '2013-07-08 16:06:40', '2013-07-08 14:06:40', '2013-07-08 16:06:40', '2013-07-08 14:06:40');
INSERT INTO`tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`, `modification_date`, `modification_date_gmt`) VALUES (43, 13, 1, '2013-07-08 16:06:58', '2013-07-08 14:06:58', '2013-07-08 16:06:58', '2013-07-08 14:06:58');
INSERT INTO`tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`, `modification_date`, `modification_date_gmt`) VALUES (45, 26, 1, '2013-07-08 16:56:27', '2013-07-08 14:56:27', '2013-07-08 17:14:52', '2013-07-08 15:14:52');
INSERT INTO`tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`, `modification_date`, `modification_date_gmt`) VALUES (46, 26, 1, '2013-07-08 16:56:46', '2013-07-08 14:56:46', '2013-07-08 17:14:41', '2013-07-08 15:14:41');
INSERT INTO`tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`, `modification_date`, `modification_date_gmt`) VALUES (47, 26, 1, '2013-07-08 16:56:59', '2013-07-08 14:56:59', '2013-07-08 17:14:30', '2013-07-08 15:14:30');
INSERT INTO`tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`, `modification_date`, `modification_date_gmt`) VALUES (48, 26, 1, '2013-07-08 16:57:14', '2013-07-08 14:57:14', '2013-07-08 17:14:12', '2013-07-08 15:14:12');
INSERT INTO`tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`, `modification_date`, `modification_date_gmt`) VALUES (49, 23, 1, '2013-07-08 18:04:55', '2013-07-08 16:04:55', '2013-07-08 18:04:55', '2013-07-08 16:04:55');
INSERT INTO`tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`, `modification_date`, `modification_date_gmt`) VALUES (80, 23, 1, '2013-07-09 19:05:38', '2013-07-09 17:05:38', '2013-07-09 19:05:38', '2013-07-09 17:05:38');
INSERT INTO`tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`, `modification_date`, `modification_date_gmt`) VALUES (81, 23, 1, '2013-07-09 19:05:48', '2013-07-09 17:05:48', '2013-07-09 19:05:48', '2013-07-09 17:05:48');
INSERT INTO`tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`, `modification_date`, `modification_date_gmt`) VALUES (53, 20, 1, '2013-07-08 20:09:56', '2013-07-08 18:09:56', '2013-07-08 20:09:56', '2013-07-08 18:09:56');
INSERT INTO`tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`, `modification_date`, `modification_date_gmt`) VALUES (54, 20, 1, '2013-07-08 20:10:08', '2013-07-08 18:10:08', '2013-07-08 20:10:08', '2013-07-08 18:10:08');
INSERT INTO`tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`, `modification_date`, `modification_date_gmt`) VALUES (55, 20, 1, '2013-07-08 20:10:28', '2013-07-08 18:10:28', '2013-07-08 20:10:28', '2013-07-08 18:10:28');
INSERT INTO`tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`, `modification_date`, `modification_date_gmt`) VALUES (56, 25, 1, '2013-07-08 20:10:53', '2013-07-08 18:10:53', '2013-07-08 20:10:53', '2013-07-08 18:10:53');
INSERT INTO`tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`, `modification_date`, `modification_date_gmt`) VALUES (57, 19, 1, '2013-07-08 21:12:25', '2013-07-08 19:12:25', '2013-07-08 23:47:40', '2013-07-08 21:47:40');
INSERT INTO`tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`, `modification_date`, `modification_date_gmt`) VALUES (58, 20, 1, '2013-07-08 21:12:40', '2013-07-08 19:12:40', '2013-07-08 21:12:40', '2013-07-08 19:12:40');
INSERT INTO`tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`, `modification_date`, `modification_date_gmt`) VALUES (59, 25, 1, '2013-07-08 21:12:54', '2013-07-08 19:12:54', '2013-07-08 21:12:54', '2013-07-08 19:12:54');
INSERT INTO`tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`, `modification_date`, `modification_date_gmt`) VALUES (60, 25, 1, '2013-07-08 21:39:25', '2013-07-08 19:39:25', '2013-07-08 21:40:27', '2013-07-08 19:40:27');
INSERT INTO`tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`, `modification_date`, `modification_date_gmt`) VALUES (97, 10, 1, '2013-09-12 16:35:23', '2013-09-12 14:35:23', '2013-09-12 16:35:23', '2013-09-12 14:35:23');
INSERT INTO`tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`, `modification_date`, `modification_date_gmt`) VALUES (96, 10, 1, '2013-09-12 16:34:29', '2013-09-12 14:34:29', '2013-09-12 16:34:29', '2013-09-12 14:34:29');
INSERT INTO`tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`, `modification_date`, `modification_date_gmt`) VALUES (95, 10, 1, '2013-09-12 16:33:31', '2013-09-12 14:33:31', '2013-09-12 16:33:31', '2013-09-12 14:33:31');
INSERT INTO`tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`, `modification_date`, `modification_date_gmt`) VALUES (94, 10, 1, '2013-09-12 16:32:29', '2013-09-12 14:32:29', '2013-09-12 16:32:29', '2013-09-12 14:32:29');
INSERT INTO`tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`, `modification_date`, `modification_date_gmt`) VALUES (88, 14, 1, '2013-09-06 23:40:52', '2013-09-06 21:40:52', '2013-09-07 00:06:10', '2013-09-06 22:06:10');
INSERT INTO`tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`, `modification_date`, `modification_date_gmt`) VALUES (87, 13, 1, '2013-08-21 17:22:05', '2013-08-21 15:22:05', '2013-08-21 17:22:50', '2013-08-21 15:22:50');
INSERT INTO`tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`, `modification_date`, `modification_date_gmt`) VALUES (86, 18, 1, '2013-08-21 17:20:24', '2013-08-21 15:20:24', '2013-08-21 17:20:24', '2013-08-21 15:20:24');
INSERT INTO`tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`, `modification_date`, `modification_date_gmt`) VALUES (84, 23, 1, '2013-07-09 19:06:04', '2013-07-09 17:06:04', '2013-07-09 19:06:04', '2013-07-09 17:06:04');
INSERT INTO`tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`, `modification_date`, `modification_date_gmt`) VALUES (83, 23, 1, '2013-07-09 19:05:59', '2013-07-09 17:05:59', '2013-07-09 19:05:59', '2013-07-09 17:05:59');
INSERT INTO`tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`, `modification_date`, `modification_date_gmt`) VALUES (90, 10, 1, '2013-09-12 16:25:33', '2013-09-12 14:25:33', '2013-09-12 16:29:52', '2013-09-12 14:29:52');
INSERT INTO`tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`, `modification_date`, `modification_date_gmt`) VALUES (91, 10, 1, '2013-09-12 16:27:13', '2013-09-12 14:27:13', '2013-09-12 16:27:13', '2013-09-12 14:27:13');
INSERT INTO`tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`, `modification_date`, `modification_date_gmt`) VALUES (92, 10, 1, '2013-09-12 16:28:24', '2013-09-12 14:28:24', '2013-09-12 16:28:24', '2013-09-12 14:28:24');
INSERT INTO`tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`, `modification_date`, `modification_date_gmt`) VALUES (102, 10, 1, '2013-09-12 16:40:43', '2013-09-12 14:40:43', '2013-09-12 16:40:43', '2013-09-12 14:40:43');
INSERT INTO`tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`, `modification_date`, `modification_date_gmt`) VALUES (103, 10, 1, '2013-09-12 16:41:35', '2013-09-12 14:41:35', '2013-09-12 16:43:10', '2013-09-12 14:43:10');
INSERT INTO`tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`, `modification_date`, `modification_date_gmt`) VALUES (104, 10, 1, '2013-09-12 16:42:26', '2013-09-12 14:42:26', '2013-09-12 16:43:22', '2013-09-12 14:43:22');
INSERT INTO`tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`, `modification_date`, `modification_date_gmt`) VALUES (105, 10, 1, '2013-09-12 16:45:14', '2013-09-12 14:45:14', '2013-09-12 16:45:14', '2013-09-12 14:45:14');
INSERT INTO`tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`, `modification_date`, `modification_date_gmt`) VALUES (106, 10, 1, '2013-09-12 16:46:41', '2013-09-12 14:46:41', '2013-09-12 16:46:41', '2013-09-12 14:46:41');
INSERT INTO`tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`, `modification_date`, `modification_date_gmt`) VALUES (107, 10, 1, '2013-09-12 16:47:48', '2013-09-12 14:47:48', '2013-09-12 16:47:48', '2013-09-12 14:47:48');
INSERT INTO`tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`, `modification_date`, `modification_date_gmt`) VALUES (108, 10, 1, '2013-09-12 16:48:49', '2013-09-12 14:48:49', '2013-09-12 16:48:49', '2013-09-12 14:48:49');
INSERT INTO`tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`, `modification_date`, `modification_date_gmt`) VALUES (109, 10, 1, '2013-09-12 16:49:41', '2013-09-12 14:49:41', '2013-09-12 16:53:05', '2013-09-12 14:53:05');
INSERT INTO`tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`, `modification_date`, `modification_date_gmt`) VALUES (110, 10, 1, '2013-09-12 16:50:35', '2013-09-12 14:50:35', '2013-09-12 16:50:35', '2013-09-12 14:50:35');
INSERT INTO`tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`, `modification_date`, `modification_date_gmt`) VALUES (111, 10, 1, '2013-09-12 16:51:27', '2013-09-12 14:51:27', '2013-09-12 16:51:27', '2013-09-12 14:51:27');
INSERT INTO`tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`, `modification_date`, `modification_date_gmt`) VALUES (112, 10, 1, '2013-09-12 16:52:01', '2013-09-12 14:52:01', '2013-09-12 16:52:01', '2013-09-12 14:52:01');
INSERT INTO`tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`, `modification_date`, `modification_date_gmt`) VALUES (113, 10, 1, '2013-09-12 16:52:46', '2013-09-12 14:52:46', '2013-09-12 16:53:13', '2013-09-12 14:53:13');
INSERT INTO`tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`, `modification_date`, `modification_date_gmt`) VALUES (114, 10, 1, '2013-09-12 16:54:19', '2013-09-12 14:54:19', '2013-09-12 16:54:19', '2013-09-12 14:54:19');
INSERT INTO`tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`, `modification_date`, `modification_date_gmt`) VALUES (115, 10, 1, '2013-09-12 16:54:59', '2013-09-12 14:54:59', '2013-09-12 16:54:59', '2013-09-12 14:54:59');
INSERT INTO`tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`, `modification_date`, `modification_date_gmt`) VALUES (116, 10, 1, '2013-09-12 16:55:36', '2013-09-12 14:55:36', '2013-09-12 16:55:36', '2013-09-12 14:55:36');
INSERT INTO`tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`, `modification_date`, `modification_date_gmt`) VALUES (117, 10, 1, '2013-09-12 16:56:20', '2013-09-12 14:56:20', '2013-09-12 16:56:20', '2013-09-12 14:56:20');

-- *** DATA:`tbl_extensions` ***
INSERT INTO`tbl_extensions` (`id`, `name`, `status`, `version`) VALUES (129, 'debugdevkit', 'enabled', '1.2.2');
INSERT INTO`tbl_extensions` (`id`, `name`, `status`, `version`) VALUES (130, 'export_ensemble', 'enabled', '2.0.1');
INSERT INTO`tbl_extensions` (`id`, `name`, `status`, `version`) VALUES (131, 'selectbox_link_field', 'enabled', 1.25);
INSERT INTO`tbl_extensions` (`id`, `name`, `status`, `version`) VALUES (132, 'jit_image_manipulation', 'enabled', 1.16);
INSERT INTO`tbl_extensions` (`id`, `name`, `status`, `version`) VALUES (133, 'maintenance_mode', 'enabled', 1.6);
INSERT INTO`tbl_extensions` (`id`, `name`, `status`, `version`) VALUES (134, 'profiledevkit', 'enabled', 1.1);
INSERT INTO`tbl_extensions` (`id`, `name`, `status`, `version`) VALUES (135, 'markdown', 'enabled', 1.14);
INSERT INTO`tbl_extensions` (`id`, `name`, `status`, `version`) VALUES (136, 'xssfilter', 'enabled', '1.1.1');
INSERT INTO`tbl_extensions` (`id`, `name`, `status`, `version`) VALUES (137, 'richtext_redactor', 'enabled', '1.1.1');
INSERT INTO`tbl_extensions` (`id`, `name`, `status`, `version`) VALUES (138, 'documenter', 'enabled', '2.1.1');
INSERT INTO`tbl_extensions` (`id`, `name`, `status`, `version`) VALUES (142, 'static_section', 'enabled', '1.6.1');
INSERT INTO`tbl_extensions` (`id`, `name`, `status`, `version`) VALUES (143, 'cachelite', 'enabled', 1.2);
INSERT INTO`tbl_extensions` (`id`, `name`, `status`, `version`) VALUES (145, 'duplicate_entry', 'enabled', 1.3);

-- *** DATA:`tbl_extensions_delegates` ***
INSERT INTO`tbl_extensions_delegates` (`id`, `extension_id`, `page`, `delegate`, `callback`) VALUES (220, 129, '/frontend/', 'ManipulateDevKitNavigation', 'manipulateDevKitNavigation');
INSERT INTO`tbl_extensions_delegates` (`id`, `extension_id`, `page`, `delegate`, `callback`) VALUES (219, 129, '/frontend/', 'FrontendDevKitResolve', 'frontendDevKitResolve');
INSERT INTO`tbl_extensions_delegates` (`id`, `extension_id`, `page`, `delegate`, `callback`) VALUES (221, 130, '/system/preferences/', 'AddCustomPreferenceFieldsets', 'appendPreferences');
INSERT INTO`tbl_extensions_delegates` (`id`, `extension_id`, `page`, `delegate`, `callback`) VALUES (228, 133, '/blueprints/pages/', 'AppendPageContent', '__appendType');
INSERT INTO`tbl_extensions_delegates` (`id`, `extension_id`, `page`, `delegate`, `callback`) VALUES (227, 133, '/backend/', 'AppendPageAlert', '__appendAlert');
INSERT INTO`tbl_extensions_delegates` (`id`, `extension_id`, `page`, `delegate`, `callback`) VALUES (226, 133, '/system/preferences/', 'CustomActions', '__toggleMaintenanceMode');
INSERT INTO`tbl_extensions_delegates` (`id`, `extension_id`, `page`, `delegate`, `callback`) VALUES (232, 134, '/frontend/', 'ManipulateDevKitNavigation', 'manipulateDevKitNavigation');
INSERT INTO`tbl_extensions_delegates` (`id`, `extension_id`, `page`, `delegate`, `callback`) VALUES (231, 134, '/frontend/', 'FrontendDevKitResolve', 'frontendDevKitResolve');
INSERT INTO`tbl_extensions_delegates` (`id`, `extension_id`, `page`, `delegate`, `callback`) VALUES (225, 133, '/system/preferences/', 'Save', '__SavePreferences');
INSERT INTO`tbl_extensions_delegates` (`id`, `extension_id`, `page`, `delegate`, `callback`) VALUES (234, 136, '/blueprints/events/edit/', 'AppendEventFilter', 'appendEventFilter');
INSERT INTO`tbl_extensions_delegates` (`id`, `extension_id`, `page`, `delegate`, `callback`) VALUES (222, 132, '/system/preferences/', 'AddCustomPreferenceFieldsets', 'appendPreferences');
INSERT INTO`tbl_extensions_delegates` (`id`, `extension_id`, `page`, `delegate`, `callback`) VALUES (224, 133, '/system/preferences/', 'AddCustomPreferenceFieldsets', 'appendPreferences');
INSERT INTO`tbl_extensions_delegates` (`id`, `extension_id`, `page`, `delegate`, `callback`) VALUES (233, 136, '/blueprints/events/new/', 'AppendEventFilter', 'appendEventFilter');
INSERT INTO`tbl_extensions_delegates` (`id`, `extension_id`, `page`, `delegate`, `callback`) VALUES (223, 132, '/system/preferences/', 'Save', '__SavePreferences');
INSERT INTO`tbl_extensions_delegates` (`id`, `extension_id`, `page`, `delegate`, `callback`) VALUES (229, 133, '/frontend/', 'FrontendPrePageResolve', '__checkForMaintenanceMode');
INSERT INTO`tbl_extensions_delegates` (`id`, `extension_id`, `page`, `delegate`, `callback`) VALUES (230, 133, '/frontend/', 'FrontendParamsResolve', '__addParam');
INSERT INTO`tbl_extensions_delegates` (`id`, `extension_id`, `page`, `delegate`, `callback`) VALUES (235, 136, '/frontend/', 'EventPreSaveFilter', 'eventPreSaveFilter');
INSERT INTO`tbl_extensions_delegates` (`id`, `extension_id`, `page`, `delegate`, `callback`) VALUES (240, 137, '/system/preferences/', 'AddCustomPreferenceFieldsets', 'appendPreferences');
INSERT INTO`tbl_extensions_delegates` (`id`, `extension_id`, `page`, `delegate`, `callback`) VALUES (239, 137, '/backend/', 'InitaliseAdminPageHead', 'initaliseAdminPageHead');
INSERT INTO`tbl_extensions_delegates` (`id`, `extension_id`, `page`, `delegate`, `callback`) VALUES (241, 137, '/system/preferences/', 'Save', 'savePreferences');
INSERT INTO`tbl_extensions_delegates` (`id`, `extension_id`, `page`, `delegate`, `callback`) VALUES (242, 138, '/system/preferences/', 'AddCustomPreferenceFieldsets', 'appendPreferences');
INSERT INTO`tbl_extensions_delegates` (`id`, `extension_id`, `page`, `delegate`, `callback`) VALUES (243, 138, '/system/preferences/', 'Save', '__SavePreferences');
INSERT INTO`tbl_extensions_delegates` (`id`, `extension_id`, `page`, `delegate`, `callback`) VALUES (244, 138, '/backend/', 'InitaliseAdminPageHead', 'loadAssets');
INSERT INTO`tbl_extensions_delegates` (`id`, `extension_id`, `page`, `delegate`, `callback`) VALUES (245, 138, '/backend/', 'InitaliseAdminPageHead', 'appendDocs');
INSERT INTO`tbl_extensions_delegates` (`id`, `extension_id`, `page`, `delegate`, `callback`) VALUES (252, 142, '/backend/', 'InitaliseAdminPageHead', 'redirectRules');
INSERT INTO`tbl_extensions_delegates` (`id`, `extension_id`, `page`, `delegate`, `callback`) VALUES (253, 142, '/blueprints/sections/', 'AddSectionElements', 'addSectionSettings');
INSERT INTO`tbl_extensions_delegates` (`id`, `extension_id`, `page`, `delegate`, `callback`) VALUES (254, 142, '/blueprints/sections/', 'SectionPreCreate', 'saveSectionSettings');
INSERT INTO`tbl_extensions_delegates` (`id`, `extension_id`, `page`, `delegate`, `callback`) VALUES (255, 142, '/blueprints/sections/', 'SectionPreEdit', 'saveSectionSettings');
INSERT INTO`tbl_extensions_delegates` (`id`, `extension_id`, `page`, `delegate`, `callback`) VALUES (256, 142, '/backend/', 'AppendElementBelowView', 'appendElementBelowView');
INSERT INTO`tbl_extensions_delegates` (`id`, `extension_id`, `page`, `delegate`, `callback`) VALUES (257, 143, '/frontend/', 'FrontendPageResolved', 'intercept_page');
INSERT INTO`tbl_extensions_delegates` (`id`, `extension_id`, `page`, `delegate`, `callback`) VALUES (258, 143, '/frontend/', 'FrontendOutputPreGenerate', 'parse_page_data');
INSERT INTO`tbl_extensions_delegates` (`id`, `extension_id`, `page`, `delegate`, `callback`) VALUES (259, 143, '/frontend/', 'FrontendOutputPostGenerate', 'write_page_cache');
INSERT INTO`tbl_extensions_delegates` (`id`, `extension_id`, `page`, `delegate`, `callback`) VALUES (260, 143, '/system/preferences/', 'AddCustomPreferenceFieldsets', 'append_preferences');
INSERT INTO`tbl_extensions_delegates` (`id`, `extension_id`, `page`, `delegate`, `callback`) VALUES (261, 143, '/system/preferences/', 'Save', 'save_preferences');
INSERT INTO`tbl_extensions_delegates` (`id`, `extension_id`, `page`, `delegate`, `callback`) VALUES (262, 143, '/publish/new/', 'EntryPostCreate', 'entry_create');
INSERT INTO`tbl_extensions_delegates` (`id`, `extension_id`, `page`, `delegate`, `callback`) VALUES (263, 143, '/publish/edit/', 'EntryPreEdit', 'entry_edit');
INSERT INTO`tbl_extensions_delegates` (`id`, `extension_id`, `page`, `delegate`, `callback`) VALUES (264, 143, '/publish/', 'EntryPreDelete', 'entry_delete');
INSERT INTO`tbl_extensions_delegates` (`id`, `extension_id`, `page`, `delegate`, `callback`) VALUES (265, 143, '/blueprints/events/new/', 'AppendEventFilter', 'addFilterToEventEditor');
INSERT INTO`tbl_extensions_delegates` (`id`, `extension_id`, `page`, `delegate`, `callback`) VALUES (266, 143, '/blueprints/events/edit/', 'AppendEventFilter', 'addFilterToEventEditor');
INSERT INTO`tbl_extensions_delegates` (`id`, `extension_id`, `page`, `delegate`, `callback`) VALUES (267, 143, '/blueprints/events/new/', 'AppendEventFilterDocumentation', 'add_filter_documentation_to_event');
INSERT INTO`tbl_extensions_delegates` (`id`, `extension_id`, `page`, `delegate`, `callback`) VALUES (268, 143, '/blueprints/events/edit/', 'AppendEventFilterDocumentation', 'add_filter_documentation_to_event');
INSERT INTO`tbl_extensions_delegates` (`id`, `extension_id`, `page`, `delegate`, `callback`) VALUES (269, 143, '/frontend/', 'EventPreSaveFilter', 'processEventData');
INSERT INTO`tbl_extensions_delegates` (`id`, `extension_id`, `page`, `delegate`, `callback`) VALUES (270, 143, '/frontend/', 'EventPostSaveFilter', 'processPostSaveData');
INSERT INTO`tbl_extensions_delegates` (`id`, `extension_id`, `page`, `delegate`, `callback`) VALUES (277, 145, '/backend/', 'InitaliseAdminPageHead', 'initaliseAdminPageHead');

-- *** DATA:`tbl_fields` ***
INSERT INTO`tbl_fields` (`id`, `label`, `element_name`, `type`, `parent_section`, `required`, `sortorder`, `location`, `show_column`) VALUES (48, 'Inhoud', 'inhoud', 'textarea', 14, 'yes', 2, 'main', 'no');
INSERT INTO`tbl_fields` (`id`, `label`, `element_name`, `type`, `parent_section`, `required`, `sortorder`, `location`, `show_column`) VALUES (47, 'Foto', 'foto', 'upload', 14, 'no', 1, 'sidebar', 'no');
INSERT INTO`tbl_fields` (`id`, `label`, `element_name`, `type`, `parent_section`, `required`, `sortorder`, `location`, `show_column`) VALUES (46, 'Titel', 'titel', 'input', 14, 'yes', 0, 'main', 'yes');
INSERT INTO`tbl_fields` (`id`, `label`, `element_name`, `type`, `parent_section`, `required`, `sortorder`, `location`, `show_column`) VALUES (45, 'Antwoord', 'antwoord', 'textarea', 13, 'yes', 1, 'main', 'no');
INSERT INTO`tbl_fields` (`id`, `label`, `element_name`, `type`, `parent_section`, `required`, `sortorder`, `location`, `show_column`) VALUES (44, 'Vraag', 'vraag', 'input', 13, 'yes', 0, 'main', 'yes');
INSERT INTO`tbl_fields` (`id`, `label`, `element_name`, `type`, `parent_section`, `required`, `sortorder`, `location`, `show_column`) VALUES (60, 'Maand(en)', 'maand', 'input', 19, 'yes', 0, 'main', 'yes');
INSERT INTO`tbl_fields` (`id`, `label`, `element_name`, `type`, `parent_section`, `required`, `sortorder`, `location`, `show_column`) VALUES (93, 'Maand(en) &amp; Jaar', 'selector', 'input', 19, 'yes', 1, 'main', 'yes');
INSERT INTO`tbl_fields` (`id`, `label`, `element_name`, `type`, `parent_section`, `required`, `sortorder`, `location`, `show_column`) VALUES (63, 'Afbeelding', 'afbeelding', 'upload', 20, 'yes', 0, 'main', 'yes');
INSERT INTO`tbl_fields` (`id`, `label`, `element_name`, `type`, `parent_section`, `required`, `sortorder`, `location`, `show_column`) VALUES (58, 'Naam', 'naam', 'input', 18, 'yes', 0, 'main', 'yes');
INSERT INTO`tbl_fields` (`id`, `label`, `element_name`, `type`, `parent_section`, `required`, `sortorder`, `location`, `show_column`) VALUES (59, 'Abeelding', 'afbeelding', 'upload', 18, 'yes', 1, 'main', 'yes');
INSERT INTO`tbl_fields` (`id`, `label`, `element_name`, `type`, `parent_section`, `required`, `sortorder`, `location`, `show_column`) VALUES (106, 'Kleur', 'kleur', 'select', 22, 'yes', 3, 'sidebar', 'yes');
INSERT INTO`tbl_fields` (`id`, `label`, `element_name`, `type`, `parent_section`, `required`, `sortorder`, `location`, `show_column`) VALUES (37, 'Tak', 'tak', 'select', 10, 'yes', 7, 'main', 'yes');
INSERT INTO`tbl_fields` (`id`, `label`, `element_name`, `type`, `parent_section`, `required`, `sortorder`, `location`, `show_column`) VALUES (36, 'Foto', 'foto', 'upload', 10, 'no', 6, 'main', 'no');
INSERT INTO`tbl_fields` (`id`, `label`, `element_name`, `type`, `parent_section`, `required`, `sortorder`, `location`, `show_column`) VALUES (35, 'Telefoonnummer', 'telefoonnummer', 'input', 10, 'yes', 5, 'main', 'yes');
INSERT INTO`tbl_fields` (`id`, `label`, `element_name`, `type`, `parent_section`, `required`, `sortorder`, `location`, `show_column`) VALUES (34, 'Straat', 'straat', 'input', 10, 'yes', 1, 'main', 'yes');
INSERT INTO`tbl_fields` (`id`, `label`, `element_name`, `type`, `parent_section`, `required`, `sortorder`, `location`, `show_column`) VALUES (33, 'Naam', 'naam', 'input', 10, 'yes', 0, 'main', 'yes');
INSERT INTO`tbl_fields` (`id`, `label`, `element_name`, `type`, `parent_section`, `required`, `sortorder`, `location`, `show_column`) VALUES (32, 'Email Adres', 'email-adres', 'input', 9, 'yes', 2, 'main', 'yes');
INSERT INTO`tbl_fields` (`id`, `label`, `element_name`, `type`, `parent_section`, `required`, `sortorder`, `location`, `show_column`) VALUES (31, 'Type', 'type', 'select', 9, 'yes', 1, 'sidebar', 'yes');
INSERT INTO`tbl_fields` (`id`, `label`, `element_name`, `type`, `parent_section`, `required`, `sortorder`, `location`, `show_column`) VALUES (30, 'Naam', 'naam', 'input', 9, 'yes', 0, 'main', 'yes');
INSERT INTO`tbl_fields` (`id`, `label`, `element_name`, `type`, `parent_section`, `required`, `sortorder`, `location`, `show_column`) VALUES (67, 'Volledige Scoutsnaam', 'volledige-naam', 'input', 21, 'yes', 1, 'main', 'yes');
INSERT INTO`tbl_fields` (`id`, `label`, `element_name`, `type`, `parent_section`, `required`, `sortorder`, `location`, `show_column`) VALUES (66, 'Scoutsnaam', 'naam', 'input', 21, 'yes', 0, 'main', 'yes');
INSERT INTO`tbl_fields` (`id`, `label`, `element_name`, `type`, `parent_section`, `required`, `sortorder`, `location`, `show_column`) VALUES (65, 'Voorwoord', 'voorwoord', 'textarea', 19, 'yes', 2, 'main', 'no');
INSERT INTO`tbl_fields` (`id`, `label`, `element_name`, `type`, `parent_section`, `required`, `sortorder`, `location`, `show_column`) VALUES (105, 'Link', 'link', 'input', 22, 'yes', 2, 'main', 'yes');
INSERT INTO`tbl_fields` (`id`, `label`, `element_name`, `type`, `parent_section`, `required`, `sortorder`, `location`, `show_column`) VALUES (50, 'Huisnummer', 'huisnummer', 'input', 10, 'yes', 2, 'main', 'yes');
INSERT INTO`tbl_fields` (`id`, `label`, `element_name`, `type`, `parent_section`, `required`, `sortorder`, `location`, `show_column`) VALUES (51, 'Stad', 'stad', 'input', 10, 'yes', 3, 'main', 'yes');
INSERT INTO`tbl_fields` (`id`, `label`, `element_name`, `type`, `parent_section`, `required`, `sortorder`, `location`, `show_column`) VALUES (52, 'Postcode', 'postcode', 'input', 10, 'yes', 4, 'main', 'yes');
INSERT INTO`tbl_fields` (`id`, `label`, `element_name`, `type`, `parent_section`, `required`, `sortorder`, `location`, `show_column`) VALUES (86, 'Groepsleiding', 'groepsleiding', 'checkbox', 10, 'no', 8, 'sidebar', 'yes');
INSERT INTO`tbl_fields` (`id`, `label`, `element_name`, `type`, `parent_section`, `required`, `sortorder`, `location`, `show_column`) VALUES (87, 'Materiaalmeester', 'materiaalmeester', 'checkbox', 10, 'no', 9, 'sidebar', 'no');
INSERT INTO`tbl_fields` (`id`, `label`, `element_name`, `type`, `parent_section`, `required`, `sortorder`, `location`, `show_column`) VALUES (90, 'Knutselkot', 'knutselkot', 'checkbox', 10, 'no', 12, 'sidebar', 'no');
INSERT INTO`tbl_fields` (`id`, `label`, `element_name`, `type`, `parent_section`, `required`, `sortorder`, `location`, `show_column`) VALUES (89, 'Website', 'website', 'checkbox', 10, 'no', 11, 'sidebar', 'no');
INSERT INTO`tbl_fields` (`id`, `label`, `element_name`, `type`, `parent_section`, `required`, `sortorder`, `location`, `show_column`) VALUES (97, 'Tak', 'tak', 'select', 20, 'yes', 2, 'main', 'yes');
INSERT INTO`tbl_fields` (`id`, `label`, `element_name`, `type`, `parent_section`, `required`, `sortorder`, `location`, `show_column`) VALUES (68, 'Adres', 'adres', 'input', 21, 'yes', 2, 'main', 'yes');
INSERT INTO`tbl_fields` (`id`, `label`, `element_name`, `type`, `parent_section`, `required`, `sortorder`, `location`, `show_column`) VALUES (69, 'Lengtegraad', 'lengtegraad', 'input', 21, 'yes', 4, 'main', 'yes');
INSERT INTO`tbl_fields` (`id`, `label`, `element_name`, `type`, `parent_section`, `required`, `sortorder`, `location`, `show_column`) VALUES (70, 'Breedtegraad', 'breedtegraad', 'input', 21, 'yes', 5, 'main', 'yes');
INSERT INTO`tbl_fields` (`id`, `label`, `element_name`, `type`, `parent_section`, `required`, `sortorder`, `location`, `show_column`) VALUES (71, 'Contact Informatie', 'contact-informatie', 'textarea', 21, 'yes', 6, 'main', 'no');
INSERT INTO`tbl_fields` (`id`, `label`, `element_name`, `type`, `parent_section`, `required`, `sortorder`, `location`, `show_column`) VALUES (72, 'VZW informatie', 'vzw-informatie', 'textarea', 21, 'yes', 7, 'main', 'no');
INSERT INTO`tbl_fields` (`id`, `label`, `element_name`, `type`, `parent_section`, `required`, `sortorder`, `location`, `show_column`) VALUES (73, 'VZW Logo', 'vzw-logo', 'upload', 21, 'yes', 9, 'main', 'yes');
INSERT INTO`tbl_fields` (`id`, `label`, `element_name`, `type`, `parent_section`, `required`, `sortorder`, `location`, `show_column`) VALUES (114, 'Huidig', 'huidig', 'checkbox', 19, 'no', 3, 'main', 'yes');
INSERT INTO`tbl_fields` (`id`, `label`, `element_name`, `type`, `parent_section`, `required`, `sortorder`, `location`, `show_column`) VALUES (113, 'Slagzin', 'slagzin', 'input', 14, 'yes', 3, 'main', 'yes');
INSERT INTO`tbl_fields` (`id`, `label`, `element_name`, `type`, `parent_section`, `required`, `sortorder`, `location`, `show_column`) VALUES (76, 'Rekeningnummer', 'rekeningnummer', 'input', 21, 'yes', 3, 'main', 'yes');
INSERT INTO`tbl_fields` (`id`, `label`, `element_name`, `type`, `parent_section`, `required`, `sortorder`, `location`, `show_column`) VALUES (77, 'Inhoud', 'inhoud', 'input', 22, 'yes', 0, 'main', 'yes');
INSERT INTO`tbl_fields` (`id`, `label`, `element_name`, `type`, `parent_section`, `required`, `sortorder`, `location`, `show_column`) VALUES (104, 'Categorie', 'categorie', 'select', 13, 'yes', 2, 'sidebar', 'yes');
INSERT INTO`tbl_fields` (`id`, `label`, `element_name`, `type`, `parent_section`, `required`, `sortorder`, `location`, `show_column`) VALUES (107, 'Naam', 'naam', 'input', 26, 'yes', 0, 'main', 'yes');
INSERT INTO`tbl_fields` (`id`, `label`, `element_name`, `type`, `parent_section`, `required`, `sortorder`, `location`, `show_column`) VALUES (80, 'Actief', 'actief', 'checkbox', 22, 'no', 1, 'main', 'yes');
INSERT INTO`tbl_fields` (`id`, `label`, `element_name`, `type`, `parent_section`, `required`, `sortorder`, `location`, `show_column`) VALUES (81, 'Afbeelding', 'afbeelding', 'upload', 23, 'yes', 0, 'main', 'yes');
INSERT INTO`tbl_fields` (`id`, `label`, `element_name`, `type`, `parent_section`, `required`, `sortorder`, `location`, `show_column`) VALUES (82, 'Statistieken Code', 'statistieken-code', 'textarea', 21, 'yes', 12, 'main', 'no');
INSERT INTO`tbl_fields` (`id`, `label`, `element_name`, `type`, `parent_section`, `required`, `sortorder`, `location`, `show_column`) VALUES (88, 'Materiaal Verhuurder', 'materiaal-verhuurder', 'checkbox', 10, 'no', 10, 'sidebar', 'no');
INSERT INTO`tbl_fields` (`id`, `label`, `element_name`, `type`, `parent_section`, `required`, `sortorder`, `location`, `show_column`) VALUES (91, 'Sportkot', 'sportkot', 'checkbox', 10, 'no', 13, 'sidebar', 'no');
INSERT INTO`tbl_fields` (`id`, `label`, `element_name`, `type`, `parent_section`, `required`, `sortorder`, `location`, `show_column`) VALUES (92, 'BBQkot', 'bbqkot', 'checkbox', 10, 'no', 14, 'sidebar', 'no');
INSERT INTO`tbl_fields` (`id`, `label`, `element_name`, `type`, `parent_section`, `required`, `sortorder`, `location`, `show_column`) VALUES (96, 'Maandblad', 'maandblad', 'select', 20, 'yes', 1, 'main', 'yes');
INSERT INTO`tbl_fields` (`id`, `label`, `element_name`, `type`, `parent_section`, `required`, `sortorder`, `location`, `show_column`) VALUES (98, 'Naam', 'naam', 'input', 25, 'yes', 0, 'main', 'yes');
INSERT INTO`tbl_fields` (`id`, `label`, `element_name`, `type`, `parent_section`, `required`, `sortorder`, `location`, `show_column`) VALUES (99, 'Afbeelding', 'afbeelding', 'upload', 25, 'no', 1, 'main', 'yes');
INSERT INTO`tbl_fields` (`id`, `label`, `element_name`, `type`, `parent_section`, `required`, `sortorder`, `location`, `show_column`) VALUES (100, 'Tekst', 'tekst', 'textarea', 25, 'no', 2, 'main', 'no');
INSERT INTO`tbl_fields` (`id`, `label`, `element_name`, `type`, `parent_section`, `required`, `sortorder`, `location`, `show_column`) VALUES (101, 'Maandblad', 'maandblad', 'select', 25, 'yes', 3, 'sidebar', 'yes');
INSERT INTO`tbl_fields` (`id`, `label`, `element_name`, `type`, `parent_section`, `required`, `sortorder`, `location`, `show_column`) VALUES (102, 'Kreet', 'kreet', 'input', 9, 'yes', 3, 'main', 'yes');
INSERT INTO`tbl_fields` (`id`, `label`, `element_name`, `type`, `parent_section`, `required`, `sortorder`, `location`, `show_column`) VALUES (103, 'Leeftijd', 'leeftijd', 'input', 9, 'yes', 4, 'main', 'yes');
INSERT INTO`tbl_fields` (`id`, `label`, `element_name`, `type`, `parent_section`, `required`, `sortorder`, `location`, `show_column`) VALUES (108, 'Afbeelding', 'afbeelding', 'upload', 26, 'yes', 2, 'main', 'yes');
INSERT INTO`tbl_fields` (`id`, `label`, `element_name`, `type`, `parent_section`, `required`, `sortorder`, `location`, `show_column`) VALUES (109, 'Hoeveelheid', 'hoeveelheid', 'input', 26, 'yes', 3, 'main', 'yes');
INSERT INTO`tbl_fields` (`id`, `label`, `element_name`, `type`, `parent_section`, `required`, `sortorder`, `location`, `show_column`) VALUES (110, 'Prijs', 'prijs', 'input', 26, 'yes', 4, 'main', 'yes');
INSERT INTO`tbl_fields` (`id`, `label`, `element_name`, `type`, `parent_section`, `required`, `sortorder`, `location`, `show_column`) VALUES (111, 'Beschrijving', 'beschrijving', 'input', 26, 'no', 1, 'main', 'yes');
INSERT INTO`tbl_fields` (`id`, `label`, `element_name`, `type`, `parent_section`, `required`, `sortorder`, `location`, `show_column`) VALUES (112, 'Materiaalverhuur informatie', 'materiaalverhuur-informatie', 'textarea', 21, 'yes', 8, 'main', 'no');
INSERT INTO`tbl_fields` (`id`, `label`, `element_name`, `type`, `parent_section`, `required`, `sortorder`, `location`, `show_column`) VALUES (115, 'plaats', 'plaats', 'input', 9, 'yes', 5, 'main', 'yes');
INSERT INTO`tbl_fields` (`id`, `label`, `element_name`, `type`, `parent_section`, `required`, `sortorder`, `location`, `show_column`) VALUES (120, 'Achtergrond', 'achtergrond', 'select', 14, 'yes', 4, 'sidebar', 'yes');

-- *** DATA:`tbl_pages` ***
INSERT INTO`tbl_pages` (`id`, `parent`, `title`, `handle`, `path`, `params`, `data_sources`, `events`, `sortorder`) VALUES (88, NULL, 'Leiding', 'leiding', NULL, NULL, 'global,leiding,banners,achtergrondafbeeldingen,maandblad_huidig', NULL, 36);
INSERT INTO`tbl_pages` (`id`, `parent`, `title`, `handle`, `path`, `params`, `data_sources`, `events`, `sortorder`) VALUES (86, NULL, 'Bericht', 'bericht', NULL, 'id', 'bericht,banners,global,achtergrondafbeeldingen,maandblad_huidig', NULL, 34);
INSERT INTO`tbl_pages` (`id`, `parent`, `title`, `handle`, `path`, `params`, `data_sources`, `events`, `sortorder`) VALUES (85, NULL, 'Berichten', 'berichten', NULL, NULL, 'berichten,banners,global,achtergrondafbeeldingen,maandblad_huidig', NULL, 33);
INSERT INTO`tbl_pages` (`id`, `parent`, `title`, `handle`, `path`, `params`, `data_sources`, `events`, `sortorder`) VALUES (81, NULL, 'FAQ', 'faq', NULL, 'categorie', 'faq,faqcat,global,banners,achtergrondafbeeldingen,maandblad_huidig', NULL, 29);
INSERT INTO`tbl_pages` (`id`, `parent`, `title`, `handle`, `path`, `params`, `data_sources`, `events`, `sortorder`) VALUES (83, NULL, 'Maandblad', 'maandblad', NULL, 'selector/type/pagina', 'achtergrondafbeeldingen,banners,global,maandblad,maandblad_extra,maandblad_huidig,maandblad_tak,tak', NULL, 31);
INSERT INTO`tbl_pages` (`id`, `parent`, `title`, `handle`, `path`, `params`, `data_sources`, `events`, `sortorder`) VALUES (84, NULL, 'Tak', 'tak', NULL, 'taknaam', 'global,leiding,tak,banners,achtergrondafbeeldingen,maandblad_huidig', NULL, 32);
INSERT INTO`tbl_pages` (`id`, `parent`, `title`, `handle`, `path`, `params`, `data_sources`, `events`, `sortorder`) VALUES (89, NULL, 'Verhuur', 'verhuur', NULL, NULL, 'banners,global,verhuurders,verhuurlijst,achtergrondafbeeldingen,maandblad_huidig', NULL, 37);
INSERT INTO`tbl_pages` (`id`, `parent`, `title`, `handle`, `path`, `params`, `data_sources`, `events`, `sortorder`) VALUES (87, NULL, 'Informatie', 'informatie', NULL, NULL, 'global,leiding,banners,achtergrondafbeeldingen,maandblad_huidig', NULL, 35);
INSERT INTO`tbl_pages` (`id`, `parent`, `title`, `handle`, `path`, `params`, `data_sources`, `events`, `sortorder`) VALUES (77, NULL, 'Home', 'home', NULL, NULL, 'achtergrondafbeeldingen,banners,berichten_home,global,maandblad_huidig', NULL, 25);
INSERT INTO`tbl_pages` (`id`, `parent`, `title`, `handle`, `path`, `params`, `data_sources`, `events`, `sortorder`) VALUES (90, NULL, 'VZW', 'vzw', NULL, NULL, 'banners,global,achtergrondafbeeldingen,maandblad_huidig', NULL, 38);
INSERT INTO`tbl_pages` (`id`, `parent`, `title`, `handle`, `path`, `params`, `data_sources`, `events`, `sortorder`) VALUES (91, NULL, 'Groepsleiding', 'groepsleiding', NULL, NULL, 'banners,global,leiding,achtergrondafbeeldingen,maandblad_huidig', NULL, 39);
INSERT INTO`tbl_pages` (`id`, `parent`, `title`, `handle`, `path`, `params`, `data_sources`, `events`, `sortorder`) VALUES (92, NULL, 403, 403, NULL, NULL, 'achtergrondafbeeldingen,banners,global,maandblad_huidig', NULL, 40);
INSERT INTO`tbl_pages` (`id`, `parent`, `title`, `handle`, `path`, `params`, `data_sources`, `events`, `sortorder`) VALUES (93, NULL, 404, 404, NULL, NULL, 'achtergrondafbeeldingen,banners,global,maandblad_huidig', NULL, 41);
INSERT INTO`tbl_pages` (`id`, `parent`, `title`, `handle`, `path`, `params`, `data_sources`, `events`, `sortorder`) VALUES (96, NULL, 'Vorige Maandbladen', 'vorige-maandbladen', NULL, NULL, 'achtergrondafbeeldingen,banners,global,maandbladen', NULL, 44);
INSERT INTO`tbl_pages` (`id`, `parent`, `title`, `handle`, `path`, `params`, `data_sources`, `events`, `sortorder`) VALUES (95, NULL, 'RSS', 'rss', NULL, NULL, 'berichten,global,achtergrondafbeeldingen,banners,maandblad_huidig', NULL, 43);

-- *** DATA:`tbl_pages_types` ***
INSERT INTO`tbl_pages_types` (`id`, `page_id`, `type`) VALUES (697, 77, 'index');
INSERT INTO`tbl_pages_types` (`id`, `page_id`, `type`) VALUES (696, 95, 'XML');
INSERT INTO`tbl_pages_types` (`id`, `page_id`, `type`) VALUES (692, 92, 403);
INSERT INTO`tbl_pages_types` (`id`, `page_id`, `type`) VALUES (693, 93, 404);

-- *** DATA:`tbl_sections` ***
INSERT INTO`tbl_sections` (`id`, `name`, `handle`, `sortorder`, `hidden`, `static`, `navigation_group`) VALUES (13, 'FAQ', 'faq', 5, 'no', 'no', 'Website');
INSERT INTO`tbl_sections` (`id`, `name`, `handle`, `sortorder`, `hidden`, `static`, `navigation_group`) VALUES (19, 'Maandbladen', 'maandbladen', 8, 'no', 'no', 'Maandblad');
INSERT INTO`tbl_sections` (`id`, `name`, `handle`, `sortorder`, `hidden`, `static`, `navigation_group`) VALUES (18, 'FAQ Categorieën', 'faq-categorieen', 4, 'no', 'no', 'Website');
INSERT INTO`tbl_sections` (`id`, `name`, `handle`, `sortorder`, `hidden`, `static`, `navigation_group`) VALUES (10, 'Leiding', 'leiding', 2, 'no', 'no', 'Leiding');
INSERT INTO`tbl_sections` (`id`, `name`, `handle`, `sortorder`, `hidden`, `static`, `navigation_group`) VALUES (9, 'Takken', 'takken', 1, 'no', 'no', 'Leiding');
INSERT INTO`tbl_sections` (`id`, `name`, `handle`, `sortorder`, `hidden`, `static`, `navigation_group`) VALUES (14, 'Berichten', 'berichten', 6, 'no', 'no', 'Website');
INSERT INTO`tbl_sections` (`id`, `name`, `handle`, `sortorder`, `hidden`, `static`, `navigation_group`) VALUES (26, 'Verhuurlijst', 'verhuurlijst', 12, 'no', 'no', 'Website');
INSERT INTO`tbl_sections` (`id`, `name`, `handle`, `sortorder`, `hidden`, `static`, `navigation_group`) VALUES (25, 'Extra pagina\'s', 'extra-paginas', 11, 'no', 'no', 'Maandblad');
INSERT INTO`tbl_sections` (`id`, `name`, `handle`, `sortorder`, `hidden`, `static`, `navigation_group`) VALUES (20, 'Tak pagina\'s', 'tak-paginas', 9, 'no', 'no', 'Maandblad');
INSERT INTO`tbl_sections` (`id`, `name`, `handle`, `sortorder`, `hidden`, `static`, `navigation_group`) VALUES (21, 'Informatie', 'informatie', 3, 'no', 'yes', 'Website');
INSERT INTO`tbl_sections` (`id`, `name`, `handle`, `sortorder`, `hidden`, `static`, `navigation_group`) VALUES (22, 'Banners', 'banners', 7, 'no', 'no', 'Website');
INSERT INTO`tbl_sections` (`id`, `name`, `handle`, `sortorder`, `hidden`, `static`, `navigation_group`) VALUES (23, 'Achtergrondafbeeldingen', 'achtergrondafbeeldingen', 10, 'no', 'no', 'Website');

-- *** DATA:`tbl_sections_association` ***
INSERT INTO`tbl_sections_association` (`id`, `parent_section_id`, `parent_section_field_id`, `child_section_id`, `child_section_field_id`, `hide_association`) VALUES (52, 18, 58, 13, 104, 'yes');
INSERT INTO`tbl_sections_association` (`id`, `parent_section_id`, `parent_section_field_id`, `child_section_id`, `child_section_field_id`, `hide_association`) VALUES (77, 9, 30, 10, 37, 'yes');
INSERT INTO`tbl_sections_association` (`id`, `parent_section_id`, `parent_section_field_id`, `child_section_id`, `child_section_field_id`, `hide_association`) VALUES (72, 9, 30, 20, 97, 'yes');
INSERT INTO`tbl_sections_association` (`id`, `parent_section_id`, `parent_section_field_id`, `child_section_id`, `child_section_field_id`, `hide_association`) VALUES (75, 19, 93, 25, 101, 'no');
INSERT INTO`tbl_sections_association` (`id`, `parent_section_id`, `parent_section_field_id`, `child_section_id`, `child_section_field_id`, `hide_association`) VALUES (71, 19, 93, 20, 96, 'no');
