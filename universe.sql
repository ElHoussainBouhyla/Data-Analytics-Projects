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
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(60),
    scientific_name text,
    possibility_of_life boolean NOT NULL,
    size_in_light_year integer,
    age_in_millions_of_yearse numeric,
    number_of_stars integer,
    number_of_planetsts integer,
    number_of_moons integer,
    distance_from_earth integer
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
    planet_id integer,
    planet_name character varying(60),
    moon_id integer NOT NULL,
    name character varying(60),
    scientific_name text,
    possibility_of_life boolean NOT NULL,
    size_in_km integer,
    age_in_millions_of_years numeric,
    distance_from_earth integer
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
-- Name: niazk; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.niazk (
    galaxy_id integer,
    star_id integer,
    niazk_id integer NOT NULL,
    name character varying(60),
    scientific_name text,
    distance_from_earth boolean NOT NULL,
    size_in_km integer,
    age numeric
);


ALTER TABLE public.niazk OWNER TO freecodecamp;

--
-- Name: niazk_niazk_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.niazk_niazk_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.niazk_niazk_id_seq OWNER TO freecodecamp;

--
-- Name: niazk_niazk_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.niazk_niazk_id_seq OWNED BY public.niazk.niazk_id;


--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    star_id integer,
    star_name character varying(60),
    planet_id integer NOT NULL,
    name character varying(60),
    scientific_name text,
    possibility_of_life boolean NOT NULL,
    size_in_km integer,
    age_in_millions_of_years numeric,
    number_of_moons integer,
    distance_from_earth integer
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
    galaxy_id integer,
    galaxy_name character varying(60),
    star_id integer NOT NULL,
    name character varying(60),
    scientific_name text,
    possibility_of_life boolean NOT NULL,
    size_in_millions_km integer,
    age_in_millions_of_years numeric,
    number_of_planets integer,
    number_of_moons integer,
    distance_from_earth integer
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
-- Name: galaxy galaxy_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy ALTER COLUMN galaxy_id SET DEFAULT nextval('public.galaxy_galaxy_id_seq'::regclass);


--
-- Name: moon moon_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon ALTER COLUMN moon_id SET DEFAULT nextval('public.moon_moon_id_seq'::regclass);


--
-- Name: niazk niazk_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.niazk ALTER COLUMN niazk_id SET DEFAULT nextval('public.niazk_niazk_id_seq'::regclass);


--
-- Name: planet planet_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet ALTER COLUMN planet_id SET DEFAULT nextval('public.planet_planet_id_seq'::regclass);


--
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_star_id_seq'::regclass);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'A', 'A', true, 30, 42, 2345, 29345, 40982, 23);
INSERT INTO public.galaxy VALUES (2, 'B', 'BO', true, 34, 46, 274, 2654, 3456, 31);
INSERT INTO public.galaxy VALUES (3, 'C', 'C', true, 33, 26, 274, 2302, 4567, 35);
INSERT INTO public.galaxy VALUES (4, 'Darty', 'Darty 1', true, 98, 90, 344, 2400, 6590, 40);
INSERT INTO public.galaxy VALUES (5, 'Elpy', 'Elpy', true, 45, 34, 245, 1239, 6230, 44);
INSERT INTO public.galaxy VALUES (6, 'Elpy', 'Elpy', true, 80, 3000, 340, 95034, 98345, 324);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'lopty', 1, 'lopty_moon', 'lopty_moon', false, 200, 1650, 41);
INSERT INTO public.moon VALUES (1, 'lopty', 2, 'lopty_moon2', 'lopty_moon_2', false, 70, 1649, 41);
INSERT INTO public.moon VALUES (2, 'ld6', 3, 'ld6_moon', 'ld6_moon', false, 400, 1500, 41);
INSERT INTO public.moon VALUES (3, 'aqil', 4, 'aqil_moon', 'aqil_moon', false, 230, 1550, 41);
INSERT INTO public.moon VALUES (4, 'neio', 5, 'neio_moon', 'neio_moon', false, 30, 2580, 41);
INSERT INTO public.moon VALUES (5, 'notry', 6, 'notry_moon', 'notry_moon', false, 130, 1780, 41);
INSERT INTO public.moon VALUES (6, 'nasry', 7, 'nasry_moon', 'nasry_moon', false, 124, 4000, 41);
INSERT INTO public.moon VALUES (6, 'nasry', 8, 'nasry_moon_2', 'nasry_moon_2', false, 14, 3500, 41);
INSERT INTO public.moon VALUES (6, 'nasry', 9, 'nasry_moon_3', 'nasry_moon_3', false, 97, 3800, 41);
INSERT INTO public.moon VALUES (7, 'nal1', 10, 'nal1_moon', 'nal1_moon', false, 99, 4100, 41);
INSERT INTO public.moon VALUES (7, 'nal1', 11, 'nal1_moon_2', 'nal1_moon_2', false, 120, 4240, 41);
INSERT INTO public.moon VALUES (11, 'reddot', 12, 'reddot_moon', 'reddot_moon', false, 300, 4550, 41);
INSERT INTO public.moon VALUES (12, 'reddot2', 13, 'reddot2_moon', 'reddot2_moon', false, 323, 4534, 41);
INSERT INTO public.moon VALUES (13, 'lie', 14, 'lie_moon', 'lie_moon', false, 249, 1304, 41);
INSERT INTO public.moon VALUES (14, 'eyes', 15, 'eyes_moon', 'eyes_moon', false, 32, 1344, 41);
INSERT INTO public.moon VALUES (15, 'kipo', 16, 'kipo_moon', 'kipo_moon', false, 64, 2334, 41);
INSERT INTO public.moon VALUES (15, 'kipo', 17, 'kipo_moon_2', 'kipo_moon_2', false, 56, 2350, 41);
INSERT INTO public.moon VALUES (15, 'kipo', 18, 'kipo_moon_3', 'kipo_moon_3', false, 67, 2353, 41);
INSERT INTO public.moon VALUES (15, 'kipo', 19, 'kipo_moon_4', 'kipo_moon_4', false, 78, 2649, 41);
INSERT INTO public.moon VALUES (15, 'kipo', 20, 'kipo_moon_5', 'kipo_moon_5', false, 43, 3046, 41);


