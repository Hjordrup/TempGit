--
-- PostgreSQL database dump
--

-- Dumped from database version 12.9 (Ubuntu 12.9-2.pgdg20.04+1)
-- Dumped by pg_dump version 12.9 (Ubuntu 12.9-2.pgdg20.04+1)

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
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(40) NOT NULL,
    description text,
    has_life boolean,
    age_in_millions_of_years integer,
    distance_from_earth_in_km numeric(4,1)
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
    name character varying(40) NOT NULL,
    description text,
    has_life boolean,
    age_in_millions_of_years integer,
    distance_from_earth_in_km numeric(4,1),
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
    name character varying(40) NOT NULL,
    description text,
    has_life boolean,
    age_in_millions_of_years integer,
    distance_from_earth_in_km numeric(4,1),
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
    name character varying(40) NOT NULL,
    description text,
    has_life boolean,
    age_in_millions_of_years integer,
    distance_from_earth_in_km numeric(4,1),
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
-- Name: zodiac; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.zodiac (
    zodiac_id integer NOT NULL,
    name character varying(20) NOT NULL,
    planet_id integer
);


ALTER TABLE public.zodiac OWNER TO freecodecamp;

--
-- Name: zodiac_zodiac_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.zodiac_zodiac_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.zodiac_zodiac_id_seq OWNER TO freecodecamp;

