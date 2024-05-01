![812de814994dde0c0f48e4108bccab44_2_-removebg-preview](https://github.com/varvara-chornomorets/sql-project/assets/118897631/b487df22-dc9b-4652-9728-ae4188a61724)

# Beauty salon management system
> MySQL relational database

System to keep track of appointments, transactions, customers, products and employees of Beauty salon. University project.

## Installing / Getting started

To use this project, you need MySQL server. Here is an instruction on how to set up a local instance using Docker Desktop: https://github.com/Bardin08/kse-examples/blob/master/database-essentials/readme.md.
After setting up local MySQL server, you can clone this repository and open it in preferred IDE.
```shell
git clone https://github.com/your/awesome-project.git
```
To set up a database you can use file salon-schema-creation. To fill tables with data, you can use file data-insert.sql, modyfying the data to insert if needed.

### Database setup


To set up the database and populate it with sample data, follow these steps:

1. Open the `salon-schema-creation.sql` file in your IDE or MySQL client.
2. Execute the SQL statements in the file to create the necessary tables and schema.
3. Open the `data-insert.sql` file.
4. Modify the sample data in the file according to your requirements.
5. Execute the SQL statements in the file to insert the sample data into the database.

To add more data on a daily basis, you can use the `data-insert.sql` file as a template. Add new lines with the desired data and execute them individually, rather than running the entire file.

## Features

The `queries.sql` and `subqueries.sql` files contain a wide range of queries that you can execute separately. These include SELECT, UPDATE, and DELETE queries. Each query has a comment describing its functionality. Using these queries, you can:

- Find out how much money was spent on materials in the last 30 days, categorized by material type.
- Identify the most profitable services.
- Determine the top customers.
- Identify inactive customers.
- Select all appointments with service price more then set number.
- And much more!

## Contributing

Contributions to this project are welcome! If you'd like to contribute, please follow these steps:

1. Fork the repository.
2. Create a new branch for your feature or bug fix.
3. Make your changes and commit them with descriptive messages.
4. Push your changes to your forked repository.
5. Submit a pull request to the main repository.
