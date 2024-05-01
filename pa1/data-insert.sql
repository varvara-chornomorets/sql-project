use schema_salon;


DELETE FROM services2products;
DELETE FROM employee2service;
DELETE FROM payment;
DELETE FROM appointment;
DELETE FROM employee;
DELETE FROM customer;
DELETE FROM product;
DELETE FROM service;

# service table 
INSERT INTO service VALUES(1, 'Manicure', 'The service includes nail polish or gel removal, nail polishing and shaping, cuticle removing, application of oil, cream and hand massage.',
                           120, 720);
INSERT INTO service VALUES (2,'Pedicure', 'Pedicure is done by soaking feet in water first and removing dead skin cells and cuticle using cutting tools, then application of colour or transparent nail polish or polish gel can be done.',
                            180, 1320);
INSERT INTO service VALUES (3,'Haircut', 'This service includes haircut and giving recomendations about hair and sculp care',
                            140, 1200);
INSERT INTO service VALUES (4,'Hydra facial', 'This service is performed in the following way: specialist cleans skin perfectly, performs chemical and vacuum hydropilling, moisturizes the dermis with the simultaneous application of working medicines – sera. The basis of the procedure is hydrodermabrasion..',
                            180, 1320);
INSERT INTO service VALUES (5,'Daily make-up', 'This service includes application of foundation, eye make-up, lip make-up, creating shadows and highlights on skin',
                            120, 1100);
INSERT INTO service VALUES (6,'Lymphatic drainage body massage', ' This manual massage technique is applied on different areas, it enhances the activity of lymphatic system. This type of massage stimulates the metabolism that enables essentially the process of losing excess weight, reduces cellulite, and gets rid of edema. Massage improves your immunity and reduces fatigue improving blood microcirculation.',
                            90, 1000);
INSERT INTO service VALUES (7,'Craniosacral therapy', 'It is the treatment of cervical spine and sacrum problems. This procedure improves the cerebral blood vessels circulation, normalizes the nervous function, restores the natural mobility of the sacrum, and enables the pelvic bones and joints mobility. As a result, the chronic headache, pain in the neck and back pain do pass away, the immunity and all body systems tone increase. Such treatment is also effective in the case of stress and nervous disorders, it is recommended at bronchial asthma and epileptic syndromes.',
                            120, 2300);
INSERT INTO service VALUES(8, 'Eyebrow Shaping', 'This service includes professional shaping and grooming of eyebrows to enhance facial features.',
                           30, 350);
INSERT INTO service VALUES(9, 'Gel Manicure', 'Similar to a regular manicure but with the added benefit of a long-lasting gel polish application.',
                           150, 850);
INSERT INTO service VALUES(10, 'Deep Conditioning Hair Treatment', 'A nourishing hair treatment to improve the health and appearance of the hair, recommended for dry or damaged hair.',
                           60, 600);
INSERT INTO service VALUES(11, 'Anti-Aging Facial', 'A specialized facial treatment using anti-aging products and techniques to reduce the appearance of fine lines and wrinkles.',
                           90, 1800);
INSERT INTO service VALUES(12, 'Body Waxing', 'Professional waxing services for various body areas, providing smooth and hair-free skin.',
                           45, 500);
INSERT INTO service VALUES(13, 'Manicure and Pedicure Combo', 'Combine the benefits of both manicure and pedicure services for a complete hand and foot care experience.',
                           240, 1800);
INSERT INTO service VALUES(14, 'Balayage Hair Coloring', 'A trendy hair coloring technique for a natural-looking and sun-kissed effect.',
                           180, 2000);
INSERT INTO service VALUES(15, 'Relaxing Aromatherapy Massage', 'A soothing massage using essential oils to promote relaxation and relieve stress.',
                           60, 800);


# product table
INSERT INTO product VALUES(1, 'Nail Polish Remover', 'Gentle nail polish remover for manicure.', 50, 150.0);
INSERT INTO product VALUES(2, 'Nail Polish', 'High-quality nail polish for a perfect finish.', 100, 30.0);
INSERT INTO product VALUES(3, 'Cuticle Oil', 'Moisturizing cuticle oil for healthy nails.', 30, 50.0);
INSERT INTO product VALUES(4, 'Hand Cream', 'Nourishing hand cream for soft and smooth hands.', 40, 70.0);

INSERT INTO product VALUES(5, 'Foot Soak', 'Refreshing foot soak for pedicure.', 20, 80.0);
INSERT INTO product VALUES(6, 'Cuticle Tools Set', 'Tools for removing dead skin cells and cuticles during pedicure.', 10, 120.0);
INSERT INTO product VALUES(7, 'Nail Polish Gel', 'Long-lasting nail polish gel for pedicure.', 80, 40.0);

INSERT INTO product VALUES(8, 'Haircut Scissors', 'Professional scissors for hair cutting.', 15, 70.0);
INSERT INTO product VALUES(9, 'Hair Care Products Set', 'Set of hair care products for maintaining your haircut.', 25, 80.0);

INSERT INTO product VALUES(10, 'Hydrodermabrasion Kit', 'Kit for performing hydrodermabrasion during facial treatment.', 5, 250.0);
INSERT INTO product VALUES(11, 'Facial Serum', 'Moisturizing and working serum for Hydra Facial.', 20, 40.0);

INSERT INTO product VALUES(12, 'Foundation', 'High-quality foundation for a flawless makeup base.', 30, 50.0);
INSERT INTO product VALUES(13, 'Eye Shadow Palette', 'Palette with a variety of shades for eye makeup.', 15, 70.0);
INSERT INTO product VALUES(14, 'Lipstick', 'Long-lasting lipstick for beautiful lip makeup.', 40, 40.0);

INSERT INTO product VALUES(15, 'Massage Oil', 'Specialized massage oil for lymphatic drainage massage.', 25, 60.0);

INSERT INTO product VALUES(16, 'Cervgical Pillow', 'Pillow for cervical spine support during therapy.', 10, 50.0);

INSERT INTO product VALUES(17, 'Eyebrow Pencil', 'Professional eyebrow pencil for shaping and grooming.', 30, 35.0);

INSERT INTO product VALUES(18, 'Gel Polish Kit', 'Kit for applying long-lasting gel polish during manicure.', 15, 70.0);

INSERT INTO product VALUES(19, 'Hair Mask', 'Nourishing hair mask for deep conditioning treatment.', 20, 40.0);

INSERT INTO product VALUES(20, 'Anti-Aging Cream', 'Specialized cream for reducing fine lines and wrinkles.', 25, 70.0);

INSERT INTO product VALUES(21, 'Waxing Kit', 'Professional waxing kit for various body areas.', 10, 100.0);

INSERT INTO product VALUES(22, 'Manicure/Pedicure Set', 'Complete set for both manicure and pedicure.', 5, 180.0);

INSERT INTO product VALUES(23, 'Hair Coloring Kit', 'Kit for achieving a trendy balayage effect.', 10, 120.0);

INSERT INTO product VALUES(24, 'Aromatherapy Essential Oils', 'Essential oils for a soothing and relaxing massage.', 15, 70.0);
INSERT INTO product VALUES(25, 'Cuticle Remover Gel', 'Effective gel for removing cuticles during manicure and pedicure.', 20, 55.0);

INSERT INTO product VALUES(26, 'Styling Hair Spray', 'Professional hair styling spray for setting and holding hairstyles.', 30, 65.0);

INSERT INTO product VALUES(27, 'Facial Cleansing Brush', 'Gentle brush for deep cleansing during facial treatments and makeup preparation.', 15, 90.0);

INSERT INTO product VALUES(28, 'Makeup Brush Set', 'High-quality brush set for flawless and precise makeup application.', 10, 120.0);

INSERT INTO product VALUES(29, 'Aromatherapy Massage Candles', 'Scented candles that melt into massage oil for aromatherapy massage.', 12, 80.0);

INSERT INTO product VALUES(30, 'Scalp Massage Oil', 'Nourishing oil for scalp massage to promote hair health.', 25, 55.0);

INSERT INTO product VALUES(31, 'Eyelash Curler', 'Professional eyelash curler for enhancing eye makeup.', 20, 30.0);

INSERT INTO product VALUES(32, 'Gel Nail Extension Kit', 'Kit for achieving extended gel nails during manicure.', 8, 150.0);

INSERT INTO product VALUES(33, 'Anti-Aging Eye Cream', 'Specialized cream for reducing fine lines and wrinkles around the eyes.', 18, 85.0);

INSERT INTO product VALUES(34, 'Depilatory Wax Kit', 'Professional kit for effective body hair removal during waxing.', 15, 110.0);


