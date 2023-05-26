--
-- PostgreSQL database dump
--

-- Dumped from database version 12.0
-- Dumped by pg_dump version 12.12

-- Started on 2023-05-18 14:51:47 UTC

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
-- TOC entry 209 (class 1259 OID 16416)
-- Name: auth_group; Type: TABLE; Schema: public; Owner: api_dev_user
--

CREATE TABLE public.auth_group (
    id integer NOT NULL,
    name character varying(150) NOT NULL
);


ALTER TABLE public.auth_group OWNER TO api_dev_user;

--
-- TOC entry 208 (class 1259 OID 16414)
-- Name: auth_group_id_seq; Type: SEQUENCE; Schema: public; Owner: api_dev_user
--

CREATE SEQUENCE public.auth_group_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_group_id_seq OWNER TO api_dev_user;

--
-- TOC entry 3075 (class 0 OID 0)
-- Dependencies: 208
-- Name: auth_group_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: api_dev_user
--

ALTER SEQUENCE public.auth_group_id_seq OWNED BY public.auth_group.id;


--
-- TOC entry 211 (class 1259 OID 16426)
-- Name: auth_group_permissions; Type: TABLE; Schema: public; Owner: api_dev_user
--

CREATE TABLE public.auth_group_permissions (
    id integer NOT NULL,
    group_id integer NOT NULL,
    permission_id integer NOT NULL
);


ALTER TABLE public.auth_group_permissions OWNER TO api_dev_user;

--
-- TOC entry 210 (class 1259 OID 16424)
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE; Schema: public; Owner: api_dev_user
--

CREATE SEQUENCE public.auth_group_permissions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_group_permissions_id_seq OWNER TO api_dev_user;

--
-- TOC entry 3076 (class 0 OID 0)
-- Dependencies: 210
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: api_dev_user
--

ALTER SEQUENCE public.auth_group_permissions_id_seq OWNED BY public.auth_group_permissions.id;


--
-- TOC entry 207 (class 1259 OID 16408)
-- Name: auth_permission; Type: TABLE; Schema: public; Owner: api_dev_user
--

CREATE TABLE public.auth_permission (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    content_type_id integer NOT NULL,
    codename character varying(100) NOT NULL
);


ALTER TABLE public.auth_permission OWNER TO api_dev_user;

--
-- TOC entry 206 (class 1259 OID 16406)
-- Name: auth_permission_id_seq; Type: SEQUENCE; Schema: public; Owner: api_dev_user
--

CREATE SEQUENCE public.auth_permission_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_permission_id_seq OWNER TO api_dev_user;

--
-- TOC entry 3077 (class 0 OID 0)
-- Dependencies: 206
-- Name: auth_permission_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: api_dev_user
--

ALTER SEQUENCE public.auth_permission_id_seq OWNED BY public.auth_permission.id;


--
-- TOC entry 221 (class 1259 OID 16542)
-- Name: core_todo; Type: TABLE; Schema: public; Owner: api_dev_user
--

CREATE TABLE public.core_todo (
    id integer NOT NULL,
    todo character varying(100) NOT NULL
);


ALTER TABLE public.core_todo OWNER TO api_dev_user;

--
-- TOC entry 220 (class 1259 OID 16540)
-- Name: core_todo_id_seq; Type: SEQUENCE; Schema: public; Owner: api_dev_user
--

CREATE SEQUENCE public.core_todo_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.core_todo_id_seq OWNER TO api_dev_user;

--
-- TOC entry 3078 (class 0 OID 0)
-- Dependencies: 220
-- Name: core_todo_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: api_dev_user
--

ALTER SEQUENCE public.core_todo_id_seq OWNED BY public.core_todo.id;


--
-- TOC entry 213 (class 1259 OID 16460)
-- Name: core_user; Type: TABLE; Schema: public; Owner: api_dev_user
--

CREATE TABLE public.core_user (
    id integer NOT NULL,
    password character varying(128) NOT NULL,
    last_login timestamp with time zone,
    is_superuser boolean NOT NULL,
    username character varying(150) NOT NULL,
    first_name character varying(30) NOT NULL,
    last_name character varying(150) NOT NULL,
    email character varying(254) NOT NULL,
    is_staff boolean NOT NULL,
    is_active boolean NOT NULL,
    date_joined timestamp with time zone NOT NULL
);


ALTER TABLE public.core_user OWNER TO api_dev_user;

