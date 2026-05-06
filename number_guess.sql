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

DROP DATABASE number_guess;
--
-- Name: number_guess; Type: DATABASE; Schema: -; Owner: freecodecamp
--

CREATE DATABASE number_guess WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C.UTF-8' LC_CTYPE = 'C.UTF-8';


ALTER DATABASE number_guess OWNER TO freecodecamp;

\connect number_guess

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
    number_guesses integer NOT NULL,
    user_id integer
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
-- Name: users; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.users (
    user_id integer NOT NULL,
    username character varying(20) NOT NULL
);


ALTER TABLE public.users OWNER TO freecodecamp;

--
-- Name: users_user_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.users_user_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.users_user_id_seq OWNER TO freecodecamp;

--
-- Name: users_user_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.users_user_id_seq OWNED BY public.users.user_id;


--
-- Name: games game_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games ALTER COLUMN game_id SET DEFAULT nextval('public.games_game_id_seq'::regclass);


--
-- Name: users user_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.users ALTER COLUMN user_id SET DEFAULT nextval('public.users_user_id_seq'::regclass);


--
-- Data for Name: games; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.games VALUES (1, 31, 1);
INSERT INTO public.games VALUES (2, 731, 2);
INSERT INTO public.games VALUES (3, 892, 2);
INSERT INTO public.games VALUES (4, 729, 3);
INSERT INTO public.games VALUES (5, 885, 3);
INSERT INTO public.games VALUES (6, 263, 2);
INSERT INTO public.games VALUES (7, 936, 2);
INSERT INTO public.games VALUES (8, 91, 2);
INSERT INTO public.games VALUES (9, 964, 5);
INSERT INTO public.games VALUES (10, 935, 5);
INSERT INTO public.games VALUES (11, 426, 6);
INSERT INTO public.games VALUES (12, 987, 6);
INSERT INTO public.games VALUES (13, 815, 5);
INSERT INTO public.games VALUES (14, 960, 5);
INSERT INTO public.games VALUES (15, 75, 5);
INSERT INTO public.games VALUES (16, 814, 7);
INSERT INTO public.games VALUES (17, 755, 7);
INSERT INTO public.games VALUES (18, 229, 8);
INSERT INTO public.games VALUES (19, 347, 8);
INSERT INTO public.games VALUES (20, 865, 7);
INSERT INTO public.games VALUES (21, 715, 7);
INSERT INTO public.games VALUES (22, 361, 7);
INSERT INTO public.games VALUES (23, 174, 9);
INSERT INTO public.games VALUES (24, 937, 9);
INSERT INTO public.games VALUES (25, 640, 10);
INSERT INTO public.games VALUES (26, 975, 10);
INSERT INTO public.games VALUES (27, 810, 9);
INSERT INTO public.games VALUES (28, 333, 9);
INSERT INTO public.games VALUES (29, 418, 9);
INSERT INTO public.games VALUES (30, 24, 11);
INSERT INTO public.games VALUES (31, 167, 11);
INSERT INTO public.games VALUES (32, 981, 12);
INSERT INTO public.games VALUES (33, 896, 12);
INSERT INTO public.games VALUES (34, 511, 11);
INSERT INTO public.games VALUES (35, 835, 11);
INSERT INTO public.games VALUES (36, 350, 11);
INSERT INTO public.games VALUES (37, 23, 13);
INSERT INTO public.games VALUES (38, 309, 13);
INSERT INTO public.games VALUES (39, 12, 14);
INSERT INTO public.games VALUES (40, 715, 14);
INSERT INTO public.games VALUES (41, 392, 13);
INSERT INTO public.games VALUES (42, 643, 13);
INSERT INTO public.games VALUES (43, 493, 13);
INSERT INTO public.games VALUES (44, 772, 15);
INSERT INTO public.games VALUES (45, 539, 15);
INSERT INTO public.games VALUES (46, 540, 16);
INSERT INTO public.games VALUES (47, 103, 16);
INSERT INTO public.games VALUES (48, 588, 15);
INSERT INTO public.games VALUES (49, 470, 15);
INSERT INTO public.games VALUES (50, 532, 15);
INSERT INTO public.games VALUES (51, 40, 1);
INSERT INTO public.games VALUES (52, 954, 17);
INSERT INTO public.games VALUES (53, 860, 17);
INSERT INTO public.games VALUES (54, 48, 18);
INSERT INTO public.games VALUES (55, 432, 18);
INSERT INTO public.games VALUES (56, 746, 17);
INSERT INTO public.games VALUES (57, 811, 17);
INSERT INTO public.games VALUES (58, 447, 17);
INSERT INTO public.games VALUES (59, 584, 19);
INSERT INTO public.games VALUES (60, 235, 19);
INSERT INTO public.games VALUES (61, 126, 20);
INSERT INTO public.games VALUES (62, 393, 20);
INSERT INTO public.games VALUES (63, 514, 19);
INSERT INTO public.games VALUES (64, 380, 19);
INSERT INTO public.games VALUES (65, 775, 19);
INSERT INTO public.games VALUES (66, 943, 21);
INSERT INTO public.games VALUES (67, 877, 21);
INSERT INTO public.games VALUES (68, 278, 22);
INSERT INTO public.games VALUES (69, 609, 22);
INSERT INTO public.games VALUES (70, 247, 21);
INSERT INTO public.games VALUES (71, 246, 21);
INSERT INTO public.games VALUES (72, 650, 21);
INSERT INTO public.games VALUES (73, 963, 23);
INSERT INTO public.games VALUES (74, 803, 23);
INSERT INTO public.games VALUES (75, 469, 24);
INSERT INTO public.games VALUES (76, 974, 24);
INSERT INTO public.games VALUES (77, 770, 23);
INSERT INTO public.games VALUES (78, 559, 23);
INSERT INTO public.games VALUES (79, 31, 23);
INSERT INTO public.games VALUES (80, 497, 25);
INSERT INTO public.games VALUES (81, 215, 25);
INSERT INTO public.games VALUES (82, 189, 26);
INSERT INTO public.games VALUES (83, 509, 26);
INSERT INTO public.games VALUES (84, 379, 25);
INSERT INTO public.games VALUES (85, 636, 25);
INSERT INTO public.games VALUES (86, 510, 25);
INSERT INTO public.games VALUES (87, 632, 27);
INSERT INTO public.games VALUES (88, 685, 27);
INSERT INTO public.games VALUES (89, 474, 28);
INSERT INTO public.games VALUES (90, 443, 28);
INSERT INTO public.games VALUES (91, 17, 27);
INSERT INTO public.games VALUES (92, 171, 27);
INSERT INTO public.games VALUES (93, 809, 27);
INSERT INTO public.games VALUES (94, 995, 29);
INSERT INTO public.games VALUES (95, 336, 29);
INSERT INTO public.games VALUES (96, 263, 30);
INSERT INTO public.games VALUES (97, 422, 30);
INSERT INTO public.games VALUES (98, 756, 29);
INSERT INTO public.games VALUES (99, 475, 29);
INSERT INTO public.games VALUES (100, 367, 29);
INSERT INTO public.games VALUES (101, 219, 31);
INSERT INTO public.games VALUES (102, 549, 31);
INSERT INTO public.games VALUES (103, 406, 32);
INSERT INTO public.games VALUES (104, 975, 32);
INSERT INTO public.games VALUES (105, 529, 31);
INSERT INTO public.games VALUES (106, 33, 31);
INSERT INTO public.games VALUES (107, 341, 31);
INSERT INTO public.games VALUES (108, 423, 33);
INSERT INTO public.games VALUES (109, 750, 33);
INSERT INTO public.games VALUES (110, 41, 34);
INSERT INTO public.games VALUES (111, 727, 34);
INSERT INTO public.games VALUES (112, 379, 33);
INSERT INTO public.games VALUES (113, 198, 33);
INSERT INTO public.games VALUES (114, 242, 33);
INSERT INTO public.games VALUES (115, 466, 35);
INSERT INTO public.games VALUES (116, 285, 35);
INSERT INTO public.games VALUES (117, 421, 36);
INSERT INTO public.games VALUES (118, 872, 36);
INSERT INTO public.games VALUES (119, 500, 35);
INSERT INTO public.games VALUES (120, 709, 35);
INSERT INTO public.games VALUES (121, 743, 35);


