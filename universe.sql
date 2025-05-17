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
    name character varying(30),
    mass_in_giga9_msun integer NOT NULL,
    diameters_in_light_years integer NOT NULL,
    ratings_in_number_1to5 numeric(2,1),
    was_i_there boolean,
    real_galaxy boolean,
    note text
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
    planet_id integer,
    name character varying(30),
    mass_in_megag integer NOT NULL,
    diameters_in_megam integer NOT NULL,
    ratings_1to5 numeric(2,1),
    has_life boolean,
    resources boolean,
    note text
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
-- Name: ovni; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.ovni (
    ovni_id integer NOT NULL,
    name character varying(30) NOT NULL,
    powerfull boolean
);


ALTER TABLE public.ovni OWNER TO freecodecamp;

--
-- Name: ovni_ovni_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.ovni_ovni_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.ovni_ovni_id_seq OWNER TO freecodecamp;

--
-- Name: ovni_ovni_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.ovni_ovni_id_seq OWNED BY public.ovni.ovni_id;


--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    planet_id integer NOT NULL,
    star_id integer,
    name character varying(30),
    mass_in_kg integer NOT NULL,
    diameters_in_km integer NOT NULL,
    ratings_1to5 numeric(2,1),
    has_life boolean,
    fuckable boolean,
    note text
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
    galaxy_id integer NOT NULL,
    name character varying(30),
    mass_in_msun integer NOT NULL,
    diameters_in_km integer NOT NULL,
    ratings_1to5 numeric(2,1),
    big_pp_star boolean,
    can_i_buy_it boolean,
    note text
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
-- Name: ovni ovni_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.ovni ALTER COLUMN ovni_id SET DEFAULT nextval('public.ovni_ovni_id_seq'::regclass);


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

INSERT INTO public.galaxy VALUES (1, 'milky way', 115, 87, 4.5, true, true, 'good');
INSERT INTO public.galaxy VALUES (2, 'andromeda galaxy', 150, 152, 1.5, false, true, 'bad');
INSERT INTO public.galaxy VALUES (3, 'large magellanic cloud', 10, 52, 5.1, false, true, 'bad');
INSERT INTO public.galaxy VALUES (4, 'small magellanic cloud', 7, 19, 5.2, false, true, 'bad');
INSERT INTO public.galaxy VALUES (5, 'pegasus galaxy', 200, 50, 6.0, false, false, 'bad');
INSERT INTO public.galaxy VALUES (6, 'pegasus galaxy2', 200, 50, 6.0, false, false, 'bad');


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 1, 'THE moon', 1000, 10000, 5.0, false, true, 'cool beans');
INSERT INTO public.moon VALUES (2, 10, 'other moon', 1000, 10000, 5.0, false, true, 'cool beans');
INSERT INTO public.moon VALUES (3, 11, 'other moon2', 1000, 10000, 5.0, false, true, 'cool beans');
INSERT INTO public.moon VALUES (4, 11, 'other moon3', 1000, 10000, 5.0, false, true, 'cool beans');
INSERT INTO public.moon VALUES (5, 9, 'other moon4', 1000, 10000, 5.0, false, true, 'cool beans');
INSERT INTO public.moon VALUES (6, 11, 'other moon5', 1000, 10000, 5.0, false, true, 'cool beans');
INSERT INTO public.moon VALUES (7, 11, 'other moon22', 1000, 10000, 5.0, false, true, 'cool beans');
INSERT INTO public.moon VALUES (9, 11, 'other moon27', 1000, 10000, 5.0, false, true, 'cool beans');
INSERT INTO public.moon VALUES (10, 11, 'other moon55', 1000, 10000, 5.0, false, true, 'cool beans');
INSERT INTO public.moon VALUES (11, 12, 'big moony slaves', 1000, 10000, 5.0, false, true, 'cool beans');
INSERT INTO public.moon VALUES (12, 12, 'big moony slaves2', 1000, 10000, 5.0, false, true, 'cool beans');
INSERT INTO public.moon VALUES (13, 12, 'big moony slaves3', 1000, 10000, 5.0, false, true, 'cool beans');
INSERT INTO public.moon VALUES (14, 12, 'big brother moon', 1000, 10000, 5.0, false, true, 'cool beans');
INSERT INTO public.moon VALUES (15, 12, 'big moony slaves11', 1000, 10000, 5.0, false, true, 'cool beans');
INSERT INTO public.moon VALUES (16, 12, 'big moony slaves7', 1000, 10000, 5.0, false, true, 'cool beans');
INSERT INTO public.moon VALUES (17, 12, 'big moony slaves55', 1000, 10000, 5.0, false, true, 'cool beans');
INSERT INTO public.moon VALUES (18, 12, 'nano moony slaves', 1000, 10000, 5.0, false, true, 'cool beans');
INSERT INTO public.moon VALUES (19, 12, 'big pp moon', 66666, 166000, 5.0, false, true, 'cool beans');
INSERT INTO public.moon VALUES (20, 12, 'bigboymoon', 666366, 166600, 5.0, false, true, 'cool beans');
INSERT INTO public.moon VALUES (8, 9, 'moonyguy2', 1000, 10000, 5.0, false, true, 'cool beans');