--
-- TOC entry 215 (class 1259 OID 16473)
-- Name: core_user_groups; Type: TABLE; Schema: public; Owner: api_dev_user
--

CREATE TABLE public.core_user_groups (
    id integer NOT NULL,
    user_id integer NOT NULL,
    group_id integer NOT NULL
);


ALTER TABLE public.core_user_groups OWNER TO api_dev_user;

--
-- TOC entry 214 (class 1259 OID 16471)
-- Name: core_user_groups_id_seq; Type: SEQUENCE; Schema: public; Owner: api_dev_user
--

CREATE SEQUENCE public.core_user_groups_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.core_user_groups_id_seq OWNER TO api_dev_user;

--
-- TOC entry 3079 (class 0 OID 0)
-- Dependencies: 214
-- Name: core_user_groups_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: api_dev_user
--

ALTER SEQUENCE public.core_user_groups_id_seq OWNED BY public.core_user_groups.id;


--
-- TOC entry 212 (class 1259 OID 16458)
-- Name: core_user_id_seq; Type: SEQUENCE; Schema: public; Owner: api_dev_user
--

CREATE SEQUENCE public.core_user_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.core_user_id_seq OWNER TO api_dev_user;

--
-- TOC entry 3080 (class 0 OID 0)
-- Dependencies: 212
-- Name: core_user_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: api_dev_user
--

ALTER SEQUENCE public.core_user_id_seq OWNED BY public.core_user.id;


--
-- TOC entry 217 (class 1259 OID 16481)
-- Name: core_user_user_permissions; Type: TABLE; Schema: public; Owner: api_dev_user
--

CREATE TABLE public.core_user_user_permissions (
    id integer NOT NULL,
    user_id integer NOT NULL,
    permission_id integer NOT NULL
);


ALTER TABLE public.core_user_user_permissions OWNER TO api_dev_user;

--
-- TOC entry 216 (class 1259 OID 16479)
-- Name: core_user_user_permissions_id_seq; Type: SEQUENCE; Schema: public; Owner: api_dev_user
--

CREATE SEQUENCE public.core_user_user_permissions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.core_user_user_permissions_id_seq OWNER TO api_dev_user;

--
-- TOC entry 3081 (class 0 OID 0)
-- Dependencies: 216
-- Name: core_user_user_permissions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: api_dev_user
--

ALTER SEQUENCE public.core_user_user_permissions_id_seq OWNED BY public.core_user_user_permissions.id;


--
-- TOC entry 219 (class 1259 OID 16518)
-- Name: django_admin_log; Type: TABLE; Schema: public; Owner: api_dev_user
--

CREATE TABLE public.django_admin_log (
    id integer NOT NULL,
    action_time timestamp with time zone NOT NULL,
    object_id text,
    object_repr character varying(200) NOT NULL,
    action_flag smallint NOT NULL,
    change_message text NOT NULL,
    content_type_id integer,
    user_id integer NOT NULL,
    CONSTRAINT django_admin_log_action_flag_check CHECK ((action_flag >= 0))
);


ALTER TABLE public.django_admin_log OWNER TO api_dev_user;

--
-- TOC entry 218 (class 1259 OID 16516)
-- Name: django_admin_log_id_seq; Type: SEQUENCE; Schema: public; Owner: api_dev_user
--

CREATE SEQUENCE public.django_admin_log_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.django_admin_log_id_seq OWNER TO api_dev_user;

--
-- TOC entry 3082 (class 0 OID 0)
-- Dependencies: 218
-- Name: django_admin_log_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: api_dev_user
--

ALTER SEQUENCE public.django_admin_log_id_seq OWNED BY public.django_admin_log.id;


--
-- TOC entry 205 (class 1259 OID 16398)
-- Name: django_content_type; Type: TABLE; Schema: public; Owner: api_dev_user
--

CREATE TABLE public.django_content_type (
    id integer NOT NULL,
    app_label character varying(100) NOT NULL,
    model character varying(100) NOT NULL
);


ALTER TABLE public.django_content_type OWNER TO api_dev_user;

--
-- TOC entry 204 (class 1259 OID 16396)
-- Name: django_content_type_id_seq; Type: SEQUENCE; Schema: public; Owner: api_dev_user
--

CREATE SEQUENCE public.django_content_type_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.django_content_type_id_seq OWNER TO api_dev_user;

--
-- TOC entry 3083 (class 0 OID 0)
-- Dependencies: 204
-- Name: django_content_type_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: api_dev_user
--

