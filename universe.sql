--
-- PostgreSQL database dump
--

-- Dumped from database version 12.17 (Ubuntu 12.17-1.pgdg22.04+1)
-- Dumped by pg_dump version 12.17 (Ubuntu 12.17-1.pgdg22.04+1)

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

DROP DATABASE universe;
--
-- Name: universe; Type: DATABASE; Schema: -; Owner: freecodecamp
--

CREATE DATABASE universe WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C.UTF-8' LC_CTYPE = 'C.UTF-8';


ALTER DATABASE universe OWNER TO freecodecamp;

\connect universe

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- Name: description; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.description (
    description_id integer NOT NULL,
    name character varying(100) NOT NULL,
    description_text text
);


ALTER TABLE public.description OWNER TO freecodecamp;

--
-- Name: description_description_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.description_description_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.description_description_id_seq OWNER TO freecodecamp;

--
-- Name: description_description_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.description_description_id_seq OWNED BY public.description.description_id;


--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(100) NOT NULL,
    galaxy_types character varying(25),
    distance_from_earth_in_mly numeric(6,3),
    number_of_stars_in_billions integer
);


ALTER TABLE public.galaxy OWNER TO freecodecamp;

--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.galaxy_galaxy_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.galaxy_galaxy_id_seq OWNER TO freecodecamp;

--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.galaxy_galaxy_id_seq OWNED BY public.galaxy.galaxy_id;


--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    moon_id integer NOT NULL,
    name character varying(100) NOT NULL,
    is_spherical boolean,
    diameter_in_km numeric(10,1),
    planet_id integer
);


ALTER TABLE public.moon OWNER TO freecodecamp;

--
-- Name: moon_moon_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.moon_moon_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.moon_moon_id_seq OWNER TO freecodecamp;

--
-- Name: moon_moon_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.moon_moon_id_seq OWNED BY public.moon.moon_id;


--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    planet_id integer NOT NULL,
    name character varying(100) NOT NULL,
    planet_types character varying(25),
    has_h2o boolean,
    star_id integer
);


ALTER TABLE public.planet OWNER TO freecodecamp;

--
-- Name: planet_planet_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.planet_planet_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.planet_planet_id_seq OWNER TO freecodecamp;

--
-- Name: planet_planet_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.planet_planet_id_seq OWNED BY public.planet.planet_id;


--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    name character varying(100) NOT NULL,
    star_types character varying(25),
    age_in_million_of_years integer,
    galaxy_id integer
);


ALTER TABLE public.star OWNER TO freecodecamp;

--
-- Name: star_star_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.star_star_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.star_star_id_seq OWNER TO freecodecamp;

--
-- Name: star_star_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.star_star_id_seq OWNED BY public.star.star_id;


--
-- Name: description description_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.description ALTER COLUMN description_id SET DEFAULT nextval('public.description_description_id_seq'::regclass);


--
-- Name: galaxy galaxy_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy ALTER COLUMN galaxy_id SET DEFAULT nextval('public.galaxy_galaxy_id_seq'::regclass);


--
-- Name: moon moon_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon ALTER COLUMN moon_id SET DEFAULT nextval('public.moon_moon_id_seq'::regclass);


--
-- Name: planet planet_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet ALTER COLUMN planet_id SET DEFAULT nextval('public.planet_planet_id_seq'::regclass);


--
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_star_id_seq'::regclass);