--
-- Data for Name: ovni; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.ovni VALUES (1, 'necron', true);
INSERT INTO public.ovni VALUES (2, 'human', false);
INSERT INTO public.ovni VALUES (3, 'ork', true);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 1, 'earth', 1000000, 100000, 4.3, true, true, 'cool');
INSERT INTO public.planet VALUES (2, 1, 'saturn', 1000000, 100000, 4.3, true, true, 'cool');
INSERT INTO public.planet VALUES (3, 1, 'pluto', 1000000, 100000, 4.3, true, true, 'cool');
INSERT INTO public.planet VALUES (4, 1, 'mercury', 1000000, 100000, 4.3, true, true, 'cool');
INSERT INTO public.planet VALUES (5, 1, 'mars', 1000000, 100000, 4.3, true, true, 'cool');
INSERT INTO public.planet VALUES (7, 1, 'venus', 1000000, 100000, 4.3, true, true, 'cool');
INSERT INTO public.planet VALUES (12, 3, 'by myself', 100000000, 777, 5.0, true, true, 'cool');
INSERT INTO public.planet VALUES (8, 2, 'saturn3', 1001110, 99999, 4.3, true, true, 'cool');
INSERT INTO public.planet VALUES (9, 2, 'saturn4', 5555555, 5555555, 3.5, true, true, 'cool');
INSERT INTO public.planet VALUES (10, 2, 'saturn5', 55555, 55555, 3.5, true, true, 'cool');
INSERT INTO public.planet VALUES (11, 2, 'powerdp', 9999999, 12345, 1.0, true, true, 'cool');
INSERT INTO public.planet VALUES (6, 1, 'yuturn', 1000000, 100000, 4.3, true, true, 'cool');


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 1, 'sun', 1, 1, 5.0, true, false, 'good');
INSERT INTO public.star VALUES (4, 3, 'small dwarf', 5, 5, 4.9, true, false, 'good');
INSERT INTO public.star VALUES (5, 4, 'micro dwarf', 9, 9, 1.0, true, false, 'good');
INSERT INTO public.star VALUES (6, 5, 'nano dwarf', 9, 9, 1.0, true, false, 'good');
INSERT INTO public.star VALUES (3, 2, 'dwarfy', 3, 3, 3.9, true, false, 'good');
INSERT INTO public.star VALUES (2, 1, 'saturn1', 2, 2, 4.5, true, false, 'good');


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 3, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 1, false);


--
-- Name: ovni_ovni_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.ovni_ovni_id_seq', 3, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 1, false);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 1, false);


--
-- Name: galaxy galaxy_galaxy_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_galaxy_id_key UNIQUE (galaxy_id);


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
-- Name: moon moon_moon_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_moon_id_key UNIQUE (moon_id);


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
-- Name: ovni ovni_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.ovni
    ADD CONSTRAINT ovni_name_key UNIQUE (name);


--
-- Name: ovni ovni_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.ovni
    ADD CONSTRAINT ovni_pkey PRIMARY KEY (ovni_id);


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
-- Name: planet planet_planet_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_planet_id_key UNIQUE (planet_id);


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
-- Name: star star_star_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_star_id_key UNIQUE (star_id);


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
-- Name: star star_galaxy_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_galaxy_id_fkey FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- PostgreSQL database dump complete
--