# customer table
INSERT INTO customer VALUES(1,'Vira', '380938594036', 'viravirvira@gmail.com', 'Khreshchatyk, 22, ap. 56');
INSERT INTO customer VALUES(2, 'Serhii', '380398762938', 'serhiiiiihello@gmail.com', 'Krakivska, 34, ap. 87');
INSERT INTO customer VALUES(3, 'Anastasia', '380648671234', 'nastiusha@gmail.com', 'Nova, 98, ap.143');
INSERT INTO customer VALUES(4, 'Olia', '380483771234', 'yaolia@gmail.com', 'Stara, 23, ap.43');
INSERT INTO customer VALUES(5, 'Tetiana', '380649303234', 'tetiana@gmail.com', 'Kalyna, 63, ap.346');
INSERT INTO customer VALUES(6, 'Ariana', '380941405839', 'queenofthislife@gmail.com', 'Koloskova, 29, ap.235');
INSERT INTO customer VALUES(7, 'Nadia', '380946405839', 'thegreatestpoet@gmail.com', 'Skrypnika, 3, ap.25');
INSERT INTO customer VALUES(8, 'Sasha', '380946404589', 'sashok@gmail.com', 'Lobanovskoho, 37, ap.125');
INSERT INTO customer VALUES(9, 'Ania', '380940193589', 'aniabeauty@gmail.com', 'Pulia, 3, ap.231');
INSERT INTO customer VALUES(10, 'Dmytro', '380501234567', 'dmytro@gmail.com', 'Shevchenka, 15, ap. 72');
INSERT INTO customer VALUES(11, 'Kateryna', '380509876543', 'kate@yahoo.com', 'Heroiv Pratsi, 42, ap. 103');
INSERT INTO customer VALUES(12, 'Andrii', '380504561237', 'andrii.andrii@gmail.com', 'Chervonozavodska, 87, ap. 54');
INSERT INTO customer VALUES(13, 'Iryna', '380503214567', 'iryna.iryna@gmail.com', 'Zelena, 18, ap. 23');
INSERT INTO customer VALUES(14, 'Pavlo', '380502345678', 'pavlo.pavlo@gmail.com', 'Naukova, 76, ap. 45');
INSERT INTO customer VALUES(15, 'Oksana', '380501234567', 'oksana.oksana@gmail.com', 'Halytska, 33, ap. 12');
INSERT INTO customer VALUES(16, 'Mykola', '380509876543', 'mykola.mykola@gmail.com', 'Sichovykh Striltsiv, 56, ap. 89');
INSERT INTO customer VALUES(17, 'Yulia', '380504561237', 'yulia.yulia@gmail.com', 'Kharkivska, 24, ap. 32');
INSERT INTO customer VALUES(18, 'Roman', '380503214567', 'roman.roman@gmail.com', 'Soborna, 49, ap. 76');
INSERT INTO customer VALUES(19, 'Mariia', '380502345678', 'mariia.mariia@gmail.com', 'Zarichna, 11, ap. 67');
INSERT INTO customer VALUES(20, 'Oleh', '380501234567', 'oleh.oleh@gmail.com', 'Dniprovska, 30, ap. 44');
INSERT INTO customer VALUES(21, 'Nataliia', '380509876543', 'nataliia.nataliia@gmail.com', 'Yaroslavska, 15, ap. 98');
INSERT INTO customer VALUES(22, 'Vitalii', '380504561237', 'vitalii.vitalii@gmail.com', 'Bohdana Khmelnytskoho, 76, ap. 21');
INSERT INTO customer VALUES(23, 'Valeriia', '380503214567', 'valeriia.valeriia@gmail.com', 'Hrushevskoho, 42, ap. 34');
INSERT INTO customer VALUES(24, 'Yaroslav', '380502345678', 'yaroslav.yaroslav@gmail.com', 'Vynnychenka, 27, ap. 56');
INSERT INTO customer VALUES(25, 'Halyna', '380501234567', 'halyna.halyna@gmail.com', 'Suvorova, 19, ap. 67');
INSERT INTO customer VALUES(26, 'Ihor', '380509876543', 'ihor.ihor@gmail.com', 'Poltavskoho Shliakhu, 33, ap. 12');
INSERT INTO customer VALUES(27, 'Yevheniia', '380504561237', 'yevheniia.yevheniia@gmail.com', 'Franka, 53, ap. 76');
INSERT INTO customer VALUES(28, 'Danylo', '380503214567', 'danylo.danylo@gmail.com', 'Shevchenka, 64, ap. 89');
INSERT INTO customer VALUES(29, 'Marina', '380502345678', 'marina.marina@gmail.com', 'Horodotska, 22, ap. 45');
INSERT INTO customer VALUES(30, 'Viktor', '380501234567', 'viktor.viktor@gmail.com', 'Tobilevycha, 37, ap. 98');
INSERT INTO customer VALUES(31, 'Nadiia', '380509876543', 'nadiia.nadiia@gmail.com', 'Zelena, 15, ap. 67');
INSERT INTO customer VALUES(32, 'Taras', '380504561237', 'taras.taras@gmail.com', 'Khmelnytskoho, 76, ap. 21');
INSERT INTO customer VALUES(33, 'Khrystyna', '380503214567', 'khrystyna.khrystyna@gmail.com', 'Hrushevskoho, 42, ap. 34');
INSERT INTO customer VALUES(34, 'Vasyl', '380502345678', 'vasyl.vasyl@gmail.com', 'Vynnychenka, 27, ap. 56');
INSERT INTO customer VALUES(35, 'Liliia', '380501234567', 'liliia.liliia@gmail.com', 'Suvorova, 19, ap. 67');
INSERT INTO customer VALUES(36, 'Bogdan', '380509876543', 'bogdan.bogdan@gmail.com', 'Poltavskoho Shliakhu, 33, ap. 12');


# employee table
INSERT INTO employee VALUES (1, 'Gaiova Kateryna', '380956471324', 'katerynag@gmail.com', 'Junior', 25000);
INSERT INTO employee VALUES (2, 'Lyskova Mariia', '380953671324', 'lyskovam@gmail.com', 'Middle', 30000);
INSERT INTO employee VALUES (3, 'Melnyk Olesia', '380957451383', 'olesiamelnyk@gmail.com', 'Senior', 35000);
INSERT INTO employee VALUES (4, 'Lapko Zoriana', '380623045324', 'zorianasmm@gmail.com', 'Senior', 38000);
INSERT INTO employee VALUES (5, 'Khomenko Anna', '380987945247', 'annakhomenko@gmail.com', 'Junior', 27000);
INSERT INTO employee VALUES (6, 'Opanasenko Lilia', '380958329539', 'lilia@gmail.com', 'Junior', 28000);
INSERT INTO employee VALUES (7, 'Grynchuk Olena', '380952347652', 'grynchuk@gmail.com', 'Junior', 20000);
INSERT INTO employee VALUES (8, 'Kovalenko Olga', '380954712345', 'olga.kov@gmail.com', 'Middle', 32000);
INSERT INTO employee VALUES (9, 'Anastasiia Shevchenko', '380989876543', 'anastasiia.shevchenko@gmail.com', 'Middle', 30000);
INSERT INTO employee VALUES (10, 'Ivan Kovalchuk', '380955678912', 'ivan.kovalchuk@gmail.com', 'Senior', 35000);
INSERT INTO employee VALUES (11, 'Dmytro Bondarenko', '380976543210', 'dmytro.bondarenko@gmail.com', 'Senior', 38000);
INSERT INTO employee VALUES (12, 'Olena Tkachenko', '380931234567', 'olena.tkachenko@gmail.com', 'Junior', 27000);
INSERT INTO employee VALUES (13, 'Mariia Kravchenko', '380967890123', 'mariia.kravchenko@gmail.com', 'Middle', 25000);
INSERT INTO employee VALUES (14, 'Yuliia Voloshchuk', '380922345678', 'yuliia.voloshchuk@gmail.com', 'Middle', 28000);
INSERT INTO employee VALUES (15, 'Andrii Shevchuk', '380964567890', 'andrii.shevchuk@gmail.com', 'Senior', 40000);
INSERT INTO employee VALUES (16, 'Nataliia Melnychuk', '380934567890', 'nataliia.melnychuk@gmail.com', 'Senior', 35000);
INSERT INTO employee VALUES (17, 'Yana Kovalenko', '380978901234', 'yana.kovalenko@gmail.com', 'Junior', 23000);