--
-- Name: zodiac_zodiac_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.zodiac_zodiac_id_seq OWNED BY public.zodiac.zodiac_id;


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
-- Name: zodiac zodiac_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.zodiac ALTER COLUMN zodiac_id SET DEFAULT nextval('public.zodiac_zodiac_id_seq'::regclass);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Milky Way', 'The galaxy that you live in', true, 13610, 0.0);
INSERT INTO public.galaxy VALUES (2, 'Andromaeda Galxy', 'The Andromeda Galaxy (IPA: /ænˈdrɒmɪdə/), also known as Messier 31, M31, or NGC 224 and originally the Andromeda Nebula (see below), is a barred spiral galaxy with diameter of about 220,000 ly ', false, 400000, 2.5);
INSERT INTO public.galaxy VALUES (3, 'M87', 'M87, in full Messier 87, also called Virgo A or NGC4486, giant elliptical galaxy in the constellation Virgo whose nucleus contains a black hole, the first ever to be directly imaged. M87 is the most powerful known source of radio energy among the thousands of galactic systems constituting the so-called Virgo Cluster.', false, 400000, 2.5);
INSERT INTO public.galaxy VALUES (4, 'Magellanic Cloud', 'Magellanic Cloud, either of two satellite galaxies of the Milky Way Galaxy, the vast star system of which Earth is a minor component. These companion galaxies were named for the Portuguese navigator Ferdinand Magellan, whose crew discovered them during the first voyage around the world (1519–22). ', false, 40000000, 2.5);
INSERT INTO public.galaxy VALUES (5, 'Canis Major Dwarf Galaxy', 'Canis Major Dwarf Galaxy, member of the Local Group of galaxies (the group that includes the Milky Way Galaxy) named after the constellation Canis Major, in which it appears to lie. It was discovered in 2003 by a team of astronomers from France, Italy, Australia, and the United Kingdom who were involved in the Two-Micron All Sky Survey (2MASS), a project initiated in the late 1990s in which automated telescopes in Arizona and Chile systematically scanned the entire sky in three infrared wavelengths. The 2MASS allowed astronomers to peer through the clouds of dust that pervade the plane of the Milky Way.', false, 40000000, 2.5);
INSERT INTO public.galaxy VALUES (6, 'Cygnus A', 'Cygnus A, most powerful cosmic source of radio waves known, lying in the northern constellation Cygnus about 500,000,000 light-years (4.8 × 1021 km) from Earth. It has the appearance of a double galaxy. For a time it was thought to be two galaxies in collision, but the energy output is too large to be accounted for in that way. Radio energy is emitted from Cygnus A at an estimated 1045 ergs per second, more than 1011 times the rate at which energy of all kinds is emitted by the Sun. The source of the energy of Cygnus A remains undetermined.', false, 400000, 2.5);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'Moojn', 'A big planet', false, 50000, 200.1, 10);
INSERT INTO public.moon VALUES (2, 'calmerius', 'A big planet', false, 50000, 200.1, 10);
INSERT INTO public.moon VALUES (3, 'calmerius2', 'A big planet', false, 50000, 200.1, 10);
INSERT INTO public.moon VALUES (4, 'calmerius4', 'A big planet', false, 50000, 200.1, 10);
INSERT INTO public.moon VALUES (5, 'The one we called calmerius3', 'A big planet', false, 50000, 200.1, 10);
INSERT INTO public.moon VALUES (6, 'moon of the forgotten', 'A big planet', false, 50000, 200.1, 10);
INSERT INTO public.moon VALUES (7, 'moon of the remebered', 'A big planet', false, 50000, 200.1, 10);
INSERT INTO public.moon VALUES (8, 'moon of the lost', 'A big planet', false, 50000, 200.1, 10);
INSERT INTO public.moon VALUES (9, 'moon of the found', 'A big planet', false, 50000, 200.1, 10);
INSERT INTO public.moon VALUES (10, 'moon of silence', 'A big planet', false, 50000, 200.1, 10);
INSERT INTO public.moon VALUES (11, 'moon of screams', 'A big planet', false, 50000, 200.1, 10);
INSERT INTO public.moon VALUES (12, 'moon of joy', 'A big planet', false, 50000, 200.1, 10);
INSERT INTO public.moon VALUES (13, 'moon of tears', 'A big planet', false, 50000, 200.1, 10);
INSERT INTO public.moon VALUES (14, 'terranova', 'A big planet', false, 50000, 200.1, 10);
INSERT INTO public.moon VALUES (15, 'terimiso', 'A big planet', false, 50000, 200.1, 10);
INSERT INTO public.moon VALUES (16, 'terimiso1', 'A big planet', false, 50000, 200.1, 10);
INSERT INTO public.moon VALUES (17, 'terimiso2', 'A big planet', false, 50000, 200.1, 10);
INSERT INTO public.moon VALUES (18, 'terimiso3', 'A big planet', false, 50000, 200.1, 10);
INSERT INTO public.moon VALUES (19, 'terimiso4', 'A big planet', false, 50000, 200.1, 10);
INSERT INTO public.moon VALUES (20, 'terimiso5', 'A big planet', false, 50000, 200.1, 10);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Earth', 'Our living places', true, 50000, 0.0, 1);
INSERT INTO public.planet VALUES (2, 'Saturn', 'A big planet', false, 50000, 200.1, 1);
INSERT INTO public.planet VALUES (3, 'Nepturn', 'A big planet', false, 50000, 200.1, 1);
INSERT INTO public.planet VALUES (4, 'Pluto', 'A big planet', false, 50000, 200.1, 1);
INSERT INTO public.planet VALUES (5, 'Promefios', 'A big planet', false, 50000, 200.1, 1);
INSERT INTO public.planet VALUES (6, 'Zuessius', 'A big planet', false, 50000, 200.1, 1);
INSERT INTO public.planet VALUES (7, 'calmera', 'A big planet', false, 50000, 200.1, 1);
INSERT INTO public.planet VALUES (8, 'tessefarari', 'A big planet', false, 50000, 200.1, 1);
INSERT INTO public.planet VALUES (9, 'testinopolis', 'A big planet', false, 50000, 200.1, 1);
INSERT INTO public.planet VALUES (10, 'nekropolis', 'A big planet', false, 50000, 200.1, 1);
INSERT INTO public.planet VALUES (11, 'Jupitar', 'A big planet', false, 50000, 200.1, 1);
INSERT INTO public.planet VALUES (12, 'Mars', 'A big planet', false, 50000, 200.1, 1);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'Sun', 'The sun is a star in the center of the solor system.', false, 40000, 1.5, 1);
INSERT INTO public.star VALUES (2, 'Betelguse', 'Betelgeuse is usually the tenth-brightest star in the night sky and, after Rigel, the second-brightest in the constellation of Orion. It is a distinctly reddish semiregular variable star whose apparent magnitude, varying between +0.0 and +1.6, has the widest range displayed by any first-magnitude star. At near-infrared wavelengths, Betelgeuse is the brightest star in the night sky. Its Bayer designation is α Orionis, Latinised to Alpha Orionis and abbreviated Alpha Ori or α Ori.', false, 8000, 548.5, 1);
INSERT INTO public.star VALUES (3, 'Artcurus', 'another start in the milky way', false, 5000, 60.2, 1);
INSERT INTO public.star VALUES (4, 'Canopus', 'another start in the milky way', false, 6000, 601.2, 1);
INSERT INTO public.star VALUES (5, 'Sirius', 'another start in the milky way', false, 6000, 601.2, 1);
INSERT INTO public.star VALUES (6, 'Tesulus', 'another start in the milky way', false, 6000, 601.2, 1);


--
-- Data for Name: zodiac; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.zodiac VALUES (1, 'Virgo', NULL);
INSERT INTO public.zodiac VALUES (2, 'Aries', NULL);
INSERT INTO public.zodiac VALUES (3, 'Libra', NULL);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 6, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 20, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 12, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 6, true);


--
-- Name: zodiac_zodiac_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.zodiac_zodiac_id_seq', 3, true);


--
-- Name: galaxy galaxy_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_name_key UNIQUE (name);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: moon moon_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_name_key UNIQUE (name);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: planet planet_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_name_key UNIQUE (name);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: star star_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_name_key UNIQUE (name);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: zodiac zodiac_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.zodiac
    ADD CONSTRAINT zodiac_name_key UNIQUE (name);


--
-- Name: zodiac zodiac_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.zodiac
    ADD CONSTRAINT zodiac_pkey PRIMARY KEY (zodiac_id);


--
-- Name: moon moon_planet_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_planet_id_fkey FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: planet planet_star_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_star_id_fkey FOREIGN KEY (star_id) REFERENCES public.star(star_id);


--
-- Name: star star_in_galaxy_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_in_galaxy_fkey FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- Name: zodiac zodiac_planet_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.zodiac
    ADD CONSTRAINT zodiac_planet_id_fkey FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- PostgreSQL database dump complete
--