ALTER SEQUENCE public.django_content_type_id_seq OWNED BY public.django_content_type.id;


--
-- TOC entry 203 (class 1259 OID 16387)
-- Name: django_migrations; Type: TABLE; Schema: public; Owner: api_dev_user
--

CREATE TABLE public.django_migrations (
    id integer NOT NULL,
    app character varying(255) NOT NULL,
    name character varying(255) NOT NULL,
    applied timestamp with time zone NOT NULL
);


ALTER TABLE public.django_migrations OWNER TO api_dev_user;

--
-- TOC entry 202 (class 1259 OID 16385)
-- Name: django_migrations_id_seq; Type: SEQUENCE; Schema: public; Owner: api_dev_user
--

CREATE SEQUENCE public.django_migrations_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.django_migrations_id_seq OWNER TO api_dev_user;

--
-- TOC entry 3084 (class 0 OID 0)
-- Dependencies: 202
-- Name: django_migrations_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: api_dev_user
--

ALTER SEQUENCE public.django_migrations_id_seq OWNED BY public.django_migrations.id;


--
-- TOC entry 222 (class 1259 OID 16548)
-- Name: django_session; Type: TABLE; Schema: public; Owner: api_dev_user
--

CREATE TABLE public.django_session (
    session_key character varying(40) NOT NULL,
    session_data text NOT NULL,
    expire_date timestamp with time zone NOT NULL
);


ALTER TABLE public.django_session OWNER TO api_dev_user;

--
-- TOC entry 2857 (class 2604 OID 16419)
-- Name: auth_group id; Type: DEFAULT; Schema: public; Owner: api_dev_user
--

ALTER TABLE ONLY public.auth_group ALTER COLUMN id SET DEFAULT nextval('public.auth_group_id_seq'::regclass);


--
-- TOC entry 2858 (class 2604 OID 16429)
-- Name: auth_group_permissions id; Type: DEFAULT; Schema: public; Owner: api_dev_user
--

ALTER TABLE ONLY public.auth_group_permissions ALTER COLUMN id SET DEFAULT nextval('public.auth_group_permissions_id_seq'::regclass);


--
-- TOC entry 2856 (class 2604 OID 16411)
-- Name: auth_permission id; Type: DEFAULT; Schema: public; Owner: api_dev_user
--

ALTER TABLE ONLY public.auth_permission ALTER COLUMN id SET DEFAULT nextval('public.auth_permission_id_seq'::regclass);


--
-- TOC entry 2864 (class 2604 OID 16545)
-- Name: core_todo id; Type: DEFAULT; Schema: public; Owner: api_dev_user
--

ALTER TABLE ONLY public.core_todo ALTER COLUMN id SET DEFAULT nextval('public.core_todo_id_seq'::regclass);


--
-- TOC entry 2859 (class 2604 OID 16463)
-- Name: core_user id; Type: DEFAULT; Schema: public; Owner: api_dev_user
--

ALTER TABLE ONLY public.core_user ALTER COLUMN id SET DEFAULT nextval('public.core_user_id_seq'::regclass);


--
-- TOC entry 2860 (class 2604 OID 16476)
-- Name: core_user_groups id; Type: DEFAULT; Schema: public; Owner: api_dev_user
--

ALTER TABLE ONLY public.core_user_groups ALTER COLUMN id SET DEFAULT nextval('public.core_user_groups_id_seq'::regclass);


--
-- TOC entry 2861 (class 2604 OID 16484)
-- Name: core_user_user_permissions id; Type: DEFAULT; Schema: public; Owner: api_dev_user
--

ALTER TABLE ONLY public.core_user_user_permissions ALTER COLUMN id SET DEFAULT nextval('public.core_user_user_permissions_id_seq'::regclass);


--
-- TOC entry 2862 (class 2604 OID 16521)
-- Name: django_admin_log id; Type: DEFAULT; Schema: public; Owner: api_dev_user
--

ALTER TABLE ONLY public.django_admin_log ALTER COLUMN id SET DEFAULT nextval('public.django_admin_log_id_seq'::regclass);


--
-- TOC entry 2855 (class 2604 OID 16401)
-- Name: django_content_type id; Type: DEFAULT; Schema: public; Owner: api_dev_user
--

ALTER TABLE ONLY public.django_content_type ALTER COLUMN id SET DEFAULT nextval('public.django_content_type_id_seq'::regclass);