# appointment table
INSERT INTO appointment VALUES (1, 1, 1, 3, '2024-03-03 14:30:00', 'done');
INSERT INTO appointment VALUES (2, 3, 6, 6, '2024-02-29 11:00:00', 'done');
INSERT INTO appointment VALUES (3, 5, 3, 5, '2024-03-20 16:45:00', 'cancelled');
INSERT INTO appointment VALUES (4, 8, 14, 13, '2024-03-25 09:30:00', 'cancelled');
INSERT INTO appointment VALUES (5, 10, 7, 6, '2024-02-28 13:15:00', 'done');
INSERT INTO appointment VALUES (6, 12, 8, 8, '2024-04-05 10:00:00', 'done');
INSERT INTO appointment VALUES (7, 15, 13, 7, '2024-04-12 14:45:00', 'done');
INSERT INTO appointment VALUES (8, 17, 15, 16, '2024-04-18 17:30:00', 'done');
INSERT INTO appointment VALUES (9, 19, 5, 9, '2024-04-22 11:45:00', 'done');
INSERT INTO appointment VALUES (10, 21, 9, 10, '2024-04-28 16:00:00', 'done');
INSERT INTO appointment VALUES (11, 25, 10, 11, '2024-05-03 09:00:00', 'arranged');
INSERT INTO appointment VALUES (12, 30, 15, 16, '2024-05-08 14:30:00', 'arranged');
INSERT INTO appointment VALUES (13, 8, 4, 5, '2024-05-13 16:45:00', 'arranged');
INSERT INTO appointment VALUES (14, 14, 2, 3, '2024-05-18 11:15:00', 'arranged');
INSERT INTO appointment VALUES (15, 18, 12, 12, '2024-05-22 10:30:00', 'arranged');
INSERT INTO appointment VALUES (16, 22, 7, 16, '2024-05-28 13:45:00', 'arranged');
INSERT INTO appointment VALUES (17, 24, 14, 9, '2024-05-31 15:00:00', 'arranged');
INSERT INTO appointment VALUES (18, 1, 6, 2, '2024-06-05 09:30:00', 'arranged');
INSERT INTO appointment VALUES (19, 4, 8, 8, '2024-06-10 14:00:00', 'arranged');
INSERT INTO appointment VALUES (20, 12, 11, 3, '2024-06-15 16:15:00', 'arranged');
INSERT INTO appointment VALUES (21, 2, 9, 10, '2024-03-02 15:30:00', 'done');
INSERT INTO appointment VALUES (22, 7, 15, 16, '2024-03-07 11:45:00', 'done');
INSERT INTO appointment VALUES (23, 11, 4, 5, '2024-03-12 16:15:00', 'cancelled');
INSERT INTO appointment VALUES (24, 16, 13, 7, '2024-02-17 14:30:00', 'done');
INSERT INTO appointment VALUES (25, 20, 5, 11, '2024-02-22 09:00:00', 'done');
INSERT INTO appointment VALUES (26, 23, 1, 3, '2024-02-27 13:45:00', 'done');
INSERT INTO appointment VALUES (27, 26, 8, 8, '2024-03-01 10:30:00', 'done');
INSERT INTO appointment VALUES (28, 3, 6, 6, '2024-03-04 14:00:00', 'cancelled');
INSERT INTO appointment VALUES (29, 15, 14, 9, '2024-03-09 11:15:00', 'cancelled');
INSERT INTO appointment VALUES (30, 9, 2, 2, '2024-03-04 16:45:00', 'done');
INSERT INTO appointment VALUES (31, 5, 11, 3, '2024-04-02 09:30:00', 'done');
INSERT INTO appointment VALUES (32, 10, 7, 6, '2024-04-07 14:15:00', 'done');
INSERT INTO appointment VALUES (33, 14, 2, 3, '2024-04-12 16:45:00', 'done');
INSERT INTO appointment VALUES (34, 18, 12, 12, '2024-04-17 10:30:00', 'done');
INSERT INTO appointment VALUES (35, 22, 7, 16, '2024-04-22 13:45:00', 'done');
INSERT INTO appointment VALUES (36, 24, 14, 9, '2024-04-27 15:00:00', 'done');
INSERT INTO appointment VALUES (37, 1, 6, 2, '2024-04-03 09:30:00', 'done');
INSERT INTO appointment VALUES (38, 4, 8, 8, '2024-04-08 14:00:00', 'done');
INSERT INTO appointment VALUES (39, 12, 11, 3, '2024-04-13 16:15:00', 'done');
INSERT INTO appointment VALUES (40, 16, 13, 7, '2024-04-18 11:30:00', 'done');
INSERT INTO appointment VALUES (41, 6, 3, 5, '2024-05-02 10:30:00', 'arranged');
INSERT INTO appointment VALUES (42, 13, 9, 10, '2024-05-07 15:45:00', 'arranged');
INSERT INTO appointment VALUES (43, 28, 12, 12, '2024-05-12 09:15:00', 'arranged');
INSERT INTO appointment VALUES (44, 31, 1, 3, '2024-05-17 14:00:00', 'arranged');
INSERT INTO appointment VALUES (45, 2, 7, 6, '2024-05-22 11:30:00', 'arranged');
INSERT INTO appointment VALUES (46, 11, 14, 9, '2024-05-27 16:45:00', 'arranged');
INSERT INTO appointment VALUES (47, 20, 6, 2, '2024-04-01 13:00:00', 'done');
INSERT INTO appointment VALUES (48, 27, 4, 5, '2024-04-06 09:30:00', 'done');
INSERT INTO appointment VALUES (49, 34, 11, 3, '2024-04-11 15:15:00', 'cancelled');
INSERT INTO appointment VALUES (50, 36, 8, 8, '2024-04-16 10:45:00', 'done');
INSERT INTO appointment VALUES (51, 9, 13, 7, '2024-04-21 14:30:00', 'cancelled');
INSERT INTO appointment VALUES (52, 17, 5, 11, '2024-04-26 16:00:00', 'done');
INSERT INTO appointment VALUES (53, 23, 2, 3, '2024-05-01 11:45:00', 'arranged');
INSERT INTO appointment VALUES (54, 29, 10, 12, '2024-05-06 09:00:00', 'arranged');
INSERT INTO appointment VALUES (55, 32, 7, 16, '2024-05-11 13:30:00', 'arranged');
INSERT INTO appointment VALUES (56, 5, 6, 6, '2024-05-03 14:00:00', 'arranged');
INSERT INTO appointment VALUES (57, 19, 8, 8, '2024-05-08 11:30:00', 'arranged');
INSERT INTO appointment VALUES (58, 33, 1, 3, '2024-05-13 16:45:00', 'arranged');
INSERT INTO appointment VALUES (59, 8, 12, 12, '2024-05-18 09:15:00', 'arranged');
INSERT INTO appointment VALUES (60, 14, 14, 9, '2024-05-23 15:30:00', 'arranged');
INSERT INTO appointment VALUES (61, 26, 5, 11, '2024-05-28 10:00:00', 'arranged');
INSERT INTO appointment VALUES (62, 3, 2, 3, '2024-04-02 13:45:00', 'done');
INSERT INTO appointment VALUES (63, 12, 7, 6, '2024-04-07 11:00:00', 'cancelled');
INSERT INTO appointment VALUES (64, 22, 9, 10, '2024-04-12 16:30:00', 'done');
INSERT INTO appointment VALUES (65, 30, 4, 5, '2024-04-17 14:15:00', 'cancelled');
INSERT INTO appointment VALUES (66, 1, 13, 7, '2024-04-22 09:45:00', 'done');
INSERT INTO appointment VALUES (67, 16, 11, 3, '2024-04-27 12:00:00', 'done');
INSERT INTO appointment VALUES (68, 24, 6, 2, '2024-05-02 15:30:00', 'arranged');
INSERT INTO appointment VALUES (69, 35, 8, 8, '2024-05-07 10:15:00', 'arranged');
INSERT INTO appointment VALUES (70, 7, 3, 5, '2024-05-12 14:30:00', 'arranged');
INSERT INTO appointment VALUES (71, 21, 12, 12, '2024-05-17 11:45:00', 'arranged');
INSERT INTO appointment VALUES (72, 10, 1, 3, '2024-05-22 16:00:00', 'arranged');
INSERT INTO appointment VALUES (73, 18, 14, 9, '2024-05-27 13:15:00', 'arranged');
INSERT INTO appointment VALUES (74, 4, 5, 11, '2024-04-05 09:30:00', 'cancelled');
INSERT INTO appointment VALUES (75, 15, 7, 16, '2024-04-10 12:45:00', 'done');
INSERT INTO appointment VALUES (76, 35, 2, 3, '2024-05-01 10:00:00', 'arranged');
INSERT INTO appointment VALUES (77, 17, 5, 11, '2024-05-03 13:30:00', 'arranged');
INSERT INTO appointment VALUES (78, 29, 9, 10, '2024-05-05 16:00:00', 'arranged');
INSERT INTO appointment VALUES (79, 6, 12, 12, '2024-05-07 11:45:00', 'arranged');
INSERT INTO appointment VALUES (80, 23, 15, 16, '2024-05-09 14:30:00', 'arranged');
INSERT INTO appointment VALUES (81, 11, 1, 3, '2024-05-11 09:15:00', 'arranged');
INSERT INTO appointment VALUES (82, 32, 6, 2, '2024-05-13 12:00:00', 'arranged');
INSERT INTO appointment VALUES (83, 8, 8, 8, '2024-05-15 15:45:00', 'arranged');
INSERT INTO appointment VALUES (84, 20, 13, 7, '2024-05-17 10:30:00', 'arranged');
INSERT INTO appointment VALUES (85, 3, 4, 5, '2024-05-19 14:15:00', 'arranged');
INSERT INTO appointment VALUES (86, 27, 11, 3, '2024-05-21 16:30:00', 'arranged');
INSERT INTO appointment VALUES (87, 14, 7, 6, '2024-05-23 11:00:00', 'arranged');
INSERT INTO appointment VALUES (88, 33, 14, 9, '2024-05-25 13:45:00', 'arranged');
INSERT INTO appointment VALUES (89, 5, 2, 3, '2024-05-27 09:30:00', 'arranged');
INSERT INTO appointment VALUES (90, 19, 10, 12, '2024-05-29 12:15:00', 'arranged');
INSERT INTO appointment VALUES (91, 28, 6, 2, '2024-05-02 15:00:00', 'arranged');
INSERT INTO appointment VALUES (92, 12, 9, 10, '2024-05-04 10:45:00', 'arranged');
INSERT INTO appointment VALUES (93, 31, 13, 7, '2024-05-06 14:30:00', 'arranged');
INSERT INTO appointment VALUES (94, 7, 1, 3, '2024-05-08 16:45:00', 'arranged');
INSERT INTO appointment VALUES (95, 24, 5, 11, '2024-05-10 11:30:00', 'arranged');
INSERT INTO appointment VALUES (96, 16, 8, 8, '2024-05-12 09:00:00', 'arranged');
INSERT INTO appointment VALUES (97, 4, 12, 12, '2024-05-14 13:15:00', 'arranged');
INSERT INTO appointment VALUES (98, 22, 15, 16, '2024-05-16 15:30:00', 'arranged');
INSERT INTO appointment VALUES (99, 9, 4, 5, '2024-05-18 10:15:00', 'arranged');
INSERT INTO appointment VALUES (100, 30, 11, 3, '2024-05-20 14:00:00', 'arranged');
INSERT INTO appointment VALUES (101, 6, 2, 3, '2024-05-02 09:30:00', 'arranged');
INSERT INTO appointment VALUES (102, 15, 7, 6, '2024-05-02 14:00:00', 'arranged');
INSERT INTO appointment VALUES (103, 24, 11, 3, '2024-05-03 11:15:00', 'arranged');
INSERT INTO appointment VALUES (104, 33, 14, 9, '2024-05-03 16:30:00', 'arranged');
INSERT INTO appointment VALUES (105, 1, 4, 5, '2024-05-04 10:00:00', 'arranged');
INSERT INTO appointment VALUES (106, 10, 9, 10, '2024-05-04 15:45:00', 'arranged');
INSERT INTO appointment VALUES (107, 19, 13, 7, '2024-05-05 09:15:00', 'arranged');
INSERT INTO appointment VALUES (108, 28, 1, 3, '2024-05-05 13:30:00', 'arranged');
INSERT INTO appointment VALUES (109, 5, 6, 2, '2024-05-06 11:45:00', 'arranged');
INSERT INTO appointment VALUES (110, 14, 12, 12, '2024-05-06 16:00:00', 'arranged');
INSERT INTO appointment VALUES (111, 23, 8, 8, '2024-05-07 10:30:00', 'arranged');
INSERT INTO appointment VALUES (112, 32, 5, 11, '2024-05-07 14:15:00', 'arranged');
INSERT INTO appointment VALUES (113, 8, 2, 3, '2024-05-08 09:00:00', 'arranged');
INSERT INTO appointment VALUES (114, 17, 15, 16, '2024-05-08 12:45:00', 'arranged');
INSERT INTO appointment VALUES (115, 26, 4, 5, '2024-05-09 11:30:00', 'arranged');
INSERT INTO appointment VALUES (116, 35, 9, 10, '2024-05-09 15:15:00', 'arranged');
INSERT INTO appointment VALUES (117, 3, 13, 7, '2024-05-10 10:00:00', 'arranged');
INSERT INTO appointment VALUES (118, 12, 1, 3, '2024-05-10 14:45:00', 'arranged');
INSERT INTO appointment VALUES (119, 21, 6, 2, '2024-05-11 09:30:00', 'arranged');
INSERT INTO appointment VALUES (120, 30, 12, 12, '2024-05-11 13:15:00', 'arranged');
INSERT INTO appointment VALUES (121, 7, 8, 8, '2024-05-12 11:00:00', 'arranged');
INSERT INTO appointment VALUES (122, 16, 5, 11, '2024-05-12 15:45:00', 'arranged');
INSERT INTO appointment VALUES (123, 25, 2, 3, '2024-05-13 10:30:00', 'arranged');
INSERT INTO appointment VALUES (124, 34, 15, 16, '2024-05-13 14:15:00', 'arranged');
INSERT INTO appointment VALUES (125, 2, 4, 5, '2024-05-14 09:00:00', 'arranged');
INSERT INTO appointment VALUES (126, 11, 9, 10, '2024-05-14 12:45:00', 'arranged');
INSERT INTO appointment VALUES (127, 20, 13, 7, '2024-05-15 11:30:00', 'arranged');
INSERT INTO appointment VALUES (128, 29, 1, 3, '2024-05-15 15:15:00', 'arranged');
INSERT INTO appointment VALUES (129, 6, 6, 2, '2024-05-16 10:00:00', 'arranged');
INSERT INTO appointment VALUES (130, 15, 12, 12, '2024-05-16 14:45:00', 'arranged');
INSERT INTO appointment VALUES (131, 24, 8, 8, '2024-05-17 09:30:00', 'arranged');
INSERT INTO appointment VALUES (132, 33, 5, 11, '2024-05-17 13:15:00', 'arranged');
INSERT INTO appointment VALUES (133, 1, 2, 3, '2024-05-18 11:00:00', 'arranged');
INSERT INTO appointment VALUES (134, 10, 15, 16, '2024-05-18 15:45:00', 'arranged');
INSERT INTO appointment VALUES (135, 19, 4, 5, '2024-05-19 10:30:00', 'arranged');
INSERT INTO appointment VALUES (136, 28, 9, 10, '2024-05-19 14:15:00', 'arranged');
INSERT INTO appointment VALUES (137, 5, 13, 7, '2024-05-20 09:00:00', 'arranged');
INSERT INTO appointment VALUES (138, 14, 1, 3, '2024-05-20 12:45:00', 'arranged');
INSERT INTO appointment VALUES (139, 23, 6, 2, '2024-05-21 11:30:00', 'arranged');
INSERT INTO appointment VALUES (140, 32, 12, 12, '2024-05-21 15:15:00', 'arranged');
INSERT INTO appointment VALUES (141, 8, 8, 8, '2024-05-22 10:00:00', 'arranged');
INSERT INTO appointment VALUES (142, 17, 5, 11, '2024-05-22 14:45:00', 'arranged');
INSERT INTO appointment VALUES (143, 26, 2, 3, '2024-05-23 09:30:00', 'arranged');
INSERT INTO appointment VALUES (144, 35, 15, 16, '2024-05-23 13:15:00', 'arranged');
INSERT INTO appointment VALUES (145, 3, 4, 5, '2024-05-24 11:00:00', 'arranged');
INSERT INTO appointment VALUES (146, 12, 9, 10, '2024-05-24 15:45:00', 'arranged');
INSERT INTO appointment VALUES (151, 25, 15, 16, '2024-05-01 09:15:00', 'arranged');
INSERT INTO appointment VALUES (152, 34, 4, 5, '2024-05-01 12:30:00', 'arranged');
INSERT INTO appointment VALUES (153, 2, 9, 10, '2024-05-01 14:45:00', 'arranged');
INSERT INTO appointment VALUES (154, 11, 1, 3, '2024-05-01 16:00:00', 'arranged');
INSERT INTO appointment VALUES (155, 20, 6, 2, '2024-05-01 18:15:00', 'arranged');
INSERT INTO appointment VALUES (156, 7, 12, 12, '2024-05-02 08:30:00', 'arranged');
INSERT INTO appointment VALUES (157, 16, 8, 8, '2024-05-02 11:00:00', 'arranged');
INSERT INTO appointment VALUES (158, 29, 5, 11, '2024-05-02 13:45:00', 'arranged');
INSERT INTO appointment VALUES (159, 3, 2, 3, '2024-05-02 15:30:00', 'arranged');
INSERT INTO appointment VALUES (160, 12, 14, 9, '2024-05-02 17:15:00', 'arranged');
INSERT INTO appointment VALUES (161, 21, 13, 7, '2024-05-03 09:00:00', 'arranged');
INSERT INTO appointment VALUES (162, 30, 1, 3, '2024-05-03 11:30:00', 'arranged');
INSERT INTO appointment VALUES (163, 5, 6, 2, '2024-05-03 14:15:00', 'arranged');
INSERT INTO appointment VALUES (164, 14, 11, 3, '2024-05-03 16:00:00', 'arranged');
INSERT INTO appointment VALUES (165, 23, 15, 16, '2024-05-03 18:45:00', 'arranged');
INSERT INTO appointment VALUES (166, 8, 2, 3, '2024-04-30 08:30:00', 'arranged');
INSERT INTO appointment VALUES (167, 17, 7, 6, '2024-04-30 10:45:00', 'arranged');
INSERT INTO appointment VALUES (168, 26, 12, 12, '2024-04-30 13:00:00', 'arranged');
INSERT INTO appointment VALUES (169, 35, 5, 11, '2024-04-30 15:15:00', 'arranged');
INSERT INTO appointment VALUES (170, 3, 9, 10, '2024-04-30 17:30:00', 'arranged');
INSERT INTO appointment VALUES (171, 12, 14, 9, '2024-04-30 19:45:00', 'arranged');