--
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.users VALUES (1, 'Manish');
INSERT INTO public.users VALUES (2, 'user_1778084410867');
INSERT INTO public.users VALUES (3, 'user_1778084410866');
INSERT INTO public.users VALUES (4, 'manish');
INSERT INTO public.users VALUES (5, 'user_1778084825416');
INSERT INTO public.users VALUES (6, 'user_1778084825415');
INSERT INTO public.users VALUES (7, 'user_1778084935761');
INSERT INTO public.users VALUES (8, 'user_1778084935760');
INSERT INTO public.users VALUES (9, 'user_1778085075939');
INSERT INTO public.users VALUES (10, 'user_1778085075938');
INSERT INTO public.users VALUES (11, 'user_1778085368882');
INSERT INTO public.users VALUES (12, 'user_1778085368881');
INSERT INTO public.users VALUES (13, 'user_1778085789058');
INSERT INTO public.users VALUES (14, 'user_1778085789057');
INSERT INTO public.users VALUES (15, 'user_1778085877608');
INSERT INTO public.users VALUES (16, 'user_1778085877607');
INSERT INTO public.users VALUES (17, 'user_1778086160948');
INSERT INTO public.users VALUES (18, 'user_1778086160947');
INSERT INTO public.users VALUES (19, 'user_1778086238014');
INSERT INTO public.users VALUES (20, 'user_1778086238013');
INSERT INTO public.users VALUES (21, 'user_1778086305886');
INSERT INTO public.users VALUES (22, 'user_1778086305885');
INSERT INTO public.users VALUES (23, 'user_1778086380454');
INSERT INTO public.users VALUES (24, 'user_1778086380453');
INSERT INTO public.users VALUES (25, 'user_1778086412524');
INSERT INTO public.users VALUES (26, 'user_1778086412523');
INSERT INTO public.users VALUES (27, 'user_1778086856857');
INSERT INTO public.users VALUES (28, 'user_1778086856856');
INSERT INTO public.users VALUES (29, 'user_1778087025743');
INSERT INTO public.users VALUES (30, 'user_1778087025742');
INSERT INTO public.users VALUES (31, 'user_1778087175600');
INSERT INTO public.users VALUES (32, 'user_1778087175599');
INSERT INTO public.users VALUES (33, 'user_1778087190114');
INSERT INTO public.users VALUES (34, 'user_1778087190113');
INSERT INTO public.users VALUES (35, 'user_1778087293520');
INSERT INTO public.users VALUES (36, 'user_1778087293519');


--
-- Name: games_game_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.games_game_id_seq', 121, true);


--
-- Name: users_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.users_user_id_seq', 36, true);


--
-- Name: games games_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_pkey PRIMARY KEY (game_id);


--
-- Name: users users_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (user_id);


--
-- Name: users users_username_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_username_key UNIQUE (username);


--
-- Name: games games_user_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_user_id_fkey FOREIGN KEY (user_id) REFERENCES public.users(user_id);


--
-- PostgreSQL database dump complete
--