--
-- TOC entry 2854 (class 2604 OID 16390)
-- Name: django_migrations id; Type: DEFAULT; Schema: public; Owner: api_dev_user
--

ALTER TABLE ONLY public.django_migrations ALTER COLUMN id SET DEFAULT nextval('public.django_migrations_id_seq'::regclass);


--
-- TOC entry 3056 (class 0 OID 16416)
-- Dependencies: 209
-- Data for Name: auth_group; Type: TABLE DATA; Schema: public; Owner: api_dev_user
--

COPY public.auth_group (id, name) FROM stdin;
\.


--
-- TOC entry 3058 (class 0 OID 16426)
-- Dependencies: 211
-- Data for Name: auth_group_permissions; Type: TABLE DATA; Schema: public; Owner: api_dev_user
--

COPY public.auth_group_permissions (id, group_id, permission_id) FROM stdin;
\.


--
-- TOC entry 3054 (class 0 OID 16408)
-- Dependencies: 207
-- Data for Name: auth_permission; Type: TABLE DATA; Schema: public; Owner: api_dev_user
--

COPY public.auth_permission (id, name, content_type_id, codename) FROM stdin;
1	Can add log entry	1	add_logentry
2	Can change log entry	1	change_logentry
3	Can delete log entry	1	delete_logentry
4	Can view log entry	1	view_logentry
5	Can add permission	2	add_permission
6	Can change permission	2	change_permission
7	Can delete permission	2	delete_permission
8	Can view permission	2	view_permission
9	Can add group	3	add_group
10	Can change group	3	change_group
11	Can delete group	3	delete_group
12	Can view group	3	view_group
13	Can add content type	4	add_contenttype
14	Can change content type	4	change_contenttype
15	Can delete content type	4	delete_contenttype
16	Can view content type	4	view_contenttype
17	Can add session	5	add_session
18	Can change session	5	change_session
19	Can delete session	5	delete_session
20	Can view session	5	view_session
21	Can add user	6	add_user
22	Can change user	6	change_user
23	Can delete user	6	delete_user
24	Can view user	6	view_user
25	Can add to do	7	add_todo
26	Can change to do	7	change_todo
27	Can delete to do	7	delete_todo
28	Can view to do	7	view_todo
\.


--
-- TOC entry 3068 (class 0 OID 16542)
-- Dependencies: 221
-- Data for Name: core_todo; Type: TABLE DATA; Schema: public; Owner: api_dev_user
--

COPY public.core_todo (id, todo) FROM stdin;
1	TEST TODO ITEM
\.


--
-- TOC entry 3060 (class 0 OID 16460)
-- Dependencies: 213
-- Data for Name: core_user; Type: TABLE DATA; Schema: public; Owner: api_dev_user
--

COPY public.core_user (id, password, last_login, is_superuser, username, first_name, last_name, email, is_staff, is_active, date_joined) FROM stdin;
\.


--
-- TOC entry 3062 (class 0 OID 16473)
-- Dependencies: 215
-- Data for Name: core_user_groups; Type: TABLE DATA; Schema: public; Owner: api_dev_user
--

COPY public.core_user_groups (id, user_id, group_id) FROM stdin;
\.


--
-- TOC entry 3064 (class 0 OID 16481)
-- Dependencies: 217
-- Data for Name: core_user_user_permissions; Type: TABLE DATA; Schema: public; Owner: api_dev_user
--

COPY public.core_user_user_permissions (id, user_id, permission_id) FROM stdin;
\.


--
-- TOC entry 3066 (class 0 OID 16518)
-- Dependencies: 219
-- Data for Name: django_admin_log; Type: TABLE DATA; Schema: public; Owner: api_dev_user
--

COPY public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) FROM stdin;
\.


--
-- TOC entry 3052 (class 0 OID 16398)
-- Dependencies: 205
-- Data for Name: django_content_type; Type: TABLE DATA; Schema: public; Owner: api_dev_user
--

COPY public.django_content_type (id, app_label, model) FROM stdin;
1	admin	logentry
2	auth	permission
3	auth	group
4	contenttypes	contenttype
5	sessions	session
6	core	user
7	core	todo
\.


--
-- TOC entry 3050 (class 0 OID 16387)
-- Dependencies: 203
-- Data for Name: django_migrations; Type: TABLE DATA; Schema: public; Owner: api_dev_user
--