# payment table
INSERT INTO payment VALUES(1, (SELECT customer_id FROM appointment WHERE id = 1), '2024-03-03 14:30:00', (SELECT price FROM service WHERE id = 1), 'online');
INSERT INTO payment VALUES(2, (SELECT customer_id FROM appointment WHERE id = 2), '2024-03-02 15:30:00', (SELECT price FROM service WHERE id = 6), 'online');
INSERT INTO payment VALUES(3, (SELECT customer_id FROM appointment WHERE id = 3), '2024-03-20 16:45:00', (SELECT price FROM service WHERE id = 3), 'NA');
INSERT INTO payment VALUES(4, (SELECT customer_id FROM appointment WHERE id = 4), '2024-03-25 09:30:00', (SELECT price FROM service WHERE id = 14), 'NA');
INSERT INTO payment VALUES(5, (SELECT customer_id FROM appointment WHERE id = 5), '2024-02-28 13:15:00', (SELECT price FROM service WHERE id = 7), 'online');
INSERT INTO payment VALUES(6, (SELECT customer_id FROM appointment WHERE id = 6), '2024-04-05 10:00:00', (SELECT price FROM service WHERE id = 8), 'online');
INSERT INTO payment VALUES(7, (SELECT customer_id FROM appointment WHERE id = 7), '2024-04-12 14:45:00', (SELECT price FROM service WHERE id = 13), 'online');
INSERT INTO payment VALUES(8, (SELECT customer_id FROM appointment WHERE id = 8), '2024-04-18 17:30:00', (SELECT price FROM service WHERE id = 15), 'online');
INSERT INTO payment VALUES(9, (SELECT customer_id FROM appointment WHERE id = 9), '2024-04-22 11:45:00', (SELECT price FROM service WHERE id = 5), 'online');
INSERT INTO payment VALUES(10, (SELECT customer_id FROM appointment WHERE id = 10), '2024-04-28 16:00:00', (SELECT price FROM service WHERE id = 9), 'online');

