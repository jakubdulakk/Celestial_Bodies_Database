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
    name character varying(30) NOT NULL,
    description text,
    distance_mly integer NOT NULL,
    constellation text
);


ALTER TABLE public.galaxy OWNER TO freecodecamp;

--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    moon_id integer NOT NULL,
    name character varying(30) NOT NULL,
    description text,
    mean_radius_km integer,
    discovery_year integer
);


ALTER TABLE public.moon OWNER TO freecodecamp;

--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    planet_id integer NOT NULL,
    name character varying(30) NOT NULL,
    description text,
    age_in_billions_of_years double precision NOT NULL,
    diameter_in_km integer,
    number_of_moons integer,
    has_life boolean,
    has_moon boolean
);


ALTER TABLE public.planet OWNER TO freecodecamp;

--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    name character varying(30) NOT NULL,
    description text,
    constellation text,
    distance_ly integer NOT NULL,
    galaxy_id integer
);


ALTER TABLE public.star OWNER TO freecodecamp;

--
-- Name: telescope; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.telescope (
    telescope_id numeric NOT NULL,
    name character varying(30) NOT NULL,
    deployment_date date
);


ALTER TABLE public.telescope OWNER TO freecodecamp;

--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'NGC 7537', 'NGC 7537 is a spiral galaxy located in the equatorial constellation of Pisces.', 127, 'Pisces');
INSERT INTO public.galaxy VALUES (2, 'NGC 3021', 'NGC 3021 is a spiral galaxy in the northern constellation of Leo Minor.', 93, 'Leo Minor');
INSERT INTO public.galaxy VALUES (3, 'NGC 5643', 'NGC 5643 is an intermediate spiral galaxy in the constellation Lupus.', 41, 'Lupus');
INSERT INTO public.galaxy VALUES (4, 'NGC 3254', 'NGC 3254 is a spiral galaxy in the constellation Leo Minor.', 118, 'Leo Minor');
INSERT INTO public.galaxy VALUES (5, 'NGC 3147', 'NGC 3147 is a spiral galaxy located in the constellation Draco.', 129, 'Draco');
INSERT INTO public.galaxy VALUES (6, 'NGC 105', 'NGC 105 is a spiral galaxy estimated to be about 240 million light-years away in the constellation of Pisces.', 240, 'Pisces');


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'Ganymede', 'Ganymede is the largest and most massive natural satellite of Jupiter', NULL, NULL);
INSERT INTO public.moon VALUES (2, 'Titan', 'Titan is the largest moon of Saturn, the second-largest in the Solar System and larger than any of the dwarf planets of the Solar System.', NULL, NULL);
INSERT INTO public.moon VALUES (3, 'Callisto', 'Callisto is the second-largest moon of Jupiter, after Ganymede.', NULL, NULL);
INSERT INTO public.moon VALUES (4, 'Io', 'Io is the innermost and third-largest of the four Galilean moons of the planet Jupiter.', NULL, NULL);
INSERT INTO public.moon VALUES (5, 'Moon', 'Moon is Earths only natural satellite.', NULL, NULL);
INSERT INTO public.moon VALUES (6, 'Europa', 'Europa is the smallest of the four Galilean moons orbiting Jupiter, and the sixth-closest to the planet of all the 95 known moons of Jupiter.', NULL, NULL);
INSERT INTO public.moon VALUES (7, 'Tirton', 'Tirton is the largest natural satellite of the planet Neptune, and was the first Neptunian moon to be discovered, on October 11, 1846, by English astronomer William Lassell.', NULL, NULL);
INSERT INTO public.moon VALUES (8, 'Titania', 'Titania is the largest of the moons of Uranus and the eighth largest moon in the Solar System at a diameter of 1,578 kilometres (981 mi), with a surface area comparable to that of Australia.', NULL, NULL);
INSERT INTO public.moon VALUES (9, 'Rhea', 'Rhea is the second-largest moon of Saturn and the ninth-largest moon in the Solar System, with a surface area that is compareable to the area of Australia.', NULL, NULL);
INSERT INTO public.moon VALUES (10, 'Oberon', 'Oberon is the outermost major moon of the planet Uranus.', NULL, NULL);
INSERT INTO public.moon VALUES (11, 'Iapetus', 'Iapetus is a moon of Saturn.', NULL, NULL);
INSERT INTO public.moon VALUES (12, 'Charon', 'Charon is the largest of the five known natural satellites of the dwarf planet Pluto.', NULL, NULL);
INSERT INTO public.moon VALUES (13, 'Umbriel', 'Umbriel is a moon of Uranus discovered on October 24, 1851, by William Lassell.', NULL, NULL);
INSERT INTO public.moon VALUES (14, 'Ariel', 'Ariel is the fourth-largest of the 27 known moons of Uranus.', NULL, NULL);
INSERT INTO public.moon VALUES (15, 'Dione', 'Dione is the fourth-largest moon of Saturn.', NULL, NULL);
INSERT INTO public.moon VALUES (16, 'Tethys', 'Tethys is a mid-sized moon of Saturn about 1,060 km (660 mi) across.', NULL, NULL);
INSERT INTO public.moon VALUES (17, 'Enceladus', 'Enceladus is the sixth-largest moon of Saturn (19th largest in the Solar System).', NULL, NULL);
INSERT INTO public.moon VALUES (18, 'Miranda', 'Miranda is the smallest and innermost of Uranus five round satellites.', NULL, NULL);
INSERT INTO public.moon VALUES (19, 'Proteus', 'Proteus is the second-largest Neptunian moon, and Neptunes largest inner satellite.', NULL, NULL);
INSERT INTO public.moon VALUES (20, 'Hyperion', 'Hyperion is a moon of Saturn discovered by William Cranch Bond, his son George Phillips Bond and William Lassell in 1848.', NULL, NULL);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Mercury', 'Know to the ancient Greeks and visible to the naked eye. Named for the messenger of the Roman gods', 4.5, 4878, 0, false, false);
INSERT INTO public.planet VALUES (2, 'Venus', 'Know to the ancienst Greeks and visible to the naked eye. Named for the Roman goddess of love and beauty.', 4.5, 12104, 0, false, false);
INSERT INTO public.planet VALUES (9, 'Ceres', 'Ceres is named for the Roman goddes of corn and harvests.', 4.5, 946, 0, false, false);
INSERT INTO public.planet VALUES (3, 'Earth', 'Originates from "Die Erde", the German word for "the ground".', 4.5, 12760, 1, true, true);
INSERT INTO public.planet VALUES (4, 'Mars', 'Know to the ancient Greeks and visible to the naked eye. Named for the Roman god of war.', 4.6, 6787, 2, false, true);
INSERT INTO public.planet VALUES (5, 'Jupiter', 'Know to the ancient Greeks and visible to the naked eye. Named for the ruler of the Roman gods.', 4.6, 139822, 79, false, true);
INSERT INTO public.planet VALUES (6, 'Saturn', 'Known to the ancient Greeks and visible to the naked eye. Named for Roman god of agriculture.', 4.5, 120500, 82, false, true);
INSERT INTO public.planet VALUES (7, 'Uranus', 'Discovered in 1781 by William Herschel (was orginally thought to be a star). Named for the personification of heaven in anceint myth.', 4.5, 51120, 27, false, true);
INSERT INTO public.planet VALUES (8, 'Neptune', ' Discovered in 1846. Named for the Roman god of water.', 4.5, 49530, 14, false, true);
INSERT INTO public.planet VALUES (10, '90482 Orcus', 'Orcus was discovered on February 17th, 2004, by Michael Brown of Caltech, Chad Trujillo of the Gemini Observatory and David Rabinowitz of Yale University', 4.5, 900, 1, false, true);
INSERT INTO public.planet VALUES (11, 'Pluto', 'Pluto is a complex world of ice mountains and frozen plains. Once considered the ninth planet, Pluto is the best known of a new class of worlds called dwarg planets.', 4.5, 2376, 5, false, true);
INSERT INTO public.planet VALUES (12, 'Eris', 'Eris is one of the largest known dwarf planets in our solar system. Its about the same size as Pluto but is three times farther from the Sun.', 4.5, 2326, 1, false, true);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'Epsilon Indi', 'Epsilon Indi, Latinized from ε Indi, is a star system located at a distance of approximately 12 light-years from Earth in the southern constellation of Indus.', 'Indus', 12, NULL);
INSERT INTO public.star VALUES (2, 'Zeta Ophiuchi', 'Zeta Ophiuchi (ζ Oph, ζ Ophiuchi) is a star located in the constellation of Ophiuchus.', 'Ophiuchus', 368, NULL);
INSERT INTO public.star VALUES (3, 'Rigel', 'Rigel is a blue supergiant star in the constellation of Orion.', 'Orion', 863, NULL);
INSERT INTO public.star VALUES (4, 'Altair', 'Altair is the brightest star in the constellation of Aquila and the twelfth-brightest star in the night sky.', 'Aquila', 17, NULL);
INSERT INTO public.star VALUES (5, 'Procyon', 'Procyon is the brightest star in the constellation of Canis Minor and usually the eighth-brightest star in the night sky, with an apparent visual magnitude of 0.34.', 'Canis Minor', 11, NULL);
INSERT INTO public.star VALUES (6, 'Sun', 'The Sun is the star at the center of the Solar System.', 'Circinus', 0, NULL);


--
-- Data for Name: telescope; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.telescope VALUES (1, 'Hubble Space Telescope', '1990-04-25');
INSERT INTO public.telescope VALUES (2, 'Imaging Compton Telescope', '1991-04-05');
INSERT INTO public.telescope VALUES (3, 'Spitzer Space Telescope', '2003-08-25');


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
-- Name: telescope telescope_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.telescope
    ADD CONSTRAINT telescope_name_key UNIQUE (name);


--
-- Name: telescope telescope_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.telescope
    ADD CONSTRAINT telescope_pkey PRIMARY KEY (telescope_id);


--
-- Name: star star_galaxy_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_galaxy_id_fkey FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- PostgreSQL database dump complete
--