COPY public.django_migrations (id, app, name, applied) FROM stdin;
1	contenttypes	0001_initial	2023-05-18 14:49:57.741465+00
2	contenttypes	0002_remove_content_type_name	2023-05-18 14:49:57.746411+00
3	auth	0001_initial	2023-05-18 14:49:57.758505+00
4	auth	0002_alter_permission_name_max_length	2023-05-18 14:49:57.768343+00
5	auth	0003_alter_user_email_max_length	2023-05-18 14:49:57.770816+00
6	auth	0004_alter_user_username_opts	2023-05-18 14:49:57.773722+00
7	auth	0005_alter_user_last_login_null	2023-05-18 14:49:57.77691+00
8	auth	0006_require_contenttypes_0002	2023-05-18 14:49:57.778339+00
9	auth	0007_alter_validators_add_error_messages	2023-05-18 14:49:57.780943+00
10	auth	0008_alter_user_username_max_length	2023-05-18 14:49:57.783444+00
11	auth	0009_alter_user_last_name_max_length	2023-05-18 14:49:57.786843+00
12	auth	0010_alter_group_name_max_length	2023-05-18 14:49:57.790518+00
13	auth	0011_update_proxy_permissions	2023-05-18 14:49:57.794241+00
14	core	0001_initial	2023-05-18 14:49:57.80409+00
15	admin	0001_initial	2023-05-18 14:49:57.822466+00
16	admin	0002_logentry_remove_auto_add	2023-05-18 14:49:57.829251+00
17	admin	0003_logentry_add_action_flag_choices	2023-05-18 14:49:57.832653+00
18	core	0002_todo	2023-05-18 14:49:57.835798+00
19	sessions	0001_initial	2023-05-18 14:49:57.839787+00
\.


--
-- TOC entry 3069 (class 0 OID 16548)
-- Dependencies: 222
-- Data for Name: django_session; Type: TABLE DATA; Schema: public; Owner: api_dev_user
--

COPY public.django_session (session_key, session_data, expire_date) FROM stdin;
\.


--
-- TOC entry 3085 (class 0 OID 0)
-- Dependencies: 208
-- Name: auth_group_id_seq; Type: SEQUENCE SET; Schema: public; Owner: api_dev_user
--

SELECT pg_catalog.setval('public.auth_group_id_seq', 1, false);


--
-- TOC entry 3086 (class 0 OID 0)
-- Dependencies: 210
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: api_dev_user
--

SELECT pg_catalog.setval('public.auth_group_permissions_id_seq', 1, false);


--
-- TOC entry 3087 (class 0 OID 0)
-- Dependencies: 206
-- Name: auth_permission_id_seq; Type: SEQUENCE SET; Schema: public; Owner: api_dev_user
--

SELECT pg_catalog.setval('public.auth_permission_id_seq', 28, true);


--
-- TOC entry 3088 (class 0 OID 0)
-- Dependencies: 220
-- Name: core_todo_id_seq; Type: SEQUENCE SET; Schema: public; Owner: api_dev_user
--

SELECT pg_catalog.setval('public.core_todo_id_seq', 1, true);


--
-- TOC entry 3089 (class 0 OID 0)
-- Dependencies: 214
-- Name: core_user_groups_id_seq; Type: SEQUENCE SET; Schema: public; Owner: api_dev_user
--

SELECT pg_catalog.setval('public.core_user_groups_id_seq', 1, false);


--
-- TOC entry 3090 (class 0 OID 0)
-- Dependencies: 212
-- Name: core_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: api_dev_user
--

SELECT pg_catalog.setval('public.core_user_id_seq', 1, false);


--
-- TOC entry 3091 (class 0 OID 0)
-- Dependencies: 216
-- Name: core_user_user_permissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: api_dev_user
--

SELECT pg_catalog.setval('public.core_user_user_permissions_id_seq', 1, false);


--
-- TOC entry 3092 (class 0 OID 0)
-- Dependencies: 218
-- Name: django_admin_log_id_seq; Type: SEQUENCE SET; Schema: public; Owner: api_dev_user
--

SELECT pg_catalog.setval('public.django_admin_log_id_seq', 1, false);


--
-- TOC entry 3093 (class 0 OID 0)
-- Dependencies: 204
-- Name: django_content_type_id_seq; Type: SEQUENCE SET; Schema: public; Owner: api_dev_user
--

SELECT pg_catalog.setval('public.django_content_type_id_seq', 7, true);


--
-- TOC entry 3094 (class 0 OID 0)
-- Dependencies: 202
-- Name: django_migrations_id_seq; Type: SEQUENCE SET; Schema: public; Owner: api_dev_user
--

