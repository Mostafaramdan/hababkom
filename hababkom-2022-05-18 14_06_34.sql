

CREATE TABLE `admins` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `phone2` varchar(255) DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `is_active` int(11) NOT NULL DEFAULT 1,
  `permissions` text DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=43 DEFAULT CHARSET=utf8mb4;


INSERT INTO admins (id, name, email, phone, phone2, password, is_active, permissions) VALUES ('1','maneger','demo@magdsoft.com','01010527544','','$2a$12$1IeVrmYhNzWUl469hNmZmu2/1D8AnAhxGPyF4VvghJYZ.O5tfdYzq','1','{"statistics":{"name_ar":"\u0627\u0644\u0627\u062d\u0635\u0627\u0626\u064a\u0627\u062a","name_en":"statistics","permissions":{"view":true}},"users":{"name_ar":"\u0627\u0644\u0639\u0645\u0644\u0627\u0621","name_en":"users","permissions":{"create":true,"update":true,"delete":true,"view":true}},"housing_units":{"name_ar":"\u0627\u0644\u063a\u0631\u0641","name_en":"housing_units","permissions":{"create":true,"update":true,"delete":true,"view":true}},"estates":{"name_ar":"\u0627\u0644\u0641\u0646\u0627\u062f\u0642","name_en":"estates","permissions":{"create":true,"update":true,"delete":true,"view":true}},"apartments_complexes":{"name_ar":"\u0645\u062c\u0645\u0639\u0627\u062a \u0627\u0644\u0634\u0642\u0642","name_en":"apartments_complexes","permissions":{"create":true,"update":true,"delete":true,"view":true}},"apartments":{"name_ar":"\u0627\u0644\u0634\u0642\u0642","name_en":"apartments","permissions":{"create":true,"update":true,"delete":true,"view":true}},"orders":{"name_ar":"\u0627\u0644\u062d\u062c\u0648\u0632\u0627\u062a","name_en":"orders","permissions":{"create":true,"update":true,"delete":true,"view":true}},"offers":{"name_ar":"\u0627\u0644\u0639\u0631\u0648\u0636","name_en":"offers","permissions":{"create":true,"update":true,"delete":true,"view":true}},"attachments":{"name_ar":"\u0627\u0644\u0645\u0631\u0627\u0641\u0642","name_en":"attachments","permissions":{"create":true,"update":true,"delete":true,"view":true}},"regions":{"name_ar":"\u0627\u0644\u062f\u0648\u0644 \/ \u0627\u0644\u0645\u062f\u0646 \/ \u0627\u0644\u0645\u0646\u0627\u0637\u0642","name_en":"regions","componentVue":"countries","permissions":{"create":true,"update":true,"delete":true,"view":true}},"contacts":{"name_ar":"\u0627\u0644\u0634\u0643\u0627\u0648\u064a \u0648\u0627\u0644\u0627\u0642\u062a\u0631\u0627\u062d\u0627\u062a","name_en":"contacts","permissions":{"delete":true,"view":true}},"vouchers":{"name_ar":"\u0623\u0643\u0648\u0627\u062f \u0627\u0644\u062e\u0635\u0645","name_en":"vouchers","permissions":{"create":true,"update":true,"delete":true,"view":true}},"notifications":{"name_ar":"\u0627\u0644\u0627\u0634\u0639\u0627\u0631\u0627\u062a","name_en":"notifications","permissions":{"create":true,"update":true,"delete":true,"view":true}},"currencies":{"name_ar":"\u0627\u0644\u0639\u0645\u0644\u0627\u062a","name_en":"currencies","permissions":{"create":true,"update":true,"delete":true,"view":true}},"app_settings":{"name_ar":"\u0627\u0644\u0627\u0639\u062f\u0627\u062f\u0627\u062a","name_en":"app_settings","permissions":{"create":true,"update":true,"delete":true,"view":true}},"admins":{"name_ar":"\u0627\u0644\u0645\u0633\u0624\u0648\u0644\u064a\u0646","name_en":"admins","permissions":{"create":true,"update":true,"delete":true,"view":true}}}');

INSERT INTO admins (id, name, email, phone, phone2, password, is_active, permissions) VALUES ('9','hababcom','hababkom@magdsoft.com','011142228487','','$2y$12$q7/ca2B4Ml4ZHmm4Km8o3uSW9GoH2nQ6WumsEkG5Zdbs/1BgbUUgS','1','{"statistics":{"name_ar":"\u0627\u0644\u0627\u062d\u0635\u0627\u0626\u064a\u0627\u062a","name_en":"statistics","permissions":{"view":true}},"users":{"name_ar":"\u0627\u0644\u0639\u0645\u0644\u0627\u0621","name_en":"users","permissions":{"create":true,"update":true,"delete":true,"view":true}},"housing_units":{"name_ar":"\u0627\u0644\u063a\u0631\u0641","name_en":"housing_units","permissions":{"create":true,"update":true,"delete":true,"view":true}},"estates":{"name_ar":"\u0627\u0644\u0641\u0646\u0627\u062f\u0642","name_en":"estates","permissions":{"create":true,"update":true,"delete":true,"view":true}},"apartments_complexes":{"name_ar":"\u0645\u062c\u0645\u0639\u0627\u062a \u0627\u0644\u0634\u0642\u0642","name_en":"apartments_complexes","permissions":{"create":true,"update":true,"delete":true,"view":true}},"apartments":{"name_ar":"\u0627\u0644\u0634\u0642\u0642","name_en":"apartments","permissions":{"create":true,"update":true,"delete":true,"view":true}},"orders":{"name_ar":"\u0627\u0644\u062d\u062c\u0648\u0632\u0627\u062a","name_en":"orders","permissions":{"create":true,"update":true,"delete":true,"view":true}},"offers":{"name_ar":"\u0627\u0644\u0639\u0631\u0648\u0636","name_en":"offers","permissions":{"create":true,"update":true,"delete":true,"view":true}},"attachments":{"name_ar":"\u0627\u0644\u0645\u0631\u0627\u0641\u0642","name_en":"attachments","permissions":{"create":true,"update":true,"delete":true,"view":true}},"regions":{"name_ar":"\u0627\u0644\u062f\u0648\u0644 \/ \u0627\u0644\u0645\u062f\u0646 \/ \u0627\u0644\u0645\u0646\u0627\u0637\u0642","name_en":"regions","componentVue":"countries","permissions":{"create":true,"update":true,"delete":true,"view":true}},"contacts":{"name_ar":"\u0627\u0644\u0634\u0643\u0627\u0648\u064a \u0648\u0627\u0644\u0627\u0642\u062a\u0631\u0627\u062d\u0627\u062a","name_en":"contacts","permissions":{"delete":true,"view":true}},"vouchers":{"name_ar":"\u0623\u0643\u0648\u0627\u062f \u0627\u0644\u062e\u0635\u0645","name_en":"vouchers","permissions":{"create":true,"update":true,"delete":true,"view":true}},"notifications":{"name_ar":"\u0627\u0644\u0627\u0634\u0639\u0627\u0631\u0627\u062a","name_en":"notifications","permissions":{"create":true,"update":true,"delete":true,"view":true}},"currencies":{"name_ar":"\u0627\u0644\u0639\u0645\u0644\u0627\u062a","name_en":"currencies","permissions":{"create":true,"update":true,"delete":true,"view":true}},"app_settings":{"name_ar":"\u0627\u0644\u0627\u0639\u062f\u0627\u062f\u0627\u062a","name_en":"app_settings","permissions":{"create":true,"update":true,"delete":true,"view":true}},"admins":{"name_ar":"\u0627\u0644\u0645\u0633\u0624\u0648\u0644\u064a\u0646","name_en":"admins","permissions":{"create":true,"update":true,"delete":true,"view":true}}}');

INSERT INTO admins (id, name, email, phone, phone2, password, is_active, permissions) VALUES ('33','محمد عمر','mohamed.omer@gmail.com','012355695','','$2y$10$AGfEYYWom1pVQSrdOyPNwOCwdJSG1SFQa4gPfoTkiOwr0uAC5C0p2','1','{"statistics":{"name_ar":"\u0627\u0644\u0627\u062d\u0635\u0627\u0626\u064a\u0627\u062a","name_en":"statistics","permissions":{"view":true}},"users":{"name_ar":"\u0627\u0644\u0639\u0645\u0644\u0627\u0621","name_en":"users","permissions":{"create":true,"update":true,"delete":true,"view":true}},"housing_units":{"name_ar":"\u0627\u0644\u063a\u0631\u0641","name_en":"housing_units","permissions":{"create":true,"update":true,"delete":true,"view":true}},"estates":{"name_ar":"\u0627\u0644\u0641\u0646\u0627\u062f\u0642","name_en":"estates","permissions":{"create":true,"update":true,"delete":true,"view":true}},"apartments_complexes":{"name_ar":"\u0645\u062c\u0645\u0639\u0627\u062a \u0627\u0644\u0634\u0642\u0642","name_en":"apartments_complexes","permissions":{"create":true,"update":true,"delete":true,"view":true}},"apartments":{"name_ar":"\u0627\u0644\u0634\u0642\u0642","name_en":"apartments","permissions":{"create":true,"update":true,"delete":true,"view":true}},"orders":{"name_ar":"\u0627\u0644\u062d\u062c\u0648\u0632\u0627\u062a","name_en":"orders","permissions":{"create":true,"update":true,"delete":true,"view":true}},"offers":{"name_ar":"\u0627\u0644\u0639\u0631\u0648\u0636","name_en":"offers","permissions":{"create":true,"update":true,"delete":true,"view":true}},"attachments":{"name_ar":"\u0627\u0644\u0645\u0631\u0627\u0641\u0642","name_en":"attachments","permissions":{"create":true,"update":true,"delete":true,"view":true}},"regions":{"name_ar":"\u0627\u0644\u062f\u0648\u0644 \/ \u0627\u0644\u0645\u062f\u0646 \/ \u0627\u0644\u0645\u0646\u0627\u0637\u0642","name_en":"regions","componentVue":"countries","permissions":{"create":true,"update":true,"delete":true,"view":true}},"contacts":{"name_ar":"\u0627\u0644\u0634\u0643\u0627\u0648\u064a \u0648\u0627\u0644\u0627\u0642\u062a\u0631\u0627\u062d\u0627\u062a","name_en":"contacts","permissions":{"delete":true,"view":true}},"vouchers":{"name_ar":"\u0623\u0643\u0648\u0627\u062f \u0627\u0644\u062e\u0635\u0645","name_en":"vouchers","permissions":{"create":true,"update":true,"delete":true,"view":true}},"notifications":{"name_ar":"\u0627\u0644\u0627\u0634\u0639\u0627\u0631\u0627\u062a","name_en":"notifications","permissions":{"create":true,"update":true,"delete":true,"view":true}},"currencies":{"name_ar":"\u0627\u0644\u0639\u0645\u0644\u0627\u062a","name_en":"currencies","permissions":{"create":true,"update":true,"delete":true,"view":true}},"app_settings":{"name_ar":"\u0627\u0644\u0627\u0639\u062f\u0627\u062f\u0627\u062a","name_en":"app_settings","permissions":{"create":true,"update":true,"delete":true,"view":true}},"admins":{"name_ar":"\u0627\u0644\u0645\u0633\u0624\u0648\u0644\u064a\u0646","name_en":"admins","permissions":{"create":true,"update":true,"delete":true,"view":true}}}');

INSERT INTO admins (id, name, email, phone, phone2, password, is_active, permissions) VALUES ('35','Ahmed','bakry177@yahoo.com','00966557782092','','$2y$10$muZ2Ay7mrKR8Y7zBmWfavOCP5V7fzM85xLQQHN049lzgUhi2wWYyS','1','{"statistics":{"name_ar":"\u0627\u0644\u0627\u062d\u0635\u0627\u0626\u064a\u0627\u062a","name_en":"statistics","permissions":{"view":true}},"users":{"name_ar":"\u0627\u0644\u0639\u0645\u0644\u0627\u0621","name_en":"users","permissions":{"create":true,"update":true,"delete":true,"view":true}},"housing_units":{"name_ar":"\u0627\u0644\u063a\u0631\u0641","name_en":"housing_units","permissions":{"create":true,"update":true,"delete":true,"view":true}},"estates":{"name_ar":"\u0627\u0644\u0641\u0646\u0627\u062f\u0642","name_en":"estates","permissions":{"create":true,"update":true,"delete":true,"view":true}},"apartments_complexes":{"name_ar":"\u0645\u062c\u0645\u0639\u0627\u062a \u0627\u0644\u0634\u0642\u0642","name_en":"apartments_complexes","permissions":{"create":true,"update":true,"delete":true,"view":true}},"apartments":{"name_ar":"\u0627\u0644\u0634\u0642\u0642","name_en":"apartments","permissions":{"create":true,"update":true,"delete":true,"view":true}},"orders":{"name_ar":"\u0627\u0644\u062d\u062c\u0648\u0632\u0627\u062a","name_en":"orders","permissions":{"create":true,"update":true,"delete":true,"view":true}},"offers":{"name_ar":"\u0627\u0644\u0639\u0631\u0648\u0636","name_en":"offers","permissions":{"create":true,"update":true,"delete":true,"view":true}},"attachments":{"name_ar":"\u0627\u0644\u0645\u0631\u0627\u0641\u0642","name_en":"attachments","permissions":{"create":true,"update":true,"delete":true,"view":true}},"regions":{"name_ar":"\u0627\u0644\u062f\u0648\u0644 \/ \u0627\u0644\u0645\u062f\u0646 \/ \u0627\u0644\u0645\u0646\u0627\u0637\u0642","name_en":"regions","componentVue":"countries","permissions":{"create":true,"update":true,"delete":true,"view":true}},"contacts":{"name_ar":"\u0627\u0644\u0634\u0643\u0627\u0648\u064a \u0648\u0627\u0644\u0627\u0642\u062a\u0631\u0627\u062d\u0627\u062a","name_en":"contacts","permissions":{"delete":true,"view":true}},"vouchers":{"name_ar":"\u0623\u0643\u0648\u0627\u062f \u0627\u0644\u062e\u0635\u0645","name_en":"vouchers","permissions":{"create":true,"update":true,"delete":true,"view":true}},"notifications":{"name_ar":"\u0627\u0644\u0627\u0634\u0639\u0627\u0631\u0627\u062a","name_en":"notifications","permissions":{"create":true,"update":true,"delete":true,"view":true}},"currencies":{"name_ar":"\u0627\u0644\u0639\u0645\u0644\u0627\u062a","name_en":"currencies","permissions":{"create":true,"update":true,"delete":true,"view":true}},"app_settings":{"name_ar":"\u0627\u0644\u0627\u0639\u062f\u0627\u062f\u0627\u062a","name_en":"app_settings","permissions":{"create":true,"update":true,"delete":true,"view":true}},"admins":{"name_ar":"\u0627\u0644\u0645\u0633\u0624\u0648\u0644\u064a\u0646","name_en":"admins","permissions":{"create":true,"update":true,"delete":true,"view":true}}}');

INSERT INTO admins (id, name, email, phone, phone2, password, is_active, permissions) VALUES ('36','أحمد عبدالله','ahmed.a@gmail.com','012355888','0912356889','$2y$10$vpAE4hn89MMKXjIJzkfVF.KDPu73mq/tLXTnqVV6Fu5xZvWW8BEuq','1','{"statistics":{"name_ar":"\u0627\u0644\u0627\u062d\u0635\u0627\u0626\u064a\u0627\u062a","name_en":"statistics","permissions":{"view":true}},"users":{"name_ar":"\u0627\u0644\u0639\u0645\u0644\u0627\u0621","name_en":"users","permissions":{"create":true,"update":true,"delete":true,"view":true}},"housing_units":{"name_ar":"\u0627\u0644\u063a\u0631\u0641","name_en":"housing_units","permissions":{"create":true,"update":true,"delete":true,"view":true}},"estates":{"name_ar":"\u0627\u0644\u0641\u0646\u0627\u062f\u0642","name_en":"estates","permissions":{"create":true,"update":true,"delete":true,"view":true}},"apartments_complexes":{"name_ar":"\u0645\u062c\u0645\u0639\u0627\u062a \u0627\u0644\u0634\u0642\u0642","name_en":"apartments_complexes","permissions":{"create":true,"update":true,"delete":true,"view":true}},"apartments":{"name_ar":"\u0627\u0644\u0634\u0642\u0642","name_en":"apartments","permissions":{"create":true,"update":true,"delete":true,"view":true}},"orders":{"name_ar":"\u0627\u0644\u062d\u062c\u0648\u0632\u0627\u062a","name_en":"orders","permissions":{"create":true,"update":true,"delete":true,"view":true}},"offers":{"name_ar":"\u0627\u0644\u0639\u0631\u0648\u0636","name_en":"offers","permissions":{"create":true,"update":true,"delete":true,"view":true}},"attachments":{"name_ar":"\u0627\u0644\u0645\u0631\u0627\u0641\u0642","name_en":"attachments","permissions":{"create":true,"update":true,"delete":true,"view":true}},"regions":{"name_ar":"\u0627\u0644\u062f\u0648\u0644 \/ \u0627\u0644\u0645\u062f\u0646 \/ \u0627\u0644\u0645\u0646\u0627\u0637\u0642","name_en":"regions","componentVue":"countries","permissions":{"create":true,"update":true,"delete":true,"view":true}},"contacts":{"name_ar":"\u0627\u0644\u0634\u0643\u0627\u0648\u064a \u0648\u0627\u0644\u0627\u0642\u062a\u0631\u0627\u062d\u0627\u062a","name_en":"contacts","permissions":{"delete":true,"view":true}},"vouchers":{"name_ar":"\u0623\u0643\u0648\u0627\u062f \u0627\u0644\u062e\u0635\u0645","name_en":"vouchers","permissions":{"create":true,"update":true,"delete":true,"view":true}},"notifications":{"name_ar":"\u0627\u0644\u0627\u0634\u0639\u0627\u0631\u0627\u062a","name_en":"notifications","permissions":{"create":true,"update":true,"delete":true,"view":true}},"currencies":{"name_ar":"\u0627\u0644\u0639\u0645\u0644\u0627\u062a","name_en":"currencies","permissions":{"create":true,"update":true,"delete":true,"view":true}},"app_settings":{"name_ar":"\u0627\u0644\u0627\u0639\u062f\u0627\u062f\u0627\u062a","name_en":"app_settings","permissions":{"create":true,"update":true,"delete":true,"view":true}},"admins":{"name_ar":"\u0627\u0644\u0645\u0633\u0624\u0648\u0644\u064a\u0646","name_en":"admins","permissions":{"create":true,"update":true,"delete":true,"view":true}}}');

INSERT INTO admins (id, name, email, phone, phone2, password, is_active, permissions) VALUES ('42','mostafa','ramdan@gmail.com','01114225454','','$2y$10$dYWtB30tT6LWtiJaCcV0/OqY0A79DPNCP49yVGyl97Bb5sZXbOKCO','1','{"statistics":{"name_ar":"\u0627\u0644\u0627\u062d\u0635\u0627\u0626\u064a\u0627\u062a","name_en":"statistics","permissions":{"view":true}},"users":{"name_ar":"\u0627\u0644\u0639\u0645\u0644\u0627\u0621","name_en":"users","permissions":{"create":false,"update":false,"delete":false,"view":true}},"housing_units":{"name_ar":"\u0627\u0644\u063a\u0631\u0641","name_en":"housing_units","permissions":{"create":false,"update":false,"delete":false,"view":true}},"estates":{"name_ar":"\u0627\u0644\u0641\u0646\u0627\u062f\u0642","name_en":"estates","permissions":{"create":true,"update":true,"delete":true,"view":true}},"apartments_complexes":{"name_ar":"\u0645\u062c\u0645\u0639\u0627\u062a \u0627\u0644\u0634\u0642\u0642","name_en":"apartments_complexes","permissions":{"create":true,"update":true,"delete":true,"view":true}},"apartments":{"name_ar":"\u0627\u0644\u0634\u0642\u0642","name_en":"apartments","permissions":{"create":true,"update":true,"delete":true,"view":true}},"orders":{"name_ar":"\u0627\u0644\u062d\u062c\u0648\u0632\u0627\u062a","name_en":"orders","permissions":{"create":true,"update":true,"delete":true,"view":true}},"offers":{"name_ar":"\u0627\u0644\u0639\u0631\u0648\u0636","name_en":"offers","permissions":{"create":true,"update":true,"delete":true,"view":true}},"attachments":{"name_ar":"\u0627\u0644\u0645\u0631\u0627\u0641\u0642","name_en":"attachments","permissions":{"create":true,"update":true,"delete":true,"view":true}},"regions":{"name_ar":"\u0627\u0644\u062f\u0648\u0644 \/ \u0627\u0644\u0645\u062f\u0646 \/ \u0627\u0644\u0645\u0646\u0627\u0637\u0642","name_en":"regions","componentVue":"countries","permissions":{"create":true,"update":true,"delete":true,"view":true}},"contacts":{"name_ar":"\u0627\u0644\u0634\u0643\u0627\u0648\u064a \u0648\u0627\u0644\u0627\u0642\u062a\u0631\u0627\u062d\u0627\u062a","name_en":"contacts","permissions":{"delete":true,"view":true}},"vouchers":{"name_ar":"\u0623\u0643\u0648\u0627\u062f \u0627\u0644\u062e\u0635\u0645","name_en":"vouchers","permissions":{"create":true,"update":true,"delete":true,"view":true}},"notifications":{"name_ar":"\u0627\u0644\u0627\u0634\u0639\u0627\u0631\u0627\u062a","name_en":"notifications","permissions":{"create":true,"update":true,"delete":true,"view":true}},"currencies":{"name_ar":"\u0627\u0644\u0639\u0645\u0644\u0627\u062a","name_en":"currencies","permissions":{"create":true,"update":true,"delete":true,"view":true}},"app_settings":{"name_ar":"\u0627\u0644\u0627\u0639\u062f\u0627\u062f\u0627\u062a","name_en":"app_settings","permissions":{"create":true,"update":true,"delete":true,"view":true}},"admins":{"name_ar":"\u0627\u0644\u0645\u0633\u0624\u0648\u0644\u064a\u0646","name_en":"admins","permissions":{"create":true,"update":true,"delete":true,"view":true}}}');


CREATE TABLE `apartments` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `rooms` int(11) NOT NULL,
  `price` int(11) NOT NULL,
  `final_price` int(11) NOT NULL,
  `total_rate` int(11) DEFAULT NULL,
  `kitchens` int(11) NOT NULL,
  `toilets` int(11) NOT NULL,
  `attachments` text DEFAULT NULL,
  `map_link` text DEFAULT NULL,
  `name_ar` text DEFAULT NULL,
  `name_en` text DEFAULT NULL,
  `description_ar` text DEFAULT NULL,
  `description_en` text DEFAULT NULL,
  `locations_id` int(11) DEFAULT NULL,
  `regions_id` int(11) DEFAULT NULL,
  `images` text DEFAULT NULL,
  `payment` enum('cash','visa') DEFAULT 'cash',
  `notes` text DEFAULT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `is_active` tinyint(1) DEFAULT 1,
  `street` text DEFAULT NULL,
  `apartments_complexes_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4;


INSERT INTO apartments (id, rooms, price, final_price, total_rate, kitchens, toilets, attachments, map_link, name_ar, name_en, description_ar, description_en, locations_id, regions_id, images, payment, notes, created_at, is_active, street, apartments_complexes_id) VALUES ('1','2','150','165','','2','2','[2,1,3]','','','','','','','','[431]','cash','','2022-05-18 08:51:17','1','','1');

INSERT INTO apartments (id, rooms, price, final_price, total_rate, kitchens, toilets, attachments, map_link, name_ar, name_en, description_ar, description_en, locations_id, regions_id, images, payment, notes, created_at, is_active, street, apartments_complexes_id) VALUES ('2','2','150','165','','2','2','[2,1,3]','','','','','','','','[431]','cash','','2022-05-18 08:51:17','1','','1');

INSERT INTO apartments (id, rooms, price, final_price, total_rate, kitchens, toilets, attachments, map_link, name_ar, name_en, description_ar, description_en, locations_id, regions_id, images, payment, notes, created_at, is_active, street, apartments_complexes_id) VALUES ('3','2','150','165','','2','2','[2,1,3]','','','','','','','','[431]','cash','','2022-05-18 08:51:18','1','','1');


CREATE TABLE `apartments_complexes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `locations_id` int(11) DEFAULT NULL,
  `name_ar` varchar(255) DEFAULT NULL,
  `name_en` varchar(255) DEFAULT NULL,
  `description_ar` varchar(255) DEFAULT NULL,
  `description_en` varchar(255) DEFAULT NULL,
  `payment` text DEFAULT NULL,
  `notes` text DEFAULT NULL,
  `regions_id` int(11) DEFAULT NULL,
  `location_description` text DEFAULT NULL,
  `attachments` text DEFAULT NULL,
  `images` text DEFAULT NULL,
  `map_link` text DEFAULT NULL,
  `street` text DEFAULT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `total_rate` float DEFAULT NULL,
  `is_active` tinyint(1) DEFAULT 1,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4;


INSERT INTO apartments_complexes (id, locations_id, name_ar, name_en, description_ar, description_en, payment, notes, regions_id, location_description, attachments, images, map_link, street, created_at, total_rate, is_active) VALUES ('1','74','test','test','test','test','cash','test','32','','[2,3,4]','[430]','https://www.google.com/maps/place/%D9%85%D8%AF%D9%8A%D9%86%D8%A9+%D8%A7%D9%84%D9%82%D8%A7%D9%87%D8%B1%D8%A9+%D8%A7%D9%84%D8%AC%D8%AF%D9%8A%D8%AF%D8%A9%D8%8C+%D9%85%D8%AD%D8%A7%D9%81%D8%B8%D8%A9+%D8%A7%D9%84%D9%82%D8%A7%D9%87%D8%B1%D8%A9%E2%80%AC%E2%80%AD/@30.017792,31.6275439,11z/data=!3m1!4b1!4m5!3m4!1s0x145822cffcd270e7:0x98b73d687889fd8!8m2!3d30.0072739!4d31.4912796','test','2022-05-18 08:49:53','','1');


CREATE TABLE `app_settings` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `policyTerms_ar` text DEFAULT NULL,
  `policyTerms_en` text DEFAULT NULL,
  `aboutUs_ar` text DEFAULT NULL,
  `aboutUs_en` text DEFAULT NULL,
  `privacy_ar` text DEFAULT NULL,
  `privacy_en` text DEFAULT NULL,
  `emails` text DEFAULT NULL,
  `phones` text CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL,
  `daysToDelivery` int(11) DEFAULT NULL,
  `fees` varchar(50) DEFAULT NULL,
  `final_price_in_search` float DEFAULT NULL,
  `finalPriceInSearch` float DEFAULT 1000,
  `finalDistanceInSearch` float DEFAULT 100,
  `final_price_equation` float DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_UNIQUE` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;


INSERT INTO app_settings (id, policyTerms_ar, policyTerms_en, aboutUs_ar, aboutUs_en, privacy_ar, privacy_en, emails, phones, daysToDelivery, fees, final_price_in_search, finalPriceInSearch, finalDistanceInSearch, final_price_equation) VALUES ('2','شروط الاستخدام
مرحباً بكم في تطبيق حبابكم لحجز الفنادق والشقق المفروشة
1)	المقدمة
1.1.	يرجى قراءة ومراجعة شروط الاستخدام وسياسة الخصوصية (مجتمعة "الشروط والأحكام") بعناية قبل الوصول أو استخدام تطبيق حبابكم لحجز الفنادق والشقق المفروشة -يُشار إليه فيما بعد باسم ("حبابكم")- لأنها تؤثر على حقوقك والتزاماتك القانونية. هذه الشروط ("شروط الاستخدام") هي عقد مبرم بينك وبين حبابكم وتنطبق على جميع مستخدمي التطبيق والخدمات. إذا كنت تحت سن الثامنة عشر، تأكد من أن والديك أو الوصي القانوني قرأ ووافق على هذه الاتفاقية نيابة عنك.
1.2.	يعد وصولك واستخدامك لأي من الخدمات أو التطبيق بمثابة الإقرار والموافقة التامة على قبول الشروط والأحكام المنصوص عليها في هذه الوثيقة ("الاتفاقية"). إذا كنت لا توافق على هذه الاتفاقية (التي تتكون من شروط الاستخدام هذه وسياسة الخصوصية الخاصة بنا). 
1.3.	نحن نحتفظ بحق:
1.3.1.	تعديل هذه الشروط والأحكام.
1.3.2.	رفض وصول أي مستخدم إلى تطبيق حبابكم.
1.3.3.	إيقاف حسابات المستخدمين المخالفين لشروط وأحكام تطبيق حبابكم.
1.3.4.	تعديل أو حجب (بشكل مؤقت أو دائم) تطبيق حبابكم دون إشعار.
1.4.	يُرجى الاطلاع على هذه الصفحة بشكل منتظم لمعرفة ما إذا قد تم تحديث الشروط والأحكام الخاصة بنا. وستدخل أي شروط جديدة حيز النفاذ عند نشرها على تطبيق حبابكم.
1.5.	لا تؤثر عناوين الأقسام في تفسير شروط الاستخدام هذه.
2)	التعريفات 
في هذه الاتفاقية، وما لم يقتضي السياق خلاف ذلك يكون للمصطلحات التالية المعاني المشار إليها: 
2.1.	"حبابكم"، "التطبيق"، "الإدارة"، "نحن"، "ضمير المتكلم" أو "ضمير الملكية": تشير إلى تطبيق حبابكم لحجز الفنادق والشقق المفروشة.
2.2.	"الحساب": يُشير إلى حساب المستخدم في التطبيق والذي يمكِّنه من الانتفاع بخدمات التطبيق.
2.3.	"المستخدم/أنت/أنك": يُشير إلى أي شخص يقوم بإنشاء حساب ويستخدم التطبيق.
2.4.	 "الحجز": يُشير إلى الحجز الذي تقوم به للإقامة في الفندق، سواء تم من خلال نظام الحجز عبر الإنترنت أو خلافه.
2.5.	"المحتوى" يُشير إلى جميع الصوتيات، والفيديوهات، والنصوص، والرسومات، والصور، وأي مواد أخرى يتم إدخالها، أو معالجتها، أو تضمينها، أو الدخول إليها من خلال التطبيق او الموقع الالكتروني.
2.6.	"الاتفاقية": تُشير إلى هذه الوثيقة وما تتضمنه من شروط الاستخدام، وكذلك سياسة الخصوصية، وكافة السياسات المكملة والمنفذة لاتفاقك معنا.

3)	الوصول إلى التطبيق واستخدام الخدمات 
حبابكم لحجز الفنادق والشقق المفروشة عبارة عن تطبيق الكتروني يعمل على أنظمة أندرويد و آي أو اس اضافة الى الموقع الالكتروني، يوفر للمستخدمين خدمة البحث وحجز الفنادق والشقق المفروشة والحجز عن طريق الإنترنت.
3.1.	الوصول إلى التطبيق
3.1.1.	يتحمل المستخدم مسؤولية الحصول على جميع الأجهزة الخاصة والبرمجيات والمعدات الأخرى اللازمة للوصول إلى واستخدام تطبيق حبابكم وجميع النفقات المتعلقة بذلك.
3.1.2.	أنت توافق على الامتثال لأي وجميع الإرشادات والإشعارات وقواعد وسياسات التشغيل والتعليمات المتعلقة باستخدام الخدمات و/أو الوصول إلى التطبيق. نحن نحتفظ بالحق في مراجعتها في أي وقت، وتعتبر على علم بأي تغييرات على ما سبق عند نشرها على تطبيق حبابكم.
3.2.	الترخيص 
3.2.1.	يمنحك تطبيق حبابكم ترخيصاً محدوداً وغير حصري وغير قابل للترخيص وقابل للإلغاء وغير قابل للتحويل من أجل:
3.2.2.	الوصول إلى واستخدام التطبيق لأغراضك الشخصية.
3.2.3.	الوصول إلى واستخدام أي محتوى والمعلومات والمواد ذات الصلة التي قد تكون متاحة من خلال الخدمات فقط للاستخدام الشخصي غير التجاري. أي حقوق غير ممنوحة لك صراحة في هذه الاتفاقية محفوظة من قبل تطبيق  حبابكم ومرخِصّيها.
3.3.	قيود الاستخدام
تخضع الحقوق الممنوحة لك في هذه الاتفاقية للقيود التالية: 
3.3.1.	لا يجوز لك إنشاء حساب أو الوصول إلى الخدمة إذا كان عمرك أقل من 18 عاماً، أنت تتحمل المسؤولية الكاملة عن أي استخدام غير مصرح به للخدمة. 
3.3.2.	لا يجوز لك ترخيص أو بيع أو تأجير أو نقل أو تخصيص أو توزيع أو استضافة أو استغلال الخدمة. 
3.3.3.	لا يجوز لك تعديل أو ترجمة أو تكييف أو دمج أو إجراء أعمال مشتقة لأي جزء من التطبيق أو تفكيكه، باستثناء ما إذا كانت القيود السالفة الذكر محظورة صراحة بموجب القانون المعمول به. 
3.3.4.	لا يجوز لك الوصول إلى الخدمة أو التطبيق من أجل إنشاء خدمات مشابهة أو منافسة. 
3.3.5.	باستثناء ما هو منصوص عليه صراحة في هذه الوثيقة، لا يجوز نسخ أي جزء من التطبيق، أو إعادة إنتاجه، أو توزيعه، أو إعادة نشره، أو عرضه، أو إرساله أو نقله بأي شكل من الأشكال أو بأي وسيلة.
3.3.6.	لا يجوز لك إزالة أو إتلاف أي إشعارات بحقوق التأليف والنشر أو علامات الملكية الواردة في التطبيق.
4)	الحساب وكلمة المرور
4.1.	خدماتنا ليست موجهة إلى أي شخص أقل من 18 عاماً. وباستكمالك عملية التسجيل فأنت تقر بأنك مؤهل للتسجيل، وتضمن أن لديك الأهلية القانونية الكاملة لإبرام العقود (بما في ذلك - على سبيل المثال: بلوغك السن القانوني اللازم لإبرام العقود).
4.2.	تسجيل الحساب والعضوية في تطبيق حبابكم مجاني، حيث يمكن لجميع المستخدمين المسجلين الوصول إلى جميع محتويات التطبيق.
4.3.	من خلال تسجيلك حساب في تطبيق حبابكم فأنت توافق صراحةً على إبرام هذه الاتفاقية معنا. وتقر بأن المعلومات التي تقدّمها دقيقة وحديثة وستقوم بتحديثها على الفور إذا طرأت عليها أي تغيرات.
4.4.	تُعامل معلومات الدخول بعد إنشاء حساب المستخدم بسرية تامة وعدم الإفصاح عنها لأي طرف ثالث، وذلك كجزء من إجراءاتنا الخاصة بأمن وخصوصية الدخول. 
4.5.	أنت تقر وتضمن بأنك مسؤول عن حماية كلمة المرور التي تستخدمها للوصول إلى الخدمات وتوافق على عدم الكشف عن كلمة المرور الخاصة بك لأي طرف آخر.
4.6.	أنت مسؤول عن أي استخدام لبطاقات الائتمان الخاصة بك أو طرق الدفع الأخرى عند دفع الرسوم المطلوبة.
4.7.	أنت توافق على أن جميع الأنشطة التي تحدث تحت حسابك مصرحاً بها من قبلك، ولا يجوز لك مشاركة معلومات حسابك مع أي طرف ثالث أو السماح بالوصول إلى حسابك. ويجب عليك الحفاظ على سرية اسم المستخدم وكلمة المرور وأي جهاز تستخدمه للوصول إلى حساب حبابكم.
4.8.	يحق لنا تعطيل أي حساب مستخدم في أي وقت؛ إذا رأينا أنك قد فشلت في الامتثال لأي من شروط الاستخدام هذه.
4.9.	لا يجوز لك استخدام حسابك لأي غرض احتيالي أو غير لائق أو أي غرض يكون منافساً لتطبيق حبابكم. ويجب عليك إبلاغنا فوراً في حالة الشك بأن شخصاً آخر على علم بحساب المستخدم أو كلمة المرور الخاصة بك، وذلك حتى نستطيع اتخاذ الإجراءات التقنية اللازمة للحفاظ على الحساب.
4.10.	يحتفظ تطبيق حبابكم بالحق في رفض أو إلغاء تسجيل أو إزالة أو منع أي شخص من استخدام التطبيق لأي سبب من الأسباب، وتقييد أو إنهاء وصولك إلى التطبيق أو استخدامه في أي وقت دون إشعار في الحالات التالية: 
4.10.1.	إذا قدمت أي معلومات تحددها إدارة حبابكم وفقاً لتقديرها الخاص، بأنها غير صحيحة أو غير دقيقة أو غير حديثة أو غير كاملة.
4.10.2.	إذا قررت إدارة حبابكم وفقاً لتقديرها الخاص، أنك تستخدم حسابك بطريقة غير مسموح بها بموجب شروط الاستخدام هذه.
4.10.3.	في أي ظروف أخرى، حسبما تراه إدارة حبابكم مناسباً وفقاً لتقديرها المطلق.
5)	قواعد السلوك (الاستخدام المحظور)
5.1.	يمكنك استخدام تطبيق حبابكم لأغراضك الشخصية فقط. لا يجوز لك استخدام التطبيق:
5.1.1.	لأي غرض تجاري خارج نطاق تلك الأغراض التجارية المسموح بها صراحةً بموجب هذه الاتفاقية وكذلك الإرشادات ذات الصلة التي يوفرها تطبيق حبابكم.
5.1.2.	 بأي طريقة تنتهك أي قانون أو لائحة أو قواعد ممارسة محلية أو وطنية أو دولية سارية.
5.1.3.	بأي بطريقة تضر بسمعتنا أو علاماتنا التجارية.
5.1.4.	بأي طريقة تنتهك حقوق الملكية الفكرية المتعلقة بنا أو بالآخرين.
5.1.5.	لنشر الرسائل أو المراسلات الإلكترونية غير المرغوب فيها أو ما شابه.
5.1.6.	لنشر أي مشاركات أو إعلانات مخالفة. 
5.1.7.	لنشر أو استلام أو تحميل أو تنزيل أو استخدام أو إعادة استخدام أي مواد لا تتوافق مع معايير المحتوى المعتمدة لدينا.
5.1.8.	لنشر أو بث أو إدخال أي مواد تحتوي على فيروسات أو أي برامج أخرى ضارة (Trojans، Worms، Logic Bombs، Time Bombs، Keystroke Loggers، Spyware، Adware) أو أية شفرات خبيثة أو ملفات أو برامج حاسوبية أخرى مصممة للإضرار بالتشغيل العادي للخدمة (أو أي جزء منها) أو التدخل فيه أو تحديده، أو لأي برمجيات أو أجهزة حاسوبية أخرى.
5.1.9.	لجمع أو تعقب المعلومات الشخصية للآخرين؛ لأي غرض غير أخلاقي.
5.2.	نحن نحتفظ بالحق في إنهاء استخدامك للخدمة في حال أي انتهاك أو قيامك بإحدى الاستخدامات المحظورة.
6)	شروط الحجز
6.1.	تنطبق هذه الشروط على أي حجز يتم من خلال تطبيق حبابكم الذي يعرض الخدمات الفندقية المعلنة من موفريها ولا يملك تلك الخدمات. وإكمال إجراءات الحجز من خلال التطبيق أو الموقع الالكتروني.
6.2.	كافة بيانات الخدمات بما فيها الأسعار وتفاصيل الخدمات الأخرى والتوفر والصور المضافة لتطبيق حبابكم هي بيانات حقيقية يتم توفيرها وتحديثها مباشرة من موفري تلك الخدمات. وعلى الرغم من أننا نولي اهتماماً كبيراً لضمان صحة المواصفات والخدمات المقدمة ومدى مطابقتها للواقع وتحديث توافرها إلا أن مدى مسؤوليتنا محكومة بنطاق خدماتنا المباشرة ويعتبر ضمان مطابقة البيانات والأسعار والتوفر مسؤولية مباشرة لموفر الخدمة في تطبيق حبابكم.
6.3.	يتم عرض جميع الأسعار ورسوم الخدمة في تطبيق حبابكم اما بالجنيه السوداني أو بمايكون متاحاً من العملات الأخرى.
6.4.	يوفر تطبيق حبابكم الدفع من خلال البطاقات الائتمانية (فيزا – ماستركارد)، الباي بال، الدفع عند الوصول، الدفع عبر تطبيق بنكك، الدفع عبر بطاقات الصراف الآلي للبنوك الموجودة داخل السودان.
6.5.	يتم تأكيد الحجز وإصدار رقم  تأكيد الحجز مباشرة بعد اكمال إجراءات التأكيد باستخدام بطاقات الائتمان أو باستخدام الباي بال حسب الشروط.
6.6.	يتم تحديد تاريخ الوصول وتاريخ المغادرة من خلال تقويم تطبيق حبابكم.
6.7.	عند تأكيد الحجز باستخدام البطاقة الائتمانية قد يخصم الفندق أي تكاليف لتأكيد الحجز حسب شروط الفندق وسياسة الإلغاء لموفر الخدمة ليتم إصدار رقم  تأكيد الحجز مباشرة.
6.8.	في حال عدم الدفع قبل الوصول، يجب عليك إبراز إيصال الحجز ودفع تكاليف الحجز لموفر الخدمة.
6.9.	تعتبر جميع المعاملات مستحقة على الفور عند استخدام بطاقات الائتمان داخل التطبيق.
6.10.	نحن لا نخزن معلومات البطاقات الائتمانية. ويجب عليك التأكد من أن المعلومات المتعلقة بالبطاقات الائتمانية التي تستخدمها في الدفع صحيحة ودقيقة وسارية المفعول قبل إتمام عملية الدفع.
6.11.	لا يفرض تطبيق حبابكم أي رسوم على الحجز وإنما يوفر الخدمات الأنسب بأقل الأسعار.


7)	إلغاء الحجز
7.1.	يمكنك تغيير أو إلغاء حجز إقامتك إما عبر الإنترنت بموجب حجوزاتك عند تسجيل الدخول إلى حساب تطبيق حبابكم الخاص بك، أو عن طريق الاتصال برقم خدمة العملاء 6280 من داخل السودان أو 00249120616603 من خارج السودان.
7.2.	قد يفرض موردو السكن رسوماً أخرى على التغيير و/أو الإلغاء. يرجى العلم أن هذه الرسوم قد تختلف من مورّد إلى آخر وفقاً للحجز ، لذا يرجى 61مراجعة البريد الإلكتروني الخاص بتأكيد الحجز.
7.3.	تختلف إمكانية إلغاء الحجوزات حسب سياسة الإلغاء لموفري الخدمات فقد تكون مجانية أو تتطلب رسوم.
7.4.	قد تختلف الاسعار حسب سياسات الإلغاء وأي خدمات أو وجبات اضافية.
8)	حدود المسؤولية
8.1.	أنت تؤكد بأن جميع المعلومات والتفاصيل التي تُقدمها لنا (بما في ذلك معلومات التسجيل والدفع) صحيحة ودقيقة ومحدّثة.
8.2.	أنت توافق على الالتزام بالقيود المفروضة على استخدامك للتطبيق كما هو مبين في هذه الشروط. 
8.3.	أنت توافق صراحةً على أن استخدامك للتطبيق يقع على مسؤوليتك الشخصية.
8.4.	أنت توافق صراحةً على أن تطبيق حبابكم ليس مسؤولاً عن أي اختراق للبيانات بسبب هجوم القراصنة.
8.5.	أنت توافق على أنه يحق لتطبيق حبابكم تعليق الخدمة لفترات زمنية غير محددة أو إلغاء الخدمة في أي وقت، دون إخطارك.
8.6.	أنت توافق علي تحمل المسؤولية الكاملة عن استخدامك للتطبيق وتوافق على أن أي معلومات ترسلها أو تتلقاها أثناء استخدامك لتطبيق حبابكم قد لا تكون آمنة وقد يتم اعتراضها أو الوصول إليها من قبل أطراف غير مصرح لهم بذلك.
8.7.	أنت توافق على تعويضنا عن أي خسائر أو أضرار ناتجة عن عدم الامتثال أو بسبب انتهاكك لهذه الشروط والأحكام، ويجب أن تتحمل تكاليف ونفقات الدعاوى المباشرة وغير المباشرة.
9)	إخلاء المسئولية
9.1.	يتم توفير التطبيق وجميع المعلومات والمحتويات والخدمات وغيرها من البنود المتاحة لك من خلال وبواسطة التطبيق (مجتمعة، "محتويات التطبيق") على أساس "كما هو" أو "كما هو متوفر"، دون أي إقرارات أو ضمانات من أي نوع.
9.2.	تسعى إدارة حبابكم إلى بذل أفضل قدراتها للتأكد من أن التطبيق مُتاح للاستخدام، ولكن لن تكون مسؤولة عن أي انقطاع محتمل للخدمة بسبب -على سبيل المثال- أعمال الصيانة أو المشكلات الفنية أو غيرها من الأسباب المماثلة، ولن تكون مسؤولة عن الأضرار التي تنشأ عن فشل تشغيل التطبيق.
9.3.	لا تتحمل إدارة حبابكم أي مسؤولية عن أي روابط لمواقع الطرف الثالث يُمكن الوصول إليها من التطبيق أو عن أي تعليمات مقدمة فيها أو محتوى لمثل هذه المواقع.
9.4.	 لا تضمن إدارة حبابكم بأن التطبيق أو الخادم الخاص به سيكون خالياً من الأخطاء دون انقطاع، أو خالياً من الوصول غير المصرح به، أو أن أي بريد إلكتروني يتم إرساله من التطبيق خالي من الفيروسات أو المكونات الضارة الأخرى أو أن التطبيق سيُلبي متطلباتك.
9.5.	قد نعرض على التطبيق أسماء أو علامات أو إعلانات أو خدمات لأطراف ثالثة أو نصوص منبثقة أو روابط خارجية. إذا قررت الارتباط بأي من مواقع الجهات الخارجية، فإنك تقوم بذلك بالكامل على مسؤوليتك الخاصة.
9.6.	نحن نبذل الجهود المعقولة لضمان معالجة جميع المعاملات في الوقت المناسب، ومع ذلك لا يلتزم تطبيق حبابكم بمقدار الوقت اللازم لإتمام معالجة أي معاملة معينة، وأيضاً لن يكون مسؤولاً عن أي خسارة مباشرة أو غير مباشرة ناجمة عن أي تأخير من هذا القبيل.
9.7.	تُشكل إخلاء المسؤولية هذه جزءاً أساسياً من شروط الاستخدام هذه.
10)	حقوق الملكية الفكرية
10.1.	حقوق النشر
10.1.1.	جميع المحتويات المتعلقة بتطبيق حبابكم (بما في ذلك على سبيل المثال لا الحصر النصوص والرسوم والشعارات والأزرار والأيقونات والصور والمقاطع الصوتية والتحميلات الرقمية، والوثائق والبيانات والبرمجيات وغيرها) مملوكة لتطبيق حبابكم، وكلها محمية بقوانين حقوق النشر العالمية. 
10.1.2.	يجب عليك عدم استخدام أي جزء من المحتوي على التطبيق لأغراض تجارية دون الحصول على ترخيص منا للقيام بذلك أو المرخصين لدينا. إذا قمت بطباعة أو نسخ أو تنزيل أي جزء من التطبيق بما يخالف شروط الاستخدام هذه، فسوف يتوقف حقك في استخدام التطبيق على الفور ويجب عليك إعادة أو إتلاف أي نسخ من المواد التي قمت بإجرائها.
10.2.	العلامات التجارية
التطبيق وجميع العلامات التجارية وعلامات الخدمة والشعارات والأسماء التجارية وغيرها من العلامات التجارية ذات الصلة المرتبطة بالتطبيق هي علامات تجارية مملوكة من قبل تطبيق حبابكم. ولا يجوز استخدام أي منها من دون تفويض خطي مسبق من قبل أصحاب هذا التطبيق، ويحظر إعادة إنتاجها أو توزيعها في أي وسيلة إعلامية أو إعلانية دون إذن كتابي منا. للإبلاغ عن أي انتهاك لحقوق النشر أو حقوق العلامة التجارية يرجى مراسلة فريق الدعم.
11)	الاتصالات الإلكترونية
من خلال توفير عنوان بريدك الإلكتروني عند التسجيل في تطبيق حبابكم، فأنت توافق علي تلقي رسائل البريد الالكتروني الترويجية منا. لإلغاء الاشتراك في اتصالات البريد الإلكتروني هذه، يمكنك النقر على رابط "إلغاء الاشتراك" الموجود أسفل رسائل البريد الإلكتروني الخاصة بنا.
12)	روابط لمواقع الأطراف الثالثة
12.1.	قد يحتوي تطبيق حبابكم على روابط ووظائف تفاعلية تتفاعل مع مواقع الويب الخاصة بالأطراف الثالثة، بما في ذلك المواقع الاجتماعية. لا تتحمل إدارة حبابكم أي مسؤولية عن الوظائف أو الإجراءات أو إعدادات الخصوصية أو سياسات الخصوصية أو الشروط أو المحتوى الخاص لأي موقع من هذا القبيل.
12.2.	قبل تمكين أي من وظائف المشاركة في التطبيق للتواصل مع أو زيارة أي موقع من هذه المواقع،  يوصي تطبيق حبابكم بشدة جميع المستخدمين مراجعة وفهم الشروط والأحكام، وسياسات الخصوصية، والإعدادات، ووظائف تبادل المعلومات لكل موقع من مواقع الأطراف الثالثة. لا تشكل الروابط والوظائف التفاعلية لمواقع الأطراف الثالثة الموجودة على التطبيق موافقة من قِبل إدارة حبابكم على مواقع الجهات الخارجية هذه. إن استخدامك لمواقع الجهات الخارجية يكون على مسؤوليتك الخاصة.
13)	الأمان
13.1.	أنت توافق على توفير الأمان لتطبيق حبابكم وتابعيه وحمايتهم من أي ضرر قد يلحق بهم جراء أي مطالبات أو خسائر أو أعطال أو تكاليف أو نفقات، تحدث بسبب انتهاكك لاتفاقية المستخدم أو خرقك لأي قانون.
13.2.	يجب عليك اتخاذ كافة إجراءات العناية المعقولة للتأكد من أمان حسابك وأن لا أحد يمكنه الوصول إليه غيرك.
14)	التعويض
أنت توافق على تعويض وحماية تطبيق حبابكم والتابعين له من وضد أي وجميع المطالبات أو الالتزامات أو الأضرار أو الخسائر أو النفقات، بما في ذلك أتعاب المحاماة والتكاليف المعقولة؛ بسببك أو الناشئة عن المحتوى الذي شاركته، والتعويض عن انتهاكك لشروط الاستخدام هذه أو أي قواعد أو إرشادات أو شروط استخدام إضافية منشورة في منطقة معينة من التطبيق أو المحتوى المقدم على التطبيق أو من خلاله، أو انتهاكك لحقوق أي طرف ثالث، بما في ذلك حقوق الملكية الفكرية.
15)	سياسة الخصوصية
سوف يستخدم تطبيق حبابكم معلوماتك الشخصية فقط وفقاً لشروط سياسة الخصوصية الخاصة بنا. باستخدام التطبيق فإنك تقر وتوافق على أنك قد قرأت وقبلت سياسة الخصوصية الخاصة بنا وشروط الاستخدام هذه.
16)	 النزاعات والقوانين
تخضع شروط الاستخدام هذه وتفسر وفقاً لقوانين دولة السودان وتخضع للاختصاص الحصري للمحاكم السودانية، التي تقوم بتسوية جميع النزاعات الناشئة فيما يتعلق بشروط الاستخدام هذه.
17)	أحكام عامة
17.1.	تشكل شروط الاستخدام هذه الاتفاق الكامل بينك وبين تطبيق حبابكم فيما يتعلق باستخدامك للتطبيق والخدمات.  
17.2.	إذا تم اعتبار أي حكم من أحكام هذه الشروط غير قانوني أو باطل أو غير قابل للتنفيذ لأي سبب، فسيُعتبر هذا البند قابلاً للفصل من هذه الشروط ولن يؤثر على صلاحية وإمكانية تنفيذ أي من الأحكام المتبقية.
17.3.	لا يُشكل عدم قيام إدارة حبابكم بمراقبة أو تنفيذ أحد أحكام هذه الشروط تنازلاً عن حقها في القيام بذلك في المستقبل فيما يتعلق بذلك الحكم، أو أي حكم آخر، أو هذه الشروط ككل.
17.4.	يحتفظ تطبيق حبابكم بالحق في إجراء تغييرات على التطبيق أو فرض رسوم على خدماتنا في أي وقت ولأي سبب من الأسباب. لن نفرض عليك رسوماً مقابل التطبيق أو خدماته دون إعطائك إشعار مسبق كافٍ بهذه الرسوم.
17.5.	يحتفظ تطبيق حبابكم بالحق في تحديث شروط الاستخدام هذه من وقت لآخر. إذا فعلنا ذلك، فسيصبح الإصدار المحدّث ساري المفعول على الفور. أنت مسؤول عن مراجعة شروط الاستخدام هذه بانتظام حتى تكون على دراية بأي تغييرات تطرأ عليها وستكون ملزماً بالسياسة الجديدة عند استمرار استخدامك للتطبيق.
17.6.	لا يتم إلغاء هذه الشروط والأحكام إلا بموجب قرار صادر من إدارة حبابكم.
17.7.	تم صياغة الشروط والأحكام (شروط الاستخدام وسياسة الخصوصية) باللغتين العربية والإنجليزية، وفي حالة وجود أي تعارض أو اختلاف بين اللغتين العربية والإنجليزية، تسود النسخة العربية.
18)	الإنهاء
تظل هذه الشروط سارية المفعول ما لم يتم إنهاؤها من قبلك أو من قبلنا. يحق لتطبيق حبابكم، ووفقاً لتقديره الخاص، إنهاء أو تقييد أو إيقاف أي مستخدم من الوصول إلى أو استخدام التطبيق في أي وقت دون إشعار. ويمكنك إنهاء هذه الاتفاقية عن طريق إلغاء تثبيت التطبيق، وهو ما يمكنك القيام به في أي وقت.
ما لم يتم إخطار خلاف ذلك، عند الإنهاء ، تتوقف الحقوق و/أو التراخيص الممنوحة لك في شروط الاستخدام هذه وتوافق على التوقف عن استخدام التطبيق وحذف التطبيق (إذا لزم الأمر) من جهازك.
19)	معلومات الاتصال
إذا كان لديك أي استفسارات حول هذه الشروط أو التطبيق أو الخدمات، فيمكنك التواصل عبر:
•	البريد الإلكتروني: support@hababcom.com
•	الهاتف: 00249120616603

حقوق الطبع والنشر © حبابكم لحجز الفنادق والشقق المفروشة 2020 
جميع الحقوق محفوظة

تاريخ السريان: مارس 2020','TERMS OF USE
Welcome to Hababcom for hotels and furnished apartments booking Application
1)	INTRODUCTION
1.1.	Please read and review Terms of Use and Privacy Policy (collectively "Terms and Conditions") carefully before accessing or using Hababcom for hotels and furnished apartments booking Application hereinafter referred to as (“Hababcom”) as they affect your legal rights and obligations. These Terms  (the "Terms of Use") is a contract between you and Hababcom and applies to all users of the Application Services, and if you are under the age of eighteen, make sure that your parents or legal guardian has read and approved with this agreement on your behalf.
1.2.	Your access to and use any of Services or Application constitutes your full acknowledgment and acceptance of the terms and conditions set forth in this document (the “Agreement”). If you do not agree to this Agreement (which is comprised of these Terms of Use and our Privacy Policy).
1.3.	We reserves the right to:
1.3.1.	amend these terms and conditions.
1.3.2.	refuse any user access to Hababcom Application.
1.3.3.	terminate the offending user accounts.
1.3.4.	modify or withdraw (temporarily or permanently) Hababcom Application without notice.
1.4.	Please check this page regularly to determine whether our terms and conditions have been updated - any new terms will automatically be effective when they are published on Hababcom Application.
1.5.	Section headings shall not affect the interpretation of these Terms of Use.
2)	DEFINITIONS
In this Agreement, unless the context requires otherwise, the following terms shall have the meanings referred:
2.1.	“Hababcom”, “Application”, “Administration”, “We”, “Us” or “Our”: Refers to Hababcom for hotels and furnished apartments booking Application.
2.2.	“Account”: Refers to the user’s account in the Application which enables him to benefit from the application services. 
2.3.	“User/You”: Refers to Anyone who creates an account and uses the Application.
2.4.	“Booking”: Refers to a reservation made by you for Accommodation at the Hotel, whether made via our online reservation system or otherwise. 
2.5.	“Content”: Refers to all audios, Videos, texts, graphics, images, and any other material entered, processed, included, or accessed through the Application or website.
2.6.	“Agreement”: Refers to this document and the Terms of Use contained herein, as well as the privacy policy, and all policies supplementing and implementing your agreement with us.
3)	ACCESS TO THE APPLICATION AND USE OF THE SERVICES
Hababcom is an electronic application that works on Android, iOS systems and website, It provides to the users with search for and booking hotels, furnished apartments and online booking. 
3.1.	ACCESS TO THE APPLICATION
3.1.1.	The user is responsible for obtaining and maintaining all hardware, software and other equipment needed for access to and use Hababcom Application, and all related expenses.
3.1.2.	You agree to comply with any, and all guidelines, notices, rules, operating policies, and instructions regarding the use of the Services and/or access to the Application. We reserve the right to review it at any time, and you are aware of any changes to the foregoing when posted on Hababcom Application.
3.2.	LICENSES
3.2.1.	Hababcom Application grants you a limited, non-exclusive, non-sublicensable, irrevocable, non-transferable license to:
3.2.2.	Access and use the Application for your personal purposes. 
3.2.3.	Access and use any content, information and related materials that may be made available through the services, solely for your personal, noncommercial use. Any rights not expressly granted herein are reserved by Hababcom Application and its licensors.
3.3.	USAGE RESTRICTIONS
The rights granted to you in this agreement are subject to the following restrictions: 
3.3.1.	You shall not create an account or access the Service if you are under the age of 18; you accept full responsibility for any unauthorized use of the Service. 
3.3.2.	You shall not license, sell, rent, transfer, assign, distribute, host, or otherwise commercially exploit the Service. 
3.3.3.	You shall not modify, translate, adapt, merge, make derivative works of, and disassemble any part of the Application, except to the extent the foregoing restrictions are expressly prohibited by applicable law. 
3.3.4.	You shall not access the Service or Application in order to build a similar or competitive services.
3.3.5.	except as expressly stated herein, no part of the Application may be copied, reproduced, distributed, republished, displayed, posted or transmitted in any form or by any means.
3.3.6.	You shall not remove or ravage any copyright notices or other property marks contained in the Application. 
4)	ACCOUNT AND PASSWORD
4.1.	Our services are not directed towards anyone under 18 years of age. By completing the registration process, you acknowledge that you are eligible for registration, and you warrant that you have full legal capacity to enter contracts (including, without limitation, that you have attained the applicable legal age for entering contracts).
4.2.	Account registration and membership in Hababcom Application is free, as all registered users have access to all contents in the Application.
4.3.	By registering an account in Hababcom Application you expressly agree to enter into this agreement with us. You certify that the information you provide is accurate, current and that you will update it promptly if any of it changes.
4.4.	The login information after the user's account is created, is treated strictly confidential and not disclosed to any third party, as part of our procedures for security and privacy of access.
4.5.	You represent and warrant that you are responsible for protecting the password you use to access the Services and agree not to disclose your password to any third parties.
4.6.	You are responsible for any use of your credit cards or other payment methods when paying the required fees.
4.7.	You agree that all activities occurring under your account authorized by you and may not share your account information with, or allow access to your account by, any third party. You should preserve the confidentiality of your username and password, and any device that you use to access Hababcom account.
4.8.	We have the right to disable any user account at any time, if in our reasonable opinion you have failed to comply with any of these terms of use.
4.9.	You may not use your account for any fraudulent or improper purpose or any purpose that is competing with Hababcom Application. You must promptly notify us If you know or suspect that anyone other than you know your user account or password, to take necessary technical measures to maintain the account.
4.10.	Hababcom Application reserves the right to refuse, unregister, remove or prevent anyone from using the Application for any reason, and to limit or terminate your access to or use the Application at any time without notice. in the following cases: 
4.10.1.	If you provide any information specified by Hababcom administration, at its own discretion, that it is incorrect, inaccurate, outdated or incomplete.
4.10.2.	If Hababcom administration determines, at its own discretion, that you are using your account in a manner not permitted under these terms of use.
4.10.3.	In any other circumstances, as Hababcom administration deems appropriate at its absolute discretion.
5)	RULES OF CONDUCT (PROHIBITED USE)
5.1.	You may use Hababcom Application for personal purposes only. You may not use the Application:	
5.1.1.	For any commercial purpose, outside the scope of those commercial purposes explicitly permitted under this Agreement and related guidelines as made available by Hababcom Application.
5.1.2.	In any way that breaches any applicable local, national or international law, regulation or code of practice. 
5.1.3.	In any way that injure our reputation or trademark.
5.1.4.	In any way that violates the intellectual property rights of others or us.
5.1.5.	To publish messages or unsolicited electronic correspondence or similar.
5.1.6.	To publish any posts or ads contrary.
5.1.7.	To publish, receive, upload, download, use or reuse any materials that does not consonant with our approved content standards.
5.1.8.	To publish, transmit or insert of any material containing viruses or other harmful software (Trojans, Worms, Logic Bombs, Time Bombs, Keystroke loggers, Spyware, Adware) or any malicious code, files or other software designed to damage, interfere with or identify the normal operation of the service (or any part thereof), or any other software or computer hardware.
5.1.9.	To collect or track the personal information of others, for any immoral purpose.
5.2.	We reserve the right to terminate your use of the service in the event of any infringement or any prohibited use.
6)	BOOKING TERMS
6.1.	These terms are applied for any booking through Hababcom Application that shows only the hotel services declared by its providers and doesn’t own these services, complete the booking procedures and confirm it from the Application or website.
6.2.	All services data including the prices, other services details, availability, and pictures added to Hababcom Application is real information provided and updated by the service providers. Although we give high care to assure the validity of the specifications and services offered, however prices and availability is a direct responsibility of the service provider in Hababcom Application.
6.3.	All prices and service charges at Hababcom Application are displayed either in Sudanese pounds or in whatever other currencies are available.. 
6.4.	Hababcom Application provides payment by credit cards (Visa – MasterCard), PayPal payment on arrival, payment on MBok Application and payment via ATM cards of banks located in Sudan.
6.5.	Booking will be confirmed and a booking confirmation number will be issued directly after completing the confirmation procedures. Confirmation terms might vary according to confirmation tool (credit cards or PayPal).
6.6.	Date of arrival and date of departure can be set using Hababcom Application calendar.
6.7.	When confirming the booking using the credit card the hotel might deduct any costs for booking confirmation according to the terms and cancellation policy of the hotel and the service provider.
6.8.	If not paid before at arrival, you must show the booking receipt and pay the booking fees to the service provider.
6.9.	All transactions are immediately due when using credit cards within the Application.
6.10.	We do not store credit card information. And you must make sure that the information about the credit cards you are using in the payment is correct, accurate and valid before you complete the payment process.
6.11.	Hababcom Application doesn’t apply a booking fees, but provides the most suitable service with the lowest prices.
7)	BOOKING CANCELLATION
7.1.	You can change or cancel your lodging booking either online under your Reservations when signed into your Hababcom Application account, or by calling our customer service number 6280 from inside Sudan or 00249120616603 from outside Sudan.
7.2.	Lodging suppliers may impose other change and/or cancellation fees. Please note that these fees may vary from provider to booking, so please review your confirmation email for Booking.
7.3.	Booking cancellation shall be according to the hotel's cancellation policy which might be free, or charge require fees.
7.4.	A different rate might be for the same room but with different policies, and services or included meals.
8)	LIMITATION OF LIABILITY
8.1.	You confirm that all information and details provided by you to us (including on registration and payment information) are true, accurate and up to date.
8.2.	You agree to abide by the restrictions on your use of the Application as set out in these terms.
8.3.	You expressly agree that your use of the Application is at your sole risk.
8.4.	You expressly agree that Hababcom Application is not responsible of any data breach due to hackers attack.
8.5.	You agree that Hababcom Application has the right to suspend the service for indefinite periods of time or cancel the service at any time, without notifying you.
8.6.	You agree to assume full responsibility for your use of the Application and agree that any information you send or receive during your use of Hababcom Application may not be secure and may be intercepted or otherwise accessed by unauthorized parties.
8.7.	You agree to compensate us for any loss or damage caused by non-compliance with these terms and conditions or because you violated these Terms and conditions, and you must bear the costs and expenses of any direct and indirect claims.
9)	DISCLAIMER 
9.1.	The Application, all information, contents, services, and other items available to you through and by the Application (collectively, the “Application contents”) on an "as is," or "as available" basis, without representations or warranties of any kind.
9.2.	Hababcom administration endeavors to its best ability to ensure that Application is available for use but shall not be liable for any possible interruptions of the service due to e.g. maintenance work, technical problems or other similar causes and shall not be liable for damages which may be caused by operation failure of the Application.
9.3.	Hababcom administration shall also not be liable for any links to third party websites accessible from the Application or for any instructions provided therein or the content to such websites.
9.4.	Hababcom administration does not warrant that the Application or its server will be error-free, uninterrupted, free from unauthorized access, any e-mail sent from Application is free of viruses or other harmful components, or that Application will meet your requirements. 
9.5.	On the Application, we may display names, marks, products, advertisements, or services of third parties, pop-up texts, or links to third-party links. If you decide to link to any such third-party Sites, you do so entirely at your own risk.
9.6.	We make the reasonable efforts to ensure that all transactions are processed in a timely manner; however, Hababcom Application does not obligate with the amount of time required to complete the processing of any particular transaction and also will not be liable for any direct or indirect loss resulting from any such delay.
9.7.	This disclaimer constitutes an essential part of these terms of use.
10)	INTELLECTUAL PROPERTY RIGHTS
10.1.	COPYRIGHT
10.1.1.	All content related to Hababcom Application, (including without limitation the texts, graphics, logos, button icons, images, audio clips, digital downloads, data compilations, software and others), are owned by Hababcom Application. And protected by international copyright laws.
10.1.2.	You must not use any part of the content on the Application for commercial purposes without obtaining a license to do so from our licensors or us. If you print off, copy or download any part of the Application in breach of these terms of use, your right to use the Application will cease immediately and you must return or destroy any copies of the materials you have made.
10.2.	TRADEMARKS
The Application, all trademarks, service marks, logos, trade names and other related trademarks associated with the Application are trademarks owned or licensed by Hababcom Application, No use of any of these may be and made without the prior written authorization of the owners of this Application, and prohibited to reproduce our trademarks or designs commercial in any media or advertising medium without the written permission of us. To report any copyright or trademark rights infringement, please contact the support team.
11)	 ELECTRONIC COMMUNICATIONS
By supplying your email address upon registration to Hababcom Application, you consent to receive promotional and or program update emails from us. To opt out of these email communications, you can click on the 'Unsubscribe' link at the bottom of our emails.
12)	THIRD-PARTIES’ WEBSITES AND THEIR CONTENT
12.1.	Hababcom Application may contain links and interactive functionality interacting with the websites of third parties, including social sites. Hababcom administration is not responsible for and has no liability for the functionality, actions, privacy settings, privacy policies, terms, or content of any such website. 
12.2.	Before enabling any sharing functions of the Application to communicate with any such website or otherwise visiting any such website, Hababcom Application strongly recommends that all users review and understand the terms and conditions, privacy policies, settings, and information-sharing functions of each such third-party website. The links and interactive functionality for third-party sites on the Application do not constitute an endorsement by Hababcom administration of such third-party sites. Your use of third-party websites and resources is at your own risk.
13)	SECURITY
13.1.	You agree to provide security for Hababcom Application and its affiliates and to protect them from any damage that may catch up with them due to claims, losses, failures, costs and expenses caused by a violation of the User Agreement, or your violation of any related law.
13.2.	You must take all reasonable care to ensure that your account is secure and only accessed by you, not anyone other.
14)	INDEMNITY
You agree to indemnify and hold harmless Hababcom Application and its affiliates from and against any and all claims, liabilities, damages, losses or expenses, including reasonable attorneys' fees and costs, due to or arising out of content that you Share, your violation of these Terms of Use or any additional rules, guidelines or terms of use posted for a specific area of the Application or Content provided on or through the Application , or your violation or infringement of any third party rights, including intellectual property rights.
15)	PRIVACY POLICY
Hababcom Application will only use your personal information in accordance with the terms of our Privacy Policy. By using the Application you acknowledge and agree that you have read and accepted our Privacy Policy and these Terms of Use.
16)	 DISPUTES AND LAWS
These Terms of Use shall be governed by and construed in accordance with the laws of State of Sudan and subject to the exclusive jurisdiction of the Sudanese courts, which shall settle all disputes arising in connection with these Terms of Use.
17)	GENERAL PROVISIONS
17.1.	These Terms of Use constitutes the entire agreement between you and Hababcom Application concerning your use of the Application and Services.
17.2.	If any provision of this Terms is held unlawful, void, or for any reason unenforceable, then that provision will be deemed severable from this Terms and will not affect the validity and enforceability of any remaining provisions.
17.3.	The failure of Hababcom administration to monitor or enforce a provision of these Terms does not constitute a waiver of its right to do so in the future with respect to that provision, any other provision, or these Terms as a whole.
17.4.	Hababcom Application reserves the right to make changes to the Application or charge for our services at any time and for any reason. We will not charge you for the Application or its services without giving you sufficient prior notice of such charges.
17.5.	Hababcom Application reserves the right to update these Terms of Use from time to time. If we do so, the updated version will be effective immediately. You are responsible for regularly reviewing these Terms of Use so that you are aware of any changes to them and you will be bound by the new policy upon your continued use of the Application .
17.6.	These terms and conditions shall only be canceled by a decision issued by Hababcom Administration.
17.7.	The Terms and Conditions (Terms of Use and Privacy Policy) are drafted in Both Arabic and English, and in the event of any conflict or difference between Arabic and English languages, the Arabic version shall prevail.
18)	TERMINATION
These Terms are effective unless terminated by either you or us. Hababcom Application may the right, at its own discretion, to terminate, restrict or discontinue any user from accessing or using the Application at any time without notice. You can terminate this agreement by uninstalling the Application , which you may do at any time. 
Unless notified otherwise, upon termination, the rights and/or licenses granted to you in these Terms of Use shall cease and you agree to stop using the Application and (if necessary) delete the Application from your device.
19)	CONTACT INFORMATION
If you have any inquiries about these Terms, the Application, or Services, you can communicate via:
•	E-mail: support@hababcom.com
•	Phone: 00249120616603

Copyright © Hababcom for hotels and furnished apartments booking 2020
All Rights Reserved

Effective Date: March 2020','نحن نمثل إحدي المنصات الرائدة في مجال حجوزات الفنادق، حيث نقدم لعملائنا خدماتً متميزة في حجوزات الفنادق والشقق المفروشة بالسودان بالإضافة إلي العديد من الخدمات الفريدة التي تسهل علي عملائنا السفر والسياحة، وكل ذلك يتم بسهولة ويسر عبر تطبيقنا وموقعنا الإلكتروني. 
وحرصاً منا على راحة ورفاهية المسافرين من جميع أنحاء العالم إلى دولة السودان، نقدم لهم مجموعة هائلة من خيارات الإقامة المتاحة بما فيها خدمات الإقامة الفندقية، الشقق المفروشة اضافة الى المنتجعات، كما يمكِّن التطبيق أصحاب الفنادق، الشقق المفروشة أو المنتجعات من عرض الحجوزات المتاحة لديهم وذلك عبر منصة المُلاك ومن ثم يتم عرضها ضمن الخيارات المتاحة لدى عملائنا ليختاروا ما يناسبهم منها. 

شرح لخدمات التطبيق 
يقدم لكم تطبيقنا وموقعنا الالكتروني خدمات متكاملة تساعدك على السفر والسياحة في السودان بكل رفاهية وسهولة، حيث نقدم لكم ما يلي: 
•	امكانية اختيار نوع مكان الإقامة الذي ترغب به حيث تجد خيارات متعددة على التطبيق تضم الآتي: فنادق، منتجعات، شقق فندقية.
•	يمكنك من خلال الفلاتر المختلفة وتصفيات البحث مثل:( الميزانية – الرائج – عدد النجوم – المرافق – الحي – نقاط التقييم ....الخ) يمكنك من خلالها تحديد مكان الاقامة الذي تريده بصورة أدق وبكل سهولة ويسر.
•	تختار بدقة المدينة التي ترغب في السفر إليها بالسودان حيث نقدم لكم باقة متنوعة من خيارات الإقامة المختلفة بالمدينة التي قمت باختيارها. 
•	نعرض لكم بشكل تفصيلي أسعار تلك الفنادق أو الوحدات، وكافة الخدمات التي تقدمها، ووسائل الراحة بها، لتختار ما يناسبك منها. 
•	يمكنكم الحجز والدفع بسهولة عن طريق وسائل الدفع المختلفة.
•	يدعم التطبيق اللغتين العربية والإنجليزية لسهولة وصول خدماتنا لجميع عملائنا في الشرق الأوسط أو أي مكان في العالم.

الرؤية 
 نسعي إلي أن نكون إحدي أكبر المنصات التي تقدم خدمات حجوزات الفنادق و الطيران في الشرق الأوسط و في كافة أرجاء العالم و كذلك نحرص على تحقيق الرفاهية التامة والراحة لعملائنا، عن طريق خدماتنا المميزة في مجال حجوزات الفنادق، حيث نوفر عليهم عناء البحث وأعبائه، ونسعى لمساعدة عملائنا على الاستمتاع برحلاتهم دون أي مشقة.



الرسالة 
سعياً وراء تحقيق رؤيتنا فقد قمنا بتصميم التطبيق ليظهر للمستخدم بأسهل صورة ممكنة و كذلك قمنا بتوفير كافة الخيارات الممكنة من الفنادق و الشقق و كذلك وسائل الدفع المختلفة للتسهيل علي عملائنا بالإضافة إلي توفير خدمات الدعم الفني للتطبيق إيماناً منا بأن راحة العملاء هي كل ما يهمنا.

الأهداف
•	الإهتمام بجودة خدماتنا وكفاءتها، حيث نحرص علي أن يكون مستوى خدماتنا دائماً يليق بعملائنا الكرام. 
•	تحقيق ثقة عملائنا ورضاهم عن خدماتنا هو أهم أهدافنا التي نبذل قصارى جهدنا لتحقيقها.
•	نستقبل ملاحظات عملائنا بصدر رحب ونضعها عين الاعتبار، لتقديم الخدمات التي تتوافق مع طموحهم وتطلعاتهم.
•	تنشيط السياحة في دولة السودان لما بها من مناطق سياحية مختلفة التضاريس ومناظر طبيعية خلابة وتشجيع العملاء علي استكشاف دولة السودان و ذلك من خلال توفير أماكن اقامة تناسب رغباتهم في مختلف مناطق السودان.
•	المساهمة في عملية تطوير المحتوي الرقمي والوصول بتجربة الحجز عبر الإنترنت إلي بعد جديد من الرفاهية و الخصوصية.','Who we are

We represent one of the pioneer platforms in the field of hotels reservations, as we offer our clients with outstanding services in hotel and furnished apartments reservations in Sudan in addition to many unique services that make traveling and tourism easier for our clients, all of this is done easily and conveniently through our application and our website.
To ensure the comfort and welfare of travelers from all over the world to the State of Sudan, we offer them a huge range of available accommodation options including hotel accommodation services, furnished apartments, and resorts, the application also enables hotel, furnished apartments or resorts owners to present their available reservations, Through the owners' platform, and then displayed within the options available to our clients to choose what is suitable for them.

An explanation for application services

Our application and website provide you with integrated services that help you in traveling and tourism in Sudan with all welfare and ease, as we provide you with the following:
•	The ability to choose the type of accommodation place you wish as you find multiple options on the application including the following: hotels, resorts, and hotel apartments.
•	Through various filters and search filters such as: (budget – popular - number of stars – facilities – neighborhood – evaluation points……etc.) you can specify the accommodation place you want more accurately and with all ease.
•	Choose accurately the city you wish traveling to in Sudan as we offer you a variety of accommodation options in the city you chose.
•	We present to you in detail the prices of those hotels or units, all the services they offer, amenities to choose what is suitable for you.
•	You can easily book and pay through different payment methods.
•	The application supports both languages Arabic and English for easy access of our services to all our clients in the middle east or any place of the world.





Vision

we seek for being one of the largest platforms that offer hotels and airline reservations services in the Middle East and all parts of the world and we are also careful to achieve complete welfare and comfort to our clients, through our outstanding services in the field of hotels reservation, as we make them far away from the trouble of research and its burdens, and we seek to help our clients enjoy their trip without any hardship.





Message

In pursuit of achieving our vision, we have designed the application to be viewed to the user as easily as possible, and we have also offered all possible options from hotels and apartments, as well as various payment methods to make it easier for our clients in addition to providing technical support services for the application, as we believe that customer comfort is all that matters to us.

Goals

•   Paying attention to the quality and efficiency of our services, as we keen to ensure that the level of our services always suits best for our valued clients.
•   Achieving the confidence of our clients and their satisfaction with our services is the most important goal that we do our best to achieve.
•   We receive and consider the comments of our clients with an open heart, to offer services that are compatible with their ambitions and aspirations.
•   Activating tourism in the State of Sudan, because of its various tourist areas, terrain, and stunning natural landscapes, and encouraging customers to explore the State of Sudan, by providing accommodations to suit their desires in the various regions of Sudan.
•   Contributing to the process of developing digital content and bringing the online booking experience to a new dimension of luxury and privacy.','سياسة الخصوصية
1.	المقدمة
خصوصيتك مهمة ونحن ملتزمون بحماية المعلومات الشخصية التي نجمعها منك.
يرجي قراءة سياسة الخصوصية هذه بعناية فائقة حتى تكون على علم كامل بطريقة تعاملنا مع معلوماتك الشخصية. هذه السياسة يجب أن تُقرأ جنباً إلى جنب مع شروط الاستخدام والتي تنطبق على تطبيق حبابكم لحجز الفنادق والشقق المفروشة.
تشرح هذه السياسة كيف نستخدم ونحمي المعلومات الشخصية التي نجمعها ونشاركها. هدفها هو الشفافية والمساعدة لك بحيث يكون لديك ثقة كاملة في سلامة تجربة التصفح الخاصة بك.
2.	المعلومات التي نجمعها
نجمع أنواعاً مختلفة من المعلومات فيما يرتبط بالخدمات، بما في ذلك:
2.1.	المعلومات التي تقدمها لنا مباشرة.
تمكّنك بعض الخدمات من إعطائنا المعلومات مباشرةً. على سبيل المثال:
•	معلومات تسجيل حساب أو الحجز: عندما تنشئ حساباً أو ملفاً تعريفياً لدينا، يحق  لنا أن نطلب منك معلومات مثل اسم المستخدم، والهاتف المحمول، وكلمة المرور، وعنوان بريدك الإلكتروني.
•	معلومات التواصل: قد نقوم بجمع معلوماتك عندما تتواصل مع خدمة عملائنا لتقديم إجابات عند اتصالك بخدمة العملاء، قد نحتاج إلى معلومات للتحقق من هويتك. سنجمع المعلومات التي تتطوّع بها أو التي نحتاج إليها لحل المسألة التي تواجهها. مثل (الاسم الكامل، رقم الهاتف، البريد الإلكتروني، عنوان الرسالة وموضوعها).
2.2.	المعلومات التي نجمعها عن استخدامك للخدمات الخاصة بنا.
إضافة إلى المعلومات التي تقدمها، فسنجمع معلومات عن استخدامك للخدمات الخاصة بنا. سنجمع ما يلي:
•	معلومات عن الآخرين: إذا قمت بإجراء حجز لشخص آخر من خلال هذا التطبيق، فيمكنك تقديم المعلومات الشخصية لهذا الشخص. ومع ذلك، تقع على عاتقك مسؤولية التأكد من أن الشخص أو الأشخاص الذين قمت بتقديم بيانات شخصية لهم يدركون أنك قمت بذلك، وأنهم قد فهموا وقبلوا كيف نستخدم معلوماتهم.
•	معلومات الدفع: إذا قمت بإجراء حجز فسنقوم بجمع معلومات الدفع منك، بما في ذلك رقم بطاقة الائتمان الخاصة بك واسم حامل البطاقة وتاريخ انتهاء الصلاحية ورمز المصادقة وعنوان الفوترة. سنقوم بتخزين هذه المعلومات بشكل آمن (في بيئة PCI-DSS معتمدة) ونقل هذه المعلومات إلى مورد حجز السفر لإتمام المعاملة. يرجى ملاحظة أن المورد يعالج دفعتك، وليست من جانبنا. أنت توافق على مراجعة سياسات وإجراءات المورّد والالتزام بها قبل إجراء الحجز من خلال هذا التطبيق.
•	معلومات الجهاز. نجمع المعلومات من وعن الأجهزة التي تستخدمها. على سبيل المثال، فإننا نجمع:
o	معلومات عن أجهزتك وبرامجك، مثل طراز الجهاز وإصدار نظام التشغيل وذاكرة الجهاز والمُعرّفات الإعلانية ومُعرّفات التطبيقات الفريدة والتطبيقات المُثبّتة ومُعرّفات الأجهزة الفريدة ونوع المُتصفّح ومستوى البطارية والمنطقة الزمنية؛
o	معلومات عن اتصالاتك بالشبكة اللاسلكية أو شبكة الجوال، مثل رقم هاتف الجوال ومُزوّد الخدمة وعنوان IP وقوّة الإشارة.
•	معلومات السجل: المعلومات التشخيصية، والتقنية، والاخطاء التشغيلية، والاستخدام مثل توقيت استخدامك للخدمات ومدته، وأي معلومات مُخزنة في ملفات تعريف الارتباط التي قمت بتعيينها على أجهزتك، والصفحات التي زُرتها قبل أو بعد الانتقال إلى تطبيقنا.
•	معلومات موقعك الجغرافي: قد نقوم بجمع معلومات عن موقعك عند استخدامك لخدماتنا مثل، إشارة GPS الخاصة بجهازك أو معلومات عن نقاط الوصول إلى Wi-Fi القريبة وأبراج الهاتف المحمول التي يمكن إرسالها إلينا عند استخدامك لخدمات معينة وتمكينك لوظيفة الموقع. يمكنك تغيير إعدادات الخصوصية لجهازك لإيقاف تشغيل وظيفة مشاركة معلومات موقعك. يرجى ملاحظة أن تحويل مشاركة موقعك قد يؤثر على ميزات معينة في تطبيقنا.
2.3.	المعلومات التي نحصل عليها من مصادر تابعة لجهات خارجية.
قد يُشارك المُعلنون ومُطورو التطبيقات والناشرون والشركاء التابعين وأطراف ثالثة أخرى معلومات معنا أيضاً. قد نستخدم هذه المعلومات، من بين طرق أخرى، للمساعدة على استهداف أو قياس أداء الإعلانات. وقد تقدم تفاصيل الحجز إلى شريكنا التجاري، الذي يقوم بعد ذلك بإعادة توجيه التفاصيل الخاصة بك إلينا.
3.	استخدام المعلومات الشخصية
نستخدم المعلومات التي تم جمعها عنك للأغراض التالية:
3.1.	للتسجيل ولإدارة حسابك.
3.2.	لتوفير خدماتنا وصيانتها وحمايتها وتحسينها وتطوير خدمات جديدة وحماية تطبيق حبابكم ومستخدمينا.
3.3.	لتسهيل حجز الفنادق أو الشقق المفروشة.
3.4.	للرد على استفساراتك وأسئلتك وتعليقاتك.
3.5.	لتخصيص تجربتك معنا بطريقة أخرى، بما في ذلك تخصيص الإعلانات المعروضة لك على مواقع ويب أخرى.
3.6.	لمنع الأنشطة المحظورة أو غير القانونية، والامتثال للقانون المعمول به، وفرض شروط الخدمة وأي أغراض أخرى تم الكشف عنها لك في الوقت الذي نجمع فيه معلوماتك أو وفقاً لموافقتك.
3.7.	للتحقق من هويتك ومنع التحايل أو أي نشاط غير مصرح به أو غير قانوني.
3.8.	لاستخدام المعلومات التي جمعناها من ملفات تعريف الارتباط وغيرها من التقنيات لتعزيز خدماتنا وتجربتك معها.
3.9.	لتنفيذ شروط الاستخدام وسياسات الخصوصية والالتزام باشتراطاتنا القانونية.
3.10.	لأي استخدامات أخرى بعد الحصول على موافقتك لأغراض أخرى غير تلك التي كنت قد وافقت إليها سابقاً.
4.	مشاركة المعلومات الشخصية
4.1.	يجوز لنا مشاركة معلوماتك -حسب الضرورة -للأغراض التالية:
4.1.1.	للامتثال للإجراءات القانونية أو للامتثال لأوامر الاستدعاء الشرعية أو القابلة للتنفيذ أو أوامر المحكمة.
4.1.2.	للاستجابة للطلبات المقدمة من السلطات العامة والحكومية.
4.1.3.	لتنفيذ شروط الاستخدام وسياسة الخصوصية الخاصة بنا. 
4.1.4.	لحماية حقوقنا وخصوصيتنا وسلامتنا وممتلكاتنا و/أو حقوقك أو الآخرين.
4.2.	يجوز لنا مشاركة المعلومات مع موردي الطرف الثالث الذين يقدمون خدمات أو وظائف نيابة عنا، بما في ذلك تحليلات الأعمال، ومعالجة المدفوعات، وخدمة العملاء، والتسويق، والعلاقات العامة، وتوزيع الاستطلاعات، ومنع الاحتيال. قد نأذن أيضاً لمورّدي الجهات الخارجية بتجميع المعلومات نيابةً عنا، بما في ذلك، على سبيل المثال، عند الضرورة لتشغيل ميزات التطبيق الخاص بنا أو لتسهيل تقديم الإعلانات عبر الإنترنت المصممة خصيصاً لمصالحك. يمتلك موردو الجهات الخارجية حق الوصول إلى المعلومات ويجوز لهم جمعها فقط عند الحاجة لأداء وظائفهم.
4.3.	يجوز لنا أيضاً مشاركة المعلومات مع طرف ثالث فيما يتعلق بأي عملية إعادة تنظيم أو دمج أو بيع أو مشروع مشترك أو تنازل أو تحويل أو أي تصرف آخر لكل أو جزء من أعمالنا أو أصولنا أثناء المفاوضات.
5.	تخزين المعلومات الشخصية والاحتفاظ بها
5.1.	يجوز لنا في تطبيق حبابكم لحجز الفنادق والشقق المفروشة الاحتفاظ ببعض المعلومات المرتبطة بحسابك في أرشيفنا، بما في ذلك لأغراض تحليلية بالإضافة إلى سلامة حفظ السجلات. تعتمد الفترات التي نحتفظ فيها بمعلوماتك على الغرض الذي جمعناه من أجله ونستخدمه.
5.2.	لن نحتفظ بمعلوماتك الشخصية لفترة أطول مما هو ضروري لأغراض العمل لدينا أو للمتطلبات القانونية. قد نحتفظ ببعض المعلومات لفترة من الوقت بعد إنهاء عقدك معنا أو طلب محو المعلومات، إذا كان ذلك ضرورياً للوفاء بالتزاماتنا القانونية أو ممارسة حقوقنا القانونية والدفاع عنها.
5.3.	نحن لا نبيع أو نتاجر أو ننقل معلوماتك الشخصية إلى الأطراف الخارجية لا يشمل ذلك الجهات الخارجية الموثوقة التي تساعدنا في تشغيل التطبيق، أو إجراء أعمالنا، أو خدمتك، طالما أن هذه الأطراف توافق على الحفاظ على سرية هذه المعلومات.
6.	معالجة البيانات الشخصية
6.1.	نحن في تطبيق حبابكم لحجز الفنادق والشقق المفروشة نقوم بمعالجة البيانات الشخصية الصحيحة والمحدثة فقط، لذا يحق لك تصحيح بياناتك الشخصية غير الدقيقة.
6.2.	نحن نلتزم بحذف البيانات الشخصية غير الضرورية فيما يتعلق بالأغراض التي تم تجميعها أو معالجتها بطريقة أخرى. 
6.3.	نحن نستخدم فقط معالجات البيانات التي توفر ضمانات كافية لتنفيذ التدابير الفنية والتنظيمية المناسبة بطريقة تجعل المعالجة تُلبي وتكفل حماية حقوق جميع موضوعات البيانات المعنية.
7.	حماية المعلومات الشخصية
7.1.	يعد أمان بياناتك أمراً مهماً بالنسبة لنا، لذا نحن نسعى للحفاظ على جميع المعلومات الخاصة بالمستخدم وألا يطلع عليها أحد بما يخالف هذه السياسة المعمول بها في تطبيق حبابكم لحجز الفنادق والشقق المفروشة. كما أننا نعمل على حماية هذه المعلومات عن طريق "سيرفرات معيّنة" محمية بموجب أنظمة الحماية الإلكترونية "نظامي برمجي معيّن".
7.2.	نحن نتخذ كافة التدابير الأمنية اللازمة والمناسبة لحماية معلوماتك الشخصية من الفقد أو التلف أو التغيير أو الإفشاء أو الوصول غير المصرح به أو الاستخدام غير المقصود وغير القانوني. ومع ذلك، من الممكن ألا يكون هذا المستوى من الحماية فعال بنسبة 100% إلا إذا كنت تتبع سياسات أمنية خاصة بك. يجب عليك ألا تشارك بيانات حسابك مع أي شخص. وإذا كنت تشعر بالقلق بأن أي من بياناتك الشخصية قد كشفت، يجب عليك تغييرها على الفور بعد تسجيل الدخول على حسابك.
8.	خصوصية الأطفال
8.1.	تعتبر إرشاداتك ومشاركتك ضرورية للمساعدة في ضمان تمتع الأطفال بتجربة آمنة عبر الإنترنت. نحن نشجعك على الاستمرار في المشاركة والاطلاع على ما يقوم به طفلك عبر الإنترنت. وستساعد جهودكم في توجيه أطفالك إلى المواقع التي تناسب أعمارهم.
8.2.	يتعامل تطبيق حبابكم لحجز الفنادق والشقق المفروشة مع خصوصية الأطفال بجدية. فنحن لا نجمع عمداً المعلومات الشخصية من الأطفال عبر تطبيقنا. وإذا كنت قاصراً بموجب القانون، يرجى عدم إرسال أي معلومات شخصية بدون موافقة صريحة ومشاركة من أحد الوالدين أو الوصي القانوني.
9.	روابط خارجية
قد يتضمن هذا التطبيق روابط لمواقع تابعة لجهات خارجية. إذا قمت بالوصول إلى مواقع الويب الأخرى من الروابط المتوفرة في تطبيقنا، فقد يقوم مشغلي تلك المواقع بجمع معلومات منك والتي سيتم استخدامها من قبلهم وفقاً لسياسة الخصوصية الخاصة بهم، والتي قد تختلف عن سياسة الخصوصية هذه. ننصحك بفحص بيانات الخصوصية المنشورة على تلك المواقع الأخرى لفهم إجراءات جمع المعلومات الشخصية واستخدامها والكشف عنها
10.	تحديثات سياسة الخصوصية
يحتفظ تطبيق حبابكم لحجز الفنادق والشقق المفروشة بالحق في تغيير سياسة الخصوصية هذه في أي وقت. سيتم نشر أي تغييرات قد نجريها على سياسة الخصوصية الخاصة بنا في المستقبل على هذه الصفحة. أنت توافق على زيارة هذه الصفحة بانتظام لتكون على علم بأي تغييرات من هذا القبيل. ومن خلال الاستمرار في استخدام تطبيقنا بعد أن أصبحت هذه التعديلات سارية المفعول، فإنك تقبل وتوافق على التعديلات والالتزام بها. 
11.	كيف تتواصل معنا
إذا كانت لديك أسئلة أو استفسارات بخصوص هذه السياسة يرجى التواصل على:
o	البريد الإلكتروني: support@hababcom.com
o	الهاتف: 00249120616603

أنت تٌقر بأنك قد قرأت سياسة الخصوصية هذه وتوافق على جميع بنودها وشروطها. واستمرارك في استخدام التطبيق أو الخدمات فأنت توافق على الالتزام بهذه السياسة. إذا كنت لا توافق على الالتزام ببنود هذه السياسة، فأنت غير مٌخول لاستخدام أو الدخول إلى تطبيق حبابكم لحجز الفنادق والشقق المفروشة.

حقوق الطبع والنشر © حبابكم 2020
جميع الحقوق محفوظة','PRIVACY POLICY

1.	INTRODUCTION
Your privacy is important and we are committed to the protection of the personal information we collect from you.
Please read this Privacy Policy carefully to understand how we will treat your personal data. This policy must be read along with the terms of use that apply to Hababcom for hotels and furnished apartments booking Application. 
This policy explains how we use and protect the personal information that we collect and share. Its goal is transparency and assistance to you so that you have complete confidence in the integrity of your browsing experience.
2.	 INFORMATION WE COLLECT
We collect various types of information in connection with the Services, including:
2.1.	Information you provide directly to us.
Some Services enable you to give us information directly. For example:
•	Account registration information or booking: When you create an account or profile with us, we may ask for information such as username, mobile phone number, password and email address.
•	Communication information: We may collect your information when you communicate with our customer service to provide responses when you contact Customer Service, we may need information to verify your identify. we’ll collect whatever information you volunteer or that we need to resolve your question. such as (full name, cellphone, email, message title and subject).
2.2.	Information we collect about your use of our Services.
In addition to the information you provide, we will collect information about your use of our Services. We will collect:
•	Information About Others: If you make a booking for someone else through this Application, you may submit that individual's personal information. However, it's your responsibility to ensure that the person or people you have provided personal data about are aware that you've done so, and have understood and accepted how we use their information.
•	Payment Information: If you make booking, we will collect payment information from you, including your credit card number, cardholder name, expiration date, authentication code, and billing address. We will securely store this information (in a certified PCI-DSS environment) and transmit this information to the supplier of the travel booking to complete the transaction. Please note that the supplier processes your payment, not us. You agree to review and be bound by the supplier's policies and procedures before making a booking through this Application.
•	Device Information. We collect information from and about the devices you use. For example, we collect:
o	information about your hardware and software, such as the hardware model, operating system version, device memory, advertising identifiers, unique Application identifiers, apps installed, unique device identifiers, browser type, language, battery level, and time zone;
o	information about your wireless and mobile network connections, such as mobile phone number, service provider, IP address, and signal strength.
•	Log information: Diagnostic, technical, error, and usage information such as the time and duration of your use of Services, any information stored in cookies that we have set on your devices, and pages you visited before or after navigating to our Application.
•	Your Location information: When you use our services we may collect information about your location such as, your device’s GPS signal or information about nearby Wi-Fi access points and cell towers that may be transmitted to us when you use certain services and enable the location function. You can change the privacy settings of your device to turn off the functionality to share your location information. Please note the turning of your location sharing may affect certain features of our Application.
2.3.	Information we obtain from third-party sources.
Advertisers, Application developers, publishers, affiliate partners and other third parties may share information with us as well. We may use this information, among other ways, to help target or measure the performance of ads. you may be provide the booking details to our business partner, who then forward your details to us.
3.	USE PERSONAL INFORMATION
We use the information collected about you for the following purposes:
3.1.	For registration and to manage your account.
3.2.	To provide, maintain, protect and improve our Services, develop new services, and protect Hababcom Application and our users.
3.3.	To facilitate your booking of hotel or furnished apartments.
3.4.	To respond to your inquiries, questions and comments.
3.5.	To otherwise customize your experience with us, including customizing the ads shown to you on other websites.
3.6.	To prevent potentially prohibited or illegal activities, comply with applicable law and enforce our Terms of Service and for any other purposes disclosed to you at the time we collect your information or pursuant to your consent.
3.7.	To verify your identity and prevent fraud or other unauthorized or illegal activity.
3.8.	To use information we’ve collected from cookies and other technology to enhance our services and your experience with them.
3.9.	To enforce our Terms of use and Privacy Policy and comply with legal requirements.
3.10.	For any other use after obtaining your consent for purposes other than those you have previously agreed to.
4.	SHARE PERSONAL INFORMATION
4.1.	We may share your information -As necessary- for the following purposes: 
4.1.1.	To comply with legal process, legitimate and enforceable subpoenas and court orders.
4.1.2.	To respond to requests from public and government authorities.
4.1.3.	To enforce our Terms of Use and Privacy Policy.
4.1.4.	To protect our rights, privacy, safety or property, and/or that of you or others.
4.2.	We may share information with third-party vendors who provide services or functions on our behalf, including business analytics, payment processing, customer service, marketing, public relations, distribution of surveys, and fraud prevention. We may also authorize third-party vendors to collect information on our behalf, including, for example, as necessary to operate features of our Application or to facilitate the delivery of online advertising tailored to your interests. Third-party vendors have access to and may collect information only as needed to perform their functions.
4.3.	We also may share information to a third party in connection with or during negotiations of any reorganization, merger, sale, joint venture, assignment, transfer or other disposition of all or any portion of our business, or assets.
5.	STORE AND RETAIN PERSONAL INFORMATION
5.1.	We may in Hababcom for hotels and furnished apartments booking Application retain certain information associated with your account in our archives, including for analytical purposes as well as for recordkeeping integrity. The periods for which we retain your information depend on the purpose for which we collected it and we use it.
5.2.	We will not retain your personal information for longer than is necessary for our business purposes or for legal requirements. We may retain some information for a period of time after you have concluded your contract with us or requested information erasure, if this is necessary to meet our legal obligations or to exercise, defend  legal rights.
5.3.	We do not sell, trade or transfer your personal information to third parties, not including trusted third parties that assist us in operating the Application, the conduct of our business, or your service, as long as such parties agree to keep this confidential information.
6.	PROCESSING OF PERSONAL DATA
6.1.	At Hababcom for hotels and furnished apartments booking Application, we only process correct and updated personal data, so you have the right to a correction of your inaccurate personal data. 
6.2.	We obliged to deleting unnecessary personal data with respect to the purposes that have been collected or otherwise processed.
6.3.	We uses only data processors that provide adequate safeguards to implement appropriate technical and regulatory measures in such a way that ensure the processing and ensures that the rights of all relevant data topics are protected.
7.	PROTECTION OF PERSONAL INFORMATION
7.1.	The security of your data is important to us, so we seek to preserve all user information and not be viewed by any person in contrary to Hababcom for hotels and furnished apartments booking Application policy in force. We also work to protect this information through "designated servers" protected by electronic protection systems.
7.2.	We take all necessary and appropriate security measures to protect your personal information from loss, damage, alteration, disclosure, unauthorized access or unintentional and unlawful use. However, this level of protection cannot be 100% effective unless you have your own security policies. You should not share your account data with anyone, and if you are concerned that any of your personal data has disclosed, you must change it immediately after you sign in to your account.
8.	CHILDREN’S PRIVACY
8.1.	Your guidance and involvement are essential to help ensure that children have a safe online experience. We encourage you to stay involved in and informed about what your child is doing online. Your efforts will help guide your children to sites that are appropriate for their age.
8.2.	Hababcom for hotels and furnished apartments booking Application takes children's privacy seriously. We do not knowingly collect Personal Information from children through our Application. If you are a minor under the laws, please do not submit any Personal Information without the express consent and participation of a parent or guardian.
9.	EXTERNAL LINKS
This Application may include links to third party websites. If you access other websites from the links provided on our Application, the operators of those websites may collect information from you which will be used by them in accordance with their privacy policy, which may differ from this Privacy Policy. You are advised to examine the privacy statements posted on those other websites to understand their procedures for collecting, using, and disclosing personal information.
10.	PRIVACY POLICY CHANGES
Hababcom Application reserves the right to change this privacy policy at any time. Any changes we may make to our privacy policy in the future will be posted on this page. You agree to visit this page regularly to be aware of any such changes. By continuing to use our Application after these modifications have come into effect, you accept and agree to and abide by the amendments..
11.	HOW TO CONTACT US
If you have questions or inquiries regarding this policy, please contact:
o	 E-mail: support@hababcom.com 
o	Phone: 00249120616603

You acknowledge that you have read this Privacy Policy and agree to all of its terms and conditions. By continuing to use the Application and services, you agree to be bound by this policy. If you do not agree to be bound by this Policy, you are not authorized to use or access the Hababcom for hotels and furnished apartments booking Application.

Copyright © Hababcom 2020
 All Rights Reserved','["Noreply.hababcom@gmail.com"]','["+96612547845","+201114228487"]','30','0','','10000','10000','10');


CREATE TABLE `attachments` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name_ar` varchar(50) NOT NULL,
  `name_en` varchar(100) NOT NULL,
  `images` varchar(255) NOT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT 1,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8mb4;


INSERT INTO attachments (id, name_ar, name_en, images, is_active) VALUES ('1','موقف سيارات','parking','[1]','1');

INSERT INTO attachments (id, name_ar, name_en, images, is_active) VALUES ('2','شارع رئيسي','Main street','[101]','1');

INSERT INTO attachments (id, name_ar, name_en, images, is_active) VALUES ('3','مطعم','Resturant','[76]','0');

INSERT INTO attachments (id, name_ar, name_en, images, is_active) VALUES ('4','تكييف','conditioning','[8]','1');

INSERT INTO attachments (id, name_ar, name_en, images, is_active) VALUES ('5','هاتف','Telephone','[8]','1');

INSERT INTO attachments (id, name_ar, name_en, images, is_active) VALUES ('6','امكانية الغاء الحجز قبل 24 ساعة','The possibility of canceling the reservation 24 hours in advance','[8]','1');

INSERT INTO attachments (id, name_ar, name_en, images, is_active) VALUES ('7','صندوق أمانات','Safe-Deposit','[8]','0');

INSERT INTO attachments (id, name_ar, name_en, images, is_active) VALUES ('8','وايفاي مجاني','Wifi is free','[74]','1');

INSERT INTO attachments (id, name_ar, name_en, images, is_active) VALUES ('9','مكواة','iron','[1]','1');

INSERT INTO attachments (id, name_ar, name_en, images, is_active) VALUES ('10','غسالة ملبس','A candied washing machine','[8]','1');

INSERT INTO attachments (id, name_ar, name_en, images, is_active) VALUES ('11','تلفزيون بشاشة مسطحة','Flat screen TV','[8]','0');

INSERT INTO attachments (id, name_ar, name_en, images, is_active) VALUES ('12','لوازم استحمام مجانية','Free toiletries','[8]','1');

INSERT INTO attachments (id, name_ar, name_en, images, is_active) VALUES ('13','ثلاجة','parking','[1]','1');

INSERT INTO attachments (id, name_ar, name_en, images, is_active) VALUES ('14','مناشف','Towels','[8]','1');

INSERT INTO attachments (id, name_ar, name_en, images, is_active) VALUES ('15','بانيو','Resturant','[102]','1');

INSERT INTO attachments (id, name_ar, name_en, images, is_active) VALUES ('16','جاكوزي','Jacuzzi','[8]','1');

INSERT INTO attachments (id, name_ar, name_en, images, is_active) VALUES ('18','مطبخ','a kitchen','[1]','1');

INSERT INTO attachments (id, name_ar, name_en, images, is_active) VALUES ('19','تجهيزات المطبخ','Kitchen fixtures','[8]','1');

INSERT INTO attachments (id, name_ar, name_en, images, is_active) VALUES ('20',' غلاية كهربائية','electric kettle','[8]','0');

INSERT INTO attachments (id, name_ar, name_en, images, is_active) VALUES ('21','مصعد','Elevator','[219]','1');

INSERT INTO attachments (id, name_ar, name_en, images, is_active) VALUES ('22','مولد كهرابائي احتياطي','Backup generator','[1]','1');

INSERT INTO attachments (id, name_ar, name_en, images, is_active) VALUES ('23','استقبال على مدار الساعة','Reception around the clock','[8]','1');

INSERT INTO attachments (id, name_ar, name_en, images, is_active) VALUES ('24','حجز مرن','Flexible reservation','[8]','0');

INSERT INTO attachments (id, name_ar, name_en, images, is_active) VALUES ('25','test','test','[282]','1');


CREATE TABLE `carts` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `housing_units_id` int(11) DEFAULT NULL,
  `apartments_id` int(11) DEFAULT NULL,
  `orders_id` int(11) DEFAULT NULL,
  `quantity` int(11) DEFAULT 1,
  `price` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `housing_units_id` (`housing_units_id`),
  KEY `apartments_id` (`apartments_id`),
  KEY `orders_id` (`orders_id`),
  CONSTRAINT `carts_ibfk_1` FOREIGN KEY (`housing_units_id`) REFERENCES `housing_units` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `carts_ibfk_2` FOREIGN KEY (`apartments_id`) REFERENCES `apartments` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `carts_ibfk_3` FOREIGN KEY (`orders_id`) REFERENCES `orders` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=315 DEFAULT CHARSET=utf8mb4;


INSERT INTO carts (id, housing_units_id, apartments_id, orders_id, quantity, price) VALUES ('311','595','','317','','110');

INSERT INTO carts (id, housing_units_id, apartments_id, orders_id, quantity, price) VALUES ('313','4','','319','','900');

INSERT INTO carts (id, housing_units_id, apartments_id, orders_id, quantity, price) VALUES ('314','2','','320','','700');


CREATE TABLE `categories` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name_ar` varchar(255) NOT NULL,
  `name_en` varchar(255) NOT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT 1,
  `image` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4;


INSERT INTO categories (id, name_ar, name_en, is_active, image) VALUES ('1','فندق','hotel','1','');

INSERT INTO categories (id, name_ar, name_en, is_active, image) VALUES ('2','شقة','Apartment','1','');


CREATE TABLE `contacts` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `users_id` int(11) NOT NULL,
  `message` text NOT NULL,
  `created_at` varchar(255) NOT NULL,
  `is_open` tinyint(1) NOT NULL DEFAULT 1,
  PRIMARY KEY (`id`),
  KEY `users_id` (`users_id`),
  CONSTRAINT `contacts_ibfk_1` FOREIGN KEY (`users_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4;


INSERT INTO contacts (id, users_id, message, created_at, is_open) VALUES ('1','10','It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using 'Content here, content here', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for 'lorem ipsum' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).','2021-03-29 20:02:09','1');

INSERT INTO contacts (id, users_id, message, created_at, is_open) VALUES ('2','11','It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using 'Content here, content here', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for 'lorem ipsum' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like). It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using 'Content here, content here', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for 'lorem ipsum' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).','2021-04-08 14:37:26','1');


CREATE TABLE `countries` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `code` varchar(2) NOT NULL DEFAULT '',
  `mobile_ex` varchar(20) NOT NULL,
  `call_key` varchar(5) NOT NULL,
  `name_en` varchar(100) NOT NULL DEFAULT '',
  `name_ar` varchar(100) NOT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT 1,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=223 DEFAULT CHARSET=utf8;


INSERT INTO countries (id, code, mobile_ex, call_key, name_en, name_ar, is_active) VALUES ('1','AF','701234567','+93','Afghanistan','أفغانستان','0');

INSERT INTO countries (id, code, mobile_ex, call_key, name_en, name_ar, is_active) VALUES ('2','AL','662123456','+355','Albania','ألبانيا','0');

INSERT INTO countries (id, code, mobile_ex, call_key, name_en, name_ar, is_active) VALUES ('3','DZ','551234567','+213','Algeria','الجزائر','0');

INSERT INTO countries (id, code, mobile_ex, call_key, name_en, name_ar, is_active) VALUES ('4','AS','6847331234','+1684','American Samoa','ساموا الأمريكية','0');

INSERT INTO countries (id, code, mobile_ex, call_key, name_en, name_ar, is_active) VALUES ('5','AD','312345','+376','Andorra','أندورا','0');

INSERT INTO countries (id, code, mobile_ex, call_key, name_en, name_ar, is_active) VALUES ('6','AO','923123456','+244','Angola','أنغولا','0');

INSERT INTO countries (id, code, mobile_ex, call_key, name_en, name_ar, is_active) VALUES ('7','AI','2642351234','+1264','Anguilla','أنغيلا','0');

INSERT INTO countries (id, code, mobile_ex, call_key, name_en, name_ar, is_active) VALUES ('8','AG','2684641234','+1268','Antigua & Barbuda','أنتيغوا وبربودا','0');

INSERT INTO countries (id, code, mobile_ex, call_key, name_en, name_ar, is_active) VALUES ('9','AM','77123456','+374','Armenia','أرمينيا','0');

INSERT INTO countries (id, code, mobile_ex, call_key, name_en, name_ar, is_active) VALUES ('10','AR','91123456789','+54','Argentina','الأرجنتين','0');

INSERT INTO countries (id, code, mobile_ex, call_key, name_en, name_ar, is_active) VALUES ('11','AW','5601234','+297','Europe','أروبا','0');

INSERT INTO countries (id, code, mobile_ex, call_key, name_en, name_ar, is_active) VALUES ('12','AU','412345678','+61','Australia','أستراليا','0');

INSERT INTO countries (id, code, mobile_ex, call_key, name_en, name_ar, is_active) VALUES ('13','AT','664123456','+43','Austria','النمسا','0');

INSERT INTO countries (id, code, mobile_ex, call_key, name_en, name_ar, is_active) VALUES ('14','AZ','401234567','+994','Azerbaijan','أذربيجان','0');

INSERT INTO countries (id, code, mobile_ex, call_key, name_en, name_ar, is_active) VALUES ('15','BS','2423591234','+1242','The Bahamas','الباهاما','0');

INSERT INTO countries (id, code, mobile_ex, call_key, name_en, name_ar, is_active) VALUES ('16','BH','36001234','+973','Bahrain','البحرين','0');

INSERT INTO countries (id, code, mobile_ex, call_key, name_en, name_ar, is_active) VALUES ('17','BD','1812345678','+880','Bangladesh','بنغلاديش','0');

INSERT INTO countries (id, code, mobile_ex, call_key, name_en, name_ar, is_active) VALUES ('18','BB','2462501234','+1246','Barbados','بربادوس','0');

INSERT INTO countries (id, code, mobile_ex, call_key, name_en, name_ar, is_active) VALUES ('19','BE','470123456','+32','Belgium','بلجيكا','0');

INSERT INTO countries (id, code, mobile_ex, call_key, name_en, name_ar, is_active) VALUES ('20','BZ','6221234','+501','Belize','بليز','0');

INSERT INTO countries (id, code, mobile_ex, call_key, name_en, name_ar, is_active) VALUES ('21','BJ','90011234','+229','Benin','بنين','0');

INSERT INTO countries (id, code, mobile_ex, call_key, name_en, name_ar, is_active) VALUES ('22','BM','4413701234','+1441','Bermuda','برمودا','0');

INSERT INTO countries (id, code, mobile_ex, call_key, name_en, name_ar, is_active) VALUES ('23','BT','17123456','+975','Bhutan','بوتان','0');

INSERT INTO countries (id, code, mobile_ex, call_key, name_en, name_ar, is_active) VALUES ('24','BQ','3181234','+599','Bonaire','بونير','0');

INSERT INTO countries (id, code, mobile_ex, call_key, name_en, name_ar, is_active) VALUES ('25','BA','61123456','+387','Bosnia & Herzegovina','البوسنة والهرسك','0');

INSERT INTO countries (id, code, mobile_ex, call_key, name_en, name_ar, is_active) VALUES ('26','BW','71123456','+267','Botswana','بوتسوانا','0');

INSERT INTO countries (id, code, mobile_ex, call_key, name_en, name_ar, is_active) VALUES ('27','BV','2483224','+44','Bouvet Island','جزيرة بوفيت','0');

INSERT INTO countries (id, code, mobile_ex, call_key, name_en, name_ar, is_active) VALUES ('28','BR','11961234567','+55','Brazil','البرازيل','0');

INSERT INTO countries (id, code, mobile_ex, call_key, name_en, name_ar, is_active) VALUES ('29','BN','7123456','+673','Brunei','بروناي','0');

INSERT INTO countries (id, code, mobile_ex, call_key, name_en, name_ar, is_active) VALUES ('30','BG','48123456','+359','Bulgaria','بلغاريا','0');

INSERT INTO countries (id, code, mobile_ex, call_key, name_en, name_ar, is_active) VALUES ('31','KH','91234567','+855','Cambodia','كمبوديا','0');

INSERT INTO countries (id, code, mobile_ex, call_key, name_en, name_ar, is_active) VALUES ('32','CM','671234567','+237','Cameroon','الكاميرون','0');

INSERT INTO countries (id, code, mobile_ex, call_key, name_en, name_ar, is_active) VALUES ('33','CA','5062345678','+1','Canada','كندا','0');

INSERT INTO countries (id, code, mobile_ex, call_key, name_en, name_ar, is_active) VALUES ('34','CV','9911234','+238','Cape Verde','الرأس الأخضر','0');

INSERT INTO countries (id, code, mobile_ex, call_key, name_en, name_ar, is_active) VALUES ('35','CA','5062345678','+1','Central African Republic','جمهورية افريقيا الوسطى','0');

INSERT INTO countries (id, code, mobile_ex, call_key, name_en, name_ar, is_active) VALUES ('36','KY','3453231234','+1345','Cayman Islands','جزر كايمان','0');

INSERT INTO countries (id, code, mobile_ex, call_key, name_en, name_ar, is_active) VALUES ('37','TD','63012345','+235','Chad','تشاد','0');

INSERT INTO countries (id, code, mobile_ex, call_key, name_en, name_ar, is_active) VALUES ('38','GB','7400123456','+44','Channel Islands','جزر القناة','0');

INSERT INTO countries (id, code, mobile_ex, call_key, name_en, name_ar, is_active) VALUES ('39','CL','221234567','+56','Chile','شيلي','0');

INSERT INTO countries (id, code, mobile_ex, call_key, name_en, name_ar, is_active) VALUES ('40','CN','13123456789','+86','China','جمهورية الصين الشعبية','0');

INSERT INTO countries (id, code, mobile_ex, call_key, name_en, name_ar, is_active) VALUES ('41','CO','3211234567','+57','Colombia','كلومبيا','0');

INSERT INTO countries (id, code, mobile_ex, call_key, name_en, name_ar, is_active) VALUES ('42','CG','061234567','+242','Republic of the Congo','الكونغو','0');

INSERT INTO countries (id, code, mobile_ex, call_key, name_en, name_ar, is_active) VALUES ('43','CD','991234567','+243','Democratic Republic of the Congo
','جمهورية الكونغو الديمقراطية','0');

INSERT INTO countries (id, code, mobile_ex, call_key, name_en, name_ar, is_active) VALUES ('44','CR','83123456','+506','Costa Rica','كوستا ريكا','0');

INSERT INTO countries (id, code, mobile_ex, call_key, name_en, name_ar, is_active) VALUES ('45','KM','3212345','+269','Comoros','جزر القمر','0');

INSERT INTO countries (id, code, mobile_ex, call_key, name_en, name_ar, is_active) VALUES ('46','HR','921234567','+385','Croatia','كرواتيا','0');

INSERT INTO countries (id, code, mobile_ex, call_key, name_en, name_ar, is_active) VALUES ('47','CX','412345678','+61','Christmas Island','جزيرة الكريسماس','0');

INSERT INTO countries (id, code, mobile_ex, call_key, name_en, name_ar, is_active) VALUES ('48','CW','95181234','+599','Curaçao','كوراكاو','0');

INSERT INTO countries (id, code, mobile_ex, call_key, name_en, name_ar, is_active) VALUES ('49','CY','96123456','+357','Cyprus','قبرص','0');

INSERT INTO countries (id, code, mobile_ex, call_key, name_en, name_ar, is_active) VALUES ('50','CZ','601123456','+420','Czech Republic','جمهورية التشيك','0');

INSERT INTO countries (id, code, mobile_ex, call_key, name_en, name_ar, is_active) VALUES ('51','DK','32123456','+45','Denmark','الدنمارك','0');

INSERT INTO countries (id, code, mobile_ex, call_key, name_en, name_ar, is_active) VALUES ('52','DM','7672251234','+1767','Dominica','دومينيكا','0');

INSERT INTO countries (id, code, mobile_ex, call_key, name_en, name_ar, is_active) VALUES ('53','DO','8092345678','+1809','Dominican Republic','جمهورية الدومنيكان','0');

INSERT INTO countries (id, code, mobile_ex, call_key, name_en, name_ar, is_active) VALUES ('54','ER','7123456','+291','Eritrea','أريتريا','0');

INSERT INTO countries (id, code, mobile_ex, call_key, name_en, name_ar, is_active) VALUES ('55','TL','77212345','+670','East Timor','تيمور الشرقية','0');

INSERT INTO countries (id, code, mobile_ex, call_key, name_en, name_ar, is_active) VALUES ('56','EC','991234567','+593','Ecuador','الإكوادور','0');

INSERT INTO countries (id, code, mobile_ex, call_key, name_en, name_ar, is_active) VALUES ('57','EG','1001234567','+20','Egypt','مصر','0');

INSERT INTO countries (id, code, mobile_ex, call_key, name_en, name_ar, is_active) VALUES ('58','SV','70123456','+503','El Salvador','السلفادور','0');

INSERT INTO countries (id, code, mobile_ex, call_key, name_en, name_ar, is_active) VALUES ('59','EE','51234567','+372','Estonia','استونيا','0');

INSERT INTO countries (id, code, mobile_ex, call_key, name_en, name_ar, is_active) VALUES ('60','ET','911234567','+251','Ethiopia','أثيوبيا','0');

INSERT INTO countries (id, code, mobile_ex, call_key, name_en, name_ar, is_active) VALUES ('61','FJ','7012345','+679','Fiji','فيجي','0');

INSERT INTO countries (id, code, mobile_ex, call_key, name_en, name_ar, is_active) VALUES ('62','FI','412345678','+358','Finland','فنلندا','0');

INSERT INTO countries (id, code, mobile_ex, call_key, name_en, name_ar, is_active) VALUES ('63','FR','612345678','+33','France','فرنسا','0');

INSERT INTO countries (id, code, mobile_ex, call_key, name_en, name_ar, is_active) VALUES ('64','GF','694201234','+594','Equatorial Guinea','غيانا الفرنسية','0');

INSERT INTO countries (id, code, mobile_ex, call_key, name_en, name_ar, is_active) VALUES ('65','PF','87123456','+689','French Polynesia','بولينيزيا الفرنسية','0');

INSERT INTO countries (id, code, mobile_ex, call_key, name_en, name_ar, is_active) VALUES ('66','TF','2086689344','+44','French Southern and Antarctic Lands','أراض فرنسية جنوبية','0');

INSERT INTO countries (id, code, mobile_ex, call_key, name_en, name_ar, is_active) VALUES ('67','GA','06031234','+241','Gabon','الغابون','0');

INSERT INTO countries (id, code, mobile_ex, call_key, name_en, name_ar, is_active) VALUES ('68','GM','3012345','+220','The Gambia','غامبيا','0');

INSERT INTO countries (id, code, mobile_ex, call_key, name_en, name_ar, is_active) VALUES ('69','GE','555123456','+995','Georgia','جورجيا','0');

INSERT INTO countries (id, code, mobile_ex, call_key, name_en, name_ar, is_active) VALUES ('70','DE','15123456789','+49','Germany','ألمانيا','0');

INSERT INTO countries (id, code, mobile_ex, call_key, name_en, name_ar, is_active) VALUES ('71','GH','231234567','+233','Ghana','غانا','0');

INSERT INTO countries (id, code, mobile_ex, call_key, name_en, name_ar, is_active) VALUES ('72','GR','6912345678','+30','Greece','اليونان','0');

INSERT INTO countries (id, code, mobile_ex, call_key, name_en, name_ar, is_active) VALUES ('73','GD','4734031234','+1473','Grenada','غرينادا','0');

INSERT INTO countries (id, code, mobile_ex, call_key, name_en, name_ar, is_active) VALUES ('74','GI','57123456','+350','Gibraltar','جبل طارق','0');

INSERT INTO countries (id, code, mobile_ex, call_key, name_en, name_ar, is_active) VALUES ('75','KY','3453231234','+1345','Grand Cayman','جراند كايمان','0');

INSERT INTO countries (id, code, mobile_ex, call_key, name_en, name_ar, is_active) VALUES ('76','GB','7400123456','+44','United Kingdom','بريطانيا العظمى','0');

INSERT INTO countries (id, code, mobile_ex, call_key, name_en, name_ar, is_active) VALUES ('77','VG','2843001234','+1284','Great Thatch Island','جزيرة تاتش العظيمة','0');

INSERT INTO countries (id, code, mobile_ex, call_key, name_en, name_ar, is_active) VALUES ('78','VG','2843001234','+1284','Great Tobago Island','جزيرة توباغو العظمى','0');

INSERT INTO countries (id, code, mobile_ex, call_key, name_en, name_ar, is_active) VALUES ('79','GL','221234','+299','Greenland','جرينلاند','0');

INSERT INTO countries (id, code, mobile_ex, call_key, name_en, name_ar, is_active) VALUES ('80','GP','690001234','+590','Guadeloupe','جوادلوب','0');

INSERT INTO countries (id, code, mobile_ex, call_key, name_en, name_ar, is_active) VALUES ('81','GU','6713001234','+1671','Guam','غوام','0');

INSERT INTO countries (id, code, mobile_ex, call_key, name_en, name_ar, is_active) VALUES ('82','GT','51234567','+502','Guatemala','غواتيمالا','0');

INSERT INTO countries (id, code, mobile_ex, call_key, name_en, name_ar, is_active) VALUES ('83','GN','601123456','+224','Guinea','غينيا','0');

INSERT INTO countries (id, code, mobile_ex, call_key, name_en, name_ar, is_active) VALUES ('84','GW','955012345','+245','Guinea Bissau','غينيا بيساو','0');

INSERT INTO countries (id, code, mobile_ex, call_key, name_en, name_ar, is_active) VALUES ('85','GY','6091234','+592','Guyana','غيانا (البريطانية)','0');

INSERT INTO countries (id, code, mobile_ex, call_key, name_en, name_ar, is_active) VALUES ('86','GF','694201234','+594','French Guiana','غيانا (الفرنسية)','0');

INSERT INTO countries (id, code, mobile_ex, call_key, name_en, name_ar, is_active) VALUES ('87','HT','34101234','+509','Haiti','هايتي','0');

INSERT INTO countries (id, code, mobile_ex, call_key, name_en, name_ar, is_active) VALUES ('88','HN','91234567','+504','Honduras','هندوراس','0');

INSERT INTO countries (id, code, mobile_ex, call_key, name_en, name_ar, is_active) VALUES ('89','HK','51234567','+852','Hong Kong','هونغ كونغ','0');

INSERT INTO countries (id, code, mobile_ex, call_key, name_en, name_ar, is_active) VALUES ('90','HU','201234567','+36','Hungary','المجر','0');

INSERT INTO countries (id, code, mobile_ex, call_key, name_en, name_ar, is_active) VALUES ('91','IS','6111234','+354','Iceland','أيسلندا','0');

INSERT INTO countries (id, code, mobile_ex, call_key, name_en, name_ar, is_active) VALUES ('92','IN','8123456789','+91','India','الهند','0');

INSERT INTO countries (id, code, mobile_ex, call_key, name_en, name_ar, is_active) VALUES ('93','ID','812345678','+62','Indonesia','أندونيسيا','0');

INSERT INTO countries (id, code, mobile_ex, call_key, name_en, name_ar, is_active) VALUES ('94','IQ','7912345678','+964','Iraq','العراق','0');

INSERT INTO countries (id, code, mobile_ex, call_key, name_en, name_ar, is_active) VALUES ('95','IE','850123456','+353','Ireland','جمهورية ايرلندا','0');

INSERT INTO countries (id, code, mobile_ex, call_key, name_en, name_ar, is_active) VALUES ('96','IT','3123456789','+39','Italy','إيطاليا','0');

INSERT INTO countries (id, code, mobile_ex, call_key, name_en, name_ar, is_active) VALUES ('97','CI','01234567','+225','Côte d’Ivoire','ساحل العاج','0');

INSERT INTO countries (id, code, mobile_ex, call_key, name_en, name_ar, is_active) VALUES ('98','JM','8762101234','+1876','Jamaica','جمايكا','0');

INSERT INTO countries (id, code, mobile_ex, call_key, name_en, name_ar, is_active) VALUES ('99','JP','9012345678','+81','Japan','اليابان','0');

INSERT INTO countries (id, code, mobile_ex, call_key, name_en, name_ar, is_active) VALUES ('100','JO','790123456','+962','Jordan','الأردن','0');

INSERT INTO countries (id, code, mobile_ex, call_key, name_en, name_ar, is_active) VALUES ('101','VG','2843001234','+1284','Jost Van Dyke','جزيرة جوست فان دايك','0');

INSERT INTO countries (id, code, mobile_ex, call_key, name_en, name_ar, is_active) VALUES ('102','KZ','7710009998','+7','Kazakhstan','كازاخستان','0');

INSERT INTO countries (id, code, mobile_ex, call_key, name_en, name_ar, is_active) VALUES ('103','KE','712123456','+254','Kenya','كينيا','0');

INSERT INTO countries (id, code, mobile_ex, call_key, name_en, name_ar, is_active) VALUES ('104','KW','50012345','+965','Kuwait','الكويت','0');

INSERT INTO countries (id, code, mobile_ex, call_key, name_en, name_ar, is_active) VALUES ('105','KG','700123456','+996','Kyrgyzstan','قرغيزستان','0');

INSERT INTO countries (id, code, mobile_ex, call_key, name_en, name_ar, is_active) VALUES ('106','LA','2023123456','+856','Laos','لاوس','0');

INSERT INTO countries (id, code, mobile_ex, call_key, name_en, name_ar, is_active) VALUES ('107','LV','21234567','+371','Latvia','لاتفيا','0');

INSERT INTO countries (id, code, mobile_ex, call_key, name_en, name_ar, is_active) VALUES ('108','LB','71123456','+961','Lebanon','لبنان','0');

INSERT INTO countries (id, code, mobile_ex, call_key, name_en, name_ar, is_active) VALUES ('109','LS','50123456','+266','Lesotho','ليسوتو','0');

INSERT INTO countries (id, code, mobile_ex, call_key, name_en, name_ar, is_active) VALUES ('110','LT','61234567','+370','Lithuania','ليتوانيا','0');

INSERT INTO countries (id, code, mobile_ex, call_key, name_en, name_ar, is_active) VALUES ('111','LR','770123456','+231','Liberia','ليبريا','0');

INSERT INTO countries (id, code, mobile_ex, call_key, name_en, name_ar, is_active) VALUES ('112','LY','912345678','+218','Libya','ليبيا','0');

INSERT INTO countries (id, code, mobile_ex, call_key, name_en, name_ar, is_active) VALUES ('113','LI','660234567','+423','Liechtenstein','ليختنشتاين','0');

INSERT INTO countries (id, code, mobile_ex, call_key, name_en, name_ar, is_active) VALUES ('114','LU','628123456','+352','Luxembourg','لوكسمبورغ','0');

INSERT INTO countries (id, code, mobile_ex, call_key, name_en, name_ar, is_active) VALUES ('115','MO','66123456','+853','Macau','ماكاو','0');

INSERT INTO countries (id, code, mobile_ex, call_key, name_en, name_ar, is_active) VALUES ('116','MK','72345678','+389','Macedonia','جمهورية مقدونيا','0');

INSERT INTO countries (id, code, mobile_ex, call_key, name_en, name_ar, is_active) VALUES ('117','MG','321234567','+261','Madagascar','مدغشقر','0');

INSERT INTO countries (id, code, mobile_ex, call_key, name_en, name_ar, is_active) VALUES ('118','MW','991234567','+265','Malawi','ملاوي','0');

INSERT INTO countries (id, code, mobile_ex, call_key, name_en, name_ar, is_active) VALUES ('119','MY','123456789','+60','Malaysia','ماليزيا','0');

INSERT INTO countries (id, code, mobile_ex, call_key, name_en, name_ar, is_active) VALUES ('120','MV','7712345','+960','Maldives','جزر المالديف','0');

INSERT INTO countries (id, code, mobile_ex, call_key, name_en, name_ar, is_active) VALUES ('121','ML','65012345','+223','Mali','مالي','0');

INSERT INTO countries (id, code, mobile_ex, call_key, name_en, name_ar, is_active) VALUES ('122','MT','96961234','+356','Malta','مالطا','0');

INSERT INTO countries (id, code, mobile_ex, call_key, name_en, name_ar, is_active) VALUES ('123','MQ','696201234','+596','Martinique','مارتينيك','0');

INSERT INTO countries (id, code, mobile_ex, call_key, name_en, name_ar, is_active) VALUES ('124','MH','2351234','+692','Marshall Islands','جزر مارشال','0');

INSERT INTO countries (id, code, mobile_ex, call_key, name_en, name_ar, is_active) VALUES ('125','MR','22123456','+222','Mauritania','موريتانيا','0');

INSERT INTO countries (id, code, mobile_ex, call_key, name_en, name_ar, is_active) VALUES ('126','MU','52512345','+230','Mauritius','موريشيوس','0');

INSERT INTO countries (id, code, mobile_ex, call_key, name_en, name_ar, is_active) VALUES ('127','YT','639012345','+262','Mayotte','مايوت','0');

INSERT INTO countries (id, code, mobile_ex, call_key, name_en, name_ar, is_active) VALUES ('128','MX','12221234567','+52','Mexico','المكسيك','0');

INSERT INTO countries (id, code, mobile_ex, call_key, name_en, name_ar, is_active) VALUES ('129','MN','88123456','+976','Mongolia','منغوليا','0');

INSERT INTO countries (id, code, mobile_ex, call_key, name_en, name_ar, is_active) VALUES ('130','MS','6644923456','+1664','Montserrat','مونتسيرات','0');

INSERT INTO countries (id, code, mobile_ex, call_key, name_en, name_ar, is_active) VALUES ('131','MD','62112345','+373','Moldova','مولدوفا','0');

INSERT INTO countries (id, code, mobile_ex, call_key, name_en, name_ar, is_active) VALUES ('132','MC','612345678','+377','Monaco','موناكو','0');

INSERT INTO countries (id, code, mobile_ex, call_key, name_en, name_ar, is_active) VALUES ('133','ME','67622901','+382','Montenegro','الجبل الأسود','0');

INSERT INTO countries (id, code, mobile_ex, call_key, name_en, name_ar, is_active) VALUES ('134','MA','650123456','+212','Morocco','المغرب','0');

INSERT INTO countries (id, code, mobile_ex, call_key, name_en, name_ar, is_active) VALUES ('135','MZ','821234567','+258','Mozambique','موزمبيق','0');

INSERT INTO countries (id, code, mobile_ex, call_key, name_en, name_ar, is_active) VALUES ('136','FM','3501234','+691','Federated States of Micronesia','ميكرونيسيا','0');

INSERT INTO countries (id, code, mobile_ex, call_key, name_en, name_ar, is_active) VALUES ('137','NA','811234567','+264','Namibia','ناميبيا','0');

INSERT INTO countries (id, code, mobile_ex, call_key, name_en, name_ar, is_active) VALUES ('138','NP','9841234567','+977','Nepal','نيبال','0');

INSERT INTO countries (id, code, mobile_ex, call_key, name_en, name_ar, is_active) VALUES ('139','NL','612345678','+31','Netherlands','هولندا','0');

INSERT INTO countries (id, code, mobile_ex, call_key, name_en, name_ar, is_active) VALUES ('140','CW','95181234','+599','Netherlands Antilles','جزر الأنتيل الهولندية','0');

INSERT INTO countries (id, code, mobile_ex, call_key, name_en, name_ar, is_active) VALUES ('141','NZ','211234567','+64','New Zealand','نيوزيلاندا','0');

INSERT INTO countries (id, code, mobile_ex, call_key, name_en, name_ar, is_active) VALUES ('142','NC','751234','+687','New Caledonia','كاليدونيا الجديدة','0');

INSERT INTO countries (id, code, mobile_ex, call_key, name_en, name_ar, is_active) VALUES ('143','PG','70123456','+675','New Guinea','غينيا الجديدة','0');

INSERT INTO countries (id, code, mobile_ex, call_key, name_en, name_ar, is_active) VALUES ('144','AU','412345678','+61','Norfolk Island','جزيرة نورفولك','0');

INSERT INTO countries (id, code, mobile_ex, call_key, name_en, name_ar, is_active) VALUES ('145','VG','2843001234','+1284','Norman Island','جزيرة نورمان','0');

INSERT INTO countries (id, code, mobile_ex, call_key, name_en, name_ar, is_active) VALUES ('146','MP','6702345678','+1670','Northern Mariana Islands','جزر ماريانا الشمالية','0');

INSERT INTO countries (id, code, mobile_ex, call_key, name_en, name_ar, is_active) VALUES ('147','NI','81234567','+505','Nicaragua','نيكاراغوا','0');

INSERT INTO countries (id, code, mobile_ex, call_key, name_en, name_ar, is_active) VALUES ('148','NG','8021234567','+234','Nigeria','نيجيريا','0');

INSERT INTO countries (id, code, mobile_ex, call_key, name_en, name_ar, is_active) VALUES ('149','NU','8884012','+683','Niue','نييوي','0');

INSERT INTO countries (id, code, mobile_ex, call_key, name_en, name_ar, is_active) VALUES ('150','NO','40612345','+47','Norway','النرويج','0');

INSERT INTO countries (id, code, mobile_ex, call_key, name_en, name_ar, is_active) VALUES ('151','OM','92123456','+968','Oman','عمان','0');

INSERT INTO countries (id, code, mobile_ex, call_key, name_en, name_ar, is_active) VALUES ('152','PK','3012345678','+92','Pakistan','باكستان','0');

INSERT INTO countries (id, code, mobile_ex, call_key, name_en, name_ar, is_active) VALUES ('153','PW','6201234','+680','Palau','بالاو','0');

INSERT INTO countries (id, code, mobile_ex, call_key, name_en, name_ar, is_active) VALUES ('154','PA','61234567','+507','Panama','بنما','0');

INSERT INTO countries (id, code, mobile_ex, call_key, name_en, name_ar, is_active) VALUES ('155','PY','961456789','+595','Paraguay','باراغواي','0');

INSERT INTO countries (id, code, mobile_ex, call_key, name_en, name_ar, is_active) VALUES ('156','PN','7731277','+870','Pitcairn Islands','جزر بيتكيرن','0');

INSERT INTO countries (id, code, mobile_ex, call_key, name_en, name_ar, is_active) VALUES ('157','PE','912345678','+51','Peru','بيرو','0');

INSERT INTO countries (id, code, mobile_ex, call_key, name_en, name_ar, is_active) VALUES ('158','PH','9051234567','+63','Philippines','الفلبين','0');

INSERT INTO countries (id, code, mobile_ex, call_key, name_en, name_ar, is_active) VALUES ('159','PL','512345678','+48','Poland','بولندا','0');

INSERT INTO countries (id, code, mobile_ex, call_key, name_en, name_ar, is_active) VALUES ('160','PT','912345678','+351','Portugal','البرتغال','0');

INSERT INTO countries (id, code, mobile_ex, call_key, name_en, name_ar, is_active) VALUES ('161','PR','7872345678','+1','Puerto Rico','بورتوريكو','0');

INSERT INTO countries (id, code, mobile_ex, call_key, name_en, name_ar, is_active) VALUES ('162','RE','692123456','+262','Réunion','لا ريونيون','0');

INSERT INTO countries (id, code, mobile_ex, call_key, name_en, name_ar, is_active) VALUES ('163','RO','712034567','+40','Romania','رومانيا','0');

INSERT INTO countries (id, code, mobile_ex, call_key, name_en, name_ar, is_active) VALUES ('164','MP','6702345678','+1670','Rota','روتا','0');

INSERT INTO countries (id, code, mobile_ex, call_key, name_en, name_ar, is_active) VALUES ('165','RU','9123456789','+7','Russia','الاتحاد الروسي','0');

INSERT INTO countries (id, code, mobile_ex, call_key, name_en, name_ar, is_active) VALUES ('166','PM','551234','+508','Saint Pierre and Miquelon','سانت بيير وميكلون','0');

INSERT INTO countries (id, code, mobile_ex, call_key, name_en, name_ar, is_active) VALUES ('167','SN','701234567','+221','Senegal','السنغال','0');

INSERT INTO countries (id, code, mobile_ex, call_key, name_en, name_ar, is_active) VALUES ('168','RS','601234567','+381','Serbia','صربيا','0');

INSERT INTO countries (id, code, mobile_ex, call_key, name_en, name_ar, is_active) VALUES ('169','SC','2510123','+248','Seychelles','سيشيل','0');

INSERT INTO countries (id, code, mobile_ex, call_key, name_en, name_ar, is_active) VALUES ('170','SL','25123456','+232','Sierra Leone','سيراليون','0');

INSERT INTO countries (id, code, mobile_ex, call_key, name_en, name_ar, is_active) VALUES ('171','MP','6702345678','+1670','Saipan','سايبان','0');

INSERT INTO countries (id, code, mobile_ex, call_key, name_en, name_ar, is_active) VALUES ('172','WS','7212345','+685','Samoa','ساموا','0');

INSERT INTO countries (id, code, mobile_ex, call_key, name_en, name_ar, is_active) VALUES ('173','IT','3123456789','+39','San Marino','سان مارينو','0');

INSERT INTO countries (id, code, mobile_ex, call_key, name_en, name_ar, is_active) VALUES ('174','GB','7400123456','+44','Scotland','أسكتلندا','0');

INSERT INTO countries (id, code, mobile_ex, call_key, name_en, name_ar, is_active) VALUES ('175','SG','81234567','+65','Singapore','سنغافورة','0');

INSERT INTO countries (id, code, mobile_ex, call_key, name_en, name_ar, is_active) VALUES ('176','SK','912123456','+421','Slovakia','سلوفاكيا','0');

INSERT INTO countries (id, code, mobile_ex, call_key, name_en, name_ar, is_active) VALUES ('177','SI','31234567','+386','Slovenia','سلوفينيا','0');

INSERT INTO countries (id, code, mobile_ex, call_key, name_en, name_ar, is_active) VALUES ('178','ZA','711234567','+27','South Africa','جنوب أفريقيا','0');

INSERT INTO countries (id, code, mobile_ex, call_key, name_en, name_ar, is_active) VALUES ('179','SO','71123456','+252','Somalia','الصومال','0');

INSERT INTO countries (id, code, mobile_ex, call_key, name_en, name_ar, is_active) VALUES ('180','ES','612345678','+34','Spain','إسبانيا','0');

INSERT INTO countries (id, code, mobile_ex, call_key, name_en, name_ar, is_active) VALUES ('181','LK','712345678','+94','Sri Lanka','سيريلانكا','0');

INSERT INTO countries (id, code, mobile_ex, call_key, name_en, name_ar, is_active) VALUES ('182','BL','690001234','+590','Saint Barthélemy','سانت بارتيليمي','0');

INSERT INTO countries (id, code, mobile_ex, call_key, name_en, name_ar, is_active) VALUES ('183','BQ','3181234','+599','Sint Eustatius','سانت أوستاتيوس','0');

INSERT INTO countries (id, code, mobile_ex, call_key, name_en, name_ar, is_active) VALUES ('184','KN','8697652917','+1869','Saint Kitts and Nevis','سانت كيتس ونيفيس','0');

INSERT INTO countries (id, code, mobile_ex, call_key, name_en, name_ar, is_active) VALUES ('185','LC','7582845678','+1758','Saint Lucia','سانت لوسيا','0');

INSERT INTO countries (id, code, mobile_ex, call_key, name_en, name_ar, is_active) VALUES ('186','SX','7215205678','+590','Saint Martin','سانت مارتن','0');

INSERT INTO countries (id, code, mobile_ex, call_key, name_en, name_ar, is_active) VALUES ('187','VC','7844301234','+1784','Saint Vincent and the Grenadines','سانت فنسنت وجزر غرينادين','0');

INSERT INTO countries (id, code, mobile_ex, call_key, name_en, name_ar, is_active) VALUES ('188','SR','7412345','+597','Suriname','سورينام','0');

INSERT INTO countries (id, code, mobile_ex, call_key, name_en, name_ar, is_active) VALUES ('189','SZ','76123456','+268','Swaziland','سوازيلاند','0');

INSERT INTO countries (id, code, mobile_ex, call_key, name_en, name_ar, is_active) VALUES ('190','SE','701234567','+46','Sweden','السويد','0');

INSERT INTO countries (id, code, mobile_ex, call_key, name_en, name_ar, is_active) VALUES ('191','CH','781234567','+41','Switzerland','سويسرا','0');

INSERT INTO countries (id, code, mobile_ex, call_key, name_en, name_ar, is_active) VALUES ('192','TW','912345678','+886','Taiwan','تايوان','0');

INSERT INTO countries (id, code, mobile_ex, call_key, name_en, name_ar, is_active) VALUES ('193','TJ','917123456','+992','Tajikistan','طاجيكستان','0');

INSERT INTO countries (id, code, mobile_ex, call_key, name_en, name_ar, is_active) VALUES ('194','TZ','621234567','+255','Tanzania','جمهورية تنزانيا المتحدة','0');

INSERT INTO countries (id, code, mobile_ex, call_key, name_en, name_ar, is_active) VALUES ('195','TH','812345678','+66','Thailand','تايلاند','0');

INSERT INTO countries (id, code, mobile_ex, call_key, name_en, name_ar, is_active) VALUES ('196','TT','8682911234','+1868','Trinidad and Tobago','ترينداد وتوباغو','0');

INSERT INTO countries (id, code, mobile_ex, call_key, name_en, name_ar, is_active) VALUES ('197','TR','5012345678','+90','Turkey','تركيا','0');

INSERT INTO countries (id, code, mobile_ex, call_key, name_en, name_ar, is_active) VALUES ('198','TM','66123456','+993','Turkmenistan','تركمانستان','0');

INSERT INTO countries (id, code, mobile_ex, call_key, name_en, name_ar, is_active) VALUES ('199','MP','6702345678','+1670','Tunisia','تينيان','0');

INSERT INTO countries (id, code, mobile_ex, call_key, name_en, name_ar, is_active) VALUES ('200','TG','90112345','+228','Togo','توغو','0');

INSERT INTO countries (id, code, mobile_ex, call_key, name_en, name_ar, is_active) VALUES ('201','TN','20123456','+216','Tunisia','تونس','0');

INSERT INTO countries (id, code, mobile_ex, call_key, name_en, name_ar, is_active) VALUES ('202','TV','901234','+688','Tuvalu','توفالو','0');

INSERT INTO countries (id, code, mobile_ex, call_key, name_en, name_ar, is_active) VALUES ('203','TC','6492311234','+1649','Turks and Caicos Islands','جزر تركس وكايكوس','0');

INSERT INTO countries (id, code, mobile_ex, call_key, name_en, name_ar, is_active) VALUES ('204','UG','712345678','+256','Uganda','أوغندا','0');

INSERT INTO countries (id, code, mobile_ex, call_key, name_en, name_ar, is_active) VALUES ('205','AE','501234567','+971','United Arab Emirates','الأمارات العربية المتحدة','0');

INSERT INTO countries (id, code, mobile_ex, call_key, name_en, name_ar, is_active) VALUES ('206','GB','7400123456','+44','United Kingdom','المملكة المتحدة','0');

INSERT INTO countries (id, code, mobile_ex, call_key, name_en, name_ar, is_active) VALUES ('207','US','2015550123','+1','United States','الولايات المتحدة الأمريكية','0');

INSERT INTO countries (id, code, mobile_ex, call_key, name_en, name_ar, is_active) VALUES ('208','UY','94231234','+598','Uruguay','أوروغواي','0');

INSERT INTO countries (id, code, mobile_ex, call_key, name_en, name_ar, is_active) VALUES ('209','UZ','912345678','+998','Uzbekistan','أوزبكستان','0');

INSERT INTO countries (id, code, mobile_ex, call_key, name_en, name_ar, is_active) VALUES ('210','VU','5912345','+678','Vanuatu','فانواتو','0');

INSERT INTO countries (id, code, mobile_ex, call_key, name_en, name_ar, is_active) VALUES ('211','IT','3123456789','+39','Vatican City','الفاتيكان','0');

INSERT INTO countries (id, code, mobile_ex, call_key, name_en, name_ar, is_active) VALUES ('212','VE','4121234567','+58','Venezuela','فنزويلا','0');

INSERT INTO countries (id, code, mobile_ex, call_key, name_en, name_ar, is_active) VALUES ('213','VN','912345678','+84','Vietnam','فيتنام','0');

INSERT INTO countries (id, code, mobile_ex, call_key, name_en, name_ar, is_active) VALUES ('214','VG','2843001234','+1284','British Virgin Islands','جزر فيرجين (البريطانية)','0');

INSERT INTO countries (id, code, mobile_ex, call_key, name_en, name_ar, is_active) VALUES ('215','VI','3406421234','+1340','United States Virgin Islands','جزر فيرجن (الولايات المتحدة)','0');

INSERT INTO countries (id, code, mobile_ex, call_key, name_en, name_ar, is_active) VALUES ('216','YE','712345678','+967','Yemen','اليمن','0');

INSERT INTO countries (id, code, mobile_ex, call_key, name_en, name_ar, is_active) VALUES ('217','ZM','955123456','+260','Zambia','زامبيا','0');

INSERT INTO countries (id, code, mobile_ex, call_key, name_en, name_ar, is_active) VALUES ('218','ZR','815560151','+243','Zaire','زائير','0');

INSERT INTO countries (id, code, mobile_ex, call_key, name_en, name_ar, is_active) VALUES ('219','ZW','712345678','+263','Zimbabwe','زيمبابوي','0');

INSERT INTO countries (id, code, mobile_ex, call_key, name_en, name_ar, is_active) VALUES ('222','SD','911231234','+249','Sudan','السودان','1');

INSERT INTO countries (id, code, mobile_ex, call_key, name_en, name_ar, is_active) VALUES ('220','SA','512345678','+966','Saudi Arabia','السعودية','0');


CREATE TABLE `currencies` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name_ar` varchar(255) NOT NULL,
  `name_en` varchar(255) NOT NULL,
  `value_in_dollar` double NOT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT 1,
  `code` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4;


INSERT INTO currencies (id, name_ar, name_en, value_in_dollar, is_active, code) VALUES ('1','دولار امريكي','dollar','1','1','USD');

INSERT INTO currencies (id, name_ar, name_en, value_in_dollar, is_active, code) VALUES ('2','جنيه مصري','Egyptian Pound','15.71','1','EGP');

INSERT INTO currencies (id, name_ar, name_en, value_in_dollar, is_active, code) VALUES ('4','ريال سعودي','Saudi Riyal','3.75','1','SAR');

INSERT INTO currencies (id, name_ar, name_en, value_in_dollar, is_active, code) VALUES ('6','ريال قطري','Qatar Riyal','1.7','1','QAR');

INSERT INTO currencies (id, name_ar, name_en, value_in_dollar, is_active, code) VALUES ('9','جنيه سوداني','Sudanese Pound','460','1','SDD');

INSERT INTO currencies (id, name_ar, name_en, value_in_dollar, is_active, code) VALUES ('10','aasdas test','aasdasd test','13.5','1','saw');


CREATE TABLE `estates` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type` varchar(100) DEFAULT NULL,
  `locations_id` int(11) NOT NULL,
  `name_ar` varchar(255) NOT NULL,
  `name_en` varchar(255) DEFAULT NULL,
  `description_ar` text DEFAULT NULL,
  `description_en` text DEFAULT NULL,
  `payment` varchar(255) DEFAULT 'cash',
  `notes` text DEFAULT NULL,
  `categories_id` int(11) DEFAULT NULL,
  `total_rate` int(11) DEFAULT NULL,
  `regions_id` int(11) NOT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT 1,
  `location_description` varchar(255) DEFAULT NULL,
  `attachments` text DEFAULT NULL,
  `images` text DEFAULT NULL,
  `main_image` text DEFAULT NULL,
  `map_link` text DEFAULT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `street` text DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=42 DEFAULT CHARSET=utf8mb4;


INSERT INTO estates (id, type, locations_id, name_ar, name_en, description_ar, description_en, payment, notes, categories_id, total_rate, regions_id, is_active, location_description, attachments, images, main_image, map_link, created_at, street) VALUES ('1','ccc','18','فندق راس البر','Ras El Bar Hotel','فندق راس البر','Ras El Bar Hotel','["cash","visa"]','1','2','','16','1','12 miles from pyramids','[1,2,3]','[103]','','https://www.google.com/maps/place/%D8%A7%D9%84%D9%88%D8%A7%D8%AD%D8%A9%E2%80%AD/@30.0450401,31.3797118,15z','2021-06-01 18:06:09','');

INSERT INTO estates (id, type, locations_id, name_ar, name_en, description_ar, description_en, payment, notes, categories_id, total_rate, regions_id, is_active, location_description, attachments, images, main_image, map_link, created_at, street) VALUES ('2','ccc','18','فندق راس غارب','Ras Ghareb Hotel','فندق راس غارب','Ras Ghareb Hotel
test','["cash","visa"]','1','1','','16','1','12 miles from pyramids','[1,2]','[104]','','','2021-06-01 18:06:09','');

INSERT INTO estates (id, type, locations_id, name_ar, name_en, description_ar, description_en, payment, notes, categories_id, total_rate, regions_id, is_active, location_description, attachments, images, main_image, map_link, created_at, street) VALUES ('3','ccc','18','فندق العين السخنة','Ain Sokhna Hotel','فندق العين السخنة','Ain Sokhna Hotel','["cash","visa"]','1','1','5','16','1','12 miles from pyramids','[1,2,3]','[105]','','','2021-06-01 18:06:09','');

INSERT INTO estates (id, type, locations_id, name_ar, name_en, description_ar, description_en, payment, notes, categories_id, total_rate, regions_id, is_active, location_description, attachments, images, main_image, map_link, created_at, street) VALUES ('10','','18','فندق التاكا','Al taka Hotel','فندق 3 نجوم في وسط العاصمة مطل على شارع رئيسي','3-Star Hotel In The Center Of The Capital, Overlooking A Main Street','["cash"]','ادخل الملاحظات','1','1','16','1','','[1,2,3,4]','[53,56]','','','2021-06-01 18:06:09','');

INSERT INTO estates (id, type, locations_id, name_ar, name_en, description_ar, description_en, payment, notes, categories_id, total_rate, regions_id, is_active, location_description, attachments, images, main_image, map_link, created_at, street) VALUES ('19','','41','فندق السلام','Al Salam Hotel','فندق على طريق المطار','Near Airport','["visa"]','','','','32','1','','[2,3,4]','[124,125,126]','','https://www.google.com/maps/place/24%C2%B044'23.2%22N+46%C2%B041'38.8%22E/@24.739763,46.6962957,17z/data=!3m1!4b1!4m6!3m5!1s0x0:0x0!7e2!8m2!3d24.739763!4d46.6941068','2021-10-05 12:46:08','المطار');

INSERT INTO estates (id, type, locations_id, name_ar, name_en, description_ar, description_en, payment, notes, categories_id, total_rate, regions_id, is_active, location_description, attachments, images, main_image, map_link, created_at, street) VALUES ('20','','42','فندق الفجر الجديد','Al Fajr Al Jadeed','فندق راقي','Luxury Hotel','["cash","visa"]','','','','32','1','','[3,4,6]','[127,128]','','https://www.google.com/maps/place/15%C2%B032'26.9%22N+32%C2%B031'30.7%22E/@15.540796,32.5260746,18z/data=!3m1!4b1!4m6!3m5!1s0x0:0x0!7e2!8m2!3d15.5407942!4d32.5252063','2021-10-07 11:28:30','المعونة');

INSERT INTO estates (id, type, locations_id, name_ar, name_en, description_ar, description_en, payment, notes, categories_id, total_rate, regions_id, is_active, location_description, attachments, images, main_image, map_link, created_at, street) VALUES ('21','','43','فندق دايموند','Diamond Hotel','فندق في وسط الخرطوم','In the Middle of Khartoum','["cash","visa"]','','','','32','1','','[{"id":2,"name_ar":"شارع رئيسي","name_en":"Main street","images":[{"id":101,"image":"/uploads/images/x4NxIYKdfziZoRCV.png","type":null,"path":"/uploads/images/x4NxIYKdfziZoRCV.png","src":"/uploads/images/x4NxIYKdfziZoRCV.png"}],"is_active":1},{"id":3,"name_ar":"مطعم","name_en":"Resturant","images":[{"id":76,"image":"/uploads/images/Hh9DCox0HljYLBFF.png","type":null,"path":"/uploads/images/Hh9DCox0HljYLBFF.png","src":"/uploads/images/Hh9DCox0HljYLBFF.png"}],"is_active":0},{"id":4,"name_ar":"تكييف","name_en":"conditioning","images":[{"id":8,"image":"/uploads/images/1ZO1RJL81cpkt7YD.png","type":null,"path":"/uploads/images/1ZO1RJL81cpkt7YD.png","src":"/uploads/images/1ZO1RJL81cpkt7YD.png"}],"is_active":1},{"id":5,"name_ar":"هاتف","name_en":"Telephone","images":[{"id":8,"image":"/uploads/images/1ZO1RJL81cpkt7YD.png","type":null,"path":"/uploads/images/1ZO1RJL81cpkt7YD.png","src":"/uploads/images/1ZO1RJL81cpkt7YD.png"}],"is_active":1},{"id":6,"name_ar":"امكانية الغاء الحجز قبل 24 ساعة","name_en":"The possibility of canceling the reservation 24 hours in advance","images":[{"id":8,"image":"/uploads/images/1ZO1RJL81cpkt7YD.png","type":null,"path":"/uploads/images/1ZO1RJL81cpkt7YD.png","src":"/uploads/images/1ZO1RJL81cpkt7YD.png"}],"is_active":1}]','[131,132,133,134,135]','','https://www.google.com/maps/place/15%C2%B035'49.5%22N+32%C2%B031'17.7%22E/@15.597083,32.5223528,18z/data=!3m1!4b1!4m6!3m5!1s0x0:0x0!7e2!8m2!3d15.5970827!4d32.5215793','2021-10-10 09:29:41','المعونة');

INSERT INTO estates (id, type, locations_id, name_ar, name_en, description_ar, description_en, payment, notes, categories_id, total_rate, regions_id, is_active, location_description, attachments, images, main_image, map_link, created_at, street) VALUES ('23','','45','فندق الأوركيده','Orkeda Hotel','فندق مطل على البحر','Near the Cornech','["cash","visa"]','','','','32','1','','[{"id":3,"name_ar":"مطعم","name_en":"Resturant","images":[{"id":76,"image":"/uploads/images/Hh9DCox0HljYLBFF.png","type":null,"path":"/uploads/images/Hh9DCox0HljYLBFF.png","src":"/uploads/images/Hh9DCox0HljYLBFF.png"}],"is_active":0},{"id":4,"name_ar":"تكييف","name_en":"conditioning","images":[{"id":8,"image":"/uploads/images/1ZO1RJL81cpkt7YD.png","type":null,"path":"/uploads/images/1ZO1RJL81cpkt7YD.png","src":"/uploads/images/1ZO1RJL81cpkt7YD.png"}],"is_active":1},{"id":6,"name_ar":"امكانية الغاء الحجز قبل 24 ساعة","name_en":"The possibility of canceling the reservation 24 hours in advance","images":[{"id":8,"image":"/uploads/images/1ZO1RJL81cpkt7YD.png","type":null,"path":"/uploads/images/1ZO1RJL81cpkt7YD.png","src":"/uploads/images/1ZO1RJL81cpkt7YD.png"}],"is_active":1}]','[]','[]','https://www.google.com/maps/place/15%C2%B038'40.7%22N+32%C2%B033'44.2%22E/@15.644632,32.5628182,19z/data=!3m1!4b1!4m6!3m5!1s0x0:0x0!7e2!8m2!3d15.6446321!4d32.5622708','2021-10-23 10:15:46','المعونة');

INSERT INTO estates (id, type, locations_id, name_ar, name_en, description_ar, description_en, payment, notes, categories_id, total_rate, regions_id, is_active, location_description, attachments, images, main_image, map_link, created_at, street) VALUES ('25','','47','فندق تريمف','Triumph katameya','فندق تريمف','Triumph katameya','visa','adasdasdasd','','','16','1','','[8,2,3]','[175,379]','[378]','https://www.google.com/maps/place/%D9%81%D9%86%D8%AF%D9%82+%D8%AA%D8%B1%D9%8A%D9%88%D9%85%D9%81+%D9%84%D9%8A%D9%83%D8%B4%D8%B1%D9%8A%E2%80%AD/@30.003969,31.4037503,17z/data=!4m18!1m9!3m8!1s0x145822ffffffff43:0x7c900fed87c09521!2z2YHZhtiv2YIg2KrYsdmK2YjZhdmBINmE2YrZg9i02LHZig!5m2!4m1!1i2!8m2!3d30.003815!4d31.4015111!3m7!1s0x145822ffffffff43:0x7c900fed87c09521!5m2!4m1!1i2!8m2!3d30.003815!4d31.4015111','2021-10-30 16:31:18','test');

INSERT INTO estates (id, type, locations_id, name_ar, name_en, description_ar, description_en, payment, notes, categories_id, total_rate, regions_id, is_active, location_description, attachments, images, main_image, map_link, created_at, street) VALUES ('26','','48','فندق عروس الرمال','Aros Al Remal Hotel','فندق في وسط المدينة','Good Hotel','["cash","visa"]','','','','32','1','','[2,4,6,8]','[]','[]','https://www.google.com/maps/place/15%C2%B034'02.9%22N+32%C2%B034'41.8%22E/@15.5674707,32.5790094,18z/data=!3m1!4b1!4m6!3m5!1s0x0:0x0!7e2!8m2!3d15.5674694!4d32.5782785','2021-10-31 06:49:24','شارع الستين');

INSERT INTO estates (id, type, locations_id, name_ar, name_en, description_ar, description_en, payment, notes, categories_id, total_rate, regions_id, is_active, location_description, attachments, images, main_image, map_link, created_at, street) VALUES ('31','','54','روتانا','Rotana','فندق 5 نجوم','Five Star Hotel','cash','','1','','32','1','','[21]','[220,221,222]','','https://www.google.com/maps/place/15%C2%B032'34.3%22N+32%C2%B033'23.4%22E/@15.5427079,32.556618,18.42z/data=!4m6!3m5!1s0x0:0x1c4d525e964b2672!7e2!8m2!3d15.5428705!4d32.5564894','2022-04-07 12:00:07','شارع المطار');

INSERT INTO estates (id, type, locations_id, name_ar, name_en, description_ar, description_en, payment, notes, categories_id, total_rate, regions_id, is_active, location_description, attachments, images, main_image, map_link, created_at, street) VALUES ('32','','55','فندق ريانة','Rayannah Hotel','فندق على الطريق السريع','near high way','["cash","visa"]','','','','32','1','','[21,16,15]','[227,226]','[225]','https://www.google.com/maps/place/24%C2%B044'31.7%22N+46%C2%B042'17.5%22E/@24.7421459,46.7070457,17z/data=!3m1!4b1!4m6!3m5!1s0x0:0x7cc621aa0eb614c1!7e2!8m2!3d24.7421405!4d46.7048571','2022-04-20 20:54:39','الجمهورية');

INSERT INTO estates (id, type, locations_id, name_ar, name_en, description_ar, description_en, payment, notes, categories_id, total_rate, regions_id, is_active, location_description, attachments, images, main_image, map_link, created_at, street) VALUES ('35','','0','فندق السلام - الخرطوم','‪Al Salam Hotel - Khartoum‬','Al Salam Rotana Hotel هو خيارك الأمثل عند زيارة الخرطوم. حيث يوفر مزيجًا مثاليًا من القيمة والراحة، ويمنحك جو فاخر مع العديد من الرفاهيات التي يُفضلها المسافرون.  غرف النزلاء توفر سبل راحة مثل تليفزيون بشاشة مسطحة وتكييف هواء وميني بار كما يستطيع النزلاء الاتصال بالإنترنت من خلال خدمة الإنترنت مجاني التي تقدمها فندق.  تتميز الغرف في Al Salam Rotana Hotel بخدمة الغرف وخدمات الاستقبال والإرشاد، لإقامة ممتعة حقًا. تتميز المنشأة أيضًا بتجهيزات مثل حمام سباحة والإفطار. إذا كنت تستقل السيارة إلى Al Salam Rotana Hotel، تتوفر موقف مجاني للسيارات.','Al Salam Rotana Hotel هو خيارك الأمثل عند زيارة الخرطوم. حيث يوفر مزيجًا مثاليًا من القيمة والراحة، ويمنحك جو فاخر مع العديد من الرفاهيات التي يُفضلها المسافرون.  غرف النزلاء توفر سبل راحة مثل تليفزيون بشاشة مسطحة وتكييف هواء وميني بار كما يستطيع النزلاء الاتصال بالإنترنت من خلال خدمة الإنترنت مجاني التي تقدمها فندق.  تتميز الغرف في Al Salam Rotana Hotel بخدمة الغرف وخدمات الاستقبال والإرشاد، لإقامة ممتعة حقًا. تتميز المنشأة أيضًا بتجهيزات مثل حمام سباحة والإفطار. إذا كنت تستقل السيارة إلى Al Salam Rotana Hotel، تتوفر موقف مجاني للسيارات.','["cash","visa"]','انتظار مجاني للسيارات
إنترنت فائق السرعة مجاني (WiFi)
حمام سباحة
مركز لياقة بدنية مع صالة ألعاب رياضية / غرفة تمارين رياضية
إفطار مجاني
إقامة مجانية للأطفال
خدمة توصيل من وإلى المطار
مركز أعمال مع اتصال بالإنترنت
ساحة انتظار مؤمنة
خدمة واي فاي
حوض استحمام ساخن
حمام سباحة مع إطلالة
حمام سباحة للكبار
حمام سباحة خارجي
حمام سباحة بمياه ساخنة
حمام سباحة خاص
حصص في اليوجا
غرف تبديل الملابس في مركز اللياقة البدنية / السبا
حصص في اللياقة البدنية','','','16','1','','[6,5,4,3]','[241,242,243]','[240]','','2022-04-26 14:41:31','1');


CREATE TABLE `housing_units` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `price` int(11) NOT NULL,
  `final_price` int(11) DEFAULT NULL,
  `estates_id` int(11) DEFAULT NULL,
  `adult_nums` int(11) NOT NULL,
  `children_nums` int(11) NOT NULL,
  `images` text DEFAULT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT 1,
  `main_image` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`),
  KEY `estates_id` (`estates_id`),
  CONSTRAINT `housing_units_ibfk_1` FOREIGN KEY (`estates_id`) REFERENCES `estates` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=621 DEFAULT CHARSET=utf8mb4;


INSERT INTO housing_units (id, price, final_price, estates_id, adult_nums, children_nums, images, is_active, main_image, created_at) VALUES ('2','50','700','2','4','3','[103]','1','','2021-06-01 12:49:49');

INSERT INTO housing_units (id, price, final_price, estates_id, adult_nums, children_nums, images, is_active, main_image, created_at) VALUES ('3','50','850','3','2','4','[104]','1','','2021-06-01 12:49:49');

INSERT INTO housing_units (id, price, final_price, estates_id, adult_nums, children_nums, images, is_active, main_image, created_at) VALUES ('4','50','900','25','1','1','[105]','1','','2021-06-01 12:49:49');

INSERT INTO housing_units (id, price, final_price, estates_id, adult_nums, children_nums, images, is_active, main_image, created_at) VALUES ('590','10','11','26','2','2','[]','1','','2021-10-31 07:25:25');

INSERT INTO housing_units (id, price, final_price, estates_id, adult_nums, children_nums, images, is_active, main_image, created_at) VALUES ('591','10','11','26','2','2','[]','1','','2021-10-31 07:25:25');

INSERT INTO housing_units (id, price, final_price, estates_id, adult_nums, children_nums, images, is_active, main_image, created_at) VALUES ('592','100','110','1','2','2','[]','1','','2021-10-31 08:30:15');

INSERT INTO housing_units (id, price, final_price, estates_id, adult_nums, children_nums, images, is_active, main_image, created_at) VALUES ('593','100','110','1','2','2','[]','1','','2021-10-31 08:30:15');

INSERT INTO housing_units (id, price, final_price, estates_id, adult_nums, children_nums, images, is_active, main_image, created_at) VALUES ('594','100','110','1','2','2','[]','1','','2021-10-31 08:30:15');

INSERT INTO housing_units (id, price, final_price, estates_id, adult_nums, children_nums, images, is_active, main_image, created_at) VALUES ('595','100','110','32','4','3','[]','1','228','2022-04-20 20:56:16');

INSERT INTO housing_units (id, price, final_price, estates_id, adult_nums, children_nums, images, is_active, main_image, created_at) VALUES ('596','100','110','32','4','3','[]','1','228','2022-04-20 20:56:16');

INSERT INTO housing_units (id, price, final_price, estates_id, adult_nums, children_nums, images, is_active, main_image, created_at) VALUES ('597','100','110','32','4','3','[]','1','228','2022-04-20 20:56:16');

INSERT INTO housing_units (id, price, final_price, estates_id, adult_nums, children_nums, images, is_active, main_image, created_at) VALUES ('598','100','110','32','4','3','[]','1','228','2022-04-20 20:56:16');

INSERT INTO housing_units (id, price, final_price, estates_id, adult_nums, children_nums, images, is_active, main_image, created_at) VALUES ('616','350','385','35','2','2','[411,412]','1','410','2022-05-17 12:42:50');

INSERT INTO housing_units (id, price, final_price, estates_id, adult_nums, children_nums, images, is_active, main_image, created_at) VALUES ('617','350','385','35','2','2','[411,412]','1','410','2022-05-17 12:42:50');

INSERT INTO housing_units (id, price, final_price, estates_id, adult_nums, children_nums, images, is_active, main_image, created_at) VALUES ('618','1500','1650','35','3','2','[427,428]','1','426','2022-05-17 17:58:45');

INSERT INTO housing_units (id, price, final_price, estates_id, adult_nums, children_nums, images, is_active, main_image, created_at) VALUES ('619','1500','1650','35','3','2','[427,428]','1','426','2022-05-17 17:58:45');

INSERT INTO housing_units (id, price, final_price, estates_id, adult_nums, children_nums, images, is_active, main_image, created_at) VALUES ('620','1500','1650','32','3','2','[427,428]','1','426','2022-05-17 17:58:45');


CREATE TABLE `images` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `image` text DEFAULT NULL,
  `type` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=432 DEFAULT CHARSET=utf8mb4;


INSERT INTO images (id, image, type) VALUES ('1','https://badianhotel.com/wp-content/uploads/2020/08/baglioni-hotel-london.jpg','main');

INSERT INTO images (id, image, type) VALUES ('5','/uploads/images/1ZO1RJL81cpkt7YD.png','');

INSERT INTO images (id, image, type) VALUES ('6','/uploads/images/1ZO1RJL81cpkt7YD.png','');

INSERT INTO images (id, image, type) VALUES ('7','https://badianhotel.com/wp-content/uploads/2020/08/baglioni-hotel-london.jpg	','');

INSERT INTO images (id, image, type) VALUES ('9','/uploads/images/1ZO1RJL81cpkt7YD.png','');

INSERT INTO images (id, image, type) VALUES ('10','/uploads/images/dqqqfyP3EDvRT9qA.png','');

INSERT INTO images (id, image, type) VALUES ('11','/uploads/images/6lA8Sxr1cEz3sszW.jpeg','');

INSERT INTO images (id, image, type) VALUES ('12','/uploads/images/6lA8Sxr1cEz3sszW.jpeg','');

INSERT INTO images (id, image, type) VALUES ('13','/uploads/images/6lA8Sxr1cEz3sszW.jpeg','');

INSERT INTO images (id, image, type) VALUES ('14','/uploads/images/6lA8Sxr1cEz3sszW.jpeg','');

INSERT INTO images (id, image, type) VALUES ('15','/uploads/images/6lA8Sxr1cEz3sszW.jpeg','');

INSERT INTO images (id, image, type) VALUES ('16','/uploads/images/a6lMdWEaV8oxQx2A.jpeg','');

INSERT INTO images (id, image, type) VALUES ('18','/uploads/images/dewIM6SE0TOU0oSW.jpeg','');

INSERT INTO images (id, image, type) VALUES ('19','/uploads/images/sRNJJ0iGfGk3acJN.png','');

INSERT INTO images (id, image, type) VALUES ('22','/uploads/images/DsWndIfq2eLrx4pt.jpeg','');

INSERT INTO images (id, image, type) VALUES ('23','/uploads/images/UVDk9fSfk64Kbh7k.jpeg','');

INSERT INTO images (id, image, type) VALUES ('26','/uploads/images/Mo4uj2kmY38kfzmx.png','');

INSERT INTO images (id, image, type) VALUES ('27','/uploads/images/AYX71CeY9I2bCcwU.png','');

INSERT INTO images (id, image, type) VALUES ('28','/uploads/images/GEDbDIJqzHYaCVF3.png','');

INSERT INTO images (id, image, type) VALUES ('29','/uploads/images/AzUy64M1PlJ1yHWx.png','');

INSERT INTO images (id, image, type) VALUES ('33','/uploads/images/992qnB7GHX2uVObm.png','');

INSERT INTO images (id, image, type) VALUES ('35','/uploads/images/tPCCKOt9N5uBIw65.png','');

INSERT INTO images (id, image, type) VALUES ('36','/uploads/images/nGgjjoawQDGgEVIf.png','');

INSERT INTO images (id, image, type) VALUES ('38','/uploads/images/3LEHwDFxjT3A4PkJ.png','');

INSERT INTO images (id, image, type) VALUES ('39','/uploads/images/behLdCwiLpjahSrl.png','');

INSERT INTO images (id, image, type) VALUES ('40','/uploads/images/tPsnimfjMtZmxlD4.png','');

INSERT INTO images (id, image, type) VALUES ('41','/uploads/images/n16q4E7gUpdRDbA2.png','');

INSERT INTO images (id, image, type) VALUES ('42','/uploads/images/tyqkj8hbowHwUA9J.jpeg','');

INSERT INTO images (id, image, type) VALUES ('43','/uploads/images/qoaAvLoKjkAVc5vE.jpeg','');

INSERT INTO images (id, image, type) VALUES ('44','/uploads/images/lg88CFZQuCPLTWM4.jpeg','');

INSERT INTO images (id, image, type) VALUES ('45','/uploads/images/6lA8Sxr1cEz3sszW.jpeg','');

INSERT INTO images (id, image, type) VALUES ('46','/uploads/images/6lA8Sxr1cEz3sszW.jpeg','');

INSERT INTO images (id, image, type) VALUES ('47','/uploads/images/aLXrlDU0AYwfi8jP.jpeg','');

INSERT INTO images (id, image, type) VALUES ('48','/uploads/images/aqcfvIQZtdDKXBeJ.png','');

INSERT INTO images (id, image, type) VALUES ('49','/uploads/images/fgRUJZZje0dmbovv.png','');

INSERT INTO images (id, image, type) VALUES ('50','/uploads/images/jx2FBgRK3JTtAlLr.png','');

INSERT INTO images (id, image, type) VALUES ('51','/uploads/images/O0Yw7eX0rfgbksED.jpeg','');

INSERT INTO images (id, image, type) VALUES ('52','/uploads/images/iBtN91OeDgcBDrnE.png','');

INSERT INTO images (id, image, type) VALUES ('53','https://badianhotel.com/wp-content/uploads/2020/08/baglioni-hotel-london.jpg	','');

INSERT INTO images (id, image, type) VALUES ('54','/uploads/images/Gqt2zlrZfrqZH0Km.png','');

INSERT INTO images (id, image, type) VALUES ('55','/uploads/images/BI0NpX3pLHINHN9A.png','');

INSERT INTO images (id, image, type) VALUES ('56','https://badianhotel.com/wp-content/uploads/2020/08/baglioni-hotel-london.jpg	','');

INSERT INTO images (id, image, type) VALUES ('57','/uploads/images/djH2oRTURsEJiDss.jpeg','');

INSERT INTO images (id, image, type) VALUES ('58','/uploads/images/6lA8Sxr1cEz3sszW.jpeg','');

INSERT INTO images (id, image, type) VALUES ('60','/uploads/images/6lA8Sxr1cEz3sszW.jpeg','');

INSERT INTO images (id, image, type) VALUES ('61','/uploads/images/4UO9cWmcs6Ts57iV.png','');

INSERT INTO images (id, image, type) VALUES ('62','/uploads/images/2IO77x2xtrKL1LYO.png','');

INSERT INTO images (id, image, type) VALUES ('63','https://badianhotel.com/wp-content/uploads/2020/08/baglioni-hotel-london.jpg	','');

INSERT INTO images (id, image, type) VALUES ('64','https://badianhotel.com/wp-content/uploads/2020/08/baglioni-hotel-london.jpg	','');

INSERT INTO images (id, image, type) VALUES ('65','/uploads/images/1ZO1RJL81cpkt7YD.png','');

INSERT INTO images (id, image, type) VALUES ('66','/uploads/images/1ZO1RJL81cpkt7YD.png	','');

INSERT INTO images (id, image, type) VALUES ('67','https://badianhotel.com/wp-content/uploads/2020/08/baglioni-hotel-london.jpg	','');

INSERT INTO images (id, image, type) VALUES ('68','/uploads/images/1ZO1RJL81cpkt7YD.png','');

INSERT INTO images (id, image, type) VALUES ('70','/uploads/images/1ZO1RJL81cpkt7YD.png','');

INSERT INTO images (id, image, type) VALUES ('71','/uploads/images/6lA8Sxr1cEz3sszW.jpeg','');

INSERT INTO images (id, image, type) VALUES ('72','/uploads/images/UcoqeNrASbVbmXeL.jpeg','');

INSERT INTO images (id, image, type) VALUES ('74','/uploads/images/0PTp5vU5lIP7SekG.png','');

INSERT INTO images (id, image, type) VALUES ('75','https://badianhotel.com/wp-content/uploads/2020/08/baglioni-hotel-london.jpg	','');

INSERT INTO images (id, image, type) VALUES ('76','/uploads/images/Hh9DCox0HljYLBFF.png','');

INSERT INTO images (id, image, type) VALUES ('77','/uploads/images/avBnjO1JXaAudZWh.jpeg','');

INSERT INTO images (id, image, type) VALUES ('78','/uploads/images/Ud1vb3FWhRQKvnxt.jpeg','');

INSERT INTO images (id, image, type) VALUES ('79','/uploads/images/VmUORtDy0pbWm1oR.jpeg','');

INSERT INTO images (id, image, type) VALUES ('80','/uploads/images/G0ATMuRydmKLlqEC.jpeg','');

INSERT INTO images (id, image, type) VALUES ('81','/uploads/images/eNYTY143Rre1F26u.jpeg','');

INSERT INTO images (id, image, type) VALUES ('82','/uploads/images/hSYaqwWznj15Z8nm.jpeg','');

INSERT INTO images (id, image, type) VALUES ('83','/uploads/images/tuT2icOl2jAaLGuR.jpeg','');

INSERT INTO images (id, image, type) VALUES ('84','/uploads/images/3FlEUhQCVM1Yt6T6.jpeg','');

INSERT INTO images (id, image, type) VALUES ('85','/uploads/images/NTC7llOHJnjdgxsC.jpeg','');

INSERT INTO images (id, image, type) VALUES ('86','/uploads/images/8GOVLRTMpt1blAuB.png','');

INSERT INTO images (id, image, type) VALUES ('87','/uploads/images/k60CVbo7r6jOOWxL.jpeg','');

INSERT INTO images (id, image, type) VALUES ('88','/uploads/images/VBTu89Gx6eIq5GdN.jpeg','');

INSERT INTO images (id, image, type) VALUES ('89','/uploads/images/P9EgrD5xv2adv7fh.jpeg','');

INSERT INTO images (id, image, type) VALUES ('90','/uploads/images/7XE423LmdGzLlfs3.jpeg','');

INSERT INTO images (id, image, type) VALUES ('91','/uploads/images/8dIdZltP28RGDWrp.jpeg','');

INSERT INTO images (id, image, type) VALUES ('92','/uploads/images/JuhlOzS7j6v2ipPp.jpeg','');

INSERT INTO images (id, image, type) VALUES ('93','/uploads/images/wMriUKEWuA2usPfb.jpeg','');

INSERT INTO images (id, image, type) VALUES ('94','/uploads/images/4H4H6QJ4T3KyLXoZ.jpeg','');

INSERT INTO images (id, image, type) VALUES ('95','/uploads/images/2bUfZudevGHpqCgA.jpeg','');

INSERT INTO images (id, image, type) VALUES ('96','/uploads/images/2tejsJdJVGhSvEmU.jpeg','');

INSERT INTO images (id, image, type) VALUES ('97','/uploads/images/vzei1nsfWnZEFij4.jpeg','');

INSERT INTO images (id, image, type) VALUES ('98','/uploads/images/6g7ugtpmbvxn7YmA.jpeg','');

INSERT INTO images (id, image, type) VALUES ('99','/uploads/images/z8YQmbSiQIaws8ho.jpeg','');

INSERT INTO images (id, image, type) VALUES ('100','/uploads/images/OVFOiw219CSG42H4.png','');

INSERT INTO images (id, image, type) VALUES ('101','/uploads/images/x4NxIYKdfziZoRCV.png','');

INSERT INTO images (id, image, type) VALUES ('102','/uploads/images/Qiq6MrA559EZRyhj.png','');

INSERT INTO images (id, image, type) VALUES ('104','https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ_W0D2KJvhyMpwbKy5pbgn7eKydrmXM-9YTZCldWfzW8s-iTFC1womXsqkChpB3kqc22A&usqp=CAU','');

INSERT INTO images (id, image, type) VALUES ('105','https://bestoffers.travel/UploadFiles/OfferPhoto/3%D8%A8%D9%88%D8%B1%D8%AA%D9%88.jpg','');

INSERT INTO images (id, image, type) VALUES ('106','https://exp.cdn-hotels.com/hotels/41000000/40140000/40135400/40135307/74dadc10_y.jpg?impolicy=fcrop&w=500&h=333&q=high','');

INSERT INTO images (id, image, type) VALUES ('107','/uploads/images/4Su32Bd0RKbLliSr.png','');

INSERT INTO images (id, image, type) VALUES ('108','/uploads/images/vmJo9v6VKQ4VSw2f.jpeg','');

INSERT INTO images (id, image, type) VALUES ('109','/uploads/images/D0X0jaoFT7duIsLB.jpeg','');

INSERT INTO images (id, image, type) VALUES ('110','/uploads/images/UunYRbmeNV3NBRwh.png','');

INSERT INTO images (id, image, type) VALUES ('111','/uploads/images/v6vcmTcD4ICayx1X.jpeg','');

INSERT INTO images (id, image, type) VALUES ('113','/uploads/images/8QQPOiTgWdVeyHLQ.jpeg','');

INSERT INTO images (id, image, type) VALUES ('114','/uploads/images/8YmrVxjhEgDTzia9.jpeg','');

INSERT INTO images (id, image, type) VALUES ('115','/uploads/images/7ctHqFcalWMz7cFT.jpeg','');

INSERT INTO images (id, image, type) VALUES ('117','/uploads/images/VaaGTwf3jSPo3HP9.png','');

INSERT INTO images (id, image, type) VALUES ('118','/uploads/images/zU20nbA9GIAPbl4V.jpeg','');

INSERT INTO images (id, image, type) VALUES ('120','/uploads/images/U8phZg12V6WPCgrF.png','');

INSERT INTO images (id, image, type) VALUES ('121','/uploads/images/cu4t1FDQnAVa1Z4I.png','');

INSERT INTO images (id, image, type) VALUES ('122','/uploads/images/vIcuw8Lp0EOf26e3.png','');

INSERT INTO images (id, image, type) VALUES ('124','/uploads/images/3953yEJg2iWwJXf7.jpeg','');

INSERT INTO images (id, image, type) VALUES ('125','/uploads/images/VE8f2SopLUqgoOHO.jpeg','');

INSERT INTO images (id, image, type) VALUES ('126','/uploads/images/Zkb78dmo32sbngjR.jpeg','');

INSERT INTO images (id, image, type) VALUES ('127','/uploads/images/Czug1gNLCRmr6ExC.jpeg','');

INSERT INTO images (id, image, type) VALUES ('128','/uploads/images/42NGNq3kjsGJo5XK.jpeg','');

INSERT INTO images (id, image, type) VALUES ('129','/uploads/images/9oK4FVEcdslytlvy.jpeg','');

INSERT INTO images (id, image, type) VALUES ('130','/uploads/images/0L9DBRCvAq0aqpOz.jpeg','');

INSERT INTO images (id, image, type) VALUES ('131','/uploads/images/ahE20M8BGv7qVe2W.jpeg','');

INSERT INTO images (id, image, type) VALUES ('132','/uploads/images/kSvBA6XPBru4zDJU.jpeg','');

INSERT INTO images (id, image, type) VALUES ('133','/uploads/images/KgdXINytf4JbEPI3.jpeg','');

INSERT INTO images (id, image, type) VALUES ('134','/uploads/images/ldUsTJlyOYjjCfNM.jpeg','');

INSERT INTO images (id, image, type) VALUES ('135','/uploads/images/kXIriGWnhWAJC1EX.jpeg','');

INSERT INTO images (id, image, type) VALUES ('136','/uploads/images/oX4Tprcecq4juc0n.jpeg','');

INSERT INTO images (id, image, type) VALUES ('137','/uploads/images/GyFd0P9iO0JSPsJr.jpeg','');

INSERT INTO images (id, image, type) VALUES ('138','/uploads/images/bC2HPCQUnzkgM6KQ.jpeg','');

INSERT INTO images (id, image, type) VALUES ('139','/uploads/images/WrDyWQW29jDDXURO.jpeg','');

INSERT INTO images (id, image, type) VALUES ('140','/uploads/images/Luet8uexg3Aull3o.jpeg','');

INSERT INTO images (id, image, type) VALUES ('141','/uploads/images/4wKNyiwQGP8hkDqZ.jpeg','');

INSERT INTO images (id, image, type) VALUES ('142','/uploads/images/tQjW4nOJsbHkSGOp.jpeg','');

INSERT INTO images (id, image, type) VALUES ('143','/uploads/images/38P0ezw8Ume81TeU.jpeg','');

INSERT INTO images (id, image, type) VALUES ('144','/uploads/images/MqwVo7jYmlCOICOW.jpeg','');

INSERT INTO images (id, image, type) VALUES ('145','/uploads/images/C65Igh77ss8tkahA.jpeg','');

INSERT INTO images (id, image, type) VALUES ('146','/uploads/images/9S0bPl6FCdYdB6W1.jpeg','');

INSERT INTO images (id, image, type) VALUES ('147','/uploads/images/k4JdrabeI92k3CSw.jpeg','');

INSERT INTO images (id, image, type) VALUES ('148','/uploads/images/6CpLztYYC13Hw8B0.jpeg','');

INSERT INTO images (id, image, type) VALUES ('149','/uploads/images/KTiVUU6Q21Id9X0Z.jpeg','');

INSERT INTO images (id, image, type) VALUES ('150','/uploads/images/lg4mqnolC1QRlF3v.jpeg','');

INSERT INTO images (id, image, type) VALUES ('151','/uploads/images/7LrKdBnLFSQ3tB10.jpeg','');

INSERT INTO images (id, image, type) VALUES ('152','/uploads/images/OaAlReNHCED0xekV.jpeg','');

INSERT INTO images (id, image, type) VALUES ('153','/uploads/images/UohnGiExTzM2k1e4.jpeg','');

INSERT INTO images (id, image, type) VALUES ('154','/uploads/images/TBfclWZsdbV766OK.jpeg','');

INSERT INTO images (id, image, type) VALUES ('155','/uploads/images/5184uzfTacH5FzWX.jpeg','');

INSERT INTO images (id, image, type) VALUES ('156','/uploads/images/omPxyTxXxqg9Zz3U.jpeg','');

INSERT INTO images (id, image, type) VALUES ('157','/uploads/images/NYS73j8FOwTlbx6O.jpeg','');

INSERT INTO images (id, image, type) VALUES ('158','/uploads/images/E5EE7VObBBTltjQe.jpeg','');

INSERT INTO images (id, image, type) VALUES ('159','/uploads/images/XHcKA76ociytOK00.jpeg','');

INSERT INTO images (id, image, type) VALUES ('160','/uploads/images/dnRZAcQimUNrfwmX.jpeg','');

INSERT INTO images (id, image, type) VALUES ('161','/uploads/images/IOFmVd1PZBe7EcHT.jpeg','');

INSERT INTO images (id, image, type) VALUES ('162','/uploads/images/hgkFiZ2Aloa2JEiC.jpeg','');

INSERT INTO images (id, image, type) VALUES ('163','/uploads/images/IKIgkfpsm1Ol3Q7f.jpeg','');

INSERT INTO images (id, image, type) VALUES ('164','/uploads/images/143OqD01DJgey4Os.jpeg','');

INSERT INTO images (id, image, type) VALUES ('165','/uploads/images/3BrCVIb88tsIOAoa.jpeg','');

INSERT INTO images (id, image, type) VALUES ('166','/uploads/images/FDZkSAhUTgFXToQo.jpeg','');

INSERT INTO images (id, image, type) VALUES ('167','/uploads/images/cdSuaxRGrOsL9PKE.jpeg','');

INSERT INTO images (id, image, type) VALUES ('168','/uploads/images/gB9T8hnCAOqydEmS.jpeg','');

INSERT INTO images (id, image, type) VALUES ('169','/uploads/images/IqrCMocGcNmueQ05.jpeg','');

INSERT INTO images (id, image, type) VALUES ('170','/uploads/images/2FJfRFZx6vHKEJ5F.jpeg','');

INSERT INTO images (id, image, type) VALUES ('171','/uploads/images/5cR7qB7IWyvwxQvr.jpeg','');

INSERT INTO images (id, image, type) VALUES ('172','/uploads/images/U3BhVcmW07gsgw5H.jpeg','');

INSERT INTO images (id, image, type) VALUES ('173','/uploads/images/u33c7DhijVNaF6wJ.jpeg','');

INSERT INTO images (id, image, type) VALUES ('174','/uploads/images/38l7HUssw4dBxE0I.jpeg','');

INSERT INTO images (id, image, type) VALUES ('175','/uploads/images/8h9xIapqUbPlRRiL.jpeg','');

INSERT INTO images (id, image, type) VALUES ('177','/uploads/images/NVII4l5attCHAkiC.jpeg','');

INSERT INTO images (id, image, type) VALUES ('178','/uploads/images/5o98p042H2PyZzUj.jpeg','');

INSERT INTO images (id, image, type) VALUES ('179','/uploads/images/SnkSyvJE9T3im1hH.jpeg','');

INSERT INTO images (id, image, type) VALUES ('180','/uploads/images/YmZW56DLk5qlfCAH.jpeg','');

INSERT INTO images (id, image, type) VALUES ('181','/uploads/images/9Dqnd99Tbe5WmBJs.jpeg','');

INSERT INTO images (id, image, type) VALUES ('182','/uploads/images/o2yIu9hS93xTqvFS.jpeg','');

INSERT INTO images (id, image, type) VALUES ('183','/uploads/images/jXKcLSOF1gvHsO1U.jpeg','');

INSERT INTO images (id, image, type) VALUES ('184','/uploads/images/mbF12ShaZKsJHuAb.jpeg','');

INSERT INTO images (id, image, type) VALUES ('185','/uploads/images/Wu3rDrvXAc67F2Zc.jpeg','');

INSERT INTO images (id, image, type) VALUES ('186','/uploads/images/3wEoYGBUO0suDa4d.jpeg','');

INSERT INTO images (id, image, type) VALUES ('187','/uploads/images/pu55d8XDYNgZ60iA.jpeg','');

INSERT INTO images (id, image, type) VALUES ('188','/uploads/images/85n3PUVEbOQPJLJK.jpeg','');

INSERT INTO images (id, image, type) VALUES ('189','/uploads/images/JHBTWnx61BGH8kzV.jpeg','');

INSERT INTO images (id, image, type) VALUES ('190','/uploads/images/nzOpiIiwHVFhZg6C.jpeg','');

INSERT INTO images (id, image, type) VALUES ('191','/uploads/images/8VXzL3HCwVTst3DG.jpeg','');

INSERT INTO images (id, image, type) VALUES ('192','/uploads/images/U8cApcNQ4uFzyOr3.jpeg','');

INSERT INTO images (id, image, type) VALUES ('193','/uploads/images/ym6LvDJyBcpLtjrL.jpeg','');

INSERT INTO images (id, image, type) VALUES ('194','/uploads/images/35tnhffYRDHLAEUX.jpeg','');

INSERT INTO images (id, image, type) VALUES ('195','/uploads/images/5Hsjm1vLnxl41nO8.jpeg','');

INSERT INTO images (id, image, type) VALUES ('196','/uploads/images/g99g2RtE07WaWkv6.jpeg','');

INSERT INTO images (id, image, type) VALUES ('197','/uploads/images/wOhOBwQ354Q540k5.jpeg','');

INSERT INTO images (id, image, type) VALUES ('203','/uploads/images/i6UbDDzztu5KI8QH.jpeg','');

INSERT INTO images (id, image, type) VALUES ('204','/uploads/images/cIeJPv6Q0YL7jdH6.jpeg','');

INSERT INTO images (id, image, type) VALUES ('205','/uploads/images/UnETku2o3gBDXO4t.jpeg','');

INSERT INTO images (id, image, type) VALUES ('206','/uploads/images/L2Gzc6PXCNfQWpPe.jpeg','');

INSERT INTO images (id, image, type) VALUES ('209','/uploads/images/1RC3lQBtK5wxz6k7.jpeg','');

INSERT INTO images (id, image, type) VALUES ('210','/uploads/images/v4UcfYOMLVMKzlDu.jpeg','');

INSERT INTO images (id, image, type) VALUES ('211','/uploads/images/oh3X3OL9n0AFfiE0.jpeg','');

INSERT INTO images (id, image, type) VALUES ('212','/uploads/images/q36gD4XYKHT80Z47.jpeg','');

INSERT INTO images (id, image, type) VALUES ('213','/uploads/images/JIBZJokM9nlr4m3e.jpeg','');

INSERT INTO images (id, image, type) VALUES ('214','/uploads/images/CMWhKrMRNCxA4m93.jpeg','');

INSERT INTO images (id, image, type) VALUES ('215','/uploads/images/v5mZXM5MwUj5KV5t.jpeg','');

INSERT INTO images (id, image, type) VALUES ('216','/uploads/images/WA6OjUo69NAyn94d.jpeg','');

INSERT INTO images (id, image, type) VALUES ('217','/uploads/images/8wu7wDIxkwZVP3K9.jpeg','');

INSERT INTO images (id, image, type) VALUES ('218','/uploads/images/8OYwcJhMhxieYBrM.jpeg','');

INSERT INTO images (id, image, type) VALUES ('219','/uploads/images/pWPiP3fAxFJ9A99i.png','');

INSERT INTO images (id, image, type) VALUES ('220','/uploads/images/6YJUu5YPpERK4kAC.jpeg','');

INSERT INTO images (id, image, type) VALUES ('221','/uploads/images/4j6FmnZtvodDGaPD.jpeg','');

INSERT INTO images (id, image, type) VALUES ('222','/uploads/images/ow32cUyFtreguHjv.jpeg','');

INSERT INTO images (id, image, type) VALUES ('223','/uploads/images/edm6lPIczm5khqpC.jpeg','');

INSERT INTO images (id, image, type) VALUES ('224','/uploads/images/Q4MPYkDgXXXOGmWa.jpeg','');

INSERT INTO images (id, image, type) VALUES ('225','/uploads/images/Hl2EJd5Zu8clva4O.jpeg','');

INSERT INTO images (id, image, type) VALUES ('226','/uploads/images/AZzJHxnRzwkAqfIp.jpeg','');

INSERT INTO images (id, image, type) VALUES ('227','/uploads/images/CR9usktmjLn2pLpl.jpeg','');

INSERT INTO images (id, image, type) VALUES ('228','/uploads/images/SNT7OQf1Jx4tdfx2.jpeg','');

INSERT INTO images (id, image, type) VALUES ('229','/uploads/images/eqW1LUGGtw7TByaM.jpeg','');

INSERT INTO images (id, image, type) VALUES ('230','/uploads/images/RRVQHPYl2HBdoXQA.jpeg','');

INSERT INTO images (id, image, type) VALUES ('231','/uploads/images/iYREoh6xzlkFxfDn.jpeg','');

INSERT INTO images (id, image, type) VALUES ('232','/uploads/images/wbEQF2siEJQFMFKG.jpeg','');

INSERT INTO images (id, image, type) VALUES ('233','/uploads/images/k4GnYLlFNNPV2JF6.jpeg','');

INSERT INTO images (id, image, type) VALUES ('235','/uploads/images/Fq91y1qiohvlV3zk.jpeg','');

INSERT INTO images (id, image, type) VALUES ('237','/uploads/images/2UapukYe6hfhHaDA.jpeg','');

INSERT INTO images (id, image, type) VALUES ('238','/uploads/images/vLndaz2YTE6Sevco.png','');

INSERT INTO images (id, image, type) VALUES ('239','/uploads/images/uG8rJTPqN6ZRFoHX.png','');

INSERT INTO images (id, image, type) VALUES ('240','/uploads/images/NKlaTwvNw9ki8n87.jpeg','');

INSERT INTO images (id, image, type) VALUES ('241','/uploads/images/kfOXuRvCHsuPv3GR.jpeg','');

INSERT INTO images (id, image, type) VALUES ('242','/uploads/images/o76YDJJC2S68TjND.jpeg','');

INSERT INTO images (id, image, type) VALUES ('243','/uploads/images/BSF1nM0pKwkhWOvh.jpeg','');

INSERT INTO images (id, image, type) VALUES ('244','/uploads/images/C7TP0hZweMFYzms1.jpeg','');

INSERT INTO images (id, image, type) VALUES ('245','/uploads/images/sNKQBk2Nthf8XbiP.jpeg','');

INSERT INTO images (id, image, type) VALUES ('246','/uploads/images/zpvbbZGa4Z8lNH7Y.jpeg','');

INSERT INTO images (id, image, type) VALUES ('247','/uploads/images/eDRaa09nhr4IuJVd.jpeg','');

INSERT INTO images (id, image, type) VALUES ('248','/uploads/images/ahW1IJ8YUp5QB9nt.jpeg','');

INSERT INTO images (id, image, type) VALUES ('249','/uploads/images/vT4jjY6xaWQS85EO.jpeg','');

INSERT INTO images (id, image, type) VALUES ('250','/uploads/images/qBcmlFNHDwOe7cXs.jpeg','');

INSERT INTO images (id, image, type) VALUES ('251','/uploads/images/NClXkdfOW7Lz6cZW.jpeg','');

INSERT INTO images (id, image, type) VALUES ('252','/uploads/images/vBeonw7YLFtuq7hX.jpeg','');

INSERT INTO images (id, image, type) VALUES ('253','/uploads/images/WigxHDtaioA3fFKA.jpeg','');

INSERT INTO images (id, image, type) VALUES ('254','/uploads/images/UbKg72eAiaGkCUi9.jpeg','');

INSERT INTO images (id, image, type) VALUES ('255','/uploads/images/eT7nvr7CnxWyK2Hw.jpeg','');

INSERT INTO images (id, image, type) VALUES ('256','/uploads/images/VtuOB0PvN3hjSrcZ.jpeg','');

INSERT INTO images (id, image, type) VALUES ('257','/uploads/images/bofv8ypICqdVSW0s.jpeg','');

INSERT INTO images (id, image, type) VALUES ('258','/uploads/images/UUr3wn3qLgbaTdPM.jpeg','');

INSERT INTO images (id, image, type) VALUES ('259','/uploads/images/MKSrV2LpTEs8nk3S.jpeg','');

INSERT INTO images (id, image, type) VALUES ('260','/uploads/images/HES0zcV4iauZSh9q.jpeg','');

INSERT INTO images (id, image, type) VALUES ('261','/uploads/images/IuK7Jn7B3uSyYazL.jpeg','');

INSERT INTO images (id, image, type) VALUES ('262','/uploads/images/XYTV8PBM8iyICVDB.jpeg','');

INSERT INTO images (id, image, type) VALUES ('263','/uploads/images/HcJ5OBhv5W4IeMTH.png','');

INSERT INTO images (id, image, type) VALUES ('264','/uploads/images/zorFKZSiIAjCKk5t.jpeg','');

INSERT INTO images (id, image, type) VALUES ('265','/uploads/images/VY3YWUhMo7wemqXc.jpeg','');

INSERT INTO images (id, image, type) VALUES ('266','/uploads/images/6KbNjxHqkQ8Gjigq.jpeg','');

INSERT INTO images (id, image, type) VALUES ('267','/uploads/images/C7uTexs1YzEsgmpx.jpeg','');

INSERT INTO images (id, image, type) VALUES ('268','/uploads/images/t6k2tWdE7qnyqbXL.jpeg','');

INSERT INTO images (id, image, type) VALUES ('269','/uploads/images/5lARJ5L9rj99KcYI.jpeg','');

INSERT INTO images (id, image, type) VALUES ('270','/uploads/images/pDOcWpb4LybqrFoX.jpeg','');

INSERT INTO images (id, image, type) VALUES ('271','/uploads/images/Q02UVobg2rApwWUX.jpeg','');

INSERT INTO images (id, image, type) VALUES ('272','/uploads/images/a0Ujlf8hqW4q0O04.jpeg','');

INSERT INTO images (id, image, type) VALUES ('273','/uploads/images/4igtBeseqRYSxkch.jpeg','');

INSERT INTO images (id, image, type) VALUES ('274','/uploads/images/DpOQhGmXop6WgtbK.jpeg','');

INSERT INTO images (id, image, type) VALUES ('276','/uploads/images/KDMP5WGg2ZspWBiC.jpeg','');

INSERT INTO images (id, image, type) VALUES ('277','/uploads/images/A06QqcCSlCAr6XuK.jpeg','');

INSERT INTO images (id, image, type) VALUES ('279','/uploads/images/q8YN3LvpgmqvnVuG.jpeg','');

INSERT INTO images (id, image, type) VALUES ('280','/uploads/images/xkSGSz7FXs5aCSrd.jpeg','');

INSERT INTO images (id, image, type) VALUES ('282','/uploads/images/OAQmkkkywwWCXQfQ.jpeg','');

INSERT INTO images (id, image, type) VALUES ('283','/uploads/images/NIxzaO3JXCocMYex.jpeg','');

INSERT INTO images (id, image, type) VALUES ('284','/uploads/images/ORsLvD8XVKtzga2d.jpeg','');

INSERT INTO images (id, image, type) VALUES ('285','/uploads/images/0wrZXXYsAzWnUmK3.jpeg','');

INSERT INTO images (id, image, type) VALUES ('286','/uploads/images/w6sFhUoMXVwFdxdb.jpeg','');

INSERT INTO images (id, image, type) VALUES ('289','/uploads/images/nBoBGUCNkAJxhrjy.jpeg','');

INSERT INTO images (id, image, type) VALUES ('290','/uploads/images/np36yGVYKsRmLmD1.jpeg','');

INSERT INTO images (id, image, type) VALUES ('292','/uploads/images/qQzCN5GSJBzkVYD4.jpeg','');

INSERT INTO images (id, image, type) VALUES ('295','/uploads/images/PKVDdMT7PEIfruCg.jpeg','');

INSERT INTO images (id, image, type) VALUES ('296','/uploads/images/HtJmQRmpKT0v3Vvo.jpeg','');

INSERT INTO images (id, image, type) VALUES ('297','/uploads/images/uRgryUtfwEUjkdiG.jpeg','');

INSERT INTO images (id, image, type) VALUES ('298','/uploads/images/GkmvbYwNIAcphAIi.jpeg','');

INSERT INTO images (id, image, type) VALUES ('299','/uploads/images/ogkp5aKIMNIyyt3Z.jpeg','');

INSERT INTO images (id, image, type) VALUES ('300','/uploads/images/xYHV6AC0ve4ftSl8.jpeg','');

INSERT INTO images (id, image, type) VALUES ('302','/uploads/images/0lyuV3uOK0RFdVQ8.jpeg','');

INSERT INTO images (id, image, type) VALUES ('303','/uploads/images/ip70Db73R2FD4b0b.jpeg','');

INSERT INTO images (id, image, type) VALUES ('304','/uploads/images/7W8Mh3mlJdBNrMR3.jpeg','');

INSERT INTO images (id, image, type) VALUES ('305','/uploads/images/Dky1w6k4zji1ZbUX.jpeg','');

INSERT INTO images (id, image, type) VALUES ('306','/uploads/images/sLoMjP9Lk8Pr9qaq.jpeg','');

INSERT INTO images (id, image, type) VALUES ('307','/uploads/images/8lovGcR0uQXO2XXW.jpeg','');

INSERT INTO images (id, image, type) VALUES ('308','/uploads/images/uLEVRybjeqLRFIep.jpeg','');

INSERT INTO images (id, image, type) VALUES ('309','/uploads/images/36ofIG1FFdO7zwQo.jpeg','');

INSERT INTO images (id, image, type) VALUES ('310','/uploads/images/7AMywbOtD0b4omzz.jpeg','');

INSERT INTO images (id, image, type) VALUES ('311','/uploads/images/9V6tcIfOiSYAQWEI.jpeg','');

INSERT INTO images (id, image, type) VALUES ('312','/uploads/images/0RWOFQSwF31reD9F.jpeg','');

INSERT INTO images (id, image, type) VALUES ('313','/uploads/images/8KSYQpj3EEPVRIcN.jpeg','');

INSERT INTO images (id, image, type) VALUES ('314','/uploads/images/18WPkw0X7POBrwai.jpeg','');

INSERT INTO images (id, image, type) VALUES ('316','/uploads/images/Ln6nl5O70JA4MvHB.jpeg','');

INSERT INTO images (id, image, type) VALUES ('317','/uploads/images/Vbk4ZqGvWHt3U9Ch.jpeg','');

INSERT INTO images (id, image, type) VALUES ('318','/uploads/images/LyULv613uAzQVZVy.jpeg','');

INSERT INTO images (id, image, type) VALUES ('319','/uploads/images/nKGQFFqUwOebPh0E.jpeg','');

INSERT INTO images (id, image, type) VALUES ('320','/uploads/images/5OKRkfmv5FpFzq3K.png','');

INSERT INTO images (id, image, type) VALUES ('321','/uploads/images/5GVVtRiR5tPxptX9.jpeg','');

INSERT INTO images (id, image, type) VALUES ('322','/uploads/images/NegOKdPuCYXoonFa.jpeg','');

INSERT INTO images (id, image, type) VALUES ('323','/uploads/images/xEkhVDtdqHaHXN4Z.png','');

INSERT INTO images (id, image, type) VALUES ('324','/uploads/images/mnt0kLSC78nqwx9g.jpeg','');

INSERT INTO images (id, image, type) VALUES ('325','/uploads/images/BDJeFtGi600FINR8.jpeg','');

INSERT INTO images (id, image, type) VALUES ('326','/uploads/images/UCmbcBUT2U5Xa8uy.jpeg','');

INSERT INTO images (id, image, type) VALUES ('327','/uploads/images/R4FgsrTswGRRsLwu.jpeg','');

INSERT INTO images (id, image, type) VALUES ('328','/uploads/images/lvPEVwduy1Dl3BO8.jpeg','');

INSERT INTO images (id, image, type) VALUES ('329','/uploads/images/4RFBuM4ql0zbDcbB.jpeg','');

INSERT INTO images (id, image, type) VALUES ('330','/uploads/images/7B7I6nA0pcr5lfSh.jpeg','');

INSERT INTO images (id, image, type) VALUES ('331','/uploads/images/ls1tALxDaSIqkNQ2.jpeg','');

INSERT INTO images (id, image, type) VALUES ('332','/uploads/images/fk4r9PcRTjnwcn9c.jpeg','');

INSERT INTO images (id, image, type) VALUES ('333','/uploads/images/jnG1SP22EbCVQ1PN.jpeg','');

INSERT INTO images (id, image, type) VALUES ('334','/uploads/images/JlAIX2CAKW5rEtCO.jpeg','');

INSERT INTO images (id, image, type) VALUES ('335','/uploads/images/fV4g10fhY36vPzZ3.jpeg','');

INSERT INTO images (id, image, type) VALUES ('336','/uploads/images/qJzLSKx2O75jRQ5D.jpeg','');

INSERT INTO images (id, image, type) VALUES ('337','/uploads/images/AOt3NRcjtapj58sf.jpeg','');

INSERT INTO images (id, image, type) VALUES ('338','/uploads/images/zIK8mRcN8QWUIFWR.jpeg','');

INSERT INTO images (id, image, type) VALUES ('339','/uploads/images/BS7pTgxUCaSfqjIm.jpeg','');

INSERT INTO images (id, image, type) VALUES ('341','/uploads/images/gXxz2aTddqw2hwiO.jpeg','');

INSERT INTO images (id, image, type) VALUES ('342','/uploads/images/ozr3oAVTf4x12ivD.jpeg','');

INSERT INTO images (id, image, type) VALUES ('343','/uploads/images/dBQ51zdyQhumqFCn.jpeg','');

INSERT INTO images (id, image, type) VALUES ('344','/uploads/images//vz74PFuzlp6PoS8wNILyMXzGOmgq4s1652737658.jpg','');

INSERT INTO images (id, image, type) VALUES ('345','/uploads/images//OgvWaaEswXpPBh9wm5kDuGUmqrDMWz1652737676.jpg','');

INSERT INTO images (id, image, type) VALUES ('346','/uploads/images//VgCPSrpBzeikw6eElXXqZ7DiVCl0lt1652737676.jpg','');

INSERT INTO images (id, image, type) VALUES ('347','/uploads/images//lNYv5usied3PbHSHibGmua0dopLWWx1652737804.jpg','');

INSERT INTO images (id, image, type) VALUES ('348','/uploads/images//iK6ObrRZmW2ooKtNZD7qefrXPsEVwT1652737806.jpg','');

INSERT INTO images (id, image, type) VALUES ('349','/uploads/images//TYDV044KsSfcmMJOdaCpIgqWKPeQ4D1652737856.jpg','');

INSERT INTO images (id, image, type) VALUES ('350','/uploads/images/Q3UQCLt28HdfiLuq.jpeg','');

INSERT INTO images (id, image, type) VALUES ('351','/uploads/images/y0PMVPm1MfplbggS.jpeg','');

INSERT INTO images (id, image, type) VALUES ('352','/uploads/images/sjhlN93aDRABm2PL.jpeg','');

INSERT INTO images (id, image, type) VALUES ('353','/uploads/images//g7JIUHxbQESktL9EmIqYbMFJTHetqk1652738807.jpg','');

INSERT INTO images (id, image, type) VALUES ('354','/uploads/images//GijxRpZdUOcXXmfdNfu03zrlfoPYtk1652738942.jpg','');

INSERT INTO images (id, image, type) VALUES ('355','/uploads/images//kaiI3S9olWEHWjEAqW5XJym9FMI2XC1652738972.jpg','');

INSERT INTO images (id, image, type) VALUES ('356','/uploads/images//9kf4YNndSMgShfjDfGwM9MERcTYC3v1652738977.jpg','');

INSERT INTO images (id, image, type) VALUES ('357','/uploads/images//PyUGZLSqJH4DcGXiS3WQYk7hGjSChw1652739016.jpg','');

INSERT INTO images (id, image, type) VALUES ('358','/uploads/images//O5B6XJCSPfiSBEnUQScWb67G2mcGW11652739062.jpg','');

INSERT INTO images (id, image, type) VALUES ('359','/uploads/images//Qn7yUXxAyx3EZI4LXVtbNPzUuOkjj21652769178.jpeg','');

INSERT INTO images (id, image, type) VALUES ('360','/uploads/images//Af7JEjQ39OfxaUPc6FzovZvU9YvXOL1652769186.png','');

INSERT INTO images (id, image, type) VALUES ('361','/uploads/images/Fp00yxi25OjF8qLm.jpeg','');

INSERT INTO images (id, image, type) VALUES ('362','/uploads/images/5UIjFR0HzqUdJ9gs.jpeg','');

INSERT INTO images (id, image, type) VALUES ('363','/uploads/images/A9K6GpmJOuRBF0lI.jpeg','');

INSERT INTO images (id, image, type) VALUES ('364','/uploads/images/1ekrb2Jen5lkZN1f.jpeg','');

INSERT INTO images (id, image, type) VALUES ('366','/uploads/images/lxLb3eIFa1EmBDVG.jpeg','');

INSERT INTO images (id, image, type) VALUES ('367','/uploads/images/D8bItYEW4ms8Xi9L.png','');

INSERT INTO images (id, image, type) VALUES ('368','/uploads/images/EoibKaIrslbof72N.jpeg','');

INSERT INTO images (id, image, type) VALUES ('369','/uploads/images/mVb90iXnCDGyV8dU.jpeg','');

INSERT INTO images (id, image, type) VALUES ('370','/uploads/images/BFu2U66yu2y7NpEW.jpeg','');

INSERT INTO images (id, image, type) VALUES ('371','/uploads/images/wPIULF6R4pN8robZ.jpeg','');

INSERT INTO images (id, image, type) VALUES ('373','/uploads/images/QMufRYU9aN9H1t2t.jpeg','');

INSERT INTO images (id, image, type) VALUES ('374','/uploads/images/19tF0f6kcBGQFM2S.jpeg','');

INSERT INTO images (id, image, type) VALUES ('375','/uploads/images/tCTcXHJBFpULWo3F.jpeg','');

INSERT INTO images (id, image, type) VALUES ('376','/uploads/images/XtVQag2njcZDFt7u.png','');

INSERT INTO images (id, image, type) VALUES ('377','/uploads/images/gUVh8cPvZYXQdZTT.jpeg','');

INSERT INTO images (id, image, type) VALUES ('378','/uploads/images/SgTgOt8T01txYxgO.png','');

INSERT INTO images (id, image, type) VALUES ('379','/uploads/images/trzDW8vdRSh84nLv.jpeg','');

INSERT INTO images (id, image, type) VALUES ('380','/uploads/images/1QlfmZfhNopCO9Ll.jpeg','');

INSERT INTO images (id, image, type) VALUES ('381','/uploads/images/jqIvXXIbYIiZpBWs.jpeg','');

INSERT INTO images (id, image, type) VALUES ('382','/uploads/images/IAx9KyMNtb8aQgZE.jpeg','');

INSERT INTO images (id, image, type) VALUES ('383','/uploads/images/LruE45oFQMZZbXEs.jpeg','');

INSERT INTO images (id, image, type) VALUES ('384','/uploads/images/iFkGKRtmLx2nXm6Z.jpeg','');

INSERT INTO images (id, image, type) VALUES ('385','/uploads/images/EqBoJdQQCS1amHPg.jpeg','');

INSERT INTO images (id, image, type) VALUES ('386','/uploads/images/LJMBafmPLfOepVb1.jpeg','');

INSERT INTO images (id, image, type) VALUES ('387','/uploads/images/46kSperFo4dZnUpL.jpeg','');

INSERT INTO images (id, image, type) VALUES ('388','/uploads/images/yXO2gI4RPf3Xbe4E.jpeg','');

INSERT INTO images (id, image, type) VALUES ('389','/uploads/images/NAegGpqjtD4cOQdB.jpeg','');

INSERT INTO images (id, image, type) VALUES ('391','/uploads/images/7evaO8fNO0dDZWQ1.jpeg','');

INSERT INTO images (id, image, type) VALUES ('392','/uploads/images/SZAFoenNeKFD30Dz.jpeg','');

INSERT INTO images (id, image, type) VALUES ('393','/uploads/images/IcaVsy1mEnuW46Wm.jpeg','');

INSERT INTO images (id, image, type) VALUES ('394','/uploads/images/Q6DjiuHhBsdly25I.jpeg','');

INSERT INTO images (id, image, type) VALUES ('396','/uploads/images/PxyLtzjztrcEVmt2.jpeg','');

INSERT INTO images (id, image, type) VALUES ('397','/uploads/images/8IZ5jhG4rpmxFjfV.jpeg','');

INSERT INTO images (id, image, type) VALUES ('398','/uploads/images/naFK8olTec7rZGni.jpeg','');

INSERT INTO images (id, image, type) VALUES ('399','/uploads/images/ae5YqkuyUPhjToit.jpeg','');

INSERT INTO images (id, image, type) VALUES ('401','/uploads/images/nEDKGh3kERgsLIaP.jpeg','');

INSERT INTO images (id, image, type) VALUES ('402','/uploads/images/nzc4TcAmE1wIJsqn.jpeg','');

INSERT INTO images (id, image, type) VALUES ('403','/uploads/images/zi491cumwEpBN8jc.jpeg','');

INSERT INTO images (id, image, type) VALUES ('404','/uploads/images/bUxcIq5aMqiiZcIl.jpeg','');

INSERT INTO images (id, image, type) VALUES ('405','/uploads/images/9hA8nMYPzWn7VNrU.jpeg','');

INSERT INTO images (id, image, type) VALUES ('406','/uploads/images/opgdgwnGHJw9AYPY.jpeg','');

INSERT INTO images (id, image, type) VALUES ('407','/uploads/images/yAeRbdWT1Kt6QCiy.jpeg','');

INSERT INTO images (id, image, type) VALUES ('408','/uploads/images/4RUfEi67u7uceuwB.jpeg','');

INSERT INTO images (id, image, type) VALUES ('409','/uploads/images/Xdreo6CFlukhMyhf.jpeg','');

INSERT INTO images (id, image, type) VALUES ('410','/uploads/images/XEehdyqDfBj685GU.jpeg','');

INSERT INTO images (id, image, type) VALUES ('411','/uploads/images/hq7kaZHKSgN30bxP.jpeg','');

INSERT INTO images (id, image, type) VALUES ('412','/uploads/images/T1l7S8V3qAPHHH3H.jpeg','');

INSERT INTO images (id, image, type) VALUES ('413','/uploads/images/4wNURnWk8A9meh4S.jpeg','');

INSERT INTO images (id, image, type) VALUES ('414','/uploads/images/64Mcmfw8Y09zBIuG.jpeg','');

INSERT INTO images (id, image, type) VALUES ('416','/uploads/images/lVyko8RXgIByKYrG.jpeg','');

INSERT INTO images (id, image, type) VALUES ('417','/uploads/images/F4FctH7io07ZMxKI.jpeg','');

INSERT INTO images (id, image, type) VALUES ('418','/uploads/images/numYd0ECNEKAQEqy.jpeg','');

INSERT INTO images (id, image, type) VALUES ('419','/uploads/images/zQftt9NQ5WHiTYPF.jpeg','');

INSERT INTO images (id, image, type) VALUES ('420','/uploads/images/O3ZEJYgbT0t8IRE7.png','');

INSERT INTO images (id, image, type) VALUES ('421','/uploads/images/KSYKCJgQCC6oacek.jpeg','');

INSERT INTO images (id, image, type) VALUES ('422','/uploads/images/4IwG83NzJKgLNsBU.jpeg','');

INSERT INTO images (id, image, type) VALUES ('423','/uploads/images/EwFdrqFdxOSK9S5X.jpeg','');

INSERT INTO images (id, image, type) VALUES ('424','/uploads/images/LUBdyHvGqjex5FyX.jpeg','');

INSERT INTO images (id, image, type) VALUES ('425','/uploads/images/DaSmTcTeLf3dLwM1.jpeg','');

INSERT INTO images (id, image, type) VALUES ('426','/uploads/images/pHydVLzOxKItGHWQ.jpeg','');

INSERT INTO images (id, image, type) VALUES ('427','/uploads/images/T2dYaMduwanEPJm9.jpeg','');

INSERT INTO images (id, image, type) VALUES ('428','/uploads/images/opFmgbTCmnTpXI67.jpeg','');

INSERT INTO images (id, image, type) VALUES ('429','/uploads/images/yXUqGqkcPl1XT74b.jpeg','');

INSERT INTO images (id, image, type) VALUES ('430','/uploads/images/JnBQY80pnv4xFs1z.jpeg','');

INSERT INTO images (id, image, type) VALUES ('431','/uploads/images/anZNIhVvFLH9Azqk.jpeg','');


CREATE TABLE `locations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `longitude` double NOT NULL,
  `latitude` double NOT NULL,
  `address` text DEFAULT NULL,
  `description_ar` text DEFAULT NULL,
  `description_en` text DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=75 DEFAULT CHARSET=utf8mb4;


INSERT INTO locations (id, longitude, latitude, address, description_ar, description_en) VALUES ('6','30.1231516','29.15235123512','next to train station','1 mile from pyramids','');

INSERT INTO locations (id, longitude, latitude, address, description_ar, description_en) VALUES ('7','31.3738656','30.0526633','','','');

INSERT INTO locations (id, longitude, latitude, address, description_ar, description_en) VALUES ('8','31.3738656','30.0526633','','','');

INSERT INTO locations (id, longitude, latitude, address, description_ar, description_en) VALUES ('9','31.3738656','30.0526633','','','');

INSERT INTO locations (id, longitude, latitude, address, description_ar, description_en) VALUES ('10','31.3738656','30.0526633','','','');

INSERT INTO locations (id, longitude, latitude, address, description_ar, description_en) VALUES ('11','31.3738656','30.0526633','','','');

INSERT INTO locations (id, longitude, latitude, address, description_ar, description_en) VALUES ('12','31.3738656','30.0526633','','','');

INSERT INTO locations (id, longitude, latitude, address, description_ar, description_en) VALUES ('13','31.3738656','30.0526633','','','');

INSERT INTO locations (id, longitude, latitude, address, description_ar, description_en) VALUES ('14','31.3738656','30.0526633','','','');

INSERT INTO locations (id, longitude, latitude, address, description_ar, description_en) VALUES ('15','31.3738656','30.0526633','','','');

INSERT INTO locations (id, longitude, latitude, address, description_ar, description_en) VALUES ('16','31.3738656','30.0526633','','','');

INSERT INTO locations (id, longitude, latitude, address, description_ar, description_en) VALUES ('17','31.3738656','30.0526633','','','');

INSERT INTO locations (id, longitude, latitude, address, description_ar, description_en) VALUES ('18','31.3738656','30.0526633','','','');

INSERT INTO locations (id, longitude, latitude, address, description_ar, description_en) VALUES ('19','30.7992643','28.4215753','','','');

INSERT INTO locations (id, longitude, latitude, address, description_ar, description_en) VALUES ('20','30.7992643','28.4215753','','','');

INSERT INTO locations (id, longitude, latitude, address, description_ar, description_en) VALUES ('21','30.7694755','28.4253081','','','');

INSERT INTO locations (id, longitude, latitude, address, description_ar, description_en) VALUES ('22','30.791837','28.4195777','','','');

INSERT INTO locations (id, longitude, latitude, address, description_ar, description_en) VALUES ('23','30.791837','28.4195777','','','');

INSERT INTO locations (id, longitude, latitude, address, description_ar, description_en) VALUES ('24','30.791837','28.4195777','','','');

INSERT INTO locations (id, longitude, latitude, address, description_ar, description_en) VALUES ('25','30.791837','28.4195777','','','');

INSERT INTO locations (id, longitude, latitude, address, description_ar, description_en) VALUES ('26','30.791837','28.4195777','','','');

INSERT INTO locations (id, longitude, latitude, address, description_ar, description_en) VALUES ('27','30.791837','28.4195777','','','');

INSERT INTO locations (id, longitude, latitude, address, description_ar, description_en) VALUES ('28','30.791837','28.4195777','','','');

INSERT INTO locations (id, longitude, latitude, address, description_ar, description_en) VALUES ('29','30.7918272','28.4195777','','','');

INSERT INTO locations (id, longitude, latitude, address, description_ar, description_en) VALUES ('30','31.435031','30.0035403','','','');

INSERT INTO locations (id, longitude, latitude, address, description_ar, description_en) VALUES ('31','31.435031','30.0035403','','','');

INSERT INTO locations (id, longitude, latitude, address, description_ar, description_en) VALUES ('32','31.3797118','30.0450401','','','');

INSERT INTO locations (id, longitude, latitude, address, description_ar, description_en) VALUES ('33','30.2887192','13.1738544','','','');

INSERT INTO locations (id, longitude, latitude, address, description_ar, description_en) VALUES ('34','30.2887192','13.1738544','','','');

INSERT INTO locations (id, longitude, latitude, address, description_ar, description_en) VALUES ('35','30.2887192','13.1738544','','','');

INSERT INTO locations (id, longitude, latitude, address, description_ar, description_en) VALUES ('36','30.2887192','13.1738544','','','');

INSERT INTO locations (id, longitude, latitude, address, description_ar, description_en) VALUES ('37','30.2887192','13.1738544','','','');

INSERT INTO locations (id, longitude, latitude, address, description_ar, description_en) VALUES ('38','30.2887192','13.1738544','','','');

INSERT INTO locations (id, longitude, latitude, address, description_ar, description_en) VALUES ('39','30.2887192','13.1738544','','','');

INSERT INTO locations (id, longitude, latitude, address, description_ar, description_en) VALUES ('40','50.0336375','26.4038513','','','');

INSERT INTO locations (id, longitude, latitude, address, description_ar, description_en) VALUES ('41','46.6962957','24.739763','','','');

INSERT INTO locations (id, longitude, latitude, address, description_ar, description_en) VALUES ('42','46.7164227','24.7479719','','','');

INSERT INTO locations (id, longitude, latitude, address, description_ar, description_en) VALUES ('43','32.5223528','15.597083','','','');

INSERT INTO locations (id, longitude, latitude, address, description_ar, description_en) VALUES ('44','30.5167058','28.1853217','','','');

INSERT INTO locations (id, longitude, latitude, address, description_ar, description_en) VALUES ('45','32.5628182','15.644632','','','');

INSERT INTO locations (id, longitude, latitude, address, description_ar, description_en) VALUES ('46','31.5573284','30.0178477','','','');

INSERT INTO locations (id, longitude, latitude, address, description_ar, description_en) VALUES ('47','31.4037503','30.003969','','','');

INSERT INTO locations (id, longitude, latitude, address, description_ar, description_en) VALUES ('48','32.5790094','15.5674707','','','');

INSERT INTO locations (id, longitude, latitude, address, description_ar, description_en) VALUES ('49','46.7028397','24.7460819','','','');

INSERT INTO locations (id, longitude, latitude, address, description_ar, description_en) VALUES ('50','46.695287','24.744898','','','');

INSERT INTO locations (id, longitude, latitude, address, description_ar, description_en) VALUES ('51','46.7122597','24.742725','','','');

INSERT INTO locations (id, longitude, latitude, address, description_ar, description_en) VALUES ('52','50.0112522','26.4050439','','','');

INSERT INTO locations (id, longitude, latitude, address, description_ar, description_en) VALUES ('53','46.6881586','24.747015','','','');

INSERT INTO locations (id, longitude, latitude, address, description_ar, description_en) VALUES ('54','32.556618','15.5427079','','','');

INSERT INTO locations (id, longitude, latitude, address, description_ar, description_en) VALUES ('55','46.7070457','24.7421459','','','');

INSERT INTO locations (id, longitude, latitude, address, description_ar, description_en) VALUES ('56','30.5167058','28.1853217','','','');

INSERT INTO locations (id, longitude, latitude, address, description_ar, description_en) VALUES ('57','30.8597961','29.3108955','','','');

INSERT INTO locations (id, longitude, latitude, address, description_ar, description_en) VALUES ('58','30.7909881','28.4555639','','','');

INSERT INTO locations (id, longitude, latitude, address, description_ar, description_en) VALUES ('59','30.7909881','28.4555639','','','');

INSERT INTO locations (id, longitude, latitude, address, description_ar, description_en) VALUES ('60','31.4037503','30.003969','','','');

INSERT INTO locations (id, longitude, latitude, address, description_ar, description_en) VALUES ('61','31.4037503','30.003969','','','');

INSERT INTO locations (id, longitude, latitude, address, description_ar, description_en) VALUES ('62','31.4037503','30.003969','','','');

INSERT INTO locations (id, longitude, latitude, address, description_ar, description_en) VALUES ('63','31.4037503','30.003969','','','');

INSERT INTO locations (id, longitude, latitude, address, description_ar, description_en) VALUES ('64','31.4037503','30.003969','','','');

INSERT INTO locations (id, longitude, latitude, address, description_ar, description_en) VALUES ('65','31.4037503','30.003969','','','');

INSERT INTO locations (id, longitude, latitude, address, description_ar, description_en) VALUES ('66','31.4037503','30.003969','','','');

INSERT INTO locations (id, longitude, latitude, address, description_ar, description_en) VALUES ('67','30.7909881','28.4555639','','','');

INSERT INTO locations (id, longitude, latitude, address, description_ar, description_en) VALUES ('68','30.7909881','28.4555639','','','');

INSERT INTO locations (id, longitude, latitude, address, description_ar, description_en) VALUES ('69','30.7909881','28.4555639','','','');

INSERT INTO locations (id, longitude, latitude, address, description_ar, description_en) VALUES ('70','30.7909881','28.4555639','','','');

INSERT INTO locations (id, longitude, latitude, address, description_ar, description_en) VALUES ('71','30.7909881','28.4555639','','','');

INSERT INTO locations (id, longitude, latitude, address, description_ar, description_en) VALUES ('72','30.7909881','28.4555639','','','');

INSERT INTO locations (id, longitude, latitude, address, description_ar, description_en) VALUES ('73','30.7909881','28.4555639','','','');

INSERT INTO locations (id, longitude, latitude, address, description_ar, description_en) VALUES ('74','31.6275439','30.017792','','','');


CREATE TABLE `measurement_units` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `unit_ar` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `unit_en` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_active` tinyint(4) NOT NULL DEFAULT 1,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


INSERT INTO measurement_units (id, unit_ar, unit_en, is_active) VALUES ('1','كيلومتر','km','1');

INSERT INTO measurement_units (id, unit_ar, unit_en, is_active) VALUES ('2','ميل','mile','1');

INSERT INTO measurement_units (id, unit_ar, unit_en, is_active) VALUES ('3','قدم','foot','1');

INSERT INTO measurement_units (id, unit_ar, unit_en, is_active) VALUES ('4','متر','metre','1');


CREATE TABLE `messages` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `message` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


INSERT INTO messages (id, name, email, message, created_at) VALUES ('1','mostafa ramdan','mostafaramdan5544@gmail.com','test','2022-01-12 17:52:19');

INSERT INTO messages (id, name, email, message, created_at) VALUES ('2','mostafa ramdan','mostafaramdan5544@gmail.com','test','2022-01-12 17:53:20');

INSERT INTO messages (id, name, email, message, created_at) VALUES ('3','mostafa ramdan','mostafaramdan5544@gmail.com','test','2022-01-12 17:53:59');

INSERT INTO messages (id, name, email, message, created_at) VALUES ('4','mostafa ramdan','mostafaramdan5544@gmail.com','test','2022-01-12 18:01:03');

INSERT INTO messages (id, name, email, message, created_at) VALUES ('5','mostafa ramdan','mostafaramdan5544@gmail.com','tyeasdasd','2022-01-12 18:01:53');

INSERT INTO messages (id, name, email, message, created_at) VALUES ('6','mostafa ramdan','mostafaramdan5544@gmail.com','test','2022-01-12 18:09:10');

INSERT INTO messages (id, name, email, message, created_at) VALUES ('7','الدرديري','kadoora@yahoo.com','ارجو منكم تحسين التطبيق','2022-01-25 15:23:24');


CREATE TABLE `migrations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


INSERT INTO migrations (id, migration, batch) VALUES ('1','2018_08_08_100000_create_telescope_entries_table','1');


CREATE TABLE `notifications` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `content_ar` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `content_en` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` int(11) NOT NULL,
  `orders_id` int(11) DEFAULT NULL,
  `deleted_at` int(11) DEFAULT NULL,
  `type` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_UNIQUE` (`id`),
  KEY `orders_id` (`orders_id`),
  CONSTRAINT `notifications_ibfk_2` FOREIGN KEY (`orders_id`) REFERENCES `orders` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=1917 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


INSERT INTO notifications (id, content_ar, content_en, created_at, orders_id, deleted_at, type) VALUES ('1870','حصل عروض نهاية العام','Reach the year end offers','1649332082','','','dashboard');

INSERT INTO notifications (id, content_ar, content_en, created_at, orders_id, deleted_at, type) VALUES ('1881','عرض رمضان','Ramadan Offer','1650483408','','','dashboard');

INSERT INTO notifications (id, content_ar, content_en, created_at, orders_id, deleted_at, type) VALUES ('1882',' شكرا اسماعيل حمد تم تأكيد حجز غرفتك في فندق ريانة بال حي 1  رقم الحجز 20220317 يتوقع وصولك في 2022-05-01 23:00:00 سيتعامل حي 1  مع مدفوعاتك  اجعل اقامتك أكثر تميزا  شكرا لاختياركم حبابكم ',' Thanks اسماعيل حمد  Your booking in your rooms in Rayannah Hotel in distric 1  is confirmed  Your Booking No 20220317 You are expected to arrive in 2022-05-01 23:00:00 Your payment will be handled by distric 1  Make your residence even more special.  Thank you for choosing Hababcom ','2022','317','','');

INSERT INTO notifications (id, content_ar, content_en, created_at, orders_id, deleted_at, type) VALUES ('1904','عروضنا في العيد غير😍','Our offer in Eid😍','1650655607','','','dashboard');

INSERT INTO notifications (id, content_ar, content_en, created_at, orders_id, deleted_at, type) VALUES ('1907','عيدكم مبارك','Eid Mubarak','1650744644','','','dashboard');

INSERT INTO notifications (id, content_ar, content_en, created_at, orders_id, deleted_at, type) VALUES ('1908','عيدكم مبارك','Eid Mubarak','1650744705','','','dashboard');

INSERT INTO notifications (id, content_ar, content_en, created_at, orders_id, deleted_at, type) VALUES ('1909','عيدكم مبارك','Eid Mubarak','1650744713','','','dashboard');

INSERT INTO notifications (id, content_ar, content_en, created_at, orders_id, deleted_at, type) VALUES ('1910','عيدكم مبارك😍','😍Eid Mubarak','1650744729','','','dashboard');

INSERT INTO notifications (id, content_ar, content_en, created_at, orders_id, deleted_at, type) VALUES ('1911','عيدكم مبارك😍','😍Eid Mubarak','1650744818','','','dashboard');

INSERT INTO notifications (id, content_ar, content_en, created_at, orders_id, deleted_at, type) VALUES ('1913',' شكرا mostafa تم تأكيد حجز غرفتك في فندق تريمف بال حي المطار رقم الحجز 20220319 يتوقع وصولك في 2022-04-28 00:00:00 سيتعامل حي المطار مع مدفوعاتك  اجعل اقامتك أكثر تميزا  شكرا لاختياركم حبابكم ',' Thanks mostafa  Your booking in your rooms in Triumph katameya in Airport district is confirmed  Your Booking No 20220319 You are expected to arrive in 2022-04-28 00:00:00 Your payment will be handled by Airport district Make your residence even more special.  Thank you for choosing Hababcom ','1651064645','319','','');

INSERT INTO notifications (id, content_ar, content_en, created_at, orders_id, deleted_at, type) VALUES ('1914',' شكرا mostafa تم تأكيد حجز غرفتك في فندق راس غارب بال الخرطوم رقم الحجز 20220320 يتوقع وصولك في 2022-07-31 00:00:00 سيتعامل الخرطوم مع مدفوعاتك  اجعل اقامتك أكثر تميزا  شكرا لاختياركم حبابكم ',' Thanks mostafa  Your booking in your rooms in Ras Ghareb Hotel in Khartoum is confirmed  Your Booking No 20220320 You are expected to arrive in 2022-07-31 00:00:00 Your payment will be handled by Khartoum Make your residence even more special.  Thank you for choosing Hababcom ','1651067861','320','','');

INSERT INTO notifications (id, content_ar, content_en, created_at, orders_id, deleted_at, type) VALUES ('1916','..مثال','test ..','1652685655','','','dashboard');


CREATE TABLE `notify` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `notifications_id` int(11) NOT NULL,
  `is_seen` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` datetime NOT NULL,
  `users_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_UNIQUE` (`id`),
  KEY `fk_notify_notifications1_idx` (`notifications_id`),
  KEY `fk_notify_users2_idx` (`users_id`),
  CONSTRAINT `notify_ibfk_1` FOREIGN KEY (`notifications_id`) REFERENCES `notifications` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=484 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


INSERT INTO notify (id, notifications_id, is_seen, created_at, users_id) VALUES ('23','1882','0','0000-00-00 00:00:00','153');

INSERT INTO notify (id, notifications_id, is_seen, created_at, users_id) VALUES ('418','1904','0','2022-04-22 21:26:47','11');

INSERT INTO notify (id, notifications_id, is_seen, created_at, users_id) VALUES ('419','1904','0','2022-04-22 21:26:47','25');

INSERT INTO notify (id, notifications_id, is_seen, created_at, users_id) VALUES ('420','1904','0','2022-04-22 21:26:47','29');

INSERT INTO notify (id, notifications_id, is_seen, created_at, users_id) VALUES ('421','1904','0','2022-04-22 21:26:47','65');

INSERT INTO notify (id, notifications_id, is_seen, created_at, users_id) VALUES ('422','1904','0','2022-04-22 21:26:47','170');

INSERT INTO notify (id, notifications_id, is_seen, created_at, users_id) VALUES ('434','1907','0','2022-04-23 22:10:44','10');

INSERT INTO notify (id, notifications_id, is_seen, created_at, users_id) VALUES ('435','1907','0','2022-04-23 22:10:44','11');

INSERT INTO notify (id, notifications_id, is_seen, created_at, users_id) VALUES ('436','1907','0','2022-04-23 22:10:44','25');

INSERT INTO notify (id, notifications_id, is_seen, created_at, users_id) VALUES ('437','1907','0','2022-04-23 22:10:44','29');

INSERT INTO notify (id, notifications_id, is_seen, created_at, users_id) VALUES ('438','1907','0','2022-04-23 22:10:44','65');

INSERT INTO notify (id, notifications_id, is_seen, created_at, users_id) VALUES ('439','1907','0','2022-04-23 22:10:44','132');

INSERT INTO notify (id, notifications_id, is_seen, created_at, users_id) VALUES ('440','1907','0','2022-04-23 22:10:44','153');

INSERT INTO notify (id, notifications_id, is_seen, created_at, users_id) VALUES ('441','1908','0','2022-04-23 22:11:45','10');

INSERT INTO notify (id, notifications_id, is_seen, created_at, users_id) VALUES ('442','1908','0','2022-04-23 22:11:45','11');

INSERT INTO notify (id, notifications_id, is_seen, created_at, users_id) VALUES ('443','1908','0','2022-04-23 22:11:45','25');

INSERT INTO notify (id, notifications_id, is_seen, created_at, users_id) VALUES ('444','1908','0','2022-04-23 22:11:45','29');

INSERT INTO notify (id, notifications_id, is_seen, created_at, users_id) VALUES ('445','1908','0','2022-04-23 22:11:46','65');

INSERT INTO notify (id, notifications_id, is_seen, created_at, users_id) VALUES ('446','1908','0','2022-04-23 22:11:46','132');

INSERT INTO notify (id, notifications_id, is_seen, created_at, users_id) VALUES ('447','1908','0','2022-04-23 22:11:46','153');

INSERT INTO notify (id, notifications_id, is_seen, created_at, users_id) VALUES ('448','1909','0','2022-04-23 22:11:53','10');

INSERT INTO notify (id, notifications_id, is_seen, created_at, users_id) VALUES ('449','1909','0','2022-04-23 22:11:53','11');

INSERT INTO notify (id, notifications_id, is_seen, created_at, users_id) VALUES ('450','1909','0','2022-04-23 22:11:53','25');

INSERT INTO notify (id, notifications_id, is_seen, created_at, users_id) VALUES ('451','1909','0','2022-04-23 22:11:53','29');

INSERT INTO notify (id, notifications_id, is_seen, created_at, users_id) VALUES ('452','1909','0','2022-04-23 22:11:54','65');

INSERT INTO notify (id, notifications_id, is_seen, created_at, users_id) VALUES ('453','1909','0','2022-04-23 22:11:54','132');

INSERT INTO notify (id, notifications_id, is_seen, created_at, users_id) VALUES ('454','1909','0','2022-04-23 22:11:54','153');

INSERT INTO notify (id, notifications_id, is_seen, created_at, users_id) VALUES ('455','1910','0','2022-04-23 22:12:09','10');

INSERT INTO notify (id, notifications_id, is_seen, created_at, users_id) VALUES ('456','1910','0','2022-04-23 22:12:09','11');

INSERT INTO notify (id, notifications_id, is_seen, created_at, users_id) VALUES ('457','1910','0','2022-04-23 22:12:09','25');

INSERT INTO notify (id, notifications_id, is_seen, created_at, users_id) VALUES ('458','1910','0','2022-04-23 22:12:09','29');

INSERT INTO notify (id, notifications_id, is_seen, created_at, users_id) VALUES ('459','1910','0','2022-04-23 22:12:09','65');

INSERT INTO notify (id, notifications_id, is_seen, created_at, users_id) VALUES ('460','1910','0','2022-04-23 22:12:10','132');

INSERT INTO notify (id, notifications_id, is_seen, created_at, users_id) VALUES ('461','1910','0','2022-04-23 22:12:10','153');

INSERT INTO notify (id, notifications_id, is_seen, created_at, users_id) VALUES ('462','1911','0','2022-04-23 22:13:38','10');

INSERT INTO notify (id, notifications_id, is_seen, created_at, users_id) VALUES ('463','1911','0','2022-04-23 22:13:38','11');

INSERT INTO notify (id, notifications_id, is_seen, created_at, users_id) VALUES ('464','1911','0','2022-04-23 22:13:38','25');

INSERT INTO notify (id, notifications_id, is_seen, created_at, users_id) VALUES ('465','1911','0','2022-04-23 22:13:38','29');

INSERT INTO notify (id, notifications_id, is_seen, created_at, users_id) VALUES ('466','1911','0','2022-04-23 22:13:38','65');

INSERT INTO notify (id, notifications_id, is_seen, created_at, users_id) VALUES ('467','1911','0','2022-04-23 22:13:38','132');

INSERT INTO notify (id, notifications_id, is_seen, created_at, users_id) VALUES ('468','1911','0','2022-04-23 22:13:38','153');

INSERT INTO notify (id, notifications_id, is_seen, created_at, users_id) VALUES ('470','1913','0','2022-04-27 15:04:05','10');

INSERT INTO notify (id, notifications_id, is_seen, created_at, users_id) VALUES ('471','1914','0','2022-04-27 15:57:41','10');

INSERT INTO notify (id, notifications_id, is_seen, created_at, users_id) VALUES ('478','1916','0','2022-05-16 07:20:56','10');

INSERT INTO notify (id, notifications_id, is_seen, created_at, users_id) VALUES ('479','1916','0','2022-05-16 07:20:56','11');

INSERT INTO notify (id, notifications_id, is_seen, created_at, users_id) VALUES ('480','1916','0','2022-05-16 07:20:56','25');

INSERT INTO notify (id, notifications_id, is_seen, created_at, users_id) VALUES ('481','1916','0','2022-05-16 07:20:57','29');

INSERT INTO notify (id, notifications_id, is_seen, created_at, users_id) VALUES ('482','1916','0','2022-05-16 07:20:57','65');

INSERT INTO notify (id, notifications_id, is_seen, created_at, users_id) VALUES ('483','1916','0','2022-05-16 07:20:57','153');


CREATE TABLE `offers` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `housing_units_id` int(11) DEFAULT NULL,
  `apartments_id` int(11) DEFAULT NULL,
  `start_at` date DEFAULT NULL,
  `end_at` date DEFAULT NULL,
  `name_ar` varchar(100) DEFAULT NULL,
  `name_en` varchar(100) DEFAULT NULL,
  `description_ar` text DEFAULT NULL,
  `description_en` text DEFAULT NULL,
  `discount` double DEFAULT NULL,
  `is_active` tinyint(1) DEFAULT 1,
  `images` text DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `housing_units_id` (`housing_units_id`),
  KEY `apartments_id` (`apartments_id`),
  CONSTRAINT `offers_ibfk_3` FOREIGN KEY (`housing_units_id`) REFERENCES `housing_units` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `offers_ibfk_4` FOREIGN KEY (`apartments_id`) REFERENCES `apartments` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb4;


INSERT INTO offers (id, housing_units_id, apartments_id, start_at, end_at, name_ar, name_en, description_ar, description_en, discount, is_active, images) VALUES ('13','2','','2022-05-09','2022-05-31','عرض عيد الفطر','Eid Offer','Eid al Fitr Offer','Eid al Fitr Offer','10','1','[280]');

INSERT INTO offers (id, housing_units_id, apartments_id, start_at, end_at, name_ar, name_en, description_ar, description_en, discount, is_active, images) VALUES ('14','617','','2022-01-01','2021-01-01','asasd','asdasdas','asdasd','asdasd','4','1','');

INSERT INTO offers (id, housing_units_id, apartments_id, start_at, end_at, name_ar, name_en, description_ar, description_en, discount, is_active, images) VALUES ('15','617','','2022-06-15','2022-06-20','adasdasd','asdasd','asdasd','asdasd','20','1','');

INSERT INTO offers (id, housing_units_id, apartments_id, start_at, end_at, name_ar, name_en, description_ar, description_en, discount, is_active, images) VALUES ('16','617','','2022-06-15','2022-06-20','adasdasd','asdasd','asdasd','asdasd','20','1','[420]');

INSERT INTO offers (id, housing_units_id, apartments_id, start_at, end_at, name_ar, name_en, description_ar, description_en, discount, is_active, images) VALUES ('17','617','','2022-06-15','2022-06-22','تيست اوفر','test','تيست اوفر','test','30','1','[419]');


CREATE TABLE `orders` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `start_at` datetime NOT NULL,
  `end_at` datetime NOT NULL,
  `status` varchar(100) DEFAULT NULL,
  `price` double NOT NULL,
  `priceAfterDiscount` double NOT NULL,
  `fees` double NOT NULL,
  `total` double NOT NULL,
  `users_id` int(11) DEFAULT NULL,
  `vouchers_id` int(11) DEFAULT NULL,
  `code` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `users_id` (`users_id`),
  CONSTRAINT `orders_ibfk_1` FOREIGN KEY (`users_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=321 DEFAULT CHARSET=utf8mb4;


INSERT INTO orders (id, start_at, end_at, status, price, priceAfterDiscount, fees, total, users_id, vouchers_id, code, created_at) VALUES ('317','2022-05-01 23:00:00','2022-05-03 23:00:00','waiting','220','220','0','220','153','','','2022-04-20 22:57:33');

INSERT INTO orders (id, start_at, end_at, status, price, priceAfterDiscount, fees, total, users_id, vouchers_id, code, created_at) VALUES ('319','2022-04-28 00:00:00','2022-05-12 00:00:00','waiting','12600','12600','0','12600','10','','','2022-04-27 15:04:04');

INSERT INTO orders (id, start_at, end_at, status, price, priceAfterDiscount, fees, total, users_id, vouchers_id, code, created_at) VALUES ('320','2022-07-31 00:00:00','2022-07-31 00:00:00','finished','0','0','0','0','10','','','2022-04-27 15:57:40');


CREATE TABLE `owners` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `owner_name` varchar(255) DEFAULT NULL,
  `owner_phone` varchar(255) DEFAULT NULL,
  `owner_phone2` varchar(255) DEFAULT NULL,
  `owner_email` varchar(255) DEFAULT NULL,
  `manager_name` varchar(255) DEFAULT NULL,
  `manager_phone` varchar(255) DEFAULT NULL,
  `manager_phone2` varchar(255) DEFAULT NULL,
  `phone_sms` varchar(255) DEFAULT NULL,
  `website` varchar(255) DEFAULT NULL,
  `email_booking` varchar(255) DEFAULT NULL,
  `account_number` varchar(255) DEFAULT NULL,
  `bank` varchar(255) DEFAULT NULL,
  `permissions` text DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `apartments_complexes_id` int(11) DEFAULT NULL,
  `estates_id` int(11) DEFAULT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT 1,
  PRIMARY KEY (`id`),
  KEY `apartments_complexes_id` (`apartments_complexes_id`),
  CONSTRAINT `owners_ibfk_1` FOREIGN KEY (`apartments_complexes_id`) REFERENCES `apartments_complexes` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4;


INSERT INTO owners (id, owner_name, owner_phone, owner_phone2, owner_email, manager_name, manager_phone, manager_phone2, phone_sms, website, email_booking, account_number, bank, permissions, password, apartments_complexes_id, estates_id, is_active) VALUES ('12','mohamed','01114225448','01114225454','mohamed@gmail.com','mohamed@gmail.com','01112445454','01114245454','01124242424','mohamed@gmail.com','mohamed@gmail.com','mohameds@gmail.com','alahly','{"statistics":{"name_ar":"\u0627\u0644\u0627\u062d\u0635\u0627\u0626\u064a\u0627\u062a","name_en":"statistics","permissions":{"view":true}},"estates":{"name_ar":"\u0627\u0644\u0641\u0646\u0627\u062f\u0642","name_en":"estates","permissions":{"create":false,"update":true,"delete":false,"view":true}},"housing_units":{"name_ar":"\u0627\u0644\u063a\u0631\u0641","name_en":"housing_units","permissions":{"create":true,"update":true,"delete":true,"view":true}},"offers":{"name_ar":"\u0627\u0644\u0639\u0631\u0648\u0636","name_en":"offers","permissions":{"create":true,"update":true,"delete":true,"view":true}},"orders":{"name_ar":"\u0627\u0644\u062d\u062c\u0648\u0632\u0627\u062a","name_en":"orders","permissions":{"create":true,"update":true,"delete":true,"view":true}}}','$2y$10$DJ4V0lAYSZCdgVt4HH42W.yZjT9J12CQk20t01/JtiSz93gEGmLI.','','35','1');

INSERT INTO owners (id, owner_name, owner_phone, owner_phone2, owner_email, manager_name, manager_phone, manager_phone2, phone_sms, website, email_booking, account_number, bank, permissions, password, apartments_complexes_id, estates_id, is_active) VALUES ('13','apartment','01114225481','01114254564','apartment@apartment.apartment','asdasd','0121231231231','011251551515','011154564654654','apartment@apartment.apartment','apartment@apartment.apartment','apartment@apartment.apartment','alahly','{"statistics":{"name_ar":"\u0627\u0644\u0627\u062d\u0635\u0627\u0626\u064a\u0627\u062a","name_en":"statistics","permissions":{"view":true}},"offers":{"name_ar":"\u0627\u0644\u0639\u0631\u0648\u0636","name_en":"offers","permissions":{"create":true,"update":true,"delete":true,"view":true}},"apartments_complexes":{"name_ar":"\u0645\u062c\u0645\u0639\u0627\u062a \u0627\u0644\u0634\u0642\u0642","name_en":"apartments_complexes","permissions":{"create":false,"update":true,"delete":false,"view":true}},"apartments":{"name_ar":"\u0627\u0644\u0634\u0642\u0642","name_en":"apartments","permissions":{"create":true,"update":true,"delete":true,"view":true}},"orders":{"name_ar":"\u0627\u0644\u062d\u062c\u0648\u0632\u0627\u062a","name_en":"orders","permissions":{"create":true,"update":true,"delete":true,"view":true}}}','$2y$10$XQQpxsxuTTcs4T/XqqlmzuxwC/6aR6gj8FZRH538V.AYfGghph8By','1','','1');


CREATE TABLE `prices` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type` varchar(100) NOT NULL,
  `priceSDG` float NOT NULL,
  `priceUSD` float NOT NULL,
  `priceSAR` float NOT NULL,
  `priceAED` float NOT NULL,
  `priceQR` float NOT NULL,
  `housing_units_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;



CREATE TABLE `rates` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `customers_service` float DEFAULT NULL,
  `cards` float DEFAULT NULL,
  `foods` float DEFAULT NULL,
  `comment` text NOT NULL,
  `rate` int(11) NOT NULL,
  `users_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;



CREATE TABLE `regions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name_ar` varchar(255) NOT NULL,
  `name_en` varchar(255) NOT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT 1,
  `regions_id` int(11) DEFAULT NULL,
  `countries_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=41 DEFAULT CHARSET=utf8mb4;


INSERT INTO regions (id, name_ar, name_en, is_active, regions_id, countries_id) VALUES ('16','الخرطوم','Khartoum','1','','222');

INSERT INTO regions (id, name_ar, name_en, is_active, regions_id, countries_id) VALUES ('17','الخرطوم بحري
','Khartoum North
','1','','222');

INSERT INTO regions (id, name_ar, name_en, is_active, regions_id, countries_id) VALUES ('18','أم درمان','Omdurman','1','','222');

INSERT INTO regions (id, name_ar, name_en, is_active, regions_id, countries_id) VALUES ('19','بورتسودان','Port Sudan','1','','222');

INSERT INTO regions (id, name_ar, name_en, is_active, regions_id, countries_id) VALUES ('20','الابيض','El-Obeid','1','','222');

INSERT INTO regions (id, name_ar, name_en, is_active, regions_id, countries_id) VALUES ('21','الرهد','Er Rahad','1','','222');

INSERT INTO regions (id, name_ar, name_en, is_active, regions_id, countries_id) VALUES ('22','مدني','Wad Madani
','1','','222');

INSERT INTO regions (id, name_ar, name_en, is_active, regions_id, countries_id) VALUES ('23','سنار','Sennar ','1','','222');

INSERT INTO regions (id, name_ar, name_en, is_active, regions_id, countries_id) VALUES ('24','عطبرة','Atbara','1','','222');

INSERT INTO regions (id, name_ar, name_en, is_active, regions_id, countries_id) VALUES ('25','دنقا','Danga','1','','222');

INSERT INTO regions (id, name_ar, name_en, is_active, regions_id, countries_id) VALUES ('26','حلفا','Halfa','1','','222');

INSERT INTO regions (id, name_ar, name_en, is_active, regions_id, countries_id) VALUES ('27','كسلا','Kassala','1','','222');

INSERT INTO regions (id, name_ar, name_en, is_active, regions_id, countries_id) VALUES ('28','الفاشر','Al-Fashir','1','','222');

INSERT INTO regions (id, name_ar, name_en, is_active, regions_id, countries_id) VALUES ('29','نيالا','Nyala','1','','222');

INSERT INTO regions (id, name_ar, name_en, is_active, regions_id, countries_id) VALUES ('30','كوستي','Kosti','1','','222');

INSERT INTO regions (id, name_ar, name_en, is_active, regions_id, countries_id) VALUES ('31','ربك','Rabak','1','','222');

INSERT INTO regions (id, name_ar, name_en, is_active, regions_id, countries_id) VALUES ('32','حي المطار','Airport district','1','16','');

INSERT INTO regions (id, name_ar, name_en, is_active, regions_id, countries_id) VALUES ('33','حي 2','distric 2','1','19','');

INSERT INTO regions (id, name_ar, name_en, is_active, regions_id, countries_id) VALUES ('34','حي الصفا','Safa Area','1','20','');

INSERT INTO regions (id, name_ar, name_en, is_active, regions_id, countries_id) VALUES ('35','بري الدرايسه.','Brie Draiseh.','1','16','');

INSERT INTO regions (id, name_ar, name_en, is_active, regions_id, countries_id) VALUES ('36','asdasd','adasdasd','1','','');

INSERT INTO regions (id, name_ar, name_en, is_active, regions_id, countries_id) VALUES ('37','adadas','asdasdasd','1','','');

INSERT INTO regions (id, name_ar, name_en, is_active, regions_id, countries_id) VALUES ('40','awd test','test awq','1','39','');


CREATE TABLE `reviews` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `estates_id` int(11) DEFAULT NULL,
  `users_id` int(11) NOT NULL,
  `rate` float NOT NULL,
  `comment` text DEFAULT NULL,
  `foods` int(11) DEFAULT NULL,
  `cards` int(11) DEFAULT NULL,
  `customersService` int(11) DEFAULT NULL,
  `apartments_complex_id` int(11) DEFAULT NULL,
  `orders_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `users_id` (`users_id`),
  KEY `estates_id` (`estates_id`),
  KEY `orders_id` (`orders_id`),
  KEY `apartments_complex_id` (`apartments_complex_id`),
  CONSTRAINT `reviews_ibfk_1` FOREIGN KEY (`users_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `reviews_ibfk_2` FOREIGN KEY (`estates_id`) REFERENCES `estates` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `reviews_ibfk_5` FOREIGN KEY (`orders_id`) REFERENCES `orders` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `reviews_ibfk_6` FOREIGN KEY (`apartments_complex_id`) REFERENCES `apartments_complexes` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;



CREATE TABLE `sessions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `tmp_token` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tmp_phone` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tmp_email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `code` varchar(5) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `users_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_UNIQUE` (`id`),
  KEY `fk_sessions_users1_idx` (`users_id`)
) ENGINE=InnoDB AUTO_INCREMENT=416 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


INSERT INTO sessions (id, tmp_token, tmp_phone, tmp_email, code, created_at, users_id) VALUES ('266','','','','12345','2021-06-27 15:17:04','49');

INSERT INTO sessions (id, tmp_token, tmp_phone, tmp_email, code, created_at, users_id) VALUES ('267','','','','12345','2021-06-27 15:19:25','50');

INSERT INTO sessions (id, tmp_token, tmp_phone, tmp_email, code, created_at, users_id) VALUES ('279','egzXj8tbT1FvniekaPIEgshyJzzAWWJsGPbidCUf3dCuRINiIe1kllzMn43sd5RPLUmHl','','','12345','2021-07-07 15:18:47','12');

INSERT INTO sessions (id, tmp_token, tmp_phone, tmp_email, code, created_at, users_id) VALUES ('280','5VuqWJc6X6Fp2Uk7prweW3l1p39ess4T2F5kYEEjYgVvHMtxqZ6PhxJ8Vzmbspu84C5WB','','','12345','2021-07-12 15:40:30','59');

INSERT INTO sessions (id, tmp_token, tmp_phone, tmp_email, code, created_at, users_id) VALUES ('286','','','','12345','2021-07-18 19:33:38','63');

INSERT INTO sessions (id, tmp_token, tmp_phone, tmp_email, code, created_at, users_id) VALUES ('287','','','','13391','2021-07-18 19:38:03','64');

INSERT INTO sessions (id, tmp_token, tmp_phone, tmp_email, code, created_at, users_id) VALUES ('294','IHnwVa3UOWncvmp5kSg3jdHEoJbkiiHtgJ26Rd3ZiVq96TV9CopKL7bdUpbcFMvWmm6WW','00201114228487','','29996','2021-07-18 20:25:29','65');

INSERT INTO sessions (id, tmp_token, tmp_phone, tmp_email, code, created_at, users_id) VALUES ('296','','','','48350','2021-07-20 12:10:47','67');

INSERT INTO sessions (id, tmp_token, tmp_phone, tmp_email, code, created_at, users_id) VALUES ('298','iUxXpMlveRkCRQpXgIqChiwvYz1V7syZe2QCXmd4kkgRScezY25lAqUubjhZeGMTodIGT','','','16740','2021-07-27 10:16:23','62');

INSERT INTO sessions (id, tmp_token, tmp_phone, tmp_email, code, created_at, users_id) VALUES ('301','','','','33139','2021-07-27 10:34:19','69');

INSERT INTO sessions (id, tmp_token, tmp_phone, tmp_email, code, created_at, users_id) VALUES ('302','','','','79336','2021-07-27 10:41:40','70');

INSERT INTO sessions (id, tmp_token, tmp_phone, tmp_email, code, created_at, users_id) VALUES ('305','','','','46910','2021-07-27 11:09:10','72');

INSERT INTO sessions (id, tmp_token, tmp_phone, tmp_email, code, created_at, users_id) VALUES ('307','','','','24199','2021-07-30 12:04:07','74');

INSERT INTO sessions (id, tmp_token, tmp_phone, tmp_email, code, created_at, users_id) VALUES ('308','','','','13273','2021-07-30 12:05:24','75');

INSERT INTO sessions (id, tmp_token, tmp_phone, tmp_email, code, created_at, users_id) VALUES ('310','','','','70290','2021-07-31 16:21:20','77');

INSERT INTO sessions (id, tmp_token, tmp_phone, tmp_email, code, created_at, users_id) VALUES ('322','','','','82070','2021-08-10 23:04:54','81');

INSERT INTO sessions (id, tmp_token, tmp_phone, tmp_email, code, created_at, users_id) VALUES ('323','','','','81518','2021-08-12 09:01:52','82');

INSERT INTO sessions (id, tmp_token, tmp_phone, tmp_email, code, created_at, users_id) VALUES ('326','','','','81311','2021-08-21 21:29:56','85');

INSERT INTO sessions (id, tmp_token, tmp_phone, tmp_email, code, created_at, users_id) VALUES ('328','','','','38245','2021-09-13 08:02:04','87');

INSERT INTO sessions (id, tmp_token, tmp_phone, tmp_email, code, created_at, users_id) VALUES ('329','','','','90975','2021-09-13 08:03:59','88');

INSERT INTO sessions (id, tmp_token, tmp_phone, tmp_email, code, created_at, users_id) VALUES ('330','','','','94456','2021-09-13 08:05:04','89');

INSERT INTO sessions (id, tmp_token, tmp_phone, tmp_email, code, created_at, users_id) VALUES ('331','','','','84792','2021-09-22 22:42:37','90');

INSERT INTO sessions (id, tmp_token, tmp_phone, tmp_email, code, created_at, users_id) VALUES ('333','','','','93458','2021-09-23 10:34:27','92');

INSERT INTO sessions (id, tmp_token, tmp_phone, tmp_email, code, created_at, users_id) VALUES ('334','','','','25762','2021-09-23 10:38:04','93');

INSERT INTO sessions (id, tmp_token, tmp_phone, tmp_email, code, created_at, users_id) VALUES ('335','','','','81519','2021-09-23 11:14:22','95');

INSERT INTO sessions (id, tmp_token, tmp_phone, tmp_email, code, created_at, users_id) VALUES ('336','','','','27608','2021-09-28 04:56:15','96');

INSERT INTO sessions (id, tmp_token, tmp_phone, tmp_email, code, created_at, users_id) VALUES ('337','','','','62984','2021-09-30 14:52:04','97');

INSERT INTO sessions (id, tmp_token, tmp_phone, tmp_email, code, created_at, users_id) VALUES ('338','','','','82739','2021-09-30 14:53:52','98');

INSERT INTO sessions (id, tmp_token, tmp_phone, tmp_email, code, created_at, users_id) VALUES ('339','','','','29573','2021-10-03 20:38:48','99');

INSERT INTO sessions (id, tmp_token, tmp_phone, tmp_email, code, created_at, users_id) VALUES ('341','','','','98470','2021-10-04 11:42:37','101');

INSERT INTO sessions (id, tmp_token, tmp_phone, tmp_email, code, created_at, users_id) VALUES ('342','','','','98114','2021-10-05 14:47:54','102');

INSERT INTO sessions (id, tmp_token, tmp_phone, tmp_email, code, created_at, users_id) VALUES ('343','','','','17074','2021-10-05 14:47:54','103');

INSERT INTO sessions (id, tmp_token, tmp_phone, tmp_email, code, created_at, users_id) VALUES ('344','','','','71249','2021-10-05 14:50:43','104');

INSERT INTO sessions (id, tmp_token, tmp_phone, tmp_email, code, created_at, users_id) VALUES ('351','','','','73706','2021-10-20 15:03:28','105');

INSERT INTO sessions (id, tmp_token, tmp_phone, tmp_email, code, created_at, users_id) VALUES ('352','','','','15535','2021-10-20 15:08:46','106');

INSERT INTO sessions (id, tmp_token, tmp_phone, tmp_email, code, created_at, users_id) VALUES ('353','','','','20305','2021-10-20 23:39:19','107');

INSERT INTO sessions (id, tmp_token, tmp_phone, tmp_email, code, created_at, users_id) VALUES ('354','','','','44713','2021-10-21 12:18:04','109');

INSERT INTO sessions (id, tmp_token, tmp_phone, tmp_email, code, created_at, users_id) VALUES ('355','','','','30009','2021-10-21 12:18:04','108');

INSERT INTO sessions (id, tmp_token, tmp_phone, tmp_email, code, created_at, users_id) VALUES ('356','','','','32758','2021-10-21 12:20:20','110');

INSERT INTO sessions (id, tmp_token, tmp_phone, tmp_email, code, created_at, users_id) VALUES ('357','','','','97825','2021-10-21 12:21:33','111');

INSERT INTO sessions (id, tmp_token, tmp_phone, tmp_email, code, created_at, users_id) VALUES ('358','','','','77766','2021-10-21 12:57:51','112');

INSERT INTO sessions (id, tmp_token, tmp_phone, tmp_email, code, created_at, users_id) VALUES ('359','','','','63324','2021-10-21 12:58:50','113');

INSERT INTO sessions (id, tmp_token, tmp_phone, tmp_email, code, created_at, users_id) VALUES ('360','','','','73991','2021-10-21 12:58:50','114');

INSERT INTO sessions (id, tmp_token, tmp_phone, tmp_email, code, created_at, users_id) VALUES ('361','','','','98416','2021-10-21 12:58:50','115');

INSERT INTO sessions (id, tmp_token, tmp_phone, tmp_email, code, created_at, users_id) VALUES ('362','','','','98933','2021-10-23 11:56:04','116');

INSERT INTO sessions (id, tmp_token, tmp_phone, tmp_email, code, created_at, users_id) VALUES ('363','F7T4fUlF5PKOXVxPE0YfVRcLVR9OJwBsaB0olGAvhGjFo8WYqz3GD2dIEyskRx9bLnUe6','','','23812','2021-10-23 18:16:40','10');

INSERT INTO sessions (id, tmp_token, tmp_phone, tmp_email, code, created_at, users_id) VALUES ('364','','','','22109','2021-10-26 09:51:05','118');

INSERT INTO sessions (id, tmp_token, tmp_phone, tmp_email, code, created_at, users_id) VALUES ('365','','','','14802','2021-10-26 09:52:49','119');

INSERT INTO sessions (id, tmp_token, tmp_phone, tmp_email, code, created_at, users_id) VALUES ('366','','','','51081','2021-10-27 12:11:02','120');

INSERT INTO sessions (id, tmp_token, tmp_phone, tmp_email, code, created_at, users_id) VALUES ('372','','','','21579','2022-01-12 18:48:47','129');

INSERT INTO sessions (id, tmp_token, tmp_phone, tmp_email, code, created_at, users_id) VALUES ('373','','','','98198','2022-01-12 18:54:52','130');

INSERT INTO sessions (id, tmp_token, tmp_phone, tmp_email, code, created_at, users_id) VALUES ('378','','','','50848','2022-02-01 08:14:56','135');

INSERT INTO sessions (id, tmp_token, tmp_phone, tmp_email, code, created_at, users_id) VALUES ('380','','','','70006','2022-02-08 23:11:32','137');

INSERT INTO sessions (id, tmp_token, tmp_phone, tmp_email, code, created_at, users_id) VALUES ('381','','','','81406','2022-02-08 23:20:16','138');

INSERT INTO sessions (id, tmp_token, tmp_phone, tmp_email, code, created_at, users_id) VALUES ('383','','','','31117','2022-02-10 08:03:22','140');

INSERT INTO sessions (id, tmp_token, tmp_phone, tmp_email, code, created_at, users_id) VALUES ('384','','','','10007','2022-02-10 08:13:06','141');

INSERT INTO sessions (id, tmp_token, tmp_phone, tmp_email, code, created_at, users_id) VALUES ('385','','','','40933','2022-02-10 08:14:42','142');

INSERT INTO sessions (id, tmp_token, tmp_phone, tmp_email, code, created_at, users_id) VALUES ('386','','','','96123','2022-02-10 08:17:41','143');

INSERT INTO sessions (id, tmp_token, tmp_phone, tmp_email, code, created_at, users_id) VALUES ('387','','','','58205','2022-02-14 15:14:35','144');

INSERT INTO sessions (id, tmp_token, tmp_phone, tmp_email, code, created_at, users_id) VALUES ('388','','','','42323','2022-02-14 19:01:30','145');

INSERT INTO sessions (id, tmp_token, tmp_phone, tmp_email, code, created_at, users_id) VALUES ('389','','','','65297','2022-02-14 19:03:34','146');

INSERT INTO sessions (id, tmp_token, tmp_phone, tmp_email, code, created_at, users_id) VALUES ('391','','','','37965','2022-03-04 19:56:48','148');

INSERT INTO sessions (id, tmp_token, tmp_phone, tmp_email, code, created_at, users_id) VALUES ('393','','','','19026','2022-03-09 07:37:32','150');

INSERT INTO sessions (id, tmp_token, tmp_phone, tmp_email, code, created_at, users_id) VALUES ('394','','','','94435','2022-03-15 17:54:12','151');

INSERT INTO sessions (id, tmp_token, tmp_phone, tmp_email, code, created_at, users_id) VALUES ('395','','','','82419','2022-03-15 21:10:30','152');

INSERT INTO sessions (id, tmp_token, tmp_phone, tmp_email, code, created_at, users_id) VALUES ('398','','','','43703','2022-03-16 20:10:17','155');

INSERT INTO sessions (id, tmp_token, tmp_phone, tmp_email, code, created_at, users_id) VALUES ('400','','','','68839','2022-03-21 07:31:39','157');

INSERT INTO sessions (id, tmp_token, tmp_phone, tmp_email, code, created_at, users_id) VALUES ('401','','','','86417','2022-03-21 07:42:01','158');

INSERT INTO sessions (id, tmp_token, tmp_phone, tmp_email, code, created_at, users_id) VALUES ('402','','','','89303','2022-04-06 04:02:39','161');

INSERT INTO sessions (id, tmp_token, tmp_phone, tmp_email, code, created_at, users_id) VALUES ('403','','','','41332','2022-04-06 04:03:31','162');

INSERT INTO sessions (id, tmp_token, tmp_phone, tmp_email, code, created_at, users_id) VALUES ('404','','','','46222','2022-04-06 04:04:07','163');

INSERT INTO sessions (id, tmp_token, tmp_phone, tmp_email, code, created_at, users_id) VALUES ('408','cdooezUxyBG41a8fDH6gApXoOme6jd8fWs0UvK4wCmZ1wIwt1CHSPizE5jIVdupNGbkur','','','74486','2022-04-06 04:34:20','164');

INSERT INTO sessions (id, tmp_token, tmp_phone, tmp_email, code, created_at, users_id) VALUES ('411','toMbAZg13rI1bAhwGk5E9TwV6TCGyZHP4F1NSCrbhSHaEpUw2FSxnEMASOWFECtiKscRk','','','86904','2022-04-14 17:13:12','124');

INSERT INTO sessions (id, tmp_token, tmp_phone, tmp_email, code, created_at, users_id) VALUES ('414','GSxGhVMc3FLGJS5mnQcLYhYkTPEOIISejVpmk1chxowDo6uCpvNK8XfWgDanIApR5FIeZ','','','25651','2022-04-20 23:46:37','132');

INSERT INTO sessions (id, tmp_token, tmp_phone, tmp_email, code, created_at, users_id) VALUES ('415','','','','39204','2022-04-21 14:34:58','170');


CREATE TABLE `tokens` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `users_id` int(11) DEFAULT NULL,
  `apiToken` varchar(100) NOT NULL,
  `admins_id` int(11) DEFAULT NULL,
  `owners_id` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `users_id` (`users_id`),
  CONSTRAINT `tokens_ibfk_4` FOREIGN KEY (`users_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=1133 DEFAULT CHARSET=utf8mb4;


INSERT INTO tokens (id, users_id, apiToken, admins_id, owners_id, created_at) VALUES ('920','10','XyuJ6b8L9m1iRQz4JkhMUQUM0VGpyKsNmsV1fwFBFu2APkso7JR8aFU4VAQ92sFgWBS0l','','','2022-04-22 01:59:25');

INSERT INTO tokens (id, users_id, apiToken, admins_id, owners_id, created_at) VALUES ('921','','blqsgBsdP0xrOtgMAiSdlEpu3V1we6QumK4gUAJcRYfNoN7IFp7jU3tsI93UPI9rmL4C2','1','','2022-04-22 02:00:06');

INSERT INTO tokens (id, users_id, apiToken, admins_id, owners_id, created_at) VALUES ('922','','9wZoCBbWtZO2jrjZ14HQNWhm2bObzRXv4OvA45meq3P0fpn8iDdM8oROOYKmrmBR85YPG','1','','2022-04-22 02:42:10');

INSERT INTO tokens (id, users_id, apiToken, admins_id, owners_id, created_at) VALUES ('935','10','vukzYBUjRo9uyRIaci2ZLW7QVM9lXB3PMMQjCa31Vbi2hJTIvc2HGa2ZF0rKpIwQhf0zN','','','2022-04-22 21:13:07');

INSERT INTO tokens (id, users_id, apiToken, admins_id, owners_id, created_at) VALUES ('936','10','Ls5y7t7K5ye7uCHHo7W4ruL61GTDGYhv2Yxbdohwdry3uugonP6Im8dO3pGsLRJcHTkUl','','','2022-04-22 21:13:07');

INSERT INTO tokens (id, users_id, apiToken, admins_id, owners_id, created_at) VALUES ('939','','jQXXgetIVApej9Tyd89r36NQPI2J13dv4ALmxRPkCZaNqx5K7gQNZ4siUPle6VbVDy8sd','1','','2022-04-22 21:25:32');

INSERT INTO tokens (id, users_id, apiToken, admins_id, owners_id, created_at) VALUES ('942','10','WEd7bmG0uxPpvKrCy2Z0fSUctd4sSQaqjYm9dWvppmr3b9andedLMaoJanzSYtoZ3OCcu','','','2022-04-22 21:32:51');

INSERT INTO tokens (id, users_id, apiToken, admins_id, owners_id, created_at) VALUES ('943','10','VLdRCJk846bwey5vyyCVICJ636ws2tsWQehZtgGc7GWVMOUIQUR4uPvPApMNMiuTRDkub','','','2022-04-22 21:32:51');

INSERT INTO tokens (id, users_id, apiToken, admins_id, owners_id, created_at) VALUES ('945','10','bCm6NCwc03ess88CoSt3A2GugoS09YyEEQciYownaf2Lh9YqNv80QLA3Wy5LiRDSTNTcK','','','2022-04-22 21:33:43');

INSERT INTO tokens (id, users_id, apiToken, admins_id, owners_id, created_at) VALUES ('947','10','wc6R4LaZsMlsO41V2ZldbdiIlaecDelzVcKTRNgxqMzx80VCfXQ8Tq8fO06DhG7QjAmRT','','','2022-04-22 21:35:20');

INSERT INTO tokens (id, users_id, apiToken, admins_id, owners_id, created_at) VALUES ('951','10','rqo1bFwQB8umIMPnHTFrgDsSav7DnuepIBtcs30XJD98v8b8hS3h5alAYfgefjwxUgxxj','','','2022-04-22 21:36:23');

INSERT INTO tokens (id, users_id, apiToken, admins_id, owners_id, created_at) VALUES ('953','10','gCfn2CVNdzCNmPOzJFDR1GhMEQfqQfBnaXl09epfUENFfttMkROlxdwfKyaXexb8BJMRt','','','2022-04-22 21:36:55');

INSERT INTO tokens (id, users_id, apiToken, admins_id, owners_id, created_at) VALUES ('957','10','mxnXwCXgdMT0GShri54Q8NphLqTSNA55SgWfYH2zdVn86ZodgloZ9b3spE6Pjwi0bdFSI','','','2022-04-22 21:39:47');

INSERT INTO tokens (id, users_id, apiToken, admins_id, owners_id, created_at) VALUES ('962','10','RSthurcQMLhapLgXiJEWbXDkeP7jlUdKAJVWkr1Bs17HWndWOWN3v7x0MzqtZlzdTTTs3','','','2022-04-23 11:30:07');

INSERT INTO tokens (id, users_id, apiToken, admins_id, owners_id, created_at) VALUES ('963','10','r8jVsnDLzMBRkXbGSe4UxoU2j73UUO2PcdlNfGCwZOmRasZhpepRUG8pm4GqYbERZlKye','','','2022-04-23 11:30:07');

INSERT INTO tokens (id, users_id, apiToken, admins_id, owners_id, created_at) VALUES ('965','153','rFIMGuRenAPoFYKbvV1Td84bMbqr5FBKnFSt48Z4fSH6aLymZc9R60A5oHseqEcdZNswq','','','2022-04-23 19:05:01');

INSERT INTO tokens (id, users_id, apiToken, admins_id, owners_id, created_at) VALUES ('966','','EsD6u1ycjJcgoW6i1vLQd5fI8iZJ4t9k2XvYfJCbCQyIkwNZ7p98JREfSdPcu9m7kZKr3','1','','2022-04-23 21:18:20');

INSERT INTO tokens (id, users_id, apiToken, admins_id, owners_id, created_at) VALUES ('968','153','nsKOXy7j8C3WeUxdzcx6UGWrVPaWSwEfLz5stJ8qIaPnDvZroDWOsqeHlEjPIQGxkliau','','','2022-04-23 21:19:07');

INSERT INTO tokens (id, users_id, apiToken, admins_id, owners_id, created_at) VALUES ('969','153','RxNluNVOon4MEur4IqUGrMWbyI2XR38RpxUFDefkSAJomwjeIiJeS3iS1uRUbEuOovq3R','','','2022-04-23 21:19:26');

INSERT INTO tokens (id, users_id, apiToken, admins_id, owners_id, created_at) VALUES ('970','153','zI8kvWixXWqUm4KhGdUHLqCGPYxlvcOHwg83it84OMic6sQJxJZtjm4ndNLIFg2pcAp2L','','','2022-04-23 21:19:27');

INSERT INTO tokens (id, users_id, apiToken, admins_id, owners_id, created_at) VALUES ('972','153','3snz7zGO9pMPKOfBCxm8JxnqEi3Sj6fXLd9WZMCZvMGW5fMzNvgwR2Px13DreyD9vRmHF','','','2022-04-23 21:22:16');

INSERT INTO tokens (id, users_id, apiToken, admins_id, owners_id, created_at) VALUES ('974','165','7uYYAK5dzt7puRrNptqyJyOC6lkaHk84r0WQQ0pX1hWoTquZ6NdFJCcciYBGWT5LOSNne','','','2022-04-23 21:24:20');

INSERT INTO tokens (id, users_id, apiToken, admins_id, owners_id, created_at) VALUES ('976','153','pCbKTSbxrnj0qldcZYkATRcWOzlklqcomBCdDcLEv1uOZDQh6Fj4iZ1m6dLnLos3XP3Cq','','','2022-04-23 21:32:21');

INSERT INTO tokens (id, users_id, apiToken, admins_id, owners_id, created_at) VALUES ('977','171','J3SQUyPtiFCOyaaWVzp8NbaTQDI3VuCyPcqiWdxZe4jW0WzcdSlcODHRVzhYN673l11TQ','','','2022-04-23 21:32:25');

INSERT INTO tokens (id, users_id, apiToken, admins_id, owners_id, created_at) VALUES ('979','153','BvzuEkfx73LINqeUAOdtSNTCJA05rZP5uJrHEH0GqdKRyht3cKG3au9S3U4nemrQW5mb7','','','2022-04-23 21:44:53');

INSERT INTO tokens (id, users_id, apiToken, admins_id, owners_id, created_at) VALUES ('981','153','8KerJKwS3ZNUkkExzZ773CmAg4091sLIwtYv93axtmY3ZwtgArAY3XFF3ZnNF1yfyq0xY','','','2022-04-23 21:56:39');

INSERT INTO tokens (id, users_id, apiToken, admins_id, owners_id, created_at) VALUES ('982','153','4n8gd5GlGPqq6tOYbYusT12EThgKJ6HxsoQfV0UObbXa9z1HOhUYDagpja5kMvEyddRUd','','','2022-04-23 22:10:29');

INSERT INTO tokens (id, users_id, apiToken, admins_id, owners_id, created_at) VALUES ('983','153','IuDKiMMKR0m4eXMfyFw71AiUAidzag7WKjAVb9Rd2lAXHTyPd8l1LFkXzo1ItLdXq99p3','','','2022-04-23 22:10:29');

INSERT INTO tokens (id, users_id, apiToken, admins_id, owners_id, created_at) VALUES ('984','','sCYzRykKzJhihS5NGktk0r4c1CBT6rsxhkqZpleIKVNi5tsRxRpoQ9lmqKihEzj0hYp1m','1','','2022-04-24 22:20:26');

INSERT INTO tokens (id, users_id, apiToken, admins_id, owners_id, created_at) VALUES ('985','153','A0xtU8nDEoJoS2Y2UnNg1OqtoxU86vNhThbk34jqKFxWtUTBtgQL54B3CvKkH7QRIje98','','','2022-04-24 22:58:27');

INSERT INTO tokens (id, users_id, apiToken, admins_id, owners_id, created_at) VALUES ('986','153','rig9fk7NeBlxZ3N46D9bYtVsrIAzN91ctafeGHdNYrdn6ELtxc8Hvung36xXbrMkPYoaU','','','2022-04-24 22:58:27');

INSERT INTO tokens (id, users_id, apiToken, admins_id, owners_id, created_at) VALUES ('999','','pOrIqLBv54YpFAUb1cF9pCEn1XW1ePJttgTF3RbrhlMy8CkcdS0fXxXrhkVVdmIdgabzb','1','','2022-04-26 00:07:11');

INSERT INTO tokens (id, users_id, apiToken, admins_id, owners_id, created_at) VALUES ('1000','','K6Y54T80hFQ3qvKxxDBn2o08rEtGOxjGt5dUWchffyn4rR5JKzIfpeOSMxolmOmyjD7LM','1','','2022-04-26 00:40:49');

INSERT INTO tokens (id, users_id, apiToken, admins_id, owners_id, created_at) VALUES ('1001','','0Oe783SUqmCwOy1ViENcVq42r047GTrAJk5lfaIyIp6r3itOvVvOh72LpmuO8xjC27dAy','1','','2022-04-26 11:33:14');

INSERT INTO tokens (id, users_id, apiToken, admins_id, owners_id, created_at) VALUES ('1002','','15tG8KyrhEN1D5R45dUJC5vWXoxunOafgtv74jWxdOORjX4NMTUkX1P9667Z6p5qglByf','1','','2022-04-26 14:02:33');

INSERT INTO tokens (id, users_id, apiToken, admins_id, owners_id, created_at) VALUES ('1004','10','AwMjmHqqKJYfKSOkG89T0OvcSTm64tr2cTeUvFBpge1zkCkE3gavWBOaJxQOEWxa3cwPQ','','','2022-04-26 14:08:42');

INSERT INTO tokens (id, users_id, apiToken, admins_id, owners_id, created_at) VALUES ('1006','10','7jYDLJBGHgL0zGBeDUiEAj3RsS5HQvf2C7cSsDFCApUlGfbMkbF6YtwkfcnHer1MVvIZZ','','','2022-04-26 15:23:56');

INSERT INTO tokens (id, users_id, apiToken, admins_id, owners_id, created_at) VALUES ('1008','10','5b1cg5GkRrwDLTM0JjklBL4MkBlD0mgYxqZuPRqrlJHN80PXNBQ7DCJMaNxw1sqR4vkmp','','','2022-04-26 15:52:25');

INSERT INTO tokens (id, users_id, apiToken, admins_id, owners_id, created_at) VALUES ('1009','','eK6UipBJkAelYlb6SmHniVuZxvTh8hL6Bdzxk3U5JppF3LziwAlmJDwsa21WWm8yvlOnk','1','','2022-04-26 16:38:55');

INSERT INTO tokens (id, users_id, apiToken, admins_id, owners_id, created_at) VALUES ('1010','','oEvs0y4haY3CxVLv6udKFTeq2UXShmPFKAto112BlacVLfacvkqMUQiBa7KqESgy6HTba','1','','2022-04-26 17:06:03');

INSERT INTO tokens (id, users_id, apiToken, admins_id, owners_id, created_at) VALUES ('1011','10','WCwbyLLj5TUm96vLUVIP9dfUPMDLWf3othfI1s8sbGfS8h1cMmcFm5awetD5UlnPv4tNk','','','2022-04-26 20:52:20');

INSERT INTO tokens (id, users_id, apiToken, admins_id, owners_id, created_at) VALUES ('1012','10','TPPxA1IQMpmHqOQ6CgGugj45rDW2BwkH1XuPCcajimOM6Fb5g7df4jzBHYJ4e9qMn0gr9','','','2022-04-26 20:52:20');

INSERT INTO tokens (id, users_id, apiToken, admins_id, owners_id, created_at) VALUES ('1014','165','DcjKDzHXnKfajHszG90PeOXeQ8BzCUMFogRFAi7Iy7CnNLq9ABkWVpVrtHSQhWQJMeJte','','','2022-04-26 21:29:59');

INSERT INTO tokens (id, users_id, apiToken, admins_id, owners_id, created_at) VALUES ('1016','153','tmHGZ39B081ETyU7Nk8F0NQKIexdPEPJGSWjY2N36FFYcuZI7pBvT4BvN1nYPBi6B0m9E','','','2022-04-26 21:31:33');

INSERT INTO tokens (id, users_id, apiToken, admins_id, owners_id, created_at) VALUES ('1017','153','Q2vYmbg0mJXOvCkt8xtJOTNQuohZXYSj5Fo8CAcb4dMKJHukVTC2qZ8kVYdqHbsiUPGEQ','','','2022-04-26 21:31:50');

INSERT INTO tokens (id, users_id, apiToken, admins_id, owners_id, created_at) VALUES ('1018','153','34aaakWt6siGiijMNjrHGiFMeWVDp4cce5kqu3vBRDAxgY6g2ColwRu1NkpywpMRWuGDe','','','2022-04-26 21:31:50');

INSERT INTO tokens (id, users_id, apiToken, admins_id, owners_id, created_at) VALUES ('1020','153','eALFrICj1ksvYNwz9aYBkOX6ytDXFbvrG0jm1F3R7xVBzsj7SqMCoGvzNu1YZbiPXqnN7','','','2022-04-26 21:47:10');

INSERT INTO tokens (id, users_id, apiToken, admins_id, owners_id, created_at) VALUES ('1022','153','lf2L8ixF1MJYASvPZfNYiAu38LaLTjw9tQA0YNMBIDO5oaFvYXD3ashpH0bnfC7DpfJ4h','','','2022-04-27 02:52:49');

INSERT INTO tokens (id, users_id, apiToken, admins_id, owners_id, created_at) VALUES ('1023','','P4Wl9moC2zAVJeGTbPcqKFg2dOTPkfnSG6J1uHXDx6epqh0VAHAtfmHhUZkeokuNpAlTl','1','','2022-04-27 05:27:52');

INSERT INTO tokens (id, users_id, apiToken, admins_id, owners_id, created_at) VALUES ('1024','10','VZLwbAsgLQDQUSBUA2OZq4wFV9MDidu6rtfNN1IApFv2J26kb3TwlzNJSXtAH7tBK3GBC','','','2022-04-27 14:06:16');

INSERT INTO tokens (id, users_id, apiToken, admins_id, owners_id, created_at) VALUES ('1025','10','CgIK19hYMfuHG7fTrhx6Evm02jStAHUN6VBh81KZIiGU4NrKqpdnSr8dMHACJhcOkx9nP','','','2022-04-27 14:06:16');

INSERT INTO tokens (id, users_id, apiToken, admins_id, owners_id, created_at) VALUES ('1026','10','7Xoi0T8iDoONlPEKn1OvlaZBqd1wf7LuLKcKeQhMrvhGh6POrBNaaCGGxmvFqJVBGzdy7','','','2022-04-27 14:58:39');

INSERT INTO tokens (id, users_id, apiToken, admins_id, owners_id, created_at) VALUES ('1027','10','EE5uWUgNms5rl66xHFsGtu6QtrdAXYqMrOKRXCraxyyGSNGZzVApFXyCuvGKUZbZKYmrM','','','2022-04-27 14:58:39');

INSERT INTO tokens (id, users_id, apiToken, admins_id, owners_id, created_at) VALUES ('1028','172','gX5Bk4HulUSUzKymqCTO8BRPXQBH6LhElkZpGhCg2EDYQAt1jprAuuWcGu3aTXU4uz6oB','','','2022-04-28 14:23:26');

INSERT INTO tokens (id, users_id, apiToken, admins_id, owners_id, created_at) VALUES ('1029','173','XXRt3tpXx5xh9wEZKpT4wBBoWotieSzm0b0YvXbxF7VJ5Q9z86ScL2n3XwlNgXHTUR5LB','','','2022-04-29 03:15:59');

INSERT INTO tokens (id, users_id, apiToken, admins_id, owners_id, created_at) VALUES ('1030','10','1Zm96xyfYP6gQpsfLw0X8K6RPz98HZbuFIoiskGgVfjNeXI2NbhqsVFkquXHAYEJ5zVWR','','','2022-04-30 10:17:37');

INSERT INTO tokens (id, users_id, apiToken, admins_id, owners_id, created_at) VALUES ('1031','10','deuhiHWld7BnezxeWAEOmpSODQJy8loSpgCyFfRDlVC9lz0fqBOtuYBf29QkR5PElrgz9','','','2022-04-30 10:17:37');

INSERT INTO tokens (id, users_id, apiToken, admins_id, owners_id, created_at) VALUES ('1032','153','YFBPUI5oRBtG6mZXpRSyZxS84TTJj3s5HSGHxTIhl4pDt3tZTXar0cSgvqjoCJ8r709Jk','','','2022-05-05 22:42:21');

INSERT INTO tokens (id, users_id, apiToken, admins_id, owners_id, created_at) VALUES ('1033','153','AbHspWPIjCvL9KQBLVRggNnK9oIOIIMdFQjkWLLbZlC1PGPGycVKk1rvnB04uOVegS8yh','','','2022-05-05 22:42:22');

INSERT INTO tokens (id, users_id, apiToken, admins_id, owners_id, created_at) VALUES ('1034','','zgoNVPW8xhp0l2SMG8fpOPTXUSd5zBrApj8wl4e6V94ifPIW0RNjPjGAvozQnuroZwWOb','1','','2022-05-07 19:59:28');

INSERT INTO tokens (id, users_id, apiToken, admins_id, owners_id, created_at) VALUES ('1035','','d5LNRxz7gaK7mZVa7mq9F1Jlqp2mXepg0Hni2GnLPqN0f0tAJBEGmazKo9wM84c7RkVsK','1','','2022-05-08 14:05:38');

INSERT INTO tokens (id, users_id, apiToken, admins_id, owners_id, created_at) VALUES ('1036','','qHQ113ERhoV7DyPzpYZNJbuMMuIwUJC0oFYhGJrl7I32RAFHZHg6cDhWNzBLIloIqWLrY','1','','2022-05-09 22:02:13');

INSERT INTO tokens (id, users_id, apiToken, admins_id, owners_id, created_at) VALUES ('1037','','sWAr6s313KlKb2rlYpXzifk7zYzykkVtVG1KXO1H53RnpdhnMt5batP1wNKOYwWbXkEit','1','','2022-05-09 22:07:47');

INSERT INTO tokens (id, users_id, apiToken, admins_id, owners_id, created_at) VALUES ('1038','','pFefYcLPo8Yx7zRug7XkP12YwuIebVywRNidCcrBJjgsJCqRvv7Kk5h7pD9Qt2unw8Zed','1','','2022-05-09 22:41:28');

INSERT INTO tokens (id, users_id, apiToken, admins_id, owners_id, created_at) VALUES ('1039','153','WkkAfcGwOXJTICiqt0D1IuX547nAGVhGFdOFiamFFaG7vsRyLpEXErLl7dnu1a6TEKFdq','','','2022-05-09 22:44:17');

INSERT INTO tokens (id, users_id, apiToken, admins_id, owners_id, created_at) VALUES ('1040','153','N0wenmbbyyxDNgsL9dFGfRzCyuDFvFjkYLwqdrYv5NOZwr41kxaUw8xnOtFAzNKTSpwbP','','','2022-05-09 22:44:18');

INSERT INTO tokens (id, users_id, apiToken, admins_id, owners_id, created_at) VALUES ('1041','','B3N1IBAnXwQZGzLUEEkeBpqP5f2wjNk7RLNNrHZbcbjN8G4Tb5dhDDvprB4HTmlQolD5G','1','','2022-05-11 14:03:13');

INSERT INTO tokens (id, users_id, apiToken, admins_id, owners_id, created_at) VALUES ('1042','','kwzYpXN3IaVhk0x5CKHTVNZPdevF3JBKuvnZFsUaV1WdTyqG4zFb6kZBdqyEP0UHgbsdm','1','','2022-05-15 17:24:44');

INSERT INTO tokens (id, users_id, apiToken, admins_id, owners_id, created_at) VALUES ('1043','','PKwcYfGLhnyjSbcB6OIYZl1Xox07D8oGRyJkvaoCJwA6bm5pd8GYnto6GlJAgXD1yD1bR','1','','2022-05-16 01:26:45');

INSERT INTO tokens (id, users_id, apiToken, admins_id, owners_id, created_at) VALUES ('1044','','iwp2fRJlSuURUx8FCzg2CkQH6cw9lShNIrPrJt1jobnIJSv6DM67W0DmXdoqrh7YzSVI9','1','','2022-05-16 16:14:53');

INSERT INTO tokens (id, users_id, apiToken, admins_id, owners_id, created_at) VALUES ('1065','','eFtcbUqq3rQg980s7FJIJYjBKHgOmi4yboymJM58PLxVqtGQI9OwYzVNyXhxMBS6KzDfk','1','','2022-05-17 05:20:08');

INSERT INTO tokens (id, users_id, apiToken, admins_id, owners_id, created_at) VALUES ('1103','','ObSJuXl1ssMBfXk8KkT0FRYzGoOLWzfAyfCSDHvHeMFzHthNokWNo96CVijxLuG1SyYUa','1','','2022-05-17 18:47:02');

INSERT INTO tokens (id, users_id, apiToken, admins_id, owners_id, created_at) VALUES ('1121','','t3CPgf85wNvsp092ksJMFQkPLyZYg3AZy92wA80fxoX1jX0oeSTQdwj8gldzv7YLCfZgr','','12','2022-05-18 07:32:59');

INSERT INTO tokens (id, users_id, apiToken, admins_id, owners_id, created_at) VALUES ('1132','','vm8SwlaYwIYdCfDQDHmIsRAgGnRkGXqZHE5WOfZbldYIKgSH0HARmBETEW5h1i7xJfuPS','1','','2022-05-18 14:00:19');


CREATE TABLE `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `fireBaseToken` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `is_verified` tinyint(1) NOT NULL DEFAULT 0,
  `is_active` tinyint(1) NOT NULL DEFAULT 1,
  `image` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `apiToken` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT '',
  `created_at` varchar(40) DEFAULT NULL,
  `lang` enum('ar','en') NOT NULL DEFAULT 'ar',
  `locations_id` int(11) DEFAULT NULL,
  `currencies_id` int(11) DEFAULT NULL,
  `measurement_units_id` int(11) DEFAULT NULL,
  `socialToken` varchar(255) DEFAULT NULL,
  `imageSocial` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `measurement_units_id` (`measurement_units_id`),
  CONSTRAINT `users_ibfk_1` FOREIGN KEY (`measurement_units_id`) REFERENCES `measurement_units` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=175 DEFAULT CHARSET=utf8mb4;


INSERT INTO users (id, fireBaseToken, name, phone, is_verified, is_active, image, email, apiToken, password, created_at, lang, locations_id, currencies_id, measurement_units_id, socialToken, imageSocial) VALUES ('10','fjoZ4VDZST2BkXWAaN3Toy:APA91bFuzooq1xZkbLvCEadA3xVNeAMwNnuDgLdHc2dSbrns3esi9oH9KaeaXEtyTymjncadAfHZZRVSnV-92QCqCRKcgP7uygIoRGJ10dihGtiHWjMIM3zlgcGrT1ywNWXOEt_SKEwz','mostafa','00201114228487','1','1','/uploads/users/eu0zm0caeT5H9sW0.png','demo@magdsoft.com','','$2y$10$dbRob8kWZGkmaeUWulFo5uPUVNnmnIpqrRmu9PeP6GNq60QJywmrC','2021-04-07 22:17:25','ar','','','2','','');

INSERT INTO users (id, fireBaseToken, name, phone, is_verified, is_active, image, email, apiToken, password, created_at, lang, locations_id, currencies_id, measurement_units_id, socialToken, imageSocial) VALUES ('11','NULL','mahmoud','00201128661674','1','1','','','','$2y$10$IPi24RHLFi/bv0jyHZsKAO50SzWpyT5tA6QCn/zFYhyR6Z762IKt2','2021-04-12 20:26:47','ar','','1','1','','');

INSERT INTO users (id, fireBaseToken, name, phone, is_verified, is_active, image, email, apiToken, password, created_at, lang, locations_id, currencies_id, measurement_units_id, socialToken, imageSocial) VALUES ('12','','mohamed','00201111046146','1','1','','','','$2y$10$n3Qnk2j/wTEtItdEVxucPOYG5UkutkzPQTeDsP5uVSnE/Xl3zxGlG','2021-04-12 21:12:36','ar','','','','','');

INSERT INTO users (id, fireBaseToken, name, phone, is_verified, is_active, image, email, apiToken, password, created_at, lang, locations_id, currencies_id, measurement_units_id, socialToken, imageSocial) VALUES ('13','','mohamed1','00201111046145','0','1','','','oYJm5fhkKMnISioNsNjjiAycXcw9TUJ36OkEnq9bCs0T3bRl46X7MiJSSpEJCEr7GEYVS','$2y$10$fgCIlQwqUlGB9JuK2fFRqeEAiQ2z18Rvdo.frNZc3kcbgxTzF2xXG','2021-04-12 21:19:33','ar','','','','','');

INSERT INTO users (id, fireBaseToken, name, phone, is_verified, is_active, image, email, apiToken, password, created_at, lang, locations_id, currencies_id, measurement_units_id, socialToken, imageSocial) VALUES ('15','','mohamed','00201111046142','1','1','','','grPttlBMwdyqrTh2tJMZ03zQRfjKRVLWrp1019dsxOIoDtuBYpo662n8kotaAL0WnwiN1','$2y$10$8T9IHtQ7sdiT9SGmizjhe.ES9pe88BnHVhXKppCSzq1SV8l3nsafO','2021-04-13 19:22:48','ar','','','','','');

INSERT INTO users (id, fireBaseToken, name, phone, is_verified, is_active, image, email, apiToken, password, created_at, lang, locations_id, currencies_id, measurement_units_id, socialToken, imageSocial) VALUES ('16','','mostafa','','1','1','/uploads/users/n6DSVrgKSXc19oEE.png','mostafaramdan55454@gmail.com','1mL3IUBApJZypBXiNER40VCI1rRV2Y7W2X7VSXBElr43Rk0nkubFXjZ7jKRKceG7kLfT1','','2021-04-14 18:28:42','en','','','','','');

INSERT INTO users (id, fireBaseToken, name, phone, is_verified, is_active, image, email, apiToken, password, created_at, lang, locations_id, currencies_id, measurement_units_id, socialToken, imageSocial) VALUES ('18','','Mohamed T. Hammad','','1','1','','mohamedtony349@yahoo.com','','','2021-04-14 18:40:10','en','','4','','','');

INSERT INTO users (id, fireBaseToken, name, phone, is_verified, is_active, image, email, apiToken, password, created_at, lang, locations_id, currencies_id, measurement_units_id, socialToken, imageSocial) VALUES ('19','','Mohamed Tony','','1','1','','mohamedhammad349@gmail.com','','','2021-04-14 18:44:45','en','','','','','');

INSERT INTO users (id, fireBaseToken, name, phone, is_verified, is_active, image, email, apiToken, password, created_at, lang, locations_id, currencies_id, measurement_units_id, socialToken, imageSocial) VALUES ('20','','mahhoud4','00201128661675','1','1','','','','$2y$10$karLENqxpYf28zIic9WLJ.upyJ1G4Ni7ma9nf0ZsgpRfHcDCR2FoK','2021-04-14 21:47:47','ar','','','','','');

INSERT INTO users (id, fireBaseToken, name, phone, is_verified, is_active, image, email, apiToken, password, created_at, lang, locations_id, currencies_id, measurement_units_id, socialToken, imageSocial) VALUES ('25','NULL','mostafa','00201142284871','1','1','/uploads/users/kY5ZGdZDxSs97c9A.png','','DFR1hZA5IvjjiKqR2hlCCso4DjnYyJTzK1i78DU0f1EA5IiCukjklJs9gi2K6SvfJQ7UV','$2y$10$Ja5BxMiBP2Wt3KBV572hLe9lhG70B.w94OrMLBveZR6LRruImvnY2','2021-06-09 20:12:29','ar','','','','','');

INSERT INTO users (id, fireBaseToken, name, phone, is_verified, is_active, image, email, apiToken, password, created_at, lang, locations_id, currencies_id, measurement_units_id, socialToken, imageSocial) VALUES ('29','NULL','mostafa','002011402284871','1','1','/uploads/users/T59GJAcIk21JAAxI.png','','kBECxtWCiwiNfxvXDp6EpKGJmIs12d60zjvJcYzcSO7y6bV2ZhBIICT7zxRTX32ciLfe8','$2y$10$MN7L6PR3RePFQy5nNbrVTOKzjV1klSVYjL4VnKqxt6QlPoVg19Ag.','2021-06-14 23:50:56','ar','','','','','');

INSERT INTO users (id, fireBaseToken, name, phone, is_verified, is_active, image, email, apiToken, password, created_at, lang, locations_id, currencies_id, measurement_units_id, socialToken, imageSocial) VALUES ('32','','أبوبكر','00966554702932','0','1','','','YKjIvYoIKDnAi2vmf7jpa4ABUO7NpvGaeg6thoTo5EWRoevfJSbvkoRM2Gtye8jJyQBlC','$2y$10$hG0IgMtkDqKGMAhJfGgTCegLfYK0tbm99g6ihcj8vmNqDULUIZ3.6','2021-06-16 10:28:02','ar','','','','','');

INSERT INTO users (id, fireBaseToken, name, phone, is_verified, is_active, image, email, apiToken, password, created_at, lang, locations_id, currencies_id, measurement_units_id, socialToken, imageSocial) VALUES ('33','','محمد عمر','00966563063435','0','1','','','tpG21mbAl9jEnJne9ecekibM8tQUzyfFZh0xy95RIvtqVgFWIGogIoAzl92Yk2qZ91dKg','$2y$10$5WfaAoTbCF4ERtvvmG31PekhO5SDZ.aSrN82BjmB9IImbY6mckYXS','2021-06-18 21:05:57','ar','','','','','');

INSERT INTO users (id, fireBaseToken, name, phone, is_verified, is_active, image, email, apiToken, password, created_at, lang, locations_id, currencies_id, measurement_units_id, socialToken, imageSocial) VALUES ('34','','محمد عمر','00966568852696','0','1','','','9tcHaODRUNAv1cmemN46DhhmV82TkazECVuiL6ZUeI4InNse3WfbF98d0oVBlyqI2Qz6R','$2y$10$92thSEed4kK4HT8SU9WJK.OHHRl59jSm9uNfFIBEPehVKztFDFYY6','2021-06-18 21:11:21','ar','','','','','');

INSERT INTO users (id, fireBaseToken, name, phone, is_verified, is_active, image, email, apiToken, password, created_at, lang, locations_id, currencies_id, measurement_units_id, socialToken, imageSocial) VALUES ('35','','محمد علي','00966598856252','0','1','','','3tUhVA2TcxGhNzW9n9FNrrBt4IynitZl49J8mAGXYKC2tmascCl7qCjPw5RHiiPihE0wb','$2y$10$1LAUsURvYSkBNpxdNXgu/ue6An88ZBvVEhNf/hxKWLqiU0MYx8i16','2021-06-18 21:16:27','ar','','','','','');

INSERT INTO users (id, fireBaseToken, name, phone, is_verified, is_active, image, email, apiToken, password, created_at, lang, locations_id, currencies_id, measurement_units_id, socialToken, imageSocial) VALUES ('36','','محمد سيد حاج','','1','1','','mohamedsayedhaj38@gmail.com','4lFHmvAdYcLudz8Ob0DpxgPOHYaRQxx3741cEPSL5TyFhyNzcnggg5d8CSWoH5Inwo5gy','','2021-06-18 22:18:24','en','','','','','');

INSERT INTO users (id, fireBaseToken, name, phone, is_verified, is_active, image, email, apiToken, password, created_at, lang, locations_id, currencies_id, measurement_units_id, socialToken, imageSocial) VALUES ('38','','mostafa','00201114228478','0','1','','mostafaramdan553@gmail.com','1WuwrPMHZyldhOJcvXoHPeURvvQG894au0l5tHlP2TyPrvlwaBCR3voXy31XuaN00NTcq','$2y$10$Sehji17YYNcaCch6XSXNQetFBTLeHh72ssIKBgr3jthJYVfJTnejC','2021-06-20 18:17:02','ar','','','','','');

INSERT INTO users (id, fireBaseToken, name, phone, is_verified, is_active, image, email, apiToken, password, created_at, lang, locations_id, currencies_id, measurement_units_id, socialToken, imageSocial) VALUES ('53','','mostafa','','1','1','','mostafaramdanp55t@gmail.com','s0uhBShnjDk8cKYT1QpizCdJSu2VcEkWg29qvPudsx5SwZjqe7k50ArO1iJ5mthTYEW8N','','2021-06-27 19:17:54','en','','','','','');

INSERT INTO users (id, fireBaseToken, name, phone, is_verified, is_active, image, email, apiToken, password, created_at, lang, locations_id, currencies_id, measurement_units_id, socialToken, imageSocial) VALUES ('54','','mostafa','','1','1','','mostafaramdanp5t@gmail.com','UVbXfQ7tc8lLVYbvrI2NuwNDbgNGcULGdyLAbJVbWiS0x7ML8ebZSMceZp9kHthI7iRU0','','2021-06-27 19:20:25','en','','','','','');

INSERT INTO users (id, fireBaseToken, name, phone, is_verified, is_active, image, email, apiToken, password, created_at, lang, locations_id, currencies_id, measurement_units_id, socialToken, imageSocial) VALUES ('55','','mostafa','','1','1','/uploads/users/7DlD0z5nvfVXtxQ5.png','mostafaramdan554054@gmail.com','3dYDkUYlvqwfk4zHqNrTzXNb6ZmYzSDmEdrfL1LfrlnWxA9XaSuGB6JzqxodLHBOQbzw8','','2021-06-27 19:34:52','en','','','','','');

INSERT INTO users (id, fireBaseToken, name, phone, is_verified, is_active, image, email, apiToken, password, created_at, lang, locations_id, currencies_id, measurement_units_id, socialToken, imageSocial) VALUES ('56','','mostafa','','1','1','/uploads/users/hDlWmIKmWtw807KM.png','mostafaramdan5540540@gmail.com','kuLFPlmWNwxeqBvK1Nlln44Ks4vEidr4QPDvHuiNPcer9GpAXxqnKQqEXttyrobW7UPL9','','2021-06-27 19:35:21','en','','','','','');

INSERT INTO users (id, fireBaseToken, name, phone, is_verified, is_active, image, email, apiToken, password, created_at, lang, locations_id, currencies_id, measurement_units_id, socialToken, imageSocial) VALUES ('57','','mostafa','','1','1','','mostafaramdanp5@gmail.com','mhEOJjwgNf2ZdKfFUBjd960jgAjZVYmzHJEevN8CD1BBYGmY3TlimgvxhM7kc8jSPOY1w','','2021-06-27 19:36:49','en','','','','','');

INSERT INTO users (id, fireBaseToken, name, phone, is_verified, is_active, image, email, apiToken, password, created_at, lang, locations_id, currencies_id, measurement_units_id, socialToken, imageSocial) VALUES ('60','','مصطفي','00201114228484','1','1','','','H0FeRWOW7dVEsNV1RrhxmwngsDg6B1Gre8t60NRORfVoyjU2yxtIIac6Qjxol6PtBFXZx','','2021-07-06 20:03:57','en','','','','','');

INSERT INTO users (id, fireBaseToken, name, phone, is_verified, is_active, image, email, apiToken, password, created_at, lang, locations_id, currencies_id, measurement_units_id, socialToken, imageSocial) VALUES ('65','NULL','mostafa rammdan','201114228487','1','1','/uploads/users/NN95Nd2sjlEqcTWz.png','mostafaramdan5544@gmail.com','RwJSD4eI9nK4dwac8l8vViwYOOsaCivRBHUOPEttzmSVRO6kaGyDSXtzWwdZy3VyUO8EA','$2y$10$fM65u8By0CFohBy2SHqFxOZ8bKiY7PTn.ZOsPaw6Ap2lyKipN6SgK','2021-07-18 19:41:09','en','','','','','');

INSERT INTO users (id, fireBaseToken, name, phone, is_verified, is_active, image, email, apiToken, password, created_at, lang, locations_id, currencies_id, measurement_units_id, socialToken, imageSocial) VALUES ('70','','اسماعيل عثمان','00966593006736','0','1','','','rrX4CFYMG5icrlrt4GLXpevWSXTebGfiqcWgrpHu604b4uklDlOhW0M1MKBKEnab9UGFL','$2y$10$pfUdke4YQjUR3dlyfJSW6ulhQyXGEv1nCU24IAfMJQ/kugVuEpsAi','2021-07-27 10:41:40','ar','','','','','');

INSERT INTO users (id, fireBaseToken, name, phone, is_verified, is_active, image, email, apiToken, password, created_at, lang, locations_id, currencies_id, measurement_units_id, socialToken, imageSocial) VALUES ('71','','اسماعيل عثمان','00966545694765','1','1','','','','$2y$10$JVuAxk/7R653wcZ2yCnaS.neABM.tmiPxpP.cdCGUHbythzddiwoi','2021-07-27 10:58:12','ar','','','','','');

INSERT INTO users (id, fireBaseToken, name, phone, is_verified, is_active, image, email, apiToken, password, created_at, lang, locations_id, currencies_id, measurement_units_id, socialToken, imageSocial) VALUES ('72','','٧٦٥٤٣٣٥٦٧ ٨٧٦٤٥','00249116738560','0','1','','','fqZPkMHE9oBuwXuFTLVRu1ke61EmGk9HTXmRPL5nEXT0eD82fttzmqZZmyUoN9cE9VbVW','$2y$10$d3voNiRjxlVDM3uLzNFld.sTSjotLQH0xloDmz11nePeu/8xLu8XC','2021-07-27 11:09:10','ar','','','','','');

INSERT INTO users (id, fireBaseToken, name, phone, is_verified, is_active, image, email, apiToken, password, created_at, lang, locations_id, currencies_id, measurement_units_id, socialToken, imageSocial) VALUES ('73','','محمد ‏kind','00966535292952','1','1','','','','$2y$10$PrE5LtnXVjBcA43dz.g5lOxczW.CXn1owd72Nw2pUhZwpHy5CcDUm','2021-07-30 11:52:25','ar','','','','','');

INSERT INTO users (id, fireBaseToken, name, phone, is_verified, is_active, image, email, apiToken, password, created_at, lang, locations_id, currencies_id, measurement_units_id, socialToken, imageSocial) VALUES ('75','','على عمر','00966563583511','0','1','','','ji31NUQPkkMI5xRFsJODcOQEPby0Bi3iN0awP9ttjW05MyubLvHJi0uM6Bkwm40aqA3LV','$2y$10$m4HzVeu8J3UGQaI7ijvjF.fQCPMgOTLsewUpypuNURzqZlzh.Fy7.','2021-07-30 12:05:24','ar','','','','','');

INSERT INTO users (id, fireBaseToken, name, phone, is_verified, is_active, image, email, apiToken, password, created_at, lang, locations_id, currencies_id, measurement_units_id, socialToken, imageSocial) VALUES ('77','','محمد الحسني','00249912204116','0','1','','','gpzCjXRJw5cjaKBQnY8oVtFxFV9JeOCxkT00TTdZiS2ofRBZnKB3Qzj78equRTiJ4jHI6','$2y$10$48S2yT.bhPl5EXHk9lIqguYh3vU4TLZgJ8mFXFMt.n25.1R.T0dr2','2021-07-31 16:21:20','ar','','','','','');

INSERT INTO users (id, fireBaseToken, name, phone, is_verified, is_active, image, email, apiToken, password, created_at, lang, locations_id, currencies_id, measurement_units_id, socialToken, imageSocial) VALUES ('78','','mohamed','00201111047147','1','1','','','avSY26YT48129UHb6c8DOebUMoB1NRokpO8clkmvG9O2R8p2Djoh28ysWt3r5nR0bik9K','$2y$10$623K4ayfgAyvEIaAY/e20u8q8Tj3mupSIvQDBMNxDSan9prFUdcJu','2021-08-04 16:27:01','ar','','4','','','');

INSERT INTO users (id, fireBaseToken, name, phone, is_verified, is_active, image, email, apiToken, password, created_at, lang, locations_id, currencies_id, measurement_units_id, socialToken, imageSocial) VALUES ('80','','name ‎ahmed','00966558647783','1','1','','','reSu68PmdPZ8E5jO7fNlQIlFA7pJpfow3ACMmmjC1l8IpQ3TGHya1Nbr1QMChg7QYN9v1','$2y$10$/6TAX//5LkFrDawjXemYJuVVrAUza81QXnzBINNMiAOFlyLs.Vo5C','2021-08-10 15:07:14','ar','','2','1','','');

INSERT INTO users (id, fireBaseToken, name, phone, is_verified, is_active, image, email, apiToken, password, created_at, lang, locations_id, currencies_id, measurement_units_id, socialToken, imageSocial) VALUES ('84','','طلال محمد','00966553055766','1','1','','','MRG8IlMOFsxpiRDCz9nYZxBleusqDb37AKkAFnVgAZY3lMv2fEZAGBj9qdYDZfk2XjQry','$2y$10$N0MdlquRaovQ5IM/HuE9PeE5qoejblTbPV7q6PeW54KUJXsjBRuSG','2021-08-12 18:25:36','ar','','','','','');

INSERT INTO users (id, fireBaseToken, name, phone, is_verified, is_active, image, email, apiToken, password, created_at, lang, locations_id, currencies_id, measurement_units_id, socialToken, imageSocial) VALUES ('94','','Almalath Doors','','1','1','','almalath.doors@gmail.com','CHZrNaQ0TTs4hxH5W8lclveXg2JnjAKKgU2zsHPSWXWPjU5mCo8MHPROhu7ybqkWI6NP7','','2021-09-23 10:49:04','en','','1','','','');

INSERT INTO users (id, fireBaseToken, name, phone, is_verified, is_active, image, email, apiToken, password, created_at, lang, locations_id, currencies_id, measurement_units_id, socialToken, imageSocial) VALUES ('99','','محمود احمد','00201128661636','0','1','','','ermRUmrvwt14UWUks7YaXct9CURdAXOlXKSjE51JO47ZA0YkxvGEmXTsUMryRBNEHdnDH','$2y$10$ln2WSuWNMPx/NOxFQQl8rusp3Hgcfd44S7NmXPg.Z4XDdFEzeRiw.','2021-10-03 20:38:48','ar','','','','','');

INSERT INTO users (id, fireBaseToken, name, phone, is_verified, is_active, image, email, apiToken, password, created_at, lang, locations_id, currencies_id, measurement_units_id, socialToken, imageSocial) VALUES ('100','','محمود أحمد محمد','00201128661679','1','1','','','5YffGP463hRLVoKXlZuLHI3y5lPkDMo5vuO6zQCZJf0IuOygKSkMqflCInyFnW9IG6pxZ','$2y$10$yqV8aMnis/TShPzSNiiDLukaGx29a9vwT2R7nHEg31KVBF7EqlVdy','2021-10-04 11:22:32','ar','','','','','');

INSERT INTO users (id, fireBaseToken, name, phone, is_verified, is_active, image, email, apiToken, password, created_at, lang, locations_id, currencies_id, measurement_units_id, socialToken, imageSocial) VALUES ('101','','ابوذر عمر','00966530590917','0','1','','','MCK8uwVkQbwsaxyl6txjiGm84B3hH0lSTyHGOehaGQ4TgMCFYCJ0IhjoKawU4EYLCaera','$2y$10$S/HAE/qPiSKhSo0bLFPTxeduubSf5vArhUc3iprdEdbPy/we/0n0W','2021-10-04 11:42:37','ar','','','','','');

INSERT INTO users (id, fireBaseToken, name, phone, is_verified, is_active, image, email, apiToken, password, created_at, lang, locations_id, currencies_id, measurement_units_id, socialToken, imageSocial) VALUES ('107','','محمود احمد','00201128661638','0','1','','','r57lCRRI2fmnrKTVQikbFB14IxHYX9dyMT1n8vB7Qq2nqIeeUyQjhyEy3tc38Hc5Frd5h','$2y$10$oWoMmtWZwHyUCPqSYPBlfOSH5HhUIlfotEdwLWj3MpSkTJ2DwwodS','2021-10-20 23:39:19','ar','','','','','');

INSERT INTO users (id, fireBaseToken, name, phone, is_verified, is_active, image, email, apiToken, password, created_at, lang, locations_id, currencies_id, measurement_units_id, socialToken, imageSocial) VALUES ('117','','Mahmoud Abd El-wahab','','1','1','','mahmoud44441455@yahoo.com','sEGgtTKzqmiRUE8vLxWF9eyadqhRIT5O6VWpOmlQPuyPaYbMu2F9xfb6hRkp8eitjlH4O','','2021-10-23 14:32:40','en','','','','','');

INSERT INTO users (id, fireBaseToken, name, phone, is_verified, is_active, image, email, apiToken, password, created_at, lang, locations_id, currencies_id, measurement_units_id, socialToken, imageSocial) VALUES ('124','','AsemAmmar','00201117716297','0','1','','asemammar99@gmail.com','nM2bTqC0MZKJwekQMNiZWcG3mKJbHLyIdNACZU4ol1TurCiGIDquYDJPdjOJO3vGF8Cp7','$2y$10$4Be4fexPW8uZFhqhaEpfbuaCitnZvBhb/Ogr61SkJi8Yw15o0Imm6','2021-12-25 10:43:47','ar','','','','','');

INSERT INTO users (id, fireBaseToken, name, phone, is_verified, is_active, image, email, apiToken, password, created_at, lang, locations_id, currencies_id, measurement_units_id, socialToken, imageSocial) VALUES ('125','','Ali ‎El-Hadidy','00201063639629','1','1','','alielhadidy99@gmail.com','wTuhVda821mZss9YNpRGeHPZ510E5iEpqbJJoupy4RDzAIjg8Ayf19hpCoULUjDpMsrlK','$2y$10$.nXVz75CZynlbQTyjBFXU.fX/fyWhMwLD9QpQ/UmtYRIlulwVb4DG','2022-01-07 20:34:56','ar','','2','','','');

INSERT INTO users (id, fireBaseToken, name, phone, is_verified, is_active, image, email, apiToken, password, created_at, lang, locations_id, currencies_id, measurement_units_id, socialToken, imageSocial) VALUES ('126','','Ashley Ray','','1','1','','ashleyray.61663@gmail.com','fuD9V0dmv4wWQuOeYyuYEruje7FIG34haSjbV119Ce92UhOxGmd1yvCGXSpueJ1Rf2TZJ','','2022-01-12 17:34:48','en','','8','','','');

INSERT INTO users (id, fireBaseToken, name, phone, is_verified, is_active, image, email, apiToken, password, created_at, lang, locations_id, currencies_id, measurement_units_id, socialToken, imageSocial) VALUES ('127','','Yvonne Brewer','','1','1','','yvonnebrewer.15836@gmail.com','8nJCKlRoYjqH8tUNbq6mkuTLwHfkb4miUiX46XNl1d5L7ZiJ4zMzUP7eBxbNgWO5y7uto','','2022-01-12 17:51:30','en','','','','','');

INSERT INTO users (id, fireBaseToken, name, phone, is_verified, is_active, image, email, apiToken, password, created_at, lang, locations_id, currencies_id, measurement_units_id, socialToken, imageSocial) VALUES ('128','','Darrel Berry','','1','1','','darrelberry.75284@gmail.com','yFAn2GDuoVhSrPLHYku94Ks3yHNKFqeEbs3CYEvZOhXzFqsmAWaxXVBsDvd2Xa13wWbiB','','2022-01-12 18:07:23','en','','','','','');

INSERT INTO users (id, fireBaseToken, name, phone, is_verified, is_active, image, email, apiToken, password, created_at, lang, locations_id, currencies_id, measurement_units_id, socialToken, imageSocial) VALUES ('136','','البراء أبو عائشة','0097466069662','1','1','','','kJkBKRXWXfowOThh7sxNNfOazsTsQh52Al7U7IHVRpNfi465ux7z5Rh0rEYkn8mkmHGLC','$2y$10$WZBkFw0wAcnVgxH50xZCDerB.UXTFzqaKKq549MoXDeTSNmWHwOfm','2022-02-08 20:06:00','ar','','','','','');

INSERT INTO users (id, fireBaseToken, name, phone, is_verified, is_active, image, email, apiToken, password, created_at, lang, locations_id, currencies_id, measurement_units_id, socialToken, imageSocial) VALUES ('137','','ابن خلدون','00971525082429','0','1','','','02GiRVLXj1HrIEtRt5pG49W5uxk6xyDqkQ14sJuxha4Krns9Pt02ZbjSaaFvQmWOuYQpd','$2y$10$kt8cVp0Ph8AHD1iKAqF8i.7OOVdL3rqzHNjt18EIv89tEWLcx120G','2022-02-08 23:11:32','ar','','','','','');

INSERT INTO users (id, fireBaseToken, name, phone, is_verified, is_active, image, email, apiToken, password, created_at, lang, locations_id, currencies_id, measurement_units_id, socialToken, imageSocial) VALUES ('138','','تهجد عباس','00966550656129','0','1','','','N9Sygn4E83YjuXLJv0QOlP8t8abmlGeQuzFqrhSnKF56YtnWNs0MEIxGucdm2HcMhA6Ur','$2y$10$EsLMqJ8vkNSWfrNF5v8nA.tbdXFsbngA2YgLaMQrfWUXR2cwiQsaK','2022-02-08 23:20:16','ar','','','','','');

INSERT INTO users (id, fireBaseToken, name, phone, is_verified, is_active, image, email, apiToken, password, created_at, lang, locations_id, currencies_id, measurement_units_id, socialToken, imageSocial) VALUES ('141','','محمد جوهر','0014243969666','0','1','','','fZlh8F4pa7MNfFR4rNwgI6IlcboFrp3Ypw2g9jMhcNe306N2Oa0hfBTLJzXR7Wl6AQ6Ac','$2y$10$IyKB4FA9SfI1wzLo6KrQY.nKavdUH5gTDP987wg.L/2q9MCrMTe.K','2022-02-10 08:10:59','ar','','','','','');

INSERT INTO users (id, fireBaseToken, name, phone, is_verified, is_active, image, email, apiToken, password, created_at, lang, locations_id, currencies_id, measurement_units_id, socialToken, imageSocial) VALUES ('142','','محمد جوهر','0014243945181','0','1','','','cc4S6kuAMdPzmvWgrL0OayG4dUdj81JCbLv41GmtjaxmwVTXU1hTkI4Vn3L8GA94Fdp7d','$2y$10$wSwejxUdxl6m7wg1.XlC0.l9rSfbE.rfqDzy1aG7sy.V8kbVYZgy6','2022-02-10 08:14:42','ar','','','','','');

INSERT INTO users (id, fireBaseToken, name, phone, is_verified, is_active, image, email, apiToken, password, created_at, lang, locations_id, currencies_id, measurement_units_id, socialToken, imageSocial) VALUES ('143','','محمد جوهر','00966537200075','0','1','','','WdhfCFs5TvcVMAns45bwNQOn5QcX3rEGYb2MFdrQW97cxWOZqSfArWCKPDEc8wAkQXSUS','$2y$10$LBCSP7XdGeGKm5JsOh5HEOgRtG2aVviHRC6EIyDDw2LkpCWhAuDD.','2022-02-10 08:17:41','ar','','','','','');

INSERT INTO users (id, fireBaseToken, name, phone, is_verified, is_active, image, email, apiToken, password, created_at, lang, locations_id, currencies_id, measurement_units_id, socialToken, imageSocial) VALUES ('151','','Ahmed Abbas','00249912154608','0','1','','Abuwagas2@gmail.com','uZiM9Hi1QcXC4wJPSfvHOE37EnbljTeZFx0BrRPsziaUetMqQMKHrARt3cZ8oJcAAiHcC','$2y$10$bjvjhfFUQeyGEPqytjHn8O58Kp3i9Jj/CapTdjV4Qrr.q.mXQKUb2','2022-03-15 17:16:32','ar','','','','','');

INSERT INTO users (id, fireBaseToken, name, phone, is_verified, is_active, image, email, apiToken, password, created_at, lang, locations_id, currencies_id, measurement_units_id, socialToken, imageSocial) VALUES ('153','cqllhOz-T5Cjcv_I3u0abo:APA91bFrpF2WCGSWs0sWXLzEq62qBvgVB5Id3SwDASTszRLpuCcbsUrXE-toD725PmWLJytb0FJ2K23QU6EIzCF28xRwtxUvTwvkg5PBJdNUiHdiUbdNzjynMgCIfOfH-Mo_xRBbM3rm','اسماعيل حمد','00249116197350','1','1','','abubakar177@gmail.com','','$2y$10$Tvz0dI25ng9D2UM0Zwc0F.9.I/LL8VrvgQofZHm7jQTjseKkC02ee','2022-03-16 05:10:36','ar','','6','','','');

INSERT INTO users (id, fireBaseToken, name, phone, is_verified, is_active, image, email, apiToken, password, created_at, lang, locations_id, currencies_id, measurement_units_id, socialToken, imageSocial) VALUES ('154','','Ahmed Shawky','00201154338430','1','1','','','','$2y$10$ZgxiLZktEOBA4xC1to7VQeryAsXxOI6BXyug25vRnpq.BgE.JYEJy','2022-03-16 20:05:35','ar','','','','','');

INSERT INTO users (id, fireBaseToken, name, phone, is_verified, is_active, image, email, apiToken, password, created_at, lang, locations_id, currencies_id, measurement_units_id, socialToken, imageSocial) VALUES ('156','','a7medlord','00249995387674','1','1','','','6pU8bGSicRYexeN0qcRo9fq4oeZwveIirc0MTB887dDmvcZJic3TUDfv5w6ELEWV2d1ai','$2y$10$8YFZbmzGVqmw7DtkL4hOru5d.pQgXj1m1E4k4wKTlTGU86YDvdE/u','2022-03-18 20:41:49','ar','','9','','','');

INSERT INTO users (id, fireBaseToken, name, phone, is_verified, is_active, image, email, apiToken, password, created_at, lang, locations_id, currencies_id, measurement_units_id, socialToken, imageSocial) VALUES ('159','','Hazel Blake','','1','1','','hazelblake.69779@gmail.com','T4ASxFtQZPEg0A2euueUOETlRebEFYNafAx3KycA9ktB3C7Onmte1jCtZd4uCMYsP9FZ5','','2022-03-22 16:08:37','en','','','','','');

INSERT INTO users (id, fireBaseToken, name, phone, is_verified, is_active, image, email, apiToken, password, created_at, lang, locations_id, currencies_id, measurement_units_id, socialToken, imageSocial) VALUES ('160','','عبد العزيز محمد','','1','1','','abas711@yahoo.co.uk','8GbvddweBnUwIOmUiuuEGsdu4cGUA1lX7d40DJIfzyeOro9v808VVN69KgnjBkKsF4DIR','','2022-04-02 21:09:42','en','','','','','');

INSERT INTO users (id, fireBaseToken, name, phone, is_verified, is_active, image, email, apiToken, password, created_at, lang, locations_id, currencies_id, measurement_units_id, socialToken, imageSocial) VALUES ('164','','mostafa','00201114228487','1','1','/uploads/users/By5pELOJqfs3eNWw.png','mostafaramdan5544@gmail.com','','$2y$10$hKbTRTvObe4DjGz3Zk5HPOp5W9edreqsfJlBBJPj1Rpe8U1xyEcwO','2022-04-06 04:04:53','ar','','','','','');

INSERT INTO users (id, fireBaseToken, name, phone, is_verified, is_active, image, email, apiToken, password, created_at, lang, locations_id, currencies_id, measurement_units_id, socialToken, imageSocial) VALUES ('165','','أحمد عثمان','00966557782092','1','1','','bakry177@yahoo.com','','$2y$10$2SFtFNuk0hPRfsV.mXGlguHs1C2d6it7Zx3gIYv1soHr1su94X1cC','2022-04-06 06:09:22','ar','','','','','');

INSERT INTO users (id, fireBaseToken, name, phone, is_verified, is_active, image, email, apiToken, password, created_at, lang, locations_id, currencies_id, measurement_units_id, socialToken, imageSocial) VALUES ('166','','Mellisa Starr','','1','1','','mellisastarr.90108@gmail.com','IPUKYpHYOzXW8foQmMhgANnUmKJm8PvkWi7Mqlz7q9tMwafaOwOZSRsvajA5OgZQXYwkC','','2022-04-13 00:06:01','en','','','','','');

INSERT INTO users (id, fireBaseToken, name, phone, is_verified, is_active, image, email, apiToken, password, created_at, lang, locations_id, currencies_id, measurement_units_id, socialToken, imageSocial) VALUES ('167','','Ahmed abbas','00249123262738','1','1','','','sjy0RJzYBT3fvDr2VXQ4xZMtrGKFR9QfCqU0hAEzHcIeb5x9OJKNvBaqmC29b4htwByNr','$2y$10$yqjysPrGayL/xVGfjLcJkO7hMfU5PtAkyva9vh06Cgi/a64kMh3g2','2022-04-13 10:32:17','ar','','','','','');

INSERT INTO users (id, fireBaseToken, name, phone, is_verified, is_active, image, email, apiToken, password, created_at, lang, locations_id, currencies_id, measurement_units_id, socialToken, imageSocial) VALUES ('168','','Julius Owens','','1','1','','juliusowens.81275@gmail.com','cu95vl6xh8aUDT7qAhjDYNYz2LccoDtDQB3M13nP9q81okdUgjRwYb8GVIzycYLKXCqOU','','2022-04-21 00:29:53','en','','','','','');

INSERT INTO users (id, fireBaseToken, name, phone, is_verified, is_active, image, email, apiToken, password, created_at, lang, locations_id, currencies_id, measurement_units_id, socialToken, imageSocial) VALUES ('169','','Stephania Reedy','','1','1','','stephaniareedy.64093@gmail.com','3zTPPuU0SIcQsApsOP3O9b5WVFuIND1LfRYuH4iM2jVinCK5KSR0craOq7lVIZIbBmJC4','','2022-04-21 00:45:33','en','','','4','','');

INSERT INTO users (id, fireBaseToken, name, phone, is_verified, is_active, image, email, apiToken, password, created_at, lang, locations_id, currencies_id, measurement_units_id, socialToken, imageSocial) VALUES ('171','','Hend Mostafa Nwier','','1','1','','hend.mnwier@gmail.com','8lwMrGhAMtd5MJ7mpCkMY5sep7AvY8fjElVwbTVQfHUODQrSZYeFN5VHMMU9uuppqtCxz','','2022-04-23 21:32:25','en','','','','','');

INSERT INTO users (id, fireBaseToken, name, phone, is_verified, is_active, image, email, apiToken, password, created_at, lang, locations_id, currencies_id, measurement_units_id, socialToken, imageSocial) VALUES ('172','','Billi Conaway','','1','1','','billiconaway.95875@gmail.com','CzmbRb41SyWm6oM1kUcahRT15OQWhhiTcMNy4LF4K9N3NdBwmipu5wxTX4OxGj0iBIvRl','','2022-04-28 14:23:26','en','','','','','');

INSERT INTO users (id, fireBaseToken, name, phone, is_verified, is_active, image, email, apiToken, password, created_at, lang, locations_id, currencies_id, measurement_units_id, socialToken, imageSocial) VALUES ('173','','David Slattery','','1','1','','davidslattery.36349@gmail.com','PvRjdq2N6K31sxrzpbyEqp17I8aIE42X2irbEwcA5OjW4a8u3FJ9mICS6DBtNVdlx57b4','','2022-04-29 03:15:59','en','','','','','');

INSERT INTO users (id, fireBaseToken, name, phone, is_verified, is_active, image, email, apiToken, password, created_at, lang, locations_id, currencies_id, measurement_units_id, socialToken, imageSocial) VALUES ('174','','mostafaramdan@gmail.com','01114228487','0','1','','mostafaramdan@gmail.com','','$2y$10$Bg0H2rH7z.zNDP9GNN0RfubGeLY2wu0lTMiRcdfz6mkZIwhMCL5g6','2022-05-15 18:30:30','ar','','','','','');


CREATE TABLE `vouchers` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `discount` float NOT NULL,
  `code` varchar(255) NOT NULL,
  `start_at` varchar(30) NOT NULL,
  `end_at` varchar(30) NOT NULL,
  `max_dudction` int(11) NOT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT 1,
  `regions_ids` text DEFAULT NULL,
  `estates_ids` text DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=43 DEFAULT CHARSET=utf8mb4;


INSERT INTO vouchers (id, discount, code, start_at, end_at, max_dudction, is_active, regions_ids, estates_ids) VALUES ('1','10','ca13qe','2020/6/30','2021/6/30','40','1','','[]');

INSERT INTO vouchers (id, discount, code, start_at, end_at, max_dudction, is_active, regions_ids, estates_ids) VALUES ('2','2','oIin36Ul','2021-01-01','2021-01-01','1','1','0','[]');

INSERT INTO vouchers (id, discount, code, start_at, end_at, max_dudction, is_active, regions_ids, estates_ids) VALUES ('3','1','ceZTeo0h','2021-04-24','2021-05-08','1','1','0','[]');

INSERT INTO vouchers (id, discount, code, start_at, end_at, max_dudction, is_active, regions_ids, estates_ids) VALUES ('4','1','ceZTeo0h','2021-04-24','2021-05-08','1','1','0','[]');

INSERT INTO vouchers (id, discount, code, start_at, end_at, max_dudction, is_active, regions_ids, estates_ids) VALUES ('5','1','ceZTeo0h','2021-04-24','2021-05-08','1','1','0','[]');

INSERT INTO vouchers (id, discount, code, start_at, end_at, max_dudction, is_active, regions_ids, estates_ids) VALUES ('6','1','1e5hzrVt','2021-04-24','2021-05-08','10','1','0','[]');

INSERT INTO vouchers (id, discount, code, start_at, end_at, max_dudction, is_active, regions_ids, estates_ids) VALUES ('7','5','Holiday','2021-01-01','2021-01-01','1','1','0','[]');

INSERT INTO vouchers (id, discount, code, start_at, end_at, max_dudction, is_active, regions_ids, estates_ids) VALUES ('8','2','wLFsAnMP','2021-01-01','2021-01-01','1','1','0','[]');

INSERT INTO vouchers (id, discount, code, start_at, end_at, max_dudction, is_active, regions_ids, estates_ids) VALUES ('10','1','DgjYBWRi','2021-06-04','2021-06-04','1','1','','');

INSERT INTO vouchers (id, discount, code, start_at, end_at, max_dudction, is_active, regions_ids, estates_ids) VALUES ('19','1','uNvcW1jh','2021-06-02','2021-06-27','1','1','[18,16,17]','[1,2,3]');

INSERT INTO vouchers (id, discount, code, start_at, end_at, max_dudction, is_active, regions_ids, estates_ids) VALUES ('20','1','AanzOYEz','2021-06-02','2021-06-27','1','1','[17]','[2,1]');

INSERT INTO vouchers (id, discount, code, start_at, end_at, max_dudction, is_active, regions_ids, estates_ids) VALUES ('21','1','mdo3jt4o','2021-06-02','2021-06-27','1','1','[]','[]');

INSERT INTO vouchers (id, discount, code, start_at, end_at, max_dudction, is_active, regions_ids, estates_ids) VALUES ('22','1','ScsjSGMB','2021-06-02','2021-06-27','1','1','"[17,16,18]"','"[1,3,2]"');

INSERT INTO vouchers (id, discount, code, start_at, end_at, max_dudction, is_active, regions_ids, estates_ids) VALUES ('23','1','Yivim5Y1','2021-06-02','2021-06-27','1','1','[16,17,19,20,18]','[10,2,1,3]');

INSERT INTO vouchers (id, discount, code, start_at, end_at, max_dudction, is_active, regions_ids, estates_ids) VALUES ('24','1','SqVukbHs','2021-06-02','2021-06-27','1','1','[16,18,19,20]','[10,2,1,3]');

INSERT INTO vouchers (id, discount, code, start_at, end_at, max_dudction, is_active, regions_ids, estates_ids) VALUES ('25','1','ljzQymbS','2021-06-02','2021-06-27','1','1','[]','[]');

INSERT INTO vouchers (id, discount, code, start_at, end_at, max_dudction, is_active, regions_ids, estates_ids) VALUES ('26','1','GO3vA7F0','2021-06-02','2021-06-27','1','1','"[17,16]"','"[]"');

INSERT INTO vouchers (id, discount, code, start_at, end_at, max_dudction, is_active, regions_ids, estates_ids) VALUES ('27','1','kBM8U7LS','2021-06-02','2021-06-27','1','1','[17,19]','[12,11,3,2]');

INSERT INTO vouchers (id, discount, code, start_at, end_at, max_dudction, is_active, regions_ids, estates_ids) VALUES ('28','1','zvzlFQhC','2021-06-02','2021-06-27','1','1','[17]','[11,10,2]');

INSERT INTO vouchers (id, discount, code, start_at, end_at, max_dudction, is_active, regions_ids, estates_ids) VALUES ('29','1','DYARfvtM','2021-06-10','2021-07-10','1','1','[16,17,18]','[2,1]');

INSERT INTO vouchers (id, discount, code, start_at, end_at, max_dudction, is_active, regions_ids, estates_ids) VALUES ('30','1','BYgRWKI3','2021-06-11','2021-06-25','1','1','[]','[]');

INSERT INTO vouchers (id, discount, code, start_at, end_at, max_dudction, is_active, regions_ids, estates_ids) VALUES ('31','1','f0OnbAqJ','2022-01-01','2022-01-02','1000','1','[16]','[3,12]');

INSERT INTO vouchers (id, discount, code, start_at, end_at, max_dudction, is_active, regions_ids, estates_ids) VALUES ('33','50','Et1PixGr','2021-07-07','2021-07-09','2','1','[16]','[10]');

INSERT INTO vouchers (id, discount, code, start_at, end_at, max_dudction, is_active, regions_ids, estates_ids) VALUES ('34','50','4dg1uByc','2021-07-13','2021-07-31','10','1','[16]','[10,1,2,11]');

INSERT INTO vouchers (id, discount, code, start_at, end_at, max_dudction, is_active, regions_ids, estates_ids) VALUES ('35','50','2rmySOEf','2021-07-20','2021-08-20','1','1','[16]','[10]');

INSERT INTO vouchers (id, discount, code, start_at, end_at, max_dudction, is_active, regions_ids, estates_ids) VALUES ('36','50','RndmX6r3','2021-08-01','2021-08-31','10','1','[23]','[]');

INSERT INTO vouchers (id, discount, code, start_at, end_at, max_dudction, is_active, regions_ids, estates_ids) VALUES ('37','50','bELIjNjz','2021-08-01','2021-08-31','10','1','[19]','[14]');

INSERT INTO vouchers (id, discount, code, start_at, end_at, max_dudction, is_active, regions_ids, estates_ids) VALUES ('38','99','XkzXN3uF','2022-01-26','2022-02-25','10','1','[16]','[10]');

INSERT INTO vouchers (id, discount, code, start_at, end_at, max_dudction, is_active, regions_ids, estates_ids) VALUES ('39','1','Google','2021-09-02','2021-09-30','1','1','[19]','[3]');

INSERT INTO vouchers (id, discount, code, start_at, end_at, max_dudction, is_active, regions_ids, estates_ids) VALUES ('40','1','GOOGLE','2021-10-08','2021-10-22','10','1','[18]','[2]');

INSERT INTO vouchers (id, discount, code, start_at, end_at, max_dudction, is_active, regions_ids, estates_ids) VALUES ('41','10','3aPVTrJA','2022-05-13','2022-06-10','1','1','[19,20,21]','[21,20,10]');

INSERT INTO vouchers (id, discount, code, start_at, end_at, max_dudction, is_active, regions_ids, estates_ids) VALUES ('42','10','tf5iJxIB','2022-05-10','2022-05-31','100','1','[16]','[1,2,3,10,19]');
