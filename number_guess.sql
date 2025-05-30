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

DROP DATABASE number_guess;
--
-- Name number_guess; Type DATABASE; Schema -; Owner freecodecamp
--

CREATE DATABASE number_guess WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C.UTF-8' LC_CTYPE = 'C.UTF-8';


ALTER DATABASE number_guess OWNER TO freecodecamp;

connect number_guess

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
-- Name guess_games; Type TABLE; Schema public; Owner freecodecamp
--

CREATE TABLE public.guess_games (
    username character varying(50) NOT NULL,
    games integer,
    best integer
);


ALTER TABLE public.guess_games OWNER TO freecodecamp;

--
-- Data for Name guess_games; Type TABLE DATA; Schema public; Owner freecodecamp
--

INSERT INTO public.guess_games VALUES ('me', 8, 9);
INSERT INTO public.guess_games VALUES ('user_1748645425084', 2, 829);
INSERT INTO public.guess_games VALUES ('user_1748645425085', 5, 758);
INSERT INTO public.guess_games VALUES ('user_1748646565120', 2, 863);
INSERT INTO public.guess_games VALUES ('user_1748645548548', 2, 364);
INSERT INTO public.guess_games VALUES ('user_1748645548549', 5, 959);
INSERT INTO public.guess_games VALUES ('user_1748646565121', 5, 673);
INSERT INTO public.guess_games VALUES ('user_1748645667454', 2, 451);
INSERT INTO public.guess_games VALUES ('user_1748645667455', 5, 976);
INSERT INTO public.guess_games VALUES ('user_1748645708277', 2, 892);
INSERT INTO public.guess_games VALUES ('user_1748645708278', 5, 935);
INSERT INTO public.guess_games VALUES ('user_1748645741233', 2, 92);
INSERT INTO public.guess_games VALUES ('user_1748645741234', 5, 452);
INSERT INTO public.guess_games VALUES ('user_1748645878667', 2, 971);
INSERT INTO public.guess_games VALUES ('user_1748645878668', 5, 247);
INSERT INTO public.guess_games VALUES ('user_1748646223108', 2, 801);
INSERT INTO public.guess_games VALUES ('user_1748646223109', 5, 262);
INSERT INTO public.guess_games VALUES ('user_1748646298796', 2, 948);
INSERT INTO public.guess_games VALUES ('user_1748646298797', 5, 278);
INSERT INTO public.guess_games VALUES ('user_1748646367118', 2, 863);
INSERT INTO public.guess_games VALUES ('user_1748646367119', 5, 400);
INSERT INTO public.guess_games VALUES ('user_1748646440031', 2, 589);
INSERT INTO public.guess_games VALUES ('user_1748646440032', 5, 951);


--
-- Name guess_games guess_games_username_key; Type CONSTRAINT; Schema public; Owner freecodecamp
--

ALTER TABLE ONLY public.guess_games
    ADD CONSTRAINT guess_games_username_key UNIQUE (username);


--
-- PostgreSQL database dump complete
--