--
-- Data for Name: description; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.description VALUES (1, 'Milky Way', 'The Milky Way is the galaxy that contains our Solar System. It is a barred spiral galaxy, with an estimated 100-400 billion stars.');
INSERT INTO public.description VALUES (2, 'Sun', 'The Sun is the star at the center of the Solar System. It is a nearly perfect sphere of hot plasma, with internal convective motion that generates a magnetic field via a dynamo process.');
INSERT INTO public.description VALUES (3, 'Earth', 'Earth is the third planet from the Sun and the only astronomical object known to harbor life.');
INSERT INTO public.description VALUES (4, 'Europa', 'Europa is one of Jupiter''s moons. It has a smooth and bright surface, with evidence of a subsurface ocean that might harbor extraterrestrial life.');
INSERT INTO public.description VALUES (5, 'Andromeda', 'The Andromeda Galaxy is the nearest spiral galaxy to the Milky Way and is expected to collide with the Milky Way in about 4.5 billion years.');


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Milky Way', 'Barred Spiral', 0.000, 100);
INSERT INTO public.galaxy VALUES (2, 'Andromeda', 'Spiral', 2.537, 1000);
INSERT INTO public.galaxy VALUES (3, 'Triangulum', 'Spiral', 2.730, 40);
INSERT INTO public.galaxy VALUES (4, 'Sombrero Galaxy', 'Spiral', 31.000, 80);
INSERT INTO public.galaxy VALUES (5, 'Whirlpool Galaxy', 'Spiral', 23.000, 100);
INSERT INTO public.galaxy VALUES (6, 'Pinwheel Galaxy', 'Spiral', 21.000, 100);
INSERT INTO public.galaxy VALUES (7, 'Messier 87', 'Elliptical', 53.500, 1200);
INSERT INTO public.galaxy VALUES (8, 'Centaurus A', 'Lenticular', 12.000, 100);
INSERT INTO public.galaxy VALUES (9, 'NGC 1300', 'Barred Spiral', 61.300, 100);
INSERT INTO public.galaxy VALUES (10, 'Messier 81', 'Spiral', 11.800, 250);
INSERT INTO public.galaxy VALUES (11, 'NGC 6946', 'Intermediate Spiral', 22.500, 40);
INSERT INTO public.galaxy VALUES (12, 'Hoag’s Object', 'Ring', 600.000, 80);
INSERT INTO public.galaxy VALUES (13, 'Messier 82', 'Starburst', 11.500, 30);
INSERT INTO public.galaxy VALUES (14, 'Cartwheel Galaxy', 'Ring', 500.000, 100);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'Moon', true, 3474.8, 3);
INSERT INTO public.moon VALUES (2, 'Phobos', false, 22.4, 4);
INSERT INTO public.moon VALUES (3, 'Deimos', false, 12.4, 4);
INSERT INTO public.moon VALUES (4, 'Io', true, 3643.2, 5);
INSERT INTO public.moon VALUES (5, 'Europa', true, 3121.6, 5);
INSERT INTO public.moon VALUES (6, 'Ganymede', true, 5268.2, 5);
INSERT INTO public.moon VALUES (7, 'Callisto', true, 4820.6, 5);
INSERT INTO public.moon VALUES (8, 'Titan', true, 5149.5, 6);
INSERT INTO public.moon VALUES (9, 'Rhea', true, 1527.6, 6);
INSERT INTO public.moon VALUES (10, 'Iapetus', true, 1469.0, 6);
INSERT INTO public.moon VALUES (11, 'Dione', true, 1122.8, 6);
INSERT INTO public.moon VALUES (12, 'Titania', true, 1577.8, 7);
INSERT INTO public.moon VALUES (13, 'Oberon', true, 1523.4, 7);
INSERT INTO public.moon VALUES (14, 'Umbriel', true, 1169.4, 7);
INSERT INTO public.moon VALUES (15, 'Miranda', true, 471.6, 7);
INSERT INTO public.moon VALUES (16, 'Triton', true, 2706.8, 8);
INSERT INTO public.moon VALUES (17, 'Proteus', false, 420.0, 8);
INSERT INTO public.moon VALUES (18, 'Proxima b I', false, 300.0, 9);
INSERT INTO public.moon VALUES (19, 'Proxima b II', true, 1200.0, 9);
INSERT INTO public.moon VALUES (20, 'Amalthea', false, 250.0, 5);
INSERT INTO public.moon VALUES (21, 'Himalia', false, 170.0, 5);
INSERT INTO public.moon VALUES (22, 'Thebe', false, 98.6, 5);
INSERT INTO public.moon VALUES (23, 'Metis', false, 60.0, 5);
INSERT INTO public.moon VALUES (24, 'Enceladus', true, 504.2, 6);
INSERT INTO public.moon VALUES (25, 'Tethys', true, 1062.2, 6);
INSERT INTO public.moon VALUES (26, 'Mimas', true, 396.4, 6);
INSERT INTO public.moon VALUES (27, 'Ariel', true, 1157.8, 7);
INSERT INTO public.moon VALUES (28, 'Puck', false, 162.0, 7);
INSERT INTO public.moon VALUES (29, 'Cressida', false, 79.6, 7);
INSERT INTO public.moon VALUES (30, 'Nereid', false, 340.0, 8);
INSERT INTO public.moon VALUES (31, 'Larissa', false, 193.0, 8);
INSERT INTO public.moon VALUES (32, 'Proxima b III', false, 500.0, 9);
INSERT INTO public.moon VALUES (33, 'Proxima b IV', true, 900.0, 9);
INSERT INTO public.moon VALUES (34, 'M87 I', true, 2500.0, 17);
INSERT INTO public.moon VALUES (35, 'M87 II', true, 3000.0, 17);
INSERT INTO public.moon VALUES (36, 'M87 III', true, 1800.0, 17);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Mercury', 'Terrestrial', false, 1);
INSERT INTO public.planet VALUES (2, 'Venus', 'Terrestrial', false, 1);
INSERT INTO public.planet VALUES (3, 'Earth', 'Terrestrial', true, 1);
INSERT INTO public.planet VALUES (4, 'Mars', 'Terrestrial', true, 1);
INSERT INTO public.planet VALUES (5, 'Jupiter', 'Gas Giant', false, 1);
INSERT INTO public.planet VALUES (6, 'Saturn', 'Gas Giant', false, 1);
INSERT INTO public.planet VALUES (7, 'Uranus', 'Ice Giant', false, 1);
INSERT INTO public.planet VALUES (8, 'Neptune', 'Ice Giant', false, 1);
INSERT INTO public.planet VALUES (9, 'Proxima b', 'Exoplanet', true, 6);
INSERT INTO public.planet VALUES (10, 'Andromeda I b', 'Gas Giant', false, 7);
INSERT INTO public.planet VALUES (11, 'Andromeda VII b', 'Terrestrial', true, 8);
INSERT INTO public.planet VALUES (12, 'M33 X-7 b', 'Gas Giant', false, 9);
INSERT INTO public.planet VALUES (13, 'Betelgeuse b', 'Gas Giant', false, 2);
INSERT INTO public.planet VALUES (14, 'Rigel b', 'Gas Giant', false, 3);
INSERT INTO public.planet VALUES (15, 'Proxima Centauri b', 'Exoplanet', true, 4);
INSERT INTO public.planet VALUES (16, 'Sirius b', 'Ice Giant', false, 5);
INSERT INTO public.planet VALUES (17, 'Messier 87 b', 'Terrestrial', true, 10);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'Sun', 'G-Type Main-Sequence', 4600, 1);
INSERT INTO public.star VALUES (2, 'Betelgeuse', 'Red Supergiant', 10000, 1);
INSERT INTO public.star VALUES (3, 'Rigel', 'Blue Supergiant', 8000, 1);
INSERT INTO public.star VALUES (4, 'Proxima Centauri', 'Red Dwarf', 4500, 1);
INSERT INTO public.star VALUES (5, 'Sirius', 'A-Type Main-Sequence', 300, 1);
INSERT INTO public.star VALUES (6, 'Alpha Centauri A', 'G-Type Main-Sequence', 5500, 1);
INSERT INTO public.star VALUES (7, 'Andromeda I', 'Red Giant', 9000, 2);
INSERT INTO public.star VALUES (8, 'Andromeda VII', 'Yellow Dwarf', 4500, 2);
INSERT INTO public.star VALUES (9, 'M33 X-7', 'Black Hole Binary', 10000, 3);
INSERT INTO public.star VALUES (10, 'Messier 87 Black Hole', 'Supermassive Black Hole', 12000, 7);


--
-- Name: description_description_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.description_description_id_seq', 5, true);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 14, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 36, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 17, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 10, true);


--
-- Name: description description_description_text_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.description
    ADD CONSTRAINT description_description_text_key UNIQUE (description_text);


--
-- Name: description description_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.description
    ADD CONSTRAINT description_pkey PRIMARY KEY (description_id);


--
-- Name: galaxy galaxy_name; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_name UNIQUE (name);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: moon moon_name; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_name UNIQUE (name);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: planet planet_name; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_name UNIQUE (name);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: star star_name; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_name UNIQUE (name);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: star fk_galaxy; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT fk_galaxy FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- Name: moon fk_planet; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT fk_planet FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: planet fk_star; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT fk_star FOREIGN KEY (star_id) REFERENCES public.star(star_id);


--
-- PostgreSQL database dump complete
--