INSERT INTO payment VALUES(11, (SELECT customer_id FROM appointment WHERE id = 11), '2024-05-03 09:00:00', (SELECT price FROM service WHERE id = 10), 'NA');
INSERT INTO payment VALUES(12, (SELECT customer_id FROM appointment WHERE id = 12), '2024-05-08 14:30:00', (SELECT price FROM service WHERE id = 15), 'NA');
INSERT INTO payment VALUES(13, (SELECT customer_id FROM appointment WHERE id = 13), '2024-05-13 16:45:00', (SELECT price FROM service WHERE id = 4), 'NA');
INSERT INTO payment VALUES(14, (SELECT customer_id FROM appointment WHERE id = 14), '2024-05-18 11:15:00', (SELECT price FROM service WHERE id = 2), 'NA');
INSERT INTO payment VALUES(15, (SELECT customer_id FROM appointment WHERE id = 15), '2024-05-22 10:30:00', (SELECT price FROM service WHERE id = 12), 'NA');
INSERT INTO payment VALUES(16, (SELECT customer_id FROM appointment WHERE id = 16), '2024-05-28 13:45:00', (SELECT price FROM service WHERE id = 7), 'NA');
INSERT INTO payment VALUES(17, (SELECT customer_id FROM appointment WHERE id = 17), '2024-05-31 15:00:00', (SELECT price FROM service WHERE id = 14), 'NA');
INSERT INTO payment VALUES(18, (SELECT customer_id FROM appointment WHERE id = 18), '2024-06-05 09:30:00', (SELECT price FROM service WHERE id = 6), 'NA');
INSERT INTO payment VALUES(19, (SELECT customer_id FROM appointment WHERE id = 19), '2024-06-10 14:00:00', (SELECT price FROM service WHERE id = 8), 'NA');
INSERT INTO payment VALUES(20, (SELECT customer_id FROM appointment WHERE id = 20), '2024-06-15 16:15:00', (SELECT price FROM service WHERE id = 11), 'NA');
INSERT INTO payment VALUES(21, (SELECT customer_id FROM appointment WHERE id = 21), '2024-03-02 15:30:00', (SELECT price FROM service WHERE id = 9), 'online');
INSERT INTO payment VALUES(22, (SELECT customer_id FROM appointment WHERE id = 22), '2024-03-07 11:45:00', (SELECT price FROM service WHERE id = 15), 'salon cash');
INSERT INTO payment VALUES(23, (SELECT customer_id FROM appointment WHERE id = 23), '2024-03-12 16:15:00', (SELECT price FROM service WHERE id = 4), 'NA');
INSERT INTO payment VALUES(24, (SELECT customer_id FROM appointment WHERE id = 24), '2024-02-17 14:30:00', (SELECT price FROM service WHERE id = 13), 'salon card');
INSERT INTO payment VALUES(25, (SELECT customer_id FROM appointment WHERE id = 25), '2024-02-22 09:00:00', (SELECT price FROM service WHERE id = 5), 'online');
INSERT INTO payment VALUES(26, (SELECT customer_id FROM appointment WHERE id = 26), '2024-02-27 13:45:00', (SELECT price FROM service WHERE id = 1), 'salon cash');
INSERT INTO payment VALUES(27, (SELECT customer_id FROM appointment WHERE id = 27), '2024-03-01 10:30:00', (SELECT price FROM service WHERE id = 8), 'salon card');
INSERT INTO payment VALUES(28, (SELECT customer_id FROM appointment WHERE id = 28), '2024-03-04 14:00:00', (SELECT price FROM service WHERE id = 6), 'NA');
INSERT INTO payment VALUES(29, (SELECT customer_id FROM appointment WHERE id = 29), '2024-03-09 11:15:00', (SELECT price FROM service WHERE id = 14), 'NA');
INSERT INTO payment VALUES(30, (SELECT customer_id FROM appointment WHERE id = 30), '2024-03-04 16:45:00', (SELECT price FROM service WHERE id = 2), 'online');
INSERT INTO payment VALUES(31, (SELECT customer_id FROM appointment WHERE id = 31), '2024-04-02 09:30:00', (SELECT price FROM service WHERE id = 11), 'salon cash');
INSERT INTO payment VALUES(32, (SELECT customer_id FROM appointment WHERE id = 32), '2024-04-07 14:15:00', (SELECT price FROM service WHERE id = 7), 'salon card');
INSERT INTO payment VALUES(33, (SELECT customer_id FROM appointment WHERE id = 33), '2024-04-12 16:45:00', (SELECT price FROM service WHERE id = 2), 'online');
INSERT INTO payment VALUES(34, (SELECT customer_id FROM appointment WHERE id = 34), '2024-04-17 10:30:00', (SELECT price FROM service WHERE id = 12), 'salon cash');
INSERT INTO payment VALUES(35, (SELECT customer_id FROM appointment WHERE id = 35), '2024-04-22 13:45:00', (SELECT price FROM service WHERE id = 7), 'salon card');
INSERT INTO payment VALUES(36, (SELECT customer_id FROM appointment WHERE id = 36), '2024-04-27 15:00:00', (SELECT price FROM service WHERE id = 14), 'online');
INSERT INTO payment VALUES(37, (SELECT customer_id FROM appointment WHERE id = 37), '2024-04-03 09:30:00', (SELECT price FROM service WHERE id = 6), 'salon cash');
INSERT INTO payment VALUES(38, (SELECT customer_id FROM appointment WHERE id = 38), '2024-04-08 14:00:00', (SELECT price FROM service WHERE id = 8), 'salon card');
INSERT INTO payment VALUES(39, (SELECT customer_id FROM appointment WHERE id = 39), '2024-04-13 16:15:00', (SELECT price FROM service WHERE id = 11), 'online');
INSERT INTO payment VALUES(40, (SELECT customer_id FROM appointment WHERE id = 40), '2024-04-18 11:30:00', (SELECT price FROM service WHERE id = 13), 'salon cash');
INSERT INTO payment VALUES(41, (SELECT customer_id FROM appointment WHERE id = 41), '2024-05-02 10:30:00', (SELECT price FROM service WHERE id = 3), 'NA');
INSERT INTO payment VALUES(42, (SELECT customer_id FROM appointment WHERE id = 42), '2024-05-07 15:45:00', (SELECT price FROM service WHERE id = 9), 'NA');
INSERT INTO payment VALUES(43, (SELECT customer_id FROM appointment WHERE id = 43), '2024-05-12 09:15:00', (SELECT price FROM service WHERE id = 12), 'NA');
INSERT INTO payment VALUES(44, (SELECT customer_id FROM appointment WHERE id = 44), '2024-05-17 14:00:00', (SELECT price FROM service WHERE id = 1), 'NA');
INSERT INTO payment VALUES(45, (SELECT customer_id FROM appointment WHERE id = 45), '2024-05-22 11:30:00', (SELECT price FROM service WHERE id = 7), 'NA');
INSERT INTO payment VALUES(46, (SELECT customer_id FROM appointment WHERE id = 46), '2024-05-27 16:45:00', (SELECT price FROM service WHERE id = 14), 'NA');
INSERT INTO payment VALUES(47, (SELECT customer_id FROM appointment WHERE id = 47), '2024-04-01 13:00:00', (SELECT price FROM service WHERE id = 6), 'salon card');
INSERT INTO payment VALUES(48, (SELECT customer_id FROM appointment WHERE id = 48), '2024-04-06 09:30:00', (SELECT price FROM service WHERE id = 4), 'online');
INSERT INTO payment VALUES(49, (SELECT customer_id FROM appointment WHERE id = 49), '2024-04-11 15:15:00', (SELECT price FROM service WHERE id = 11), 'NA');
INSERT INTO payment VALUES(50, (SELECT customer_id FROM appointment WHERE id = 50), '2024-04-16 10:45:00', (SELECT price FROM service WHERE id = 8), 'salon cash');
INSERT INTO payment VALUES(51, (SELECT customer_id FROM appointment WHERE id = 51), '2024-04-21 14:30:00', (SELECT price FROM service WHERE id = 13), 'NA');
INSERT INTO payment VALUES(52, (SELECT customer_id FROM appointment WHERE id = 52), '2024-04-26 16:00:00', (SELECT price FROM service WHERE id = 5), 'salon card');
INSERT INTO payment VALUES(53, (SELECT customer_id FROM appointment WHERE id = 53), '2024-05-01 11:45:00', (SELECT price FROM service WHERE id = 2), 'NA');
INSERT INTO payment VALUES(54, (SELECT customer_id FROM appointment WHERE id = 54), '2024-05-06 09:00:00', (SELECT price FROM service WHERE id = 10), 'NA');
INSERT INTO payment VALUES(55, (SELECT customer_id FROM appointment WHERE id = 55), '2024-05-11 13:30:00', (SELECT price FROM service WHERE id = 7), 'NA');
INSERT INTO payment VALUES(56, (SELECT customer_id FROM appointment WHERE id = 56), '2024-05-03 14:00:00', (SELECT price FROM service WHERE id = 6), 'NA');
INSERT INTO payment VALUES(57, (SELECT customer_id FROM appointment WHERE id = 57), '2024-05-08 11:30:00', (SELECT price FROM service WHERE id = 8), 'NA');
INSERT INTO payment VALUES(58, (SELECT customer_id FROM appointment WHERE id = 58), '2024-05-13 16:45:00', (SELECT price FROM service WHERE id = 1), 'NA');
INSERT INTO payment VALUES(59, (SELECT customer_id FROM appointment WHERE id = 59), '2024-05-18 09:15:00', (SELECT price FROM service WHERE id = 12), 'NA');
INSERT INTO payment VALUES(60, (SELECT customer_id FROM appointment WHERE id = 60), '2024-05-23 15:30:00', (SELECT price FROM service WHERE id = 14), 'NA');
INSERT INTO payment VALUES(61, (SELECT customer_id FROM appointment WHERE id = 61), '2024-05-28 10:00:00', (SELECT price FROM service WHERE id = 5), 'NA');
INSERT INTO payment VALUES(62, (SELECT customer_id FROM appointment WHERE id = 62), '2024-04-02 13:45:00', (SELECT price FROM service WHERE id = 2), 'online');
INSERT INTO payment VALUES(63, (SELECT customer_id FROM appointment WHERE id = 63), '2024-04-07 11:00:00', (SELECT price FROM service WHERE id = 7), 'NA');
INSERT INTO payment VALUES(64, (SELECT customer_id FROM appointment WHERE id = 64), '2024-04-12 16:30:00', (SELECT price FROM service WHERE id = 9), 'salon cash');
INSERT INTO payment VALUES(65, (SELECT customer_id FROM appointment WHERE id = 65), '2024-04-17 14:15:00', (SELECT price FROM service WHERE id = 4), 'NA');
INSERT INTO payment VALUES(66, (SELECT customer_id FROM appointment WHERE id = 66), '2024-04-22 09:45:00', (SELECT price FROM service WHERE id = 13), 'salon card');
INSERT INTO payment VALUES(67, (SELECT customer_id FROM appointment WHERE id = 67), '2024-04-27 12:00:00', (SELECT price FROM service WHERE id = 11), 'online');
INSERT INTO payment VALUES(68, (SELECT customer_id FROM appointment WHERE id = 68), '2024-05-02 15:30:00', (SELECT price FROM service WHERE id = 6), 'NA');
INSERT INTO payment VALUES(69, (SELECT customer_id FROM appointment WHERE id = 69), '2024-05-07 10:15:00', (SELECT price FROM service WHERE id = 8), 'NA');
INSERT INTO payment VALUES(70, (SELECT customer_id FROM appointment WHERE id = 70), '2024-05-12 14:30:00', (SELECT price FROM service WHERE id = 3), 'NA');
INSERT INTO payment VALUES(71, (SELECT customer_id FROM appointment WHERE id = 71), '2024-05-17 11:45:00', (SELECT price FROM service WHERE id = 12), 'NA');
INSERT INTO payment VALUES(72, (SELECT customer_id FROM appointment WHERE id = 72), '2024-05-22 16:00:00', (SELECT price FROM service WHERE id = 1), 'NA');
INSERT INTO payment VALUES(73, (SELECT customer_id FROM appointment WHERE id = 73), '2024-05-27 13:15:00', (SELECT price FROM service WHERE id = 14), 'NA');
INSERT INTO payment VALUES(74, (SELECT customer_id FROM appointment WHERE id = 74), '2024-04-05 09:30:00', (SELECT price FROM service WHERE id = 5), 'NA');
INSERT INTO payment VALUES(75, (SELECT customer_id FROM appointment WHERE id = 75), '2024-04-10 12:45:00', (SELECT price FROM service WHERE id = 7), 'salon cash');
INSERT INTO payment VALUES(76, (SELECT customer_id FROM appointment WHERE id = 76), '2024-05-01 10:00:00', (SELECT price FROM service WHERE id = 2), 'NA');
INSERT INTO payment VALUES(77, (SELECT customer_id FROM appointment WHERE id = 77), '2024-05-03 13:30:00', (SELECT price FROM service WHERE id = 5), 'NA');
INSERT INTO payment VALUES(78, (SELECT customer_id FROM appointment WHERE id = 78), '2024-05-05 16:00:00', (SELECT price FROM service WHERE id = 9), 'NA');
INSERT INTO payment VALUES(79, (SELECT customer_id FROM appointment WHERE id = 79), '2024-05-07 11:45:00', (SELECT price FROM service WHERE id = 12), 'NA');
INSERT INTO payment VALUES(80, (SELECT customer_id FROM appointment WHERE id = 80), '2024-05-09 14:30:00', (SELECT price FROM service WHERE id = 15), 'NA');
INSERT INTO payment VALUES(81, (SELECT customer_id FROM appointment WHERE id = 81), '2024-05-11 09:15:00', (SELECT price FROM service WHERE id = 1), 'NA');
INSERT INTO payment VALUES(82, (SELECT customer_id FROM appointment WHERE id = 82), '2024-05-13 12:00:00', (SELECT price FROM service WHERE id = 6), 'NA');
INSERT INTO payment VALUES(83, (SELECT customer_id FROM appointment WHERE id = 83), '2024-05-15 15:45:00', (SELECT price FROM service WHERE id = 8), 'NA');
INSERT INTO payment VALUES(84, (SELECT customer_id FROM appointment WHERE id = 84), '2024-05-17 10:30:00', (SELECT price FROM service WHERE id = 13), 'NA');
INSERT INTO payment VALUES(85, (SELECT customer_id FROM appointment WHERE id = 85), '2024-05-19 14:15:00', (SELECT price FROM service WHERE id = 4), 'NA');
INSERT INTO payment VALUES(86, (SELECT customer_id FROM appointment WHERE id = 86), '2024-05-21 16:30:00', (SELECT price FROM service WHERE id = 11), 'NA');
INSERT INTO payment VALUES(87, (SELECT customer_id FROM appointment WHERE id = 87), '2024-05-23 11:00:00', (SELECT price FROM service WHERE id = 7), 'NA');
INSERT INTO payment VALUES(88, (SELECT customer_id FROM appointment WHERE id = 88), '2024-05-25 13:45:00', (SELECT price FROM service WHERE id = 14), 'NA');
INSERT INTO payment VALUES(89, (SELECT customer_id FROM appointment WHERE id = 89), '2024-05-27 09:30:00', (SELECT price FROM service WHERE id = 2), 'NA');
INSERT INTO payment VALUES(90, (SELECT customer_id FROM appointment WHERE id = 90), '2024-05-29 12:15:00', (SELECT price FROM service WHERE id = 10), 'NA');
INSERT INTO payment VALUES(91, (SELECT customer_id FROM appointment WHERE id = 91), '2024-05-02 15:00:00', (SELECT price FROM service WHERE id = 6), 'NA');
INSERT INTO payment VALUES(92, (SELECT customer_id FROM appointment WHERE id = 92), '2024-05-04 10:45:00', (SELECT price FROM service WHERE id = 9), 'NA');
INSERT INTO payment VALUES(93, (SELECT customer_id FROM appointment WHERE id = 93), '2024-05-06 14:30:00', (SELECT price FROM service WHERE id = 13), 'NA');
INSERT INTO payment VALUES(94, (SELECT customer_id FROM appointment WHERE id = 94), '2024-05-08 16:45:00', (SELECT price FROM service WHERE id = 1), 'NA');
INSERT INTO payment VALUES(95, (SELECT customer_id FROM appointment WHERE id = 95), '2024-05-10 11:30:00', (SELECT price FROM service WHERE id = 5), 'NA');
INSERT INTO payment VALUES(96, (SELECT customer_id FROM appointment WHERE id = 96), '2024-05-12 09:00:00', (SELECT price FROM service WHERE id = 8), 'NA');
INSERT INTO payment VALUES(97, (SELECT customer_id FROM appointment WHERE id = 97), '2024-05-14 13:15:00', (SELECT price FROM service WHERE id = 12), 'NA');
INSERT INTO payment VALUES(98, (SELECT customer_id FROM appointment WHERE id = 98), '2024-05-16 15:30:00', (SELECT price FROM service WHERE id = 15), 'NA');
INSERT INTO payment VALUES(99, (SELECT customer_id FROM appointment WHERE id = 99), '2024-05-18 10:15:00', (SELECT price FROM service WHERE id = 4), 'NA');
INSERT INTO payment VALUES(100, (SELECT customer_id FROM appointment WHERE id = 100), '2024-05-20 14:00:00', (SELECT price FROM service WHERE id = 11), 'NA');
INSERT INTO payment VALUES(101, (SELECT customer_id FROM appointment WHERE id = 101), '2024-05-02 09:30:00', (SELECT price FROM service WHERE id = 2), 'NA');
INSERT INTO payment VALUES(102, (SELECT customer_id FROM appointment WHERE id = 102), '2024-05-02 14:00:00', (SELECT price FROM service WHERE id = 7), 'NA');
INSERT INTO payment VALUES(103, (SELECT customer_id FROM appointment WHERE id = 103), '2024-05-03 11:15:00', (SELECT price FROM service WHERE id = 11), 'NA');
INSERT INTO payment VALUES(104, (SELECT customer_id FROM appointment WHERE id = 104), '2024-05-03 16:30:00', (SELECT price FROM service WHERE id = 14), 'NA');
INSERT INTO payment VALUES(105, (SELECT customer_id FROM appointment WHERE id = 105), '2024-05-04 10:00:00', (SELECT price FROM service WHERE id = 4), 'NA');
INSERT INTO payment VALUES(106, (SELECT customer_id FROM appointment WHERE id = 106), '2024-05-04 15:45:00', (SELECT price FROM service WHERE id = 9), 'NA');
INSERT INTO payment VALUES(107, (SELECT customer_id FROM appointment WHERE id = 107), '2024-05-05 09:15:00', (SELECT price FROM service WHERE id = 13), 'NA');
INSERT INTO payment VALUES(108, (SELECT customer_id FROM appointment WHERE id = 108), '2024-05-05 13:30:00', (SELECT price FROM service WHERE id = 1), 'NA');
INSERT INTO payment VALUES(109, (SELECT customer_id FROM appointment WHERE id = 109), '2024-05-06 11:45:00', (SELECT price FROM service WHERE id = 6), 'NA');
INSERT INTO payment VALUES(110, (SELECT customer_id FROM appointment WHERE id = 110), '2024-05-06 16:00:00', (SELECT price FROM service WHERE id = 12), 'NA');
INSERT INTO payment VALUES(111, (SELECT customer_id FROM appointment WHERE id = 111), '2024-05-07 10:30:00', (SELECT price FROM service WHERE id = 8), 'NA');
INSERT INTO payment VALUES(112, (SELECT customer_id FROM appointment WHERE id = 112), '2024-05-07 14:15:00', (SELECT price FROM service WHERE id = 5), 'NA');
INSERT INTO payment VALUES(113, (SELECT customer_id FROM appointment WHERE id = 113), '2024-05-08 09:00:00', (SELECT price FROM service WHERE id = 2), 'NA');
INSERT INTO payment VALUES(114, (SELECT customer_id FROM appointment WHERE id = 114), '2024-05-08 12:45:00', (SELECT price FROM service WHERE id = 15), 'NA');
INSERT INTO payment VALUES(115, (SELECT customer_id FROM appointment WHERE id = 115), '2024-05-09 11:30:00', (SELECT price FROM service WHERE id = 4), 'NA');
INSERT INTO payment VALUES(116, (SELECT customer_id FROM appointment WHERE id = 116), '2024-05-09 15:15:00', (SELECT price FROM service WHERE id = 9), 'NA');
INSERT INTO payment VALUES(117, (SELECT customer_id FROM appointment WHERE id = 117), '2024-05-10 10:00:00', (SELECT price FROM service WHERE id = 13), 'NA');
INSERT INTO payment VALUES(118, (SELECT customer_id FROM appointment WHERE id = 118), '2024-05-10 14:45:00', (SELECT price FROM service WHERE id = 1), 'NA');
INSERT INTO payment VALUES(119, (SELECT customer_id FROM appointment WHERE id = 119), '2024-05-11 09:30:00', (SELECT price FROM service WHERE id = 6), 'NA');
INSERT INTO payment VALUES(120, (SELECT customer_id FROM appointment WHERE id = 120), '2024-05-11 13:15:00', (SELECT price FROM service WHERE id = 12), 'NA');
INSERT INTO payment VALUES(121, (SELECT customer_id FROM appointment WHERE id = 121), '2024-05-12 11:00:00', (SELECT price FROM service WHERE id = 8), 'NA');
INSERT INTO payment VALUES(122, (SELECT customer_id FROM appointment WHERE id = 122), '2024-05-12 15:45:00', (SELECT price FROM service WHERE id = 5), 'NA');
INSERT INTO payment VALUES(123, (SELECT customer_id FROM appointment WHERE id = 123), '2024-05-13 10:30:00', (SELECT price FROM service WHERE id = 2), 'NA');
INSERT INTO payment VALUES(124, (SELECT customer_id FROM appointment WHERE id = 124), '2024-05-13 14:15:00', (SELECT price FROM service WHERE id = 15), 'NA');
INSERT INTO payment VALUES(125, (SELECT customer_id FROM appointment WHERE id = 125), '2024-05-14 09:00:00', (SELECT price FROM service WHERE id = 4), 'NA');
INSERT INTO payment VALUES(126, (SELECT customer_id FROM appointment WHERE id = 126), '2024-05-14 12:45:00', (SELECT price FROM service WHERE id = 9), 'NA');
INSERT INTO payment VALUES(127, (SELECT customer_id FROM appointment WHERE id = 127), '2024-05-15 11:30:00', (SELECT price FROM service WHERE id = 13), 'NA');
INSERT INTO payment VALUES(128, (SELECT customer_id FROM appointment WHERE id = 128), '2024-05-15 15:15:00', (SELECT price FROM service WHERE id = 1), 'NA');
INSERT INTO payment VALUES(129, (SELECT customer_id FROM appointment WHERE id = 129), '2024-05-16 10:00:00', (SELECT price FROM service WHERE id = 6), 'NA');
INSERT INTO payment VALUES(130, (SELECT customer_id FROM appointment WHERE id = 130), '2024-05-16 14:45:00', (SELECT price FROM service WHERE id = 12), 'NA');
INSERT INTO payment VALUES(131, (SELECT customer_id FROM appointment WHERE id = 131), '2024-05-17 09:30:00', (SELECT price FROM service WHERE id = 8), 'NA');
INSERT INTO payment VALUES(132, (SELECT customer_id FROM appointment WHERE id = 132), '2024-05-17 13:15:00', (SELECT price FROM service WHERE id = 5), 'NA');
INSERT INTO payment VALUES(133, (SELECT customer_id FROM appointment WHERE id = 133), '2024-05-18 11:00:00', (SELECT price FROM service WHERE id = 2), 'NA');
INSERT INTO payment VALUES(134, (SELECT customer_id FROM appointment WHERE id = 134), '2024-05-18 15:45:00', (SELECT price FROM service WHERE id = 15), 'NA');
INSERT INTO payment VALUES(135, (SELECT customer_id FROM appointment WHERE id = 135), '2024-05-19 10:30:00', (SELECT price FROM service WHERE id = 4), 'NA');
INSERT INTO payment VALUES(136, (SELECT customer_id FROM appointment WHERE id = 136), '2024-05-19 14:15:00', (SELECT price FROM service WHERE id = 9), 'NA');
INSERT INTO payment VALUES(137, (SELECT customer_id FROM appointment WHERE id = 137), '2024-05-20 09:00:00', (SELECT price FROM service WHERE id = 13), 'NA');
INSERT INTO payment VALUES(138, (SELECT customer_id FROM appointment WHERE id = 138), '2024-05-20 12:45:00', (SELECT price FROM service WHERE id = 1), 'NA');
INSERT INTO payment VALUES(139, (SELECT customer_id FROM appointment WHERE id = 139), '2024-05-21 11:30:00', (SELECT price FROM service WHERE id = 6), 'NA');
INSERT INTO payment VALUES(140, (SELECT customer_id FROM appointment WHERE id = 140), '2024-05-21 15:15:00', (SELECT price FROM service WHERE id = 12), 'NA');
INSERT INTO payment VALUES(141, (SELECT customer_id FROM appointment WHERE id = 141), '2024-05-22 10:00:00', (SELECT price FROM service WHERE id = 8), 'NA');
INSERT INTO payment VALUES(142, (SELECT customer_id FROM appointment WHERE id = 142), '2024-05-22 14:45:00', (SELECT price FROM service WHERE id = 5), 'NA');
INSERT INTO payment VALUES(143, (SELECT customer_id FROM appointment WHERE id = 143), '2024-05-23 09:30:00', (SELECT price FROM service WHERE id = 2), 'NA');
INSERT INTO payment VALUES(144, (SELECT customer_id FROM appointment WHERE id = 144), '2024-05-23 13:15:00', (SELECT price FROM service WHERE id = 15), 'NA');
INSERT INTO payment VALUES(145, (SELECT customer_id FROM appointment WHERE id = 145), '2024-05-24 11:00:00', (SELECT price FROM service WHERE id = 4), 'NA');
INSERT INTO payment VALUES(146, (SELECT customer_id FROM appointment WHERE id = 146), '2024-05-24 15:45:00', (SELECT price FROM service WHERE id = 9), 'NA');
INSERT INTO payment VALUES(151, (SELECT customer_id FROM appointment WHERE id = 151), '2024-05-01 09:15:00', (SELECT price FROM service WHERE id = 15), 'NA');
INSERT INTO payment VALUES(152, (SELECT customer_id FROM appointment WHERE id = 152), '2024-05-01 12:30:00', (SELECT price FROM service WHERE id = 4), 'NA');
INSERT INTO payment VALUES(153, (SELECT customer_id FROM appointment WHERE id = 153), '2024-05-01 14:45:00', (SELECT price FROM service WHERE id = 9), 'NA');
INSERT INTO payment VALUES(154, (SELECT customer_id FROM appointment WHERE id = 154), '2024-05-01 16:00:00', (SELECT price FROM service WHERE id = 1), 'NA');
INSERT INTO payment VALUES(155, (SELECT customer_id FROM appointment WHERE id = 155), '2024-05-01 18:15:00', (SELECT price FROM service WHERE id = 6), 'NA');
INSERT INTO payment VALUES(156, (SELECT customer_id FROM appointment WHERE id = 156), '2024-05-02 08:30:00', (SELECT price FROM service WHERE id = 12), 'NA');
INSERT INTO payment VALUES(157, (SELECT customer_id FROM appointment WHERE id = 157), '2024-05-02 11:00:00', (SELECT price FROM service WHERE id = 8), 'NA');
INSERT INTO payment VALUES(158, (SELECT customer_id FROM appointment WHERE id = 158), '2024-05-02 13:45:00', (SELECT price FROM service WHERE id = 5), 'NA');
INSERT INTO payment VALUES(159, (SELECT customer_id FROM appointment WHERE id = 159), '2024-05-02 15:30:00', (SELECT price FROM service WHERE id = 2), 'NA');
INSERT INTO payment VALUES(160, (SELECT customer_id FROM appointment WHERE id = 160), '2024-05-02 17:15:00', (SELECT price FROM service WHERE id = 14), 'NA');
INSERT INTO payment VALUES(161, (SELECT customer_id FROM appointment WHERE id = 161), '2024-05-03 09:00:00', (SELECT price FROM service WHERE id = 13), 'NA');
INSERT INTO payment VALUES(162, (SELECT customer_id FROM appointment WHERE id = 162), '2024-05-03 11:30:00', (SELECT price FROM service WHERE id = 1), 'NA');
INSERT INTO payment VALUES(163, (SELECT customer_id FROM appointment WHERE id = 163), '2024-05-03 14:15:00', (SELECT price FROM service WHERE id = 6), 'NA');
INSERT INTO payment VALUES(164, (SELECT customer_id FROM appointment WHERE id = 164), '2024-05-03 16:00:00', (SELECT price FROM service WHERE id = 11), 'NA');
INSERT INTO payment VALUES(165, (SELECT customer_id FROM appointment WHERE id = 165), '2024-05-03 18:45:00', (SELECT price FROM service WHERE id = 15), 'NA');
INSERT INTO payment VALUES(166, (SELECT customer_id FROM appointment WHERE id = 166), '2024-04-30 08:30:00', (SELECT price FROM service WHERE id = 2), 'NA');
INSERT INTO payment VALUES(167, (SELECT customer_id FROM appointment WHERE id = 167), '2024-04-30 10:45:00', (SELECT price FROM service WHERE id = 7), 'NA');
INSERT INTO payment VALUES(168, (SELECT customer_id FROM appointment WHERE id = 168), '2024-04-30 13:00:00', (SELECT price FROM service WHERE id = 12), 'NA');
INSERT INTO payment VALUES(169, (SELECT customer_id FROM appointment WHERE id = 169), '2024-04-30 15:15:00', (SELECT price FROM service WHERE id = 5), 'NA');
INSERT INTO payment VALUES(170, (SELECT customer_id FROM appointment WHERE id = 170), '2024-04-30 17:30:00', (SELECT price FROM service WHERE id = 9), 'NA');
INSERT INTO payment VALUES(171, (SELECT customer_id FROM appointment WHERE id = 171), '2024-04-30 19:45:00', (SELECT price FROM service WHERE id = 14), 'NA');


