# Celestial Bodies Database

## Description
This project is part of the freeCodeCamp Relational Database certification. It's a PostgreSQL database that models celestial bodies in our universe, including galaxies, stars, planets, and moons. The goal was to build a database consisting of tables about celestial bodies, adhering to specific rules and tasks set by the course.

## Database Structure
The database consists of five main tables:

1. `galaxy`: Contains information about different galaxies.
2. `star`: Stores data about stars, linked to their respective galaxies.
3. `planet`: Contains information about planets, associated with their stars.
4. `moon`: Stores data about moons, linked to their respective planets.
5. `description`: An additional table with detailed descriptions of some celestial bodies.

## Table Details

### Galaxy
- Fields: galaxy_id, name, galaxy_types, distance_from_earth_in_mly, number_of_stars_in_billions

### Star
- Fields: star_id, name, star_types, age_in_million_of_years, galaxy_id

### Planet
- Fields: planet_id, name, planet_types, has_h2o, star_id

### Moon
- Fields: moon_id, name, is_spherical, diameter_in_km, planet_id

### Description
- Fields: description_id, name, description_text

## Key Features
- Implements primary keys for each table
- Uses foreign keys to establish relationships between tables
- Includes a variety of data types (INTEGER, VARCHAR, BOOLEAN, NUMERIC)
- Contains at least 20 rows in the `galaxy`, `star`, `planet`, and `moon` tables combined
- Utilizes PostgreSQL's SERIAL data type for auto-incrementing primary keys

## Setup and Usage
This database was developed and tested in a GitPod environment with PostgreSQL pre-installed. To use this database:

1. Ensure you have PostgreSQL installed on your system or use a GitPod environment.
2. Create a new database named 'universe'.
3. Run the SQL commands in the provided file to create the tables and insert the data.

## Learning Outcomes
Through this project, key learnings include:
- Building a PostgreSQL database from scratch
- Implementing primary and foreign keys to establish relationships between tables
- Understanding and utilizing PostgreSQL's SERIAL data type for auto-incrementing primary keys

## Future Enhancements
Potential improvements include:
- Enhancing the reference system of the description table to link with entries in other tables

## Resources
- PostgreSQL documentation is highly recommended for reference
- Optionally, AI chatbots can be helpful for troubleshooting and clarification

## Limitations
The database was developed within the constraints of a virtual machine (GitPod). For standalone database construction, users may need to adjust queries and syntax based on their specific PostgreSQL setup.

## Contributing
This project is part of a learning exercise. While it's not open for contributions, feel free to fork and modify for your own learning purposes.

## License
This project is open source and available under the [MIT License](LICENSE).