SELECT pg_catalog.setval('public.django_migrations_id_seq', 19, true);


--
-- TOC entry 2878 (class 2606 OID 16456)
-- Name: auth_group auth_group_name_key; Type: CONSTRAINT; Schema: public; Owner: api_dev_user
--

ALTER TABLE ONLY public.auth_group
    ADD CONSTRAINT auth_group_name_key UNIQUE (name);


--
-- TOC entry 2883 (class 2606 OID 16442)
-- Name: auth_group_permissions auth_group_permissions_group_id_permission_id_0cd325b0_uniq; Type: CONSTRAINT; Schema: public; Owner: api_dev_user
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_permission_id_0cd325b0_uniq UNIQUE (group_id, permission_id);


--
-- TOC entry 2886 (class 2606 OID 16431)
-- Name: auth_group_permissions auth_group_permissions_pkey; Type: CONSTRAINT; Schema: public; Owner: api_dev_user
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_pkey PRIMARY KEY (id);


--
-- TOC entry 2880 (class 2606 OID 16421)
-- Name: auth_group auth_group_pkey; Type: CONSTRAINT; Schema: public; Owner: api_dev_user
--

ALTER TABLE ONLY public.auth_group
    ADD CONSTRAINT auth_group_pkey PRIMARY KEY (id);


--
-- TOC entry 2873 (class 2606 OID 16433)
-- Name: auth_permission auth_permission_content_type_id_codename_01ab375a_uniq; Type: CONSTRAINT; Schema: public; Owner: api_dev_user
--

ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_codename_01ab375a_uniq UNIQUE (content_type_id, codename);


--
-- TOC entry 2875 (class 2606 OID 16413)
-- Name: auth_permission auth_permission_pkey; Type: CONSTRAINT; Schema: public; Owner: api_dev_user
--

ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_pkey PRIMARY KEY (id);


--
-- TOC entry 2909 (class 2606 OID 16547)
-- Name: core_todo core_todo_pkey; Type: CONSTRAINT; Schema: public; Owner: api_dev_user
--

ALTER TABLE ONLY public.core_todo
    ADD CONSTRAINT core_todo_pkey PRIMARY KEY (id);


--
-- TOC entry 2894 (class 2606 OID 16478)
-- Name: core_user_groups core_user_groups_pkey; Type: CONSTRAINT; Schema: public; Owner: api_dev_user
--

ALTER TABLE ONLY public.core_user_groups
    ADD CONSTRAINT core_user_groups_pkey PRIMARY KEY (id);


--
-- TOC entry 2897 (class 2606 OID 16489)
-- Name: core_user_groups core_user_groups_user_id_group_id_c82fcad1_uniq; Type: CONSTRAINT; Schema: public; Owner: api_dev_user
--

ALTER TABLE ONLY public.core_user_groups
    ADD CONSTRAINT core_user_groups_user_id_group_id_c82fcad1_uniq UNIQUE (user_id, group_id);


--
-- TOC entry 2888 (class 2606 OID 16468)
-- Name: core_user core_user_pkey; Type: CONSTRAINT; Schema: public; Owner: api_dev_user
--

ALTER TABLE ONLY public.core_user
    ADD CONSTRAINT core_user_pkey PRIMARY KEY (id);


--
-- TOC entry 2900 (class 2606 OID 16486)
-- Name: core_user_user_permissions core_user_user_permissions_pkey; Type: CONSTRAINT; Schema: public; Owner: api_dev_user
--

ALTER TABLE ONLY public.core_user_user_permissions
    ADD CONSTRAINT core_user_user_permissions_pkey PRIMARY KEY (id);


--
-- TOC entry 2903 (class 2606 OID 16503)
-- Name: core_user_user_permissions core_user_user_permissions_user_id_permission_id_73ea0daa_uniq; Type: CONSTRAINT; Schema: public; Owner: api_dev_user
--

ALTER TABLE ONLY public.core_user_user_permissions
    ADD CONSTRAINT core_user_user_permissions_user_id_permission_id_73ea0daa_uniq UNIQUE (user_id, permission_id);


--
-- TOC entry 2891 (class 2606 OID 16470)
-- Name: core_user core_user_username_key; Type: CONSTRAINT; Schema: public; Owner: api_dev_user
--

ALTER TABLE ONLY public.core_user
    ADD CONSTRAINT core_user_username_key UNIQUE (username);