# employee2service table
INSERT IGNORE INTO employee2service (employee_id, service_id)
SELECT employee_id, service_id
    FROM appointment;

# services2products table
INSERT INTO services2products (service_id, product_id) VALUES (1, 1);
INSERT INTO services2products (service_id, product_id) VALUES (8, 1);

INSERT INTO services2products (service_id, product_id) VALUES (1, 2);
INSERT INTO services2products (service_id, product_id) VALUES (8, 2);
INSERT INTO services2products (service_id, product_id) VALUES (2, 2);
INSERT INTO services2products (service_id, product_id) VALUES (9, 2);

INSERT INTO services2products (service_id, product_id) VALUES (1, 3);
INSERT INTO services2products (service_id, product_id) VALUES (8, 3);
INSERT INTO services2products (service_id, product_id) VALUES (2, 3);
INSERT INTO services2products (service_id, product_id) VALUES (9, 3);

INSERT INTO services2products (service_id, product_id) VALUES (1, 4);
INSERT INTO services2products (service_id, product_id) VALUES (8, 4);

INSERT INTO services2products (service_id, product_id) VALUES (2, 5);
INSERT INTO services2products (service_id, product_id) VALUES (9, 5);

INSERT INTO services2products (service_id, product_id) VALUES (2, 6);
INSERT INTO services2products (service_id, product_id) VALUES (9, 6);

