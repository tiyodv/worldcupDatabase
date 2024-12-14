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

DROP DATABASE worldcup;
--
-- Name: worldcup; Type: DATABASE; Schema: -; Owner: freecodecamp
--

CREATE DATABASE worldcup WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C.UTF-8' LC_CTYPE = 'C.UTF-8';


ALTER DATABASE worldcup OWNER TO freecodecamp;

\connect worldcup

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
-- Name: games; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.games (
    game_id integer NOT NULL,
    year integer NOT NULL,
    round character varying NOT NULL,
    winner_id integer NOT NULL,
    opponent_id integer NOT NULL,
    winner_goals integer NOT NULL,
    opponent_goals integer NOT NULL
);


ALTER TABLE public.games OWNER TO freecodecamp;

--
-- Name: games_game_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.games_game_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.games_game_id_seq OWNER TO freecodecamp;

--
-- Name: games_game_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.games_game_id_seq OWNED BY public.games.game_id;


--
-- Name: teams; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.teams (
    team_id integer NOT NULL,
    name character varying NOT NULL
);


ALTER TABLE public.teams OWNER TO freecodecamp;

--
-- Name: team_team_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.team_team_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.team_team_id_seq OWNER TO freecodecamp;

--
-- Name: team_team_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.team_team_id_seq OWNED BY public.teams.team_id;


--
-- Name: games game_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games ALTER COLUMN game_id SET DEFAULT nextval('public.games_game_id_seq'::regclass);


--
-- Name: teams team_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.teams ALTER COLUMN team_id SET DEFAULT nextval('public.team_team_id_seq'::regclass);


--
-- Data for Name: games; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.games VALUES (126, 2018, 'Final', 325, 322, 4, 2);
INSERT INTO public.games VALUES (127, 2018, 'Third Place', 317, 324, 2, 0);
INSERT INTO public.games VALUES (128, 2018, 'Semi-Final', 322, 324, 2, 1);
INSERT INTO public.games VALUES (129, 2018, 'Semi-Final', 325, 317, 1, 0);
INSERT INTO public.games VALUES (130, 2018, 'Quarter-Final', 322, 333, 3, 2);
INSERT INTO public.games VALUES (131, 2018, 'Quarter-Final', 324, 335, 2, 0);
INSERT INTO public.games VALUES (132, 2018, 'Quarter-Final', 317, 318, 2, 1);
INSERT INTO public.games VALUES (133, 2018, 'Quarter-Final', 325, 338, 2, 0);
INSERT INTO public.games VALUES (134, 2018, 'Eighth-Final', 324, 320, 2, 1);
INSERT INTO public.games VALUES (135, 2018, 'Eighth-Final', 335, 336, 1, 0);
INSERT INTO public.games VALUES (136, 2018, 'Eighth-Final', 317, 328, 3, 2);
INSERT INTO public.games VALUES (137, 2018, 'Eighth-Final', 318, 329, 2, 0);
INSERT INTO public.games VALUES (138, 2018, 'Eighth-Final', 322, 323, 2, 1);
INSERT INTO public.games VALUES (139, 2018, 'Eighth-Final', 333, 334, 2, 1);
INSERT INTO public.games VALUES (140, 2018, 'Eighth-Final', 338, 332, 2, 1);
INSERT INTO public.games VALUES (141, 2018, 'Eighth-Final', 325, 316, 4, 3);
INSERT INTO public.games VALUES (142, 2014, 'Final', 326, 316, 1, 0);
INSERT INTO public.games VALUES (143, 2014, 'Third Place', 330, 318, 3, 0);
INSERT INTO public.games VALUES (144, 2014, 'Semi-Final', 316, 330, 1, 0);
INSERT INTO public.games VALUES (145, 2014, 'Semi-Final', 326, 318, 7, 1);
INSERT INTO public.games VALUES (146, 2014, 'Quarter-Final', 330, 321, 1, 0);
INSERT INTO public.games VALUES (147, 2014, 'Quarter-Final', 316, 317, 1, 0);
INSERT INTO public.games VALUES (148, 2014, 'Quarter-Final', 318, 320, 2, 1);
INSERT INTO public.games VALUES (149, 2014, 'Quarter-Final', 326, 325, 1, 0);
INSERT INTO public.games VALUES (150, 2014, 'Eighth-Final', 318, 319, 2, 1);
INSERT INTO public.games VALUES (151, 2014, 'Eighth-Final', 320, 338, 2, 0);
INSERT INTO public.games VALUES (152, 2014, 'Eighth-Final', 325, 331, 2, 0);
INSERT INTO public.games VALUES (153, 2014, 'Eighth-Final', 326, 315, 2, 1);
INSERT INTO public.games VALUES (154, 2014, 'Eighth-Final', 330, 329, 2, 1);
INSERT INTO public.games VALUES (155, 2014, 'Eighth-Final', 321, 327, 2, 1);
INSERT INTO public.games VALUES (156, 2014, 'Eighth-Final', 316, 336, 1, 0);
INSERT INTO public.games VALUES (157, 2014, 'Eighth-Final', 317, 337, 2, 1);


--
-- Data for Name: teams; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.teams VALUES (315, 'Algeria');
INSERT INTO public.teams VALUES (316, 'Argentina');
INSERT INTO public.teams VALUES (317, 'Belgium');
INSERT INTO public.teams VALUES (318, 'Brazil');
INSERT INTO public.teams VALUES (319, 'Chile');
INSERT INTO public.teams VALUES (320, 'Colombia');
INSERT INTO public.teams VALUES (321, 'Costa Rica');
INSERT INTO public.teams VALUES (322, 'Croatia');
INSERT INTO public.teams VALUES (323, 'Denmark');
INSERT INTO public.teams VALUES (324, 'England');
INSERT INTO public.teams VALUES (325, 'France');
INSERT INTO public.teams VALUES (326, 'Germany');
INSERT INTO public.teams VALUES (327, 'Greece');
INSERT INTO public.teams VALUES (328, 'Japan');
INSERT INTO public.teams VALUES (329, 'Mexico');
INSERT INTO public.teams VALUES (330, 'Netherlands');
INSERT INTO public.teams VALUES (331, 'Nigeria');
INSERT INTO public.teams VALUES (332, 'Portugal');
INSERT INTO public.teams VALUES (333, 'Russia');
INSERT INTO public.teams VALUES (334, 'Spain');
INSERT INTO public.teams VALUES (335, 'Sweden');
INSERT INTO public.teams VALUES (336, 'Switzerland');
INSERT INTO public.teams VALUES (337, 'United States');
INSERT INTO public.teams VALUES (338, 'Uruguay');


--
-- Name: games_game_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.games_game_id_seq', 157, true);


--
-- Name: team_team_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.team_team_id_seq', 362, true);


--
-- Name: games games_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_pkey PRIMARY KEY (game_id);


--
-- Name: teams team_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.teams
    ADD CONSTRAINT team_pkey PRIMARY KEY (team_id);


--
-- Name: teams teams_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.teams
    ADD CONSTRAINT teams_name_key UNIQUE (name);


--
-- Name: games games_opponent_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_opponent_id_fkey FOREIGN KEY (opponent_id) REFERENCES public.teams(team_id);


--
-- Name: games games_winner_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_winner_id_fkey FOREIGN KEY (winner_id) REFERENCES public.teams(team_id);


--
-- PostgreSQL database dump complete
--

