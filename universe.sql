--
-- PostgreSQL database dump
--

-- Dumped from database version 12.22 (Ubuntu 12.22-0ubuntu0.20.04.4)
-- Dumped by pg_dump version 12.22 (Ubuntu 12.22-0ubuntu0.20.04.4)

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
    name character varying(100) NOT NULL,
    galaxy_id integer NOT NULL,
    age_galaxy integer,
    num_of_galaxy integer,
    num_of_life numeric,
    has_life boolean,
    has_atmophera boolean,
    aliens text
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
    name character varying(100) NOT NULL,
    moon_id integer NOT NULL,
    num_of_moon integer,
    age_moon integer,
    num_of_life numeric,
    has_life boolean,
    has_atmophera boolean,
    planet_id integer,
    aliens text
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
    name character varying(100) NOT NULL,
    planet_id integer NOT NULL,
    num_of_planet integer,
    age_planet integer,
    num_of_life numeric,
    has_life boolean,
    has_atmophera boolean,
    star_id integer,
    aliens text
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
-- Name: satelite; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.satelite (
    name character varying(30) NOT NULL,
    has_atmophera boolean,
    has_life boolean,
    satelite_id integer NOT NULL,
    aliens text
);


ALTER TABLE public.satelite OWNER TO freecodecamp;

--
-- Name: satelite_satelite_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.satelite_satelite_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.satelite_satelite_id_seq OWNER TO freecodecamp;

--
-- Name: satelite_satelite_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.satelite_satelite_id_seq OWNED BY public.satelite.satelite_id;


--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    name character varying(100) NOT NULL,
    star_id integer NOT NULL,
    age_star integer,
    num_of_star integer,
    num_of_life numeric,
    has_life boolean,
    has_atmophera boolean,
    galaxy_id integer,
    aliens text
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
-- Name: planet planet_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet ALTER COLUMN planet_id SET DEFAULT nextval('public.planet_planet_id_seq'::regclass);


--
-- Name: satelite satelite_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.satelite ALTER COLUMN satelite_id SET DEFAULT nextval('public.satelite_satelite_id_seq'::regclass);