INSERT INTO services2products (service_id, product_id) VALUES (2, 7);
INSERT INTO services2products (service_id, product_id) VALUES (9, 7);

INSERT INTO services2products (service_id, product_id) VALUES (3, 8);

INSERT INTO services2products (service_id, product_id) VALUES (3, 9);
INSERT INTO services2products (service_id, product_id) VALUES (10, 9);

INSERT INTO services2products (service_id, product_id) VALUES (4, 10);

INSERT INTO services2products (service_id, product_id) VALUES (4, 11);
INSERT INTO services2products (service_id, product_id) VALUES (11, 11);

INSERT INTO services2products (service_id, product_id) VALUES (5, 12);
INSERT INTO services2products (service_id, product_id) VALUES (11, 12);

INSERT INTO services2products (service_id, product_id) VALUES (5, 13);
INSERT INTO services2products (service_id, product_id) VALUES (11, 13);

INSERT INTO services2products (service_id, product_id) VALUES (5, 14);
INSERT INTO services2products (service_id, product_id) VALUES (11, 14);

INSERT INTO services2products (service_id, product_id) VALUES (6, 15);
INSERT INTO services2products (service_id, product_id) VALUES (15, 15);

INSERT INTO services2products (service_id, product_id) VALUES (7, 16);

INSERT INTO services2products (service_id, product_id) VALUES (8, 17);

