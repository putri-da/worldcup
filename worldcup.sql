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
    round character varying(100) NOT NULL,
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
    name character varying(100) NOT NULL
);


ALTER TABLE public.teams OWNER TO freecodecamp;

--
-- Name: teams_team_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.teams_team_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.teams_team_id_seq OWNER TO freecodecamp;

--
-- Name: teams_team_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.teams_team_id_seq OWNED BY public.teams.team_id;


--
-- Name: games game_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games ALTER COLUMN game_id SET DEFAULT nextval('public.games_game_id_seq'::regclass);


--
-- Name: teams team_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.teams ALTER COLUMN team_id SET DEFAULT nextval('public.teams_team_id_seq'::regclass);


--
-- Data for Name: games; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.games VALUES (417, 2018, 'Final', 668, 670, 4, 2);
INSERT INTO public.games VALUES (418, 2018, 'Third Place', 669, 671, 2, 0);
INSERT INTO public.games VALUES (419, 2018, 'Semi-Final', 670, 671, 2, 1);
INSERT INTO public.games VALUES (420, 2018, 'Semi-Final', 668, 669, 1, 0);
INSERT INTO public.games VALUES (421, 2018, 'Quarter-Final', 670, 674, 3, 2);
INSERT INTO public.games VALUES (422, 2018, 'Quarter-Final', 671, 672, 2, 0);
INSERT INTO public.games VALUES (423, 2018, 'Quarter-Final', 669, 673, 2, 1);
INSERT INTO public.games VALUES (424, 2018, 'Quarter-Final', 668, 675, 2, 0);
INSERT INTO public.games VALUES (425, 2018, 'Eighth-Final', 671, 679, 2, 1);
INSERT INTO public.games VALUES (426, 2018, 'Eighth-Final', 672, 681, 1, 0);
INSERT INTO public.games VALUES (427, 2018, 'Eighth-Final', 669, 682, 3, 2);
INSERT INTO public.games VALUES (428, 2018, 'Eighth-Final', 673, 683, 2, 0);
INSERT INTO public.games VALUES (429, 2018, 'Eighth-Final', 670, 684, 2, 1);
INSERT INTO public.games VALUES (430, 2018, 'Eighth-Final', 674, 685, 2, 1);
INSERT INTO public.games VALUES (431, 2018, 'Eighth-Final', 675, 686, 2, 1);
INSERT INTO public.games VALUES (432, 2018, 'Eighth-Final', 668, 678, 4, 3);
INSERT INTO public.games VALUES (433, 2014, 'Final', 676, 678, 1, 0);
INSERT INTO public.games VALUES (434, 2014, 'Third Place', 677, 673, 3, 0);
INSERT INTO public.games VALUES (435, 2014, 'Semi-Final', 678, 677, 1, 0);
INSERT INTO public.games VALUES (436, 2014, 'Semi-Final', 676, 673, 7, 1);
INSERT INTO public.games VALUES (437, 2014, 'Quarter-Final', 677, 680, 1, 0);
INSERT INTO public.games VALUES (438, 2014, 'Quarter-Final', 678, 669, 1, 0);
INSERT INTO public.games VALUES (439, 2014, 'Quarter-Final', 673, 679, 2, 1);
INSERT INTO public.games VALUES (440, 2014, 'Quarter-Final', 676, 668, 1, 0);
INSERT INTO public.games VALUES (441, 2014, 'Eighth-Final', 673, 687, 2, 1);
INSERT INTO public.games VALUES (442, 2014, 'Eighth-Final', 679, 675, 2, 0);
INSERT INTO public.games VALUES (443, 2014, 'Eighth-Final', 668, 688, 2, 0);
INSERT INTO public.games VALUES (444, 2014, 'Eighth-Final', 676, 689, 2, 1);
INSERT INTO public.games VALUES (445, 2014, 'Eighth-Final', 677, 683, 2, 1);
INSERT INTO public.games VALUES (446, 2014, 'Eighth-Final', 680, 690, 2, 1);
INSERT INTO public.games VALUES (447, 2014, 'Eighth-Final', 678, 681, 1, 0);
INSERT INTO public.games VALUES (448, 2014, 'Eighth-Final', 669, 691, 2, 1);


--
-- Data for Name: teams; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.teams VALUES (668, 'France');
INSERT INTO public.teams VALUES (669, 'Belgium');
INSERT INTO public.teams VALUES (670, 'Croatia');
INSERT INTO public.teams VALUES (671, 'England');
INSERT INTO public.teams VALUES (672, 'Sweden');
INSERT INTO public.teams VALUES (673, 'Brazil');
INSERT INTO public.teams VALUES (674, 'Russia');
INSERT INTO public.teams VALUES (675, 'Uruguay');
INSERT INTO public.teams VALUES (676, 'Germany');
INSERT INTO public.teams VALUES (677, 'Netherlands');
INSERT INTO public.teams VALUES (678, 'Argentina');
INSERT INTO public.teams VALUES (679, 'Colombia');
INSERT INTO public.teams VALUES (680, 'Costa Rica');
INSERT INTO public.teams VALUES (681, 'Switzerland');
INSERT INTO public.teams VALUES (682, 'Japan');
INSERT INTO public.teams VALUES (683, 'Mexico');
INSERT INTO public.teams VALUES (684, 'Denmark');
INSERT INTO public.teams VALUES (685, 'Spain');
INSERT INTO public.teams VALUES (686, 'Portugal');
INSERT INTO public.teams VALUES (687, 'Chile');
INSERT INTO public.teams VALUES (688, 'Nigeria');
INSERT INTO public.teams VALUES (689, 'Algeria');
INSERT INTO public.teams VALUES (690, 'Greece');
INSERT INTO public.teams VALUES (691, 'United States');


--
-- Name: games_game_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.games_game_id_seq', 448, true);


--
-- Name: teams_team_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.teams_team_id_seq', 691, true);


--
-- Name: games games_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_pkey PRIMARY KEY (game_id);


--
-- Name: teams teams_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.teams
    ADD CONSTRAINT teams_name_key UNIQUE (name);


--
-- Name: teams teams_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.teams
    ADD CONSTRAINT teams_pkey PRIMARY KEY (team_id);


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