--
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_star_id_seq'::regclass);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES ('tierra', 1, 1500, NULL, NULL, true, true, 'humanos');
INSERT INTO public.galaxy VALUES ('Namek', 2, 5500, NULL, NULL, true, true, 'namekianos');
INSERT INTO public.galaxy VALUES ('vegeta', 3, 2500, NULL, NULL, true, true, 'sayans');
INSERT INTO public.galaxy VALUES ('galaxy of north', 4, 2500, NULL, NULL, true, true, 'alien commun');
INSERT INTO public.galaxy VALUES ('galaxy of sur', 5, 5500, NULL, NULL, true, true, 'alien commun');
INSERT INTO public.galaxy VALUES ('galaxy of est', 6, 85500, NULL, NULL, true, true, 'danger alien');
INSERT INTO public.galaxy VALUES ('galaxy of db', 7, 85500, NULL, NULL, true, true, 'undanger alien');
INSERT INTO public.galaxy VALUES ('galaxy of frezer', 8, 85500, NULL, NULL, true, true, 'danger alien');
INSERT INTO public.galaxy VALUES ('galaxy of moro', 9, 85500, NULL, NULL, true, true, 'danger alien');


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES ('moon 1', 1, NULL, 8500, NULL, false, true, 5, NULL);
INSERT INTO public.moon VALUES ('moon 3', 2, NULL, 500, NULL, false, true, 5, NULL);
INSERT INTO public.moon VALUES ('moon 12', 3, NULL, 80000, NULL, false, true, 5, NULL);
INSERT INTO public.moon VALUES ('moon 15', 5, NULL, 8500, NULL, false, true, 5, NULL);
INSERT INTO public.moon VALUES ('moon 16', 6, NULL, 8500, NULL, false, true, 2, NULL);
INSERT INTO public.moon VALUES ('moon 17', 7, NULL, 8500, NULL, false, true, 2, NULL);
INSERT INTO public.moon VALUES ('moon 18', 8, NULL, 8500, NULL, false, true, 2, NULL);
INSERT INTO public.moon VALUES ('moon 19', 9, NULL, 8500, NULL, false, true, 2, NULL);
INSERT INTO public.moon VALUES ('moon 20', 10, NULL, 8500, NULL, false, true, 2, NULL);
INSERT INTO public.moon VALUES ('moon 21', 11, NULL, 8500, NULL, false, true, 10, NULL);
INSERT INTO public.moon VALUES ('moon 22', 12, NULL, 8500, NULL, false, true, 10, NULL);
INSERT INTO public.moon VALUES ('moon 23', 13, NULL, 8500, NULL, false, true, 10, NULL);
INSERT INTO public.moon VALUES ('moon 24', 14, NULL, 8500, NULL, false, true, 10, NULL);
INSERT INTO public.moon VALUES ('moon 25', 15, NULL, 8500, NULL, false, true, 10, NULL);
INSERT INTO public.moon VALUES ('moon 26', 16, NULL, 8500, NULL, false, true, 10, NULL);
INSERT INTO public.moon VALUES ('moon 27', 17, NULL, 8500, NULL, false, true, 10, NULL);
INSERT INTO public.moon VALUES ('moon 30', 18, NULL, 8500, NULL, false, true, 10, NULL);
INSERT INTO public.moon VALUES ('moon 31', 19, NULL, 8500, NULL, false, true, 11, NULL);
INSERT INTO public.moon VALUES ('moon 33', 20, NULL, 8500, NULL, false, true, 11, NULL);
INSERT INTO public.moon VALUES ('moon 34', 21, NULL, 8500, NULL, false, true, 11, NULL);
INSERT INTO public.moon VALUES ('moon 36', 22, NULL, 8500, NULL, false, true, 11, NULL);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES ('planet 0', 1, NULL, NULL, NULL, false, true, 3, 'danger');
INSERT INTO public.planet VALUES ('planet 1', 2, NULL, NULL, NULL, false, true, 3, 'danger');
INSERT INTO public.planet VALUES ('planet 2', 3, NULL, NULL, NULL, false, true, 3, 'danger');
INSERT INTO public.planet VALUES ('planet 3', 4, NULL, NULL, NULL, false, true, 3, 'danger');
INSERT INTO public.planet VALUES ('planet 4', 5, NULL, NULL, NULL, false, true, 3, 'danger');
INSERT INTO public.planet VALUES ('planet 5', 6, NULL, NULL, NULL, false, true, 3, 'danger');
INSERT INTO public.planet VALUES ('planet 6', 7, NULL, NULL, NULL, false, true, 3, 'danger');
INSERT INTO public.planet VALUES ('planet 7', 8, NULL, NULL, NULL, false, true, 3, 'danger');
INSERT INTO public.planet VALUES ('planet 8', 9, NULL, NULL, NULL, false, true, 4, 'danger');
INSERT INTO public.planet VALUES ('planet 9', 10, NULL, NULL, NULL, false, true, 4, 'danger');
INSERT INTO public.planet VALUES ('planet goku', 12, NULL, NULL, NULL, false, true, 4, 'danger');
INSERT INTO public.planet VALUES ('planet 10', 11, NULL, NULL, NULL, false, true, 4, 'danger');
INSERT INTO public.planet VALUES ('planet namek', 13, NULL, NULL, NULL, false, true, 4, 'danger');
INSERT INTO public.planet VALUES ('planet cereal', 14, NULL, NULL, NULL, false, true, 5, 'danger');
INSERT INTO public.planet VALUES ('planet vegeta', 15, NULL, NULL, NULL, false, true, 5, 'danger');
INSERT INTO public.planet VALUES ('planet sadala', 16, NULL, NULL, NULL, false, true, 5, 'danger');
INSERT INTO public.planet VALUES ('planet namek 2', 17, NULL, NULL, NULL, false, true, 5, 'danger');


--
-- Data for Name: satelite; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.satelite VALUES ('Namek', true, false, 1, 'namekianos');
INSERT INTO public.satelite VALUES ('vegeta', true, false, 2, 'sayajins');
INSERT INTO public.satelite VALUES ('tierra', true, true, 3, 'humanos');


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES ('star 25', 10, 85500, NULL, NULL, true, true, 1, 'un danger alien');
INSERT INTO public.star VALUES ('star 2', 2, 85500, NULL, NULL, true, true, 2, 'un danger alien');
INSERT INTO public.star VALUES ('star 3', 3, 85500, NULL, NULL, true, true, 3, 'un danger alien');
INSERT INTO public.star VALUES ('star 4', 4, 85500, NULL, NULL, true, true, 3, 'un danger alien');
INSERT INTO public.star VALUES ('star 5', 5, 85500, NULL, NULL, true, true, 3, 'un danger alien');
INSERT INTO public.star VALUES ('star 6', 6, 85500, NULL, NULL, true, true, 3, 'un danger alien');
INSERT INTO public.star VALUES ('star 7', 7, 85500, NULL, NULL, true, true, 3, 'un danger alien');
INSERT INTO public.star VALUES ('star 8', 8, 85500, NULL, NULL, true, true, 3, 'un danger alien');
INSERT INTO public.star VALUES ('star 1', 1, 85500, NULL, NULL, true, true, 3, 'un danger alien');


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 9, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 22, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 17, true);


--
-- Name: satelite_satelite_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.satelite_satelite_id_seq', 3, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 10, true);


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
-- Name: satelite satelite_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.satelite
    ADD CONSTRAINT satelite_pkey PRIMARY KEY (satelite_id);


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
-- Name: galaxy unique_galaxy_id; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT unique_galaxy_id UNIQUE (galaxy_id);


--
-- Name: satelite unique_satelite_id; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.satelite
    ADD CONSTRAINT unique_satelite_id UNIQUE (satelite_id);


--
-- Name: star unique_star_id; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT unique_star_id UNIQUE (star_id);


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