INSERT INTO services2products (service_id, product_id) VALUES (2, 18);
INSERT INTO services2products (service_id, product_id) VALUES (9, 18);

INSERT INTO services2products (service_id, product_id) VALUES (3, 19);
INSERT INTO services2products (service_id, product_id) VALUES (10, 19);

INSERT INTO services2products (service_id, product_id) VALUES (4, 20);
INSERT INTO services2products (service_id, product_id) VALUES (11, 20);

INSERT INTO services2products (service_id, product_id) VALUES (12, 21);

INSERT INTO services2products (service_id, product_id) VALUES (1, 22);
INSERT INTO services2products (service_id, product_id) VALUES (8, 22);
INSERT INTO services2products (service_id, product_id) VALUES (2, 22);
INSERT INTO services2products (service_id, product_id) VALUES (9, 22);
INSERT INTO services2products (service_id, product_id) VALUES (12, 22);

INSERT INTO services2products (service_id, product_id) VALUES (3, 23);
INSERT INTO services2products (service_id, product_id) VALUES (13, 23);

INSERT INTO services2products (service_id, product_id) VALUES (6, 24);
INSERT INTO services2products (service_id, product_id) VALUES (15, 24);

INSERT INTO services2products (service_id, product_id) VALUES (1, 25);
INSERT INTO services2products (service_id, product_id) VALUES (8, 25);
INSERT INTO services2products (service_id, product_id) VALUES (2, 25);
INSERT INTO services2products (service_id, product_id) VALUES (9, 25);
INSERT INTO services2products (service_id, product_id) VALUES (12, 25);

INSERT INTO services2products (service_id, product_id) VALUES (3, 26);

INSERT INTO services2products (service_id, product_id) VALUES (4, 27);
INSERT INTO services2products (service_id, product_id) VALUES (5, 27);

INSERT INTO services2products (service_id, product_id) VALUES (5, 28);
INSERT INTO services2products (service_id, product_id) VALUES (11, 28);

INSERT INTO services2products (service_id, product_id) VALUES (6, 29);
INSERT INTO services2products (service_id, product_id) VALUES (15, 29);

INSERT INTO services2products (service_id, product_id) VALUES (10, 30);

INSERT INTO services2products (service_id, product_id) VALUES (5, 31);

INSERT INTO services2products (service_id, product_id) VALUES (2, 32);
INSERT INTO services2products (service_id, product_id) VALUES (9, 32);

INSERT INTO services2products (service_id, product_id) VALUES (4, 33);
INSERT INTO services2products (service_id, product_id) VALUES (11, 33);

INSERT INTO services2products (service_id, product_id) VALUES (12, 34);
