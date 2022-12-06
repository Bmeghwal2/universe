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
    galaxy_name character varying(40),
    age_in_million_of_years integer,
    number_of_planets integer
);


ALTER TABLE public.galaxy OWNER TO freecodecamp;

--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    moon_id integer NOT NULL,
    name character varying(40) NOT NULL,
    is_spherical boolean,
    planet_name text,
    has_water boolean DEFAULT false
);


ALTER TABLE public.moon OWNER TO freecodecamp;

--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    planet_id integer NOT NULL,
    name character varying(40) NOT NULL,
    planet_name character varying(40),
    has_life boolean DEFAULT false,
    star_name text
);


ALTER TABLE public.planet OWNER TO freecodecamp;

--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    name character varying(40) NOT NULL,
    star_name character varying(40),
    distance_from_earth integer,
    galaxy_name character varying(40),
    speed_in_mph numeric(4,1)
);


ALTER TABLE public.star OWNER TO freecodecamp;

--
-- Name: universe_index; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.universe_index (
    universe_index_id integer NOT NULL,
    name character varying(40) NOT NULL,
    number_of_columns integer
);


ALTER TABLE public.universe_index OWNER TO freecodecamp;

--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Andromeda', 'Andromeda', 35435, 54354);
INSERT INTO public.galaxy VALUES (2, 'Canis', 'Canis', 45656, 46464);
INSERT INTO public.galaxy VALUES (3, 'Cygnus', 'Cygnus', 7567, 908);
INSERT INTO public.galaxy VALUES (4, 'Maffie', 'Maffie', 232, 4745);
INSERT INTO public.galaxy VALUES (5, 'Magellanic', 'Magellanic', 4564, 2132);
INSERT INTO public.galaxy VALUES (6, 'MilkyWay', 'MilkyWay', 786, 12332);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'Ariel', true, 'Mercury', true);
INSERT INTO public.moon VALUES (2, 'Biance', true, 'Mars', false);
INSERT INTO public.moon VALUES (3, 'Adams', false, 'Earth', true);
INSERT INTO public.moon VALUES (4, 'Amitabh', false, 'Uranus', false);
INSERT INTO public.moon VALUES (5, 'Aishwarya', false, 'Pluto', true);
INSERT INTO public.moon VALUES (6, 'SanjuBaba', true, 'Saturn', false);
INSERT INTO public.moon VALUES (7, 'DhruvTara', true, 'Jesko', false);
INSERT INTO public.moon VALUES (8, 'Rajnikanth', false, 'Neptune', true);
INSERT INTO public.moon VALUES (9, 'Rancho', false, 'Saturn', true);
INSERT INTO public.moon VALUES (10, 'NoraFatehi', true, 'Earth', true);
INSERT INTO public.moon VALUES (11, 'HoneyPaji', true, 'Venus', false);
INSERT INTO public.moon VALUES (12, 'Cresida', false, 'Mars', false);
INSERT INTO public.moon VALUES (13, 'Cordelia', false, 'Mercury', false);
INSERT INTO public.moon VALUES (14, 'Yesko', false, 'Jesko', true);
INSERT INTO public.moon VALUES (15, 'Diablo', false, 'Forza', true);
INSERT INTO public.moon VALUES (16, 'Divo', true, 'Asphalt', false);
INSERT INTO public.moon VALUES (17, 'Avanti', false, 'Pluto', false);
INSERT INTO public.moon VALUES (18, 'Avantador', true, 'Earth', false);
INSERT INTO public.moon VALUES (19, 'Lamborghini', true, 'Jesko', false);
INSERT INTO public.moon VALUES (20, 'McLaren GT', true, 'Venus', false);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Mercury', 'Mercury', false, 'Sirius');
INSERT INTO public.planet VALUES (2, 'Mars', 'Mars', false, 'Canopus');
INSERT INTO public.planet VALUES (3, 'Venus', 'Venus', false, 'Arcturus');
INSERT INTO public.planet VALUES (4, 'Earth', 'Earth', true, 'Rigel');
INSERT INTO public.planet VALUES (5, 'Jupiter', 'Jupiter', false, 'Vega');
INSERT INTO public.planet VALUES (6, 'Neptune', 'Neptune', false, 'Capella');
INSERT INTO public.planet VALUES (7, 'Pluto', 'Pluto', false, 'Canopus');
INSERT INTO public.planet VALUES (8, 'Saturn', 'Saturn', false, 'Sirius');
INSERT INTO public.planet VALUES (9, 'Uranus', 'Uranus', false, 'Canopus');
INSERT INTO public.planet VALUES (10, 'Asphalt', 'Asphalt', false, 'Arcturus');
INSERT INTO public.planet VALUES (11, 'Forza', 'Forza', false, 'Rigel');
INSERT INTO public.planet VALUES (12, 'Jesko', 'Jesko', false, 'Vega');


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'Sirius', 'Sirius', 87453, 'Andromeda', 5.5);
INSERT INTO public.star VALUES (2, 'Canopus', 'Canopus', 4534, 'Canis', 4.7);
INSERT INTO public.star VALUES (3, 'Arcturus', 'Arcturus', 56756, 'Cygnus', 9.1);
INSERT INTO public.star VALUES (4, 'Rigel', 'Rigel', 56466, 'Maffie', 4.5);
INSERT INTO public.star VALUES (5, 'Vega', 'Vega', 7, 'Magellanic', 21.3);
INSERT INTO public.star VALUES (6, 'Capella', 'Capella', 4356, 'MilkyWay', 1.2);


--
-- Data for Name: universe_index; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.universe_index VALUES (1, 'galaxy', 5);
INSERT INTO public.universe_index VALUES (2, 'star', 6);
INSERT INTO public.universe_index VALUES (3, 'planet', 5);
INSERT INTO public.universe_index VALUES (4, 'moon', 5);


--
-- Name: galaxy galaxy_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_name_key UNIQUE (name);


--
-- Name: galaxy galaxy_pk; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pk PRIMARY KEY (galaxy_id);


--
-- Name: galaxy glaxy_uk; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT glaxy_uk UNIQUE (galaxy_name);


--
-- Name: moon moon_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_name_key UNIQUE (name);


--
-- Name: moon moon_pk; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pk PRIMARY KEY (moon_id);


--
-- Name: planet planet_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_name_key UNIQUE (name);


--
-- Name: planet planet_pk; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pk PRIMARY KEY (planet_id);


--
-- Name: planet planet_uk; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_uk UNIQUE (planet_name);


--
-- Name: star star_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_name_key UNIQUE (name);


--
-- Name: star star_pk; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pk PRIMARY KEY (star_id);


--
-- Name: star star_uk; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_uk UNIQUE (galaxy_name);


--
-- Name: star star_uk1; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_uk1 UNIQUE (star_name);


--
-- Name: universe_index universe_index_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.universe_index
    ADD CONSTRAINT universe_index_name_key UNIQUE (name);


--
-- Name: universe_index universe_index_pk; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.universe_index
    ADD CONSTRAINT universe_index_pk PRIMARY KEY (universe_index_id);


--
-- Name: moon moon_fk0; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_fk0 FOREIGN KEY (planet_name) REFERENCES public.planet(planet_name);


--
-- Name: planet planet_fk0; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_fk0 FOREIGN KEY (star_name) REFERENCES public.star(star_name);


--
-- Name: star star_fk0; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_fk0 FOREIGN KEY (galaxy_name) REFERENCES public.galaxy(galaxy_name);


--
-- PostgreSQL database dump complete
--

