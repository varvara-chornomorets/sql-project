use schema_salon;

CREATE TABLE service (
                         id INTEGER PRIMARY KEY,
                         name VARCHAR(255) NOT NULL,
                         description TEXT NOT NULL,
                         duration INTEGER NOT NULL,
                         price DOUBLE NOT NULL
);
CREATE TABLE product (
                         id INTEGER PRIMARY KEY,
                         name VARCHAR(255) NOT NULL,
                         descrirtion TEXT,
                         quantity INTEGER NOT NULL,
                         cost DOUBLE NOT NULL
);
CREATE TABLE customer (
                          id INTEGER PRIMARY KEY,
                          name VARCHAR(255) NOT NULL,
                          phone CHAR(12) NOT NULL,
                          email  VARCHAR(255),
                          address VARCHAR(255)
);
CREATE TABLE employee(
                         id INTEGER PRIMARY KEY,
                         name VARCHAR(255) NOT NULL,
                         phone CHAR(12) NOT NULL,
                         email VARCHAR(255) NOT NULL,
                         position ENUM('Junior', 'Middle', 'Senior') NOT NULL,
                         salary DOUBLE NOT NUll
);

CREATE TABLE appointment (
                             id INTEGER PRIMARY KEY,
                             customer_id INTEGER NOT NULL,
                             service_id INTEGER NOT NULL,
                             employee_id INTEGER NOT NULL,
                             date_time DATETIME,
                             status ENUM ('arranged', 'done', 'cancelled'),
                             FOREIGN KEY (customer_id) REFERENCES customer(id),
                             FOREIGN KEY (service_id) REFERENCES service(id),
                             FOREIGN KEY (employee_id) REFERENCES employee(id)
);
CREATE TABLE payment (
                         appointment_id INTEGER NOT NULL,
                         customer_id INTEGER NOT NULL,
                         date_time DATETIME NOT NULL,
                         amount DOUBLE,
                         payment_method ENUM('online', 'NA', 'salon cash', 'salon card'),
                         FOREIGN KEY (appointment_id) REFERENCES appointment(id)
);
CREATE TABLE employee2service(
                                 employee_id INTEGER NOT NULL,
                                 service_id INTEGER NOT NULL,
                                 PRIMARY KEY (employee_id, service_id),
                                 FOREIGN KEY (service_id) REFERENCES service(id),
                                 FOREIGN KEY (employee_id) REFERENCES employee(id)
);
CREATE TABLE services2products (
                                   service_id INTEGER NOT NULL,
                                   product_id INTEGER NOT NULL,
                                   PRIMARY KEY (service_id, product_id),
                                   FOREIGN KEY (service_id) REFERENCES service(id),
                                   FOREIGN KEY (product_id) REFERENCES product(id)
);