--
-- TOC entry 2906 (class 2606 OID 16527)
-- Name: django_admin_log django_admin_log_pkey; Type: CONSTRAINT; Schema: public; Owner: api_dev_user
--

ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_pkey PRIMARY KEY (id);


--
-- TOC entry 2868 (class 2606 OID 16405)
-- Name: django_content_type django_content_type_app_label_model_76bd3d3b_uniq; Type: CONSTRAINT; Schema: public; Owner: api_dev_user
--

ALTER TABLE ONLY public.django_content_type
    ADD CONSTRAINT django_content_type_app_label_model_76bd3d3b_uniq UNIQUE (app_label, model);


--
-- TOC entry 2870 (class 2606 OID 16403)
-- Name: django_content_type django_content_type_pkey; Type: CONSTRAINT; Schema: public; Owner: api_dev_user
--

ALTER TABLE ONLY public.django_content_type
    ADD CONSTRAINT django_content_type_pkey PRIMARY KEY (id);


--
-- TOC entry 2866 (class 2606 OID 16395)
-- Name: django_migrations django_migrations_pkey; Type: CONSTRAINT; Schema: public; Owner: api_dev_user
--

ALTER TABLE ONLY public.django_migrations
    ADD CONSTRAINT django_migrations_pkey PRIMARY KEY (id);


--
-- TOC entry 2912 (class 2606 OID 16555)
-- Name: django_session django_session_pkey; Type: CONSTRAINT; Schema: public; Owner: api_dev_user
--

ALTER TABLE ONLY public.django_session
    ADD CONSTRAINT django_session_pkey PRIMARY KEY (session_key);


--
-- TOC entry 2876 (class 1259 OID 16457)
-- Name: auth_group_name_a6ea08ec_like; Type: INDEX; Schema: public; Owner: api_dev_user
--

CREATE INDEX auth_group_name_a6ea08ec_like ON public.auth_group USING btree (name varchar_pattern_ops);


--
-- TOC entry 2881 (class 1259 OID 16453)
-- Name: auth_group_permissions_group_id_b120cbf9; Type: INDEX; Schema: public; Owner: api_dev_user
--

CREATE INDEX auth_group_permissions_group_id_b120cbf9 ON public.auth_group_permissions USING btree (group_id);


--
-- TOC entry 2884 (class 1259 OID 16454)
-- Name: auth_group_permissions_permission_id_84c5c92e; Type: INDEX; Schema: public; Owner: api_dev_user
--

CREATE INDEX auth_group_permissions_permission_id_84c5c92e ON public.auth_group_permissions USING btree (permission_id);


--
-- TOC entry 2871 (class 1259 OID 16439)
-- Name: auth_permission_content_type_id_2f476e4b; Type: INDEX; Schema: public; Owner: api_dev_user
--

CREATE INDEX auth_permission_content_type_id_2f476e4b ON public.auth_permission USING btree (content_type_id);


--
-- TOC entry 2892 (class 1259 OID 16501)
-- Name: core_user_groups_group_id_fe8c697f; Type: INDEX; Schema: public; Owner: api_dev_user
--

CREATE INDEX core_user_groups_group_id_fe8c697f ON public.core_user_groups USING btree (group_id);


--
-- TOC entry 2895 (class 1259 OID 16500)
-- Name: core_user_groups_user_id_70b4d9b8; Type: INDEX; Schema: public; Owner: api_dev_user
--

CREATE INDEX core_user_groups_user_id_70b4d9b8 ON public.core_user_groups USING btree (user_id);


--
-- TOC entry 2898 (class 1259 OID 16515)
-- Name: core_user_user_permissions_permission_id_35ccf601; Type: INDEX; Schema: public; Owner: api_dev_user
--

CREATE INDEX core_user_user_permissions_permission_id_35ccf601 ON public.core_user_user_permissions USING btree (permission_id);


--
-- TOC entry 2901 (class 1259 OID 16514)
-- Name: core_user_user_permissions_user_id_085123d3; Type: INDEX; Schema: public; Owner: api_dev_user
--

CREATE INDEX core_user_user_permissions_user_id_085123d3 ON public.core_user_user_permissions USING btree (user_id);


--
-- TOC entry 2889 (class 1259 OID 16487)
-- Name: core_user_username_36e4f7f7_like; Type: INDEX; Schema: public; Owner: api_dev_user
--

CREATE INDEX core_user_username_36e4f7f7_like ON public.core_user USING btree (username varchar_pattern_ops);


