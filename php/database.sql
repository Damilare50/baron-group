CREATE TABLE `projects` (
  `project_id` int(11) AUTO_INCREMENT PRIMARY KEY NOT NULL,
  `project_header` varchar(255) NOT NULL,
  `project_details` varchar(255) NOT NULL,
  `project_image` varchar(255) NOT NULL,
  `project_address` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

INSERT INTO `projects` (`project_header`, `project_details`, `project_image`, `project_address`)
 VALUES 
 (
    '1 corners', 'Lorem ipsum dolor, sit amet consectetur adipisicing elit. Fuga sequi odit illo corporis accusantium voluptate nihil, quo necessitatibus?', './assets/images/header-image.jpg', '17, Konohagakure avenue, Kotoamatsumi, Amaterasu.'
 ),
 (
    '2 corners', 'Lorem ipsum dolor, sit amet consectetur adipisicing elit. Fuga sequi odit illo corporis accusantium voluptate nihil, quo necessitatibus?', './assets/images/header-image.jpg', '19, Konohagakure avenue, Kotoamatsumi, Amaterasu.'
 ),
 (
    '3 corners', 'Lorem ipsum dolor, sit amet consectetur adipisicing elit. Fuga sequi odit illo corporis accusantium voluptate nihil, quo necessitatibus?', './assets/images/header-image.jpg', '21, Konohagakure avenue, Kotoamatsumi, Amaterasu.'
 ),
 (
    '4 corners', 'Lorem ipsum dolor, sit amet consectetur adipisicing elit. Fuga sequi odit illo corporis accusantium voluptate nihil, quo necessitatibus?', './assets/images/header-image.jpg', '25, Konohagakure avenue, Kotoamatsumi, Amaterasu.'
 ),
 (
    '5 corners', 'Lorem ipsum dolor, sit amet consectetur adipisicing elit. Fuga sequi odit illo corporis accusantium voluptate nihil, quo necessitatibus?', './assets/images/header-image.jpg', '27, Konohagakure avenue, Kotoamatsumi, Amaterasu.'
 ),
 (
    '6 corners', 'Lorem ipsum dolor, sit amet consectetur adipisicing elit. Fuga sequi odit illo corporis accusantium voluptate nihil, quo necessitatibus?', './assets/images/header-image.jpg', '29, Konohagakure avenue, Kotoamatsumi, Amaterasu.'
);


CREATE TABLE `testimonials` (
    `testimonial_id` int(11) AUTO_INCREMENT PRIMARY KEY NOT NULL,
    `testimonial_header` varchar(255) NOT NULL,
    `testimonial_body` text NOT NULL,
    `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

INSERT INTO `testimonials` (`testimonial_header`, `testimonial_body`)
 VALUES (
    'Sasuke Uchiha, Jr. Vice President - The Uchiha Companies', 'Baron Group provides a convenient and professional environment for our newest engineering offices. The park is beautifully maintained, and we are pleased with how the Levey team has responded to our needs.'
 ), 
 (
    'Uchiha Itachi, Sr. Vice President - The Uchiha Companies', 'Lorem ipsum dolor sit amet consectetur, adipisicing elit. Earum beatae eaque eum praesentium quaerat, ipsa, voluptate ducimus culpa impedit et esse tenetur laudantium hic assumenda veritatis! Quis, necessitatibus.'
 ),
 (
    'Uchiha Obito, Sr. Vice President - The Uchiha Companies', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Numquam repellat inventore a incidunt eos perferendis cumque voluptas atque. Quas rem et nobis ea sit aliquid alias id incidunt!'
 ),
 (
    'Uchiha Madara, President - The Uchiha Companies', 'Lorem ipsum dolor, sit amet consectetur adipisicing elit. Totam assumenda ut sint nisi numquam adipisci, quidem facere rem placeat est quasi quae aliquam nesciunt unde a eius repudiandae?'
)

CREATE TABLE `sponsors` (
    `sponsor_id` int(11) AUTO_INCREMENT NOT NULL,
    `sponsor_name` varchar(255) NOT NULL,
    `sponsor_logo` varchar(255) NOT NULL,
    `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
    `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
    PRIMARY KEY (`sponsor_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

INSERT INTO `sponsors` (`sponsor_name`, `sponsor_logo`) VALUES
 (
    'Adidas', './assets/images/adidas.png'
 ),
 (
    'Chevron', './assets/images/chevron.png'
 ),
 (
    'Fila', './assets/images/fila.png'
 ),
 (
    'Gullivers', './assets/images/gullivers.png'
 ),
 (
    'No-surrender', './assets/images/no-surrender.png'
 ),
 (
    'O-neal', './assets/images/oneal.png'
 ),
 (
    'Motox', './assets/images/motox.png'
 ),
 (
    'Salomon', './assets/images/salomon.png'
 ),
 (
    'Suzuki', './assets/images/suzuki.png'
 ),
 (
    'DragonflyInn', './assets/images/dragonflyInn.png'
)

CREATE TABLE `investor` (
    `investor_id` int(11) AUTO_INCREMENT NOT NULL,
    `investor_name` varchar(255) NOT NULL,
    `investor_passcode` varchar(255) NOT NULL,
    `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
    `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
    PRIMARY KEY (`investor_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

INSERT INTO `investor` (`investor_name`, `investor_passcode`)
 VALUES (
    'Hokage', 'qwERTy234'
 ),
 (
    'Raikage', 'ydtwyYDUDI'
 ),
 (
    'Kazekage', 'loremIPsum'
 ),
 (
    'Mizukage', 'pohfrgprphr'
)

CREATE TABLE `personnel` (
    `personnel_id` int(11) AUTO_INCREMENT NOT NULL,
    `personnel_name` varchar(255) NOT NULL,
    `personnel_role` varchar(255) NOT NULL,
    `personnel_image` varchar(255) NOT NULL,
    `personnel_email` varchar(255) NOT NULL,
    `personnel_phone` varchar(255) NOT NULL,
    `personnel_bio` text NOT NULL,
    `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
    `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
    PRIMARY KEY (`personnel_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

INSERT INTO `personnel` (`personnel_name`, `personnel_role`, `personnel_image`, `personnel_email`, `personnel_phone`, `personnel_bio`) VALUES
 (
    'Jane Doe', 'Director of Operations', './assets/images/personnel-image.jpg', 'janedoe@outlook.com', '+234-DIRE-OF-OPER', 'Lorem ipsum dolor, sit amet consectetur adipisicing elit. Reprehenderit hic maxime amet sunt odit suscipit, eveniet consequatur dolor cupiditate aliquid ea saepe accusamus, laborum nulla, possimus ad! Sint, veniam nobis. Numquam atque suscipit asperiores repellat esse qui possimus ex illum perferendis iure sit, consequatur nemo illo accusamus enim. Aliquid odio, accusantium sequi in architecto optio amet. Maiores quia vel tempore expedita neque sunt rem voluptatibus beatae quae adipisci quo ullam sapiente placeat alias ducimus fuga unde voluptate ipsum similique autem doloribus quisquam dolor, debitis et! Excepturi mollitia quae repellendus placeat molestias inventore vitae veniam labore. Incidunt omnis nihil voluptatibus pariatur.'
 ),
 (
    'Hashirama Senju', 'Welfare Director', './assets/images/personnel-image.jpg', 'hashiramasenju@outlook.com', '+234-DIRE-OF-WELF', 'Lorem ipsum dolor sit amet consectetur, adipisicing elit. Porro cupiditate dolore at corrupti quidem pariatur facilis consectetur repellendus odit nisi perspiciatis voluptate dolorum deleniti asperiores corporis recusandae ea possimus ratione praesentium, harum sequi illo delectus odio. Sunt error alias corporis blanditiis doloribus veniam reiciendis eum aliquam. Pariatur doloremque deleniti temporibus dolor, rem numquam corrupti alias! Molestiae consequatur magnam perferendis inventore explicabo culpa et quaerat assumenda, obcaecati dicta? Omnis iure sed repellendus quaerat magnam autem voluptas? Minus nobis laboriosam fuga doloribus laudantium quibusdam harum nisi quae porro eaque, repellat consectetur voluptate voluptatibus cupiditate obcaecati officiis veritatis sint asperiores doloremque eius consequatur!'
 ),
 (
    'Tobirama Senju', 'Accounting Director', './assets/images/personnel-image.jpg', 'tobiramasenju@outlook.com', '+234-DIRE-OF-ACCT', 'Lorem ipsum, dolor sit amet consectetur adipisicing elit. Corrupti accusantium quos esse nemo ex. Minus repellat earum eaque? Amet commodi inventore, voluptate non vel consequatur atque odit, assumenda fugit quam unde animi laudantium molestiae perferendis recusandae iste ratione numquam totam illum fuga culpa voluptatum! Aliquam, dolorum. Aut iusto ducimus ipsam blanditiis dicta fugiat recusandae hic voluptate numquam similique quo ipsa voluptas nesciunt vero impedit accusantium, rerum distinctio repellendus quibusdam soluta obcaecati iure ex molestiae ipsum? Esse voluptatum fugiat rerum architecto a animi reiciendis aliquid beatae quam magnam, nesciunt repudiandae autem inventore hic quae at aliquam dicta velit quaerat quibusdam maiores.'
 ),
 (
    'Tobiirama Sarutobi', 'Administrative Director', './assets/images/personnel-image.jpg', 'sarutobi@outlook.com', '+234-DIRE-OF-ADMT', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Rerum voluptate neque blanditiis id placeat illum magni molestias commodi earum omnis aliquid, suscipit quasi maxime facilis provident eligendi reiciendis at totam repellendus unde. Veritatis, perspiciatis nisi. Sint nemo eius excepturi vel unde doloremque necessitatibus dolore expedita porro illo rerum rem similique est atque, deserunt distinctio ex animi alias obcaecati numquam cumque possimus. Voluptates quisquam quos error ratione sed quidem odit impedit id. Voluptatibus facilis dolorem sunt porro modi, tenetur cum nobis quaerat, quia, expedita quam? Veritatis praesentium velit tenetur cum facilis nisi rem alias, corrupti, consectetur laudantium possimus illo minus corporis?'
 ),
 (
    'Minato Namikaze', 'Production Director', './assets/images/personnel-image.jpg', 'minatonamikaze@outlook.com', '+234-DIRE-OF-PROD', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Delectus inventore excepturi omnis aliquam laboriosam sunt commodi debitis magnam repellat rem dicta et sed voluptates officiis expedita nostrum earum suscipit dolor soluta, nobis placeat. Quis, pariatur omnis. Voluptatibus nisi dicta magni dolor quaerat sequi dolorum voluptas porro? Esse neque architecto dolore cum corporis voluptas exercitationem qui in tempora, iste fugit ducimus asperiores voluptatum quod ad eos quia sunt deserunt atque hic ea voluptates beatae labore eveniet. Eum veritatis consequuntur nobis velit quidem ea illo iusto tenetur? Quidem nisi nulla repellat iste, quasi cupiditate aliquam, omnis commodi vitae ea, iure a laboriosam!'
 ),
 (
    'Tsunade Senju', 'Technical Director', './assets/images/personnel-image.jpg', 'tsunadesenju@outlook.com', '+234-DIRE-OF-TECH', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Autem quisquam quo quae sit fugiat laborum, rerum earum ea maxime quasi placeat tempora expedita cumque dicta labore tempore aspernatur? Fugiat velit voluptates, asperiores reprehenderit dignissimos eius deleniti esse harum repellendus? Sunt, suscipit eius aperiam eveniet, minus odit exercitationem itaque vitae, nihil porro nulla impedit temporibus quo distinctio architecto. Ut dicta libero officiis eaque, dolores consequuntur. Ad dignissimos, minima tempora cumque laborum ullam rem distinctio, vero fuga nostrum corporis omnis cum? In, vero natus officiis maxime, quo accusantium adipisci at excepturi necessitatibus iusto enim sit tenetur voluptates sunt delectus praesentium repellendus facilis!'
)

CREATE TABLE `admin` (
    `admin_id` int(11) AUTO_INCREMENT NOT NULL,
    `personnel_id` int(11) DEFAULT NULL,
    `admin_passcode` varchar(255) NOT NULL,
    `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
    `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
    PRIMARY KEY (`admin_id`),
    FOREIGN KEY (`personnel_id`) REFERENCES `personnel` (`personnel_id`) ON DELETE CASCADE ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

CREATE TABLE `services` (
    `service_id` int(11) AUTO_INCREMENT NOT NULL,
    `service_name` varchar(255) NOT NULL,
    `service_details` text NOT NULL,
    `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
    `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
    PRIMARY KEY (`service_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

INSERT INTO `services` (`service_name`, `service_details`) 
 VALUES (
    'Development', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Cumque voluptas suscipit voluptate nisi, ut officia rem rerum ullam ratione iusto, fuga animi iste possimus aperiam quasi iure excepturi inventore! Doloremque. Lorem ipsum dolor sit amet consectetur adipisicing elit. Cum odit ipsum sunt? Sequi aliquid sint, eveniet illo nulla ex quo autem rerum ducimus saepe laudantium sed quod aperiam itaque assumenda, ipsam temporibus dolorum eum ipsum? Non fugiat dolorem sunt veritatis provident ea, autem harum quam? Perferendis reprehenderit ea a fuga.'
 ),
 (
    'Joint Ventures.', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Cumque voluptas suscipit voluptate nisi, ut officia rem rerum ullam ratione iusto, fuga animi iste possimus aperiam quasi iure excepturi inventore! Doloremque. Lorem ipsum dolor sit amet consectetur adipisicing elit. Cum odit ipsum sunt? Sequi aliquid sint, eveniet illo nulla ex quo autem rerum ducimus saepe laudantium sed quod aperiam itaque assumenda, ipsam temporibus dolorum eum ipsum? Non fugiat dolorem sunt veritatis provident ea, autem harum quam? Perferendis reprehenderit ea a fuga.'
 ),
 (
    'High Yield loans.', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Cumque voluptas suscipit voluptate nisi, ut officia rem rerum ullam ratione iusto, fuga animi iste possimus aperiam quasi iure excepturi inventore! Doloremque. Lorem ipsum dolor sit amet consectetur adipisicing elit. Cum odit ipsum sunt? Sequi aliquid sint, eveniet illo nulla ex quo autem rerum ducimus saepe laudantium sed quod aperiam itaque assumenda, ipsam temporibus dolorum eum ipsum? Non fugiat dolorem sunt veritatis provident ea, autem harum quam? Perferendis reprehenderit ea a fuga.'
 ),
 (
    'Value Added Investments.', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Cumque voluptas suscipit voluptate nisi, ut officia rem rerum ullam ratione iusto, fuga animi iste possimus aperiam quasi iure excepturi inventore! Doloremque. Lorem ipsum dolor sit amet consectetur adipisicing elit. Cum odit ipsum sunt? Sequi aliquid sint, eveniet illo nulla ex quo autem rerum ducimus saepe laudantium sed quod aperiam itaque assumenda, ipsam temporibus dolorum eum ipsum? Non fugiat dolorem sunt veritatis provident ea, autem harum quam? Perferendis reprehenderit ea a fuga.'
);


CREATE TABLE `news` (
    `news_id` int(11) AUTO_INCREMENT NOT NULL,
    `news_headline` text NOT NULL,
    `news_details` text NOT NULL,
    `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
    `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
    PRIMARY KEY (`news_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

INSERT INTO `news`(`news_headline`, `news_details`)
 VALUES (
    'Baron Group Sells Land At Northwest Place Industrial Park II', 'Lorem ipsum dolor, sit amet consectetur adipisicing elit. Eligendi incidunt reprehenderit, ab autem quae nobis unde ipsam maxime? Omnis eveniet labore soluta expedita minima molestiae quis dolorem voluptatibus incidunt magni! Lorem ipsum dolor sit amet consectetur adipisicing elit. Tempora possimus assumenda voluptates minima aliquid, mollitia provident facere quis consectetur veniam et ipsam rem corporis nam consequatur saepe. Iure omnis dicta repudiandae fugit veritatis consequuntur reiciendis consequatur ipsa quo optio, ea fugiat autem quae unde aperiam corrupti corporis magni ad ipsum.'
 ),
 (
    'Houston Company Offers Free Warehouse Space to Organizations Helping With COVID-19 Relief Efforts', 'Lorem ipsum dolor, sit amet consectetur adipisicing elit. Eligendi incidunt reprehenderit, ab autem quae nobis unde ipsam maxime? Omnis eveniet labore soluta expedita minima molestiae quis dolorem voluptatibus incidunt magni! Lorem ipsum dolor sit amet consectetur adipisicing elit. Tempora possimus assumenda voluptates minima aliquid, mollitia provident facere quis consectetur veniam et ipsam rem corporis nam consequatur saepe. Iure omnis dicta repudiandae fugit veritatis consequuntur reiciendis consequatur ipsa quo optio, ea fugiat autem quae unde aperiam corrupti corporis magni ad ipsum.'
 ),
 (
    'Baron Group Sells Land At Northwest Place Industrial Park II', 'Lorem ipsum dolor, sit amet consectetur adipisicing elit. Eligendi incidunt reprehenderit, ab autem quae nobis unde ipsam maxime? Omnis eveniet labore soluta expedita minima molestiae quis dolorem voluptatibus incidunt magni! Lorem ipsum dolor sit amet consectetur adipisicing elit. Tempora possimus assumenda voluptates minima aliquid, mollitia provident facere quis consectetur veniam et ipsam rem corporis nam consequatur saepe. Iure omnis dicta repudiandae fugit veritatis consequuntur reiciendis consequatur ipsa quo optio, ea fugiat autem quae unde aperiam corrupti corporis magni ad ipsum.'
 ),
 (
    'Houston Company Offers Free Warehouse Space to Organizations Helping With COVID-19 Relief Efforts', 'Lorem ipsum dolor, sit amet consectetur adipisicing elit. Eligendi incidunt reprehenderit, ab autem quae nobis unde ipsam maxime? Omnis eveniet labore soluta expedita minima molestiae quis dolorem voluptatibus incidunt magni! Lorem ipsum dolor sit amet consectetur adipisicing elit. Tempora possimus assumenda voluptates minima aliquid, mollitia provident facere quis consectetur veniam et ipsam rem corporis nam consequatur saepe. Iure omnis dicta repudiandae fugit veritatis consequuntur reiciendis consequatur ipsa quo optio, ea fugiat autem quae unde aperiam corrupti corporis magni ad ipsum.'
 ),
 (
    'Baron Group Sells Land At Northwest Place Industrial Park II', 'Lorem ipsum dolor, sit amet consectetur adipisicing elit. Eligendi incidunt reprehenderit, ab autem quae nobis unde ipsam maxime? Omnis eveniet labore soluta expedita minima molestiae quis dolorem voluptatibus incidunt magni! Lorem ipsum dolor sit amet consectetur adipisicing elit. Tempora possimus assumenda voluptates minima aliquid, mollitia provident facere quis consectetur veniam et ipsam rem corporis nam consequatur saepe. Iure omnis dicta repudiandae fugit veritatis consequuntur reiciendis consequatur ipsa quo optio, ea fugiat autem quae unde aperiam corrupti corporis magni ad ipsum.'
 ),
 (
    'Houston Company Offers Free Warehouse Space to Organizations Helping With COVID-19 Relief Efforts', 'Lorem ipsum dolor, sit amet consectetur adipisicing elit. Eligendi incidunt reprehenderit, ab autem quae nobis unde ipsam maxime? Omnis eveniet labore soluta expedita minima molestiae quis dolorem voluptatibus incidunt magni! Lorem ipsum dolor sit amet consectetur adipisicing elit. Tempora possimus assumenda voluptates minima aliquid, mollitia provident facere quis consectetur veniam et ipsam rem corporis nam consequatur saepe. Iure omnis dicta repudiandae fugit veritatis consequuntur reiciendis consequatur ipsa quo optio, ea fugiat autem quae unde aperiam corrupti corporis magni ad ipsum.'
 ),
 (
    'Baron Group Sells Land At Northwest Place Industrial Park II', 'Lorem ipsum dolor, sit amet consectetur adipisicing elit. Eligendi incidunt reprehenderit, ab autem quae nobis unde ipsam maxime? Omnis eveniet labore soluta expedita minima molestiae quis dolorem voluptatibus incidunt magni! Lorem ipsum dolor sit amet consectetur adipisicing elit. Tempora possimus assumenda voluptates minima aliquid, mollitia provident facere quis consectetur veniam et ipsam rem corporis nam consequatur saepe. Iure omnis dicta repudiandae fugit veritatis consequuntur reiciendis consequatur ipsa quo optio, ea fugiat autem quae unde aperiam corrupti corporis magni ad ipsum.'
 ),
 (
    'Houston Company Offers Free Warehouse Space to Organizations Helping With COVID-19 Relief Efforts', 'Lorem ipsum dolor, sit amet consectetur adipisicing elit. Eligendi incidunt reprehenderit, ab autem quae nobis unde ipsam maxime? Omnis eveniet labore soluta expedita minima molestiae quis dolorem voluptatibus incidunt magni! Lorem ipsum dolor sit amet consectetur adipisicing elit. Tempora possimus assumenda voluptates minima aliquid, mollitia provident facere quis consectetur veniam et ipsam rem corporis nam consequatur saepe. Iure omnis dicta repudiandae fugit veritatis consequuntur reiciendis consequatur ipsa quo optio, ea fugiat autem quae unde aperiam corrupti corporis magni ad ipsum.'
)