--
-- Data for Name: niazk; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.niazk VALUES (1, 1, 1, 'linus', 'linus', false, 8, 9);
INSERT INTO public.niazk VALUES (1, 1, 2, 'lex', 'lex', false, 7, 8);
INSERT INTO public.niazk VALUES (1, 1, 3, 'bigo', 'bigo', false, 5, 10);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'vino', 1, 'lopty', 'lopty', false, 1200, 1700, 2, 41);
INSERT INTO public.planet VALUES (1, 'vino', 2, 'ld6', 'ld6', false, 7000, 1690, 1, 41);
INSERT INTO public.planet VALUES (1, 'vino', 3, 'aqil', 'aqil', false, 5000, 3455, 1, 41);
INSERT INTO public.planet VALUES (1, 'vino', 4, 'neio', 'neio', false, 4500, 3244, 1, 41);
INSERT INTO public.planet VALUES (1, 'vino', 5, 'notry', 'notry', false, 5503, 3334, 1, 41);
INSERT INTO public.planet VALUES (1, 'vino', 6, 'nasry', 'nasery', false, 4390, 7000, 3, 41);
INSERT INTO public.planet VALUES (1, 'vino', 7, 'nal1', 'nal1', false, 4590, 5000, 2, 41);
INSERT INTO public.planet VALUES (1, 'vino', 8, 'zip30', 'zip30', false, 4549, 4302, 0, 41);
INSERT INTO public.planet VALUES (1, 'vino', 9, 'led', 'led', false, 4530, 3560, 0, 41);
INSERT INTO public.planet VALUES (1, 'vino', 10, 'led2', 'led2', false, 4679, 5478, 0, 41);
INSERT INTO public.planet VALUES (1, 'vino', 11, 'reddot', 'reddot', false, 4700, 6000, 1, 41);
INSERT INTO public.planet VALUES (1, 'vino', 12, 'reddot2', 'reddot2', false, 4600, 6010, 1, 41);
INSERT INTO public.planet VALUES (1, 'vino', 13, 'lie', 'lie', false, 3256, 2300, 1, 41);
INSERT INTO public.planet VALUES (1, 'vino', 14, 'eyes', 'eyes', false, 2490, 2600, 1, 41);
INSERT INTO public.planet VALUES (1, 'vino', 15, 'kipo', 'kipo', false, 5040, 5139, 6, 41);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'A', 1, 'vino', 'vino', false, 23, 5, 20, 28, NULL);
INSERT INTO public.star VALUES (1, 'A', 2, 'rock', 'rock', false, 24, 6, 23, 30, NULL);
INSERT INTO public.star VALUES (1, 'A', 3, 'rinos', 'rinos', false, 22, 5, 25, 35, 33);
INSERT INTO public.star VALUES (1, 'A', 4, 'lpt', 'lpt', false, 22, 7, 23, 33, 32);
INSERT INTO public.star VALUES (2, 'B', 5, 'loop', 'loop', false, 22, 10, 20, 4, 37);
INSERT INTO public.star VALUES (3, 'C', 6, 'nearo', 'nearo', false, 22, 8, 17, 8, 41);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 6, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 20, true);


--
-- Name: niazk_niazk_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.niazk_niazk_id_seq', 3, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 15, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 6, true);


--
-- Name: galaxy galaxy_id; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_id UNIQUE (galaxy_id);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: moon moon_id; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_id UNIQUE (moon_id);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: niazk niazk_id; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.niazk
    ADD CONSTRAINT niazk_id UNIQUE (niazk_id);


--
-- Name: niazk niazk_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.niazk
    ADD CONSTRAINT niazk_pkey PRIMARY KEY (niazk_id);


--
-- Name: planet planet_id; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_id UNIQUE (planet_id);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: star star_id; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_id UNIQUE (star_id);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: star fk; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT fk FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- Name: planet fk; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT fk FOREIGN KEY (star_id) REFERENCES public.star(star_id);


--
-- Name: moon fk; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT fk FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: niazk fk; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.niazk
    ADD CONSTRAINT fk FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- PostgreSQL database dump complete
--