--
-- TOC entry 2904 (class 1259 OID 16538)
-- Name: django_admin_log_content_type_id_c4bce8eb; Type: INDEX; Schema: public; Owner: api_dev_user
--

CREATE INDEX django_admin_log_content_type_id_c4bce8eb ON public.django_admin_log USING btree (content_type_id);


--
-- TOC entry 2907 (class 1259 OID 16539)
-- Name: django_admin_log_user_id_c564eba6; Type: INDEX; Schema: public; Owner: api_dev_user
--

CREATE INDEX django_admin_log_user_id_c564eba6 ON public.django_admin_log USING btree (user_id);


--
-- TOC entry 2910 (class 1259 OID 16557)
-- Name: django_session_expire_date_a5c62663; Type: INDEX; Schema: public; Owner: api_dev_user
--

CREATE INDEX django_session_expire_date_a5c62663 ON public.django_session USING btree (expire_date);


--
-- TOC entry 2913 (class 1259 OID 16556)
-- Name: django_session_session_key_c0390e0f_like; Type: INDEX; Schema: public; Owner: api_dev_user
--

CREATE INDEX django_session_session_key_c0390e0f_like ON public.django_session USING btree (session_key varchar_pattern_ops);


--
-- TOC entry 2916 (class 2606 OID 16448)
-- Name: auth_group_permissions auth_group_permissio_permission_id_84c5c92e_fk_auth_perm; Type: FK CONSTRAINT; Schema: public; Owner: api_dev_user
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissio_permission_id_84c5c92e_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 2915 (class 2606 OID 16443)
-- Name: auth_group_permissions auth_group_permissions_group_id_b120cbf9_fk_auth_group_id; Type: FK CONSTRAINT; Schema: public; Owner: api_dev_user
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_b120cbf9_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 2914 (class 2606 OID 16434)
-- Name: auth_permission auth_permission_content_type_id_2f476e4b_fk_django_co; Type: FK CONSTRAINT; Schema: public; Owner: api_dev_user
--

ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_2f476e4b_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 2918 (class 2606 OID 16495)
-- Name: core_user_groups core_user_groups_group_id_fe8c697f_fk_auth_group_id; Type: FK CONSTRAINT; Schema: public; Owner: api_dev_user
--

ALTER TABLE ONLY public.core_user_groups
    ADD CONSTRAINT core_user_groups_group_id_fe8c697f_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 2917 (class 2606 OID 16490)
-- Name: core_user_groups core_user_groups_user_id_70b4d9b8_fk_core_user_id; Type: FK CONSTRAINT; Schema: public; Owner: api_dev_user
--

ALTER TABLE ONLY public.core_user_groups
    ADD CONSTRAINT core_user_groups_user_id_70b4d9b8_fk_core_user_id FOREIGN KEY (user_id) REFERENCES public.core_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 2920 (class 2606 OID 16509)
-- Name: core_user_user_permissions core_user_user_permi_permission_id_35ccf601_fk_auth_perm; Type: FK CONSTRAINT; Schema: public; Owner: api_dev_user
--

ALTER TABLE ONLY public.core_user_user_permissions
    ADD CONSTRAINT core_user_user_permi_permission_id_35ccf601_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 2919 (class 2606 OID 16504)
-- Name: core_user_user_permissions core_user_user_permissions_user_id_085123d3_fk_core_user_id; Type: FK CONSTRAINT; Schema: public; Owner: api_dev_user
--

ALTER TABLE ONLY public.core_user_user_permissions
    ADD CONSTRAINT core_user_user_permissions_user_id_085123d3_fk_core_user_id FOREIGN KEY (user_id) REFERENCES public.core_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 2921 (class 2606 OID 16528)
-- Name: django_admin_log django_admin_log_content_type_id_c4bce8eb_fk_django_co; Type: FK CONSTRAINT; Schema: public; Owner: api_dev_user
--

ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_content_type_id_c4bce8eb_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 2922 (class 2606 OID 16533)
-- Name: django_admin_log django_admin_log_user_id_c564eba6_fk_core_user_id; Type: FK CONSTRAINT; Schema: public; Owner: api_dev_user
--

ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_user_id_c564eba6_fk_core_user_id FOREIGN KEY (user_id) REFERENCES public.core_user(id) DEFERRABLE INITIALLY DEFERRED;


-- Completed on 2023-05-18 14:51:47 UTC

--
-- PostgreSQL database dump complete
--

