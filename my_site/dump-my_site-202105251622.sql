PGDMP     5                    y            my_site    10.16    12.2 �    �           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            �           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            �           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            �           1262    37526    my_site    DATABASE     �   CREATE DATABASE my_site WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'Portuguese_Brazil.1252' LC_CTYPE = 'Portuguese_Brazil.1252';
    DROP DATABASE my_site;
                tacio    false                        2615    37753    public    SCHEMA        CREATE SCHEMA public;
    DROP SCHEMA public;
                tacio    false            �            1259    37785 
   auth_group    TABLE     f   CREATE TABLE public.auth_group (
    id integer NOT NULL,
    name character varying(150) NOT NULL
);
    DROP TABLE public.auth_group;
       public            tacio    false    7            �            1259    37783    auth_group_id_seq    SEQUENCE     �   CREATE SEQUENCE public.auth_group_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE public.auth_group_id_seq;
       public          tacio    false    7    203            �           0    0    auth_group_id_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE public.auth_group_id_seq OWNED BY public.auth_group.id;
          public          tacio    false    202            �            1259    37795    auth_group_permissions    TABLE     �   CREATE TABLE public.auth_group_permissions (
    id integer NOT NULL,
    group_id integer NOT NULL,
    permission_id integer NOT NULL
);
 *   DROP TABLE public.auth_group_permissions;
       public            tacio    false    7            �            1259    37793    auth_group_permissions_id_seq    SEQUENCE     �   CREATE SEQUENCE public.auth_group_permissions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 4   DROP SEQUENCE public.auth_group_permissions_id_seq;
       public          tacio    false    7    205            �           0    0    auth_group_permissions_id_seq    SEQUENCE OWNED BY     _   ALTER SEQUENCE public.auth_group_permissions_id_seq OWNED BY public.auth_group_permissions.id;
          public          tacio    false    204            �            1259    37777    auth_permission    TABLE     �   CREATE TABLE public.auth_permission (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    content_type_id integer NOT NULL,
    codename character varying(100) NOT NULL
);
 #   DROP TABLE public.auth_permission;
       public            tacio    false    7            �            1259    37775    auth_permission_id_seq    SEQUENCE     �   CREATE SEQUENCE public.auth_permission_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE public.auth_permission_id_seq;
       public          tacio    false    7    201            �           0    0    auth_permission_id_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE public.auth_permission_id_seq OWNED BY public.auth_permission.id;
          public          tacio    false    200            �            1259    37803 	   auth_user    TABLE     �  CREATE TABLE public.auth_user (
    id integer NOT NULL,
    password character varying(128) NOT NULL,
    last_login timestamp with time zone,
    is_superuser boolean NOT NULL,
    username character varying(150) NOT NULL,
    first_name character varying(150) NOT NULL,
    last_name character varying(150) NOT NULL,
    email character varying(254) NOT NULL,
    is_staff boolean NOT NULL,
    is_active boolean NOT NULL,
    date_joined timestamp with time zone NOT NULL
);
    DROP TABLE public.auth_user;
       public            tacio    false    7            �            1259    37813    auth_user_groups    TABLE        CREATE TABLE public.auth_user_groups (
    id integer NOT NULL,
    user_id integer NOT NULL,
    group_id integer NOT NULL
);
 $   DROP TABLE public.auth_user_groups;
       public            tacio    false    7            �            1259    37811    auth_user_groups_id_seq    SEQUENCE     �   CREATE SEQUENCE public.auth_user_groups_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public.auth_user_groups_id_seq;
       public          tacio    false    209    7            �           0    0    auth_user_groups_id_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE public.auth_user_groups_id_seq OWNED BY public.auth_user_groups.id;
          public          tacio    false    208            �            1259    37801    auth_user_id_seq    SEQUENCE     �   CREATE SEQUENCE public.auth_user_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public.auth_user_id_seq;
       public          tacio    false    207    7            �           0    0    auth_user_id_seq    SEQUENCE OWNED BY     E   ALTER SEQUENCE public.auth_user_id_seq OWNED BY public.auth_user.id;
          public          tacio    false    206            �            1259    37821    auth_user_user_permissions    TABLE     �   CREATE TABLE public.auth_user_user_permissions (
    id integer NOT NULL,
    user_id integer NOT NULL,
    permission_id integer NOT NULL
);
 .   DROP TABLE public.auth_user_user_permissions;
       public            tacio    false    7            �            1259    37819 !   auth_user_user_permissions_id_seq    SEQUENCE     �   CREATE SEQUENCE public.auth_user_user_permissions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 8   DROP SEQUENCE public.auth_user_user_permissions_id_seq;
       public          tacio    false    211    7            �           0    0 !   auth_user_user_permissions_id_seq    SEQUENCE OWNED BY     g   ALTER SEQUENCE public.auth_user_user_permissions_id_seq OWNED BY public.auth_user_user_permissions.id;
          public          tacio    false    210            �            1259    37914    blog_author    TABLE     �   CREATE TABLE public.blog_author (
    id bigint NOT NULL,
    first_name character varying(100) NOT NULL,
    last_name character varying(100) NOT NULL,
    email character varying(254) NOT NULL
);
    DROP TABLE public.blog_author;
       public            tacio    false    7            �            1259    37912    blog_author_id_seq    SEQUENCE     {   CREATE SEQUENCE public.blog_author_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 )   DROP SEQUENCE public.blog_author_id_seq;
       public          tacio    false    7    215            �           0    0    blog_author_id_seq    SEQUENCE OWNED BY     I   ALTER SEQUENCE public.blog_author_id_seq OWNED BY public.blog_author.id;
          public          tacio    false    214            �            1259    37930 	   blog_post    TABLE     /  CREATE TABLE public.blog_post (
    id bigint NOT NULL,
    title character varying(100) NOT NULL,
    date date NOT NULL,
    image character varying(100) NOT NULL,
    excerpt character varying(255) NOT NULL,
    content text NOT NULL,
    slug character varying(50) NOT NULL,
    author_id bigint
);
    DROP TABLE public.blog_post;
       public            tacio    false    7            �            1259    37928    blog_post_id_seq    SEQUENCE     y   CREATE SEQUENCE public.blog_post_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public.blog_post_id_seq;
       public          tacio    false    219    7            �           0    0    blog_post_id_seq    SEQUENCE OWNED BY     E   ALTER SEQUENCE public.blog_post_id_seq OWNED BY public.blog_post.id;
          public          tacio    false    218            �            1259    37941    blog_post_tags    TABLE     y   CREATE TABLE public.blog_post_tags (
    id integer NOT NULL,
    post_id bigint NOT NULL,
    tag_id bigint NOT NULL
);
 "   DROP TABLE public.blog_post_tags;
       public            tacio    false    7            �            1259    37939    blog_post_tags_id_seq    SEQUENCE     �   CREATE SEQUENCE public.blog_post_tags_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ,   DROP SEQUENCE public.blog_post_tags_id_seq;
       public          tacio    false    7    221            �           0    0    blog_post_tags_id_seq    SEQUENCE OWNED BY     O   ALTER SEQUENCE public.blog_post_tags_id_seq OWNED BY public.blog_post_tags.id;
          public          tacio    false    220            �            1259    37922    blog_tag    TABLE     e   CREATE TABLE public.blog_tag (
    id bigint NOT NULL,
    caption character varying(20) NOT NULL
);
    DROP TABLE public.blog_tag;
       public            tacio    false    7            �            1259    37920    blog_tag_id_seq    SEQUENCE     x   CREATE SEQUENCE public.blog_tag_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 &   DROP SEQUENCE public.blog_tag_id_seq;
       public          tacio    false    7    217            �           0    0    blog_tag_id_seq    SEQUENCE OWNED BY     C   ALTER SEQUENCE public.blog_tag_id_seq OWNED BY public.blog_tag.id;
          public          tacio    false    216            �            1259    37881    django_admin_log    TABLE     �  CREATE TABLE public.django_admin_log (
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
 $   DROP TABLE public.django_admin_log;
       public            tacio    false    7            �            1259    37879    django_admin_log_id_seq    SEQUENCE     �   CREATE SEQUENCE public.django_admin_log_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public.django_admin_log_id_seq;
       public          tacio    false    7    213            �           0    0    django_admin_log_id_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE public.django_admin_log_id_seq OWNED BY public.django_admin_log.id;
          public          tacio    false    212            �            1259    37767    django_content_type    TABLE     �   CREATE TABLE public.django_content_type (
    id integer NOT NULL,
    app_label character varying(100) NOT NULL,
    model character varying(100) NOT NULL
);
 '   DROP TABLE public.django_content_type;
       public            tacio    false    7            �            1259    37765    django_content_type_id_seq    SEQUENCE     �   CREATE SEQUENCE public.django_content_type_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 1   DROP SEQUENCE public.django_content_type_id_seq;
       public          tacio    false    7    199            �           0    0    django_content_type_id_seq    SEQUENCE OWNED BY     Y   ALTER SEQUENCE public.django_content_type_id_seq OWNED BY public.django_content_type.id;
          public          tacio    false    198            �            1259    37756    django_migrations    TABLE     �   CREATE TABLE public.django_migrations (
    id integer NOT NULL,
    app character varying(255) NOT NULL,
    name character varying(255) NOT NULL,
    applied timestamp with time zone NOT NULL
);
 %   DROP TABLE public.django_migrations;
       public            tacio    false    7            �            1259    37754    django_migrations_id_seq    SEQUENCE     �   CREATE SEQUENCE public.django_migrations_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 /   DROP SEQUENCE public.django_migrations_id_seq;
       public          tacio    false    7    197            �           0    0    django_migrations_id_seq    SEQUENCE OWNED BY     U   ALTER SEQUENCE public.django_migrations_id_seq OWNED BY public.django_migrations.id;
          public          tacio    false    196            �            1259    37969    django_session    TABLE     �   CREATE TABLE public.django_session (
    session_key character varying(40) NOT NULL,
    session_data text NOT NULL,
    expire_date timestamp with time zone NOT NULL
);
 "   DROP TABLE public.django_session;
       public            tacio    false    7            �
           2604    37788    auth_group id    DEFAULT     n   ALTER TABLE ONLY public.auth_group ALTER COLUMN id SET DEFAULT nextval('public.auth_group_id_seq'::regclass);
 <   ALTER TABLE public.auth_group ALTER COLUMN id DROP DEFAULT;
       public          tacio    false    203    202    203            �
           2604    37798    auth_group_permissions id    DEFAULT     �   ALTER TABLE ONLY public.auth_group_permissions ALTER COLUMN id SET DEFAULT nextval('public.auth_group_permissions_id_seq'::regclass);
 H   ALTER TABLE public.auth_group_permissions ALTER COLUMN id DROP DEFAULT;
       public          tacio    false    204    205    205            �
           2604    37780    auth_permission id    DEFAULT     x   ALTER TABLE ONLY public.auth_permission ALTER COLUMN id SET DEFAULT nextval('public.auth_permission_id_seq'::regclass);
 A   ALTER TABLE public.auth_permission ALTER COLUMN id DROP DEFAULT;
       public          tacio    false    200    201    201            �
           2604    37806    auth_user id    DEFAULT     l   ALTER TABLE ONLY public.auth_user ALTER COLUMN id SET DEFAULT nextval('public.auth_user_id_seq'::regclass);
 ;   ALTER TABLE public.auth_user ALTER COLUMN id DROP DEFAULT;
       public          tacio    false    206    207    207            �
           2604    37816    auth_user_groups id    DEFAULT     z   ALTER TABLE ONLY public.auth_user_groups ALTER COLUMN id SET DEFAULT nextval('public.auth_user_groups_id_seq'::regclass);
 B   ALTER TABLE public.auth_user_groups ALTER COLUMN id DROP DEFAULT;
       public          tacio    false    209    208    209            �
           2604    37824    auth_user_user_permissions id    DEFAULT     �   ALTER TABLE ONLY public.auth_user_user_permissions ALTER COLUMN id SET DEFAULT nextval('public.auth_user_user_permissions_id_seq'::regclass);
 L   ALTER TABLE public.auth_user_user_permissions ALTER COLUMN id DROP DEFAULT;
       public          tacio    false    211    210    211            �
           2604    37917    blog_author id    DEFAULT     p   ALTER TABLE ONLY public.blog_author ALTER COLUMN id SET DEFAULT nextval('public.blog_author_id_seq'::regclass);
 =   ALTER TABLE public.blog_author ALTER COLUMN id DROP DEFAULT;
       public          tacio    false    215    214    215            �
           2604    37933    blog_post id    DEFAULT     l   ALTER TABLE ONLY public.blog_post ALTER COLUMN id SET DEFAULT nextval('public.blog_post_id_seq'::regclass);
 ;   ALTER TABLE public.blog_post ALTER COLUMN id DROP DEFAULT;
       public          tacio    false    219    218    219            �
           2604    37944    blog_post_tags id    DEFAULT     v   ALTER TABLE ONLY public.blog_post_tags ALTER COLUMN id SET DEFAULT nextval('public.blog_post_tags_id_seq'::regclass);
 @   ALTER TABLE public.blog_post_tags ALTER COLUMN id DROP DEFAULT;
       public          tacio    false    221    220    221            �
           2604    37925    blog_tag id    DEFAULT     j   ALTER TABLE ONLY public.blog_tag ALTER COLUMN id SET DEFAULT nextval('public.blog_tag_id_seq'::regclass);
 :   ALTER TABLE public.blog_tag ALTER COLUMN id DROP DEFAULT;
       public          tacio    false    217    216    217            �
           2604    37884    django_admin_log id    DEFAULT     z   ALTER TABLE ONLY public.django_admin_log ALTER COLUMN id SET DEFAULT nextval('public.django_admin_log_id_seq'::regclass);
 B   ALTER TABLE public.django_admin_log ALTER COLUMN id DROP DEFAULT;
       public          tacio    false    213    212    213            �
           2604    37770    django_content_type id    DEFAULT     �   ALTER TABLE ONLY public.django_content_type ALTER COLUMN id SET DEFAULT nextval('public.django_content_type_id_seq'::regclass);
 E   ALTER TABLE public.django_content_type ALTER COLUMN id DROP DEFAULT;
       public          tacio    false    198    199    199            �
           2604    37759    django_migrations id    DEFAULT     |   ALTER TABLE ONLY public.django_migrations ALTER COLUMN id SET DEFAULT nextval('public.django_migrations_id_seq'::regclass);
 C   ALTER TABLE public.django_migrations ALTER COLUMN id DROP DEFAULT;
       public          tacio    false    196    197    197            �          0    37785 
   auth_group 
   TABLE DATA           .   COPY public.auth_group (id, name) FROM stdin;
    public          tacio    false    203            �          0    37795    auth_group_permissions 
   TABLE DATA           M   COPY public.auth_group_permissions (id, group_id, permission_id) FROM stdin;
    public          tacio    false    205            �          0    37777    auth_permission 
   TABLE DATA           N   COPY public.auth_permission (id, name, content_type_id, codename) FROM stdin;
    public          tacio    false    201            �          0    37803 	   auth_user 
   TABLE DATA           �   COPY public.auth_user (id, password, last_login, is_superuser, username, first_name, last_name, email, is_staff, is_active, date_joined) FROM stdin;
    public          tacio    false    207            �          0    37813    auth_user_groups 
   TABLE DATA           A   COPY public.auth_user_groups (id, user_id, group_id) FROM stdin;
    public          tacio    false    209            �          0    37821    auth_user_user_permissions 
   TABLE DATA           P   COPY public.auth_user_user_permissions (id, user_id, permission_id) FROM stdin;
    public          tacio    false    211            �          0    37914    blog_author 
   TABLE DATA           G   COPY public.blog_author (id, first_name, last_name, email) FROM stdin;
    public          tacio    false    215            �          0    37930 	   blog_post 
   TABLE DATA           ^   COPY public.blog_post (id, title, date, image, excerpt, content, slug, author_id) FROM stdin;
    public          tacio    false    219            �          0    37941    blog_post_tags 
   TABLE DATA           =   COPY public.blog_post_tags (id, post_id, tag_id) FROM stdin;
    public          tacio    false    221            �          0    37922    blog_tag 
   TABLE DATA           /   COPY public.blog_tag (id, caption) FROM stdin;
    public          tacio    false    217            �          0    37881    django_admin_log 
   TABLE DATA           �   COPY public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) FROM stdin;
    public          tacio    false    213            �          0    37767    django_content_type 
   TABLE DATA           C   COPY public.django_content_type (id, app_label, model) FROM stdin;
    public          tacio    false    199            �          0    37756    django_migrations 
   TABLE DATA           C   COPY public.django_migrations (id, app, name, applied) FROM stdin;
    public          tacio    false    197            �          0    37969    django_session 
   TABLE DATA           P   COPY public.django_session (session_key, session_data, expire_date) FROM stdin;
    public          tacio    false    222            �           0    0    auth_group_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public.auth_group_id_seq', 1, false);
          public          tacio    false    202            �           0    0    auth_group_permissions_id_seq    SEQUENCE SET     L   SELECT pg_catalog.setval('public.auth_group_permissions_id_seq', 1, false);
          public          tacio    false    204            �           0    0    auth_permission_id_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public.auth_permission_id_seq', 36, true);
          public          tacio    false    200            �           0    0    auth_user_groups_id_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public.auth_user_groups_id_seq', 1, false);
          public          tacio    false    208            �           0    0    auth_user_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public.auth_user_id_seq', 1, true);
          public          tacio    false    206            �           0    0 !   auth_user_user_permissions_id_seq    SEQUENCE SET     P   SELECT pg_catalog.setval('public.auth_user_user_permissions_id_seq', 1, false);
          public          tacio    false    210            �           0    0    blog_author_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public.blog_author_id_seq', 1, true);
          public          tacio    false    214            �           0    0    blog_post_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public.blog_post_id_seq', 4, true);
          public          tacio    false    218            �           0    0    blog_post_tags_id_seq    SEQUENCE SET     D   SELECT pg_catalog.setval('public.blog_post_tags_id_seq', 10, true);
          public          tacio    false    220            �           0    0    blog_tag_id_seq    SEQUENCE SET     =   SELECT pg_catalog.setval('public.blog_tag_id_seq', 4, true);
          public          tacio    false    216            �           0    0    django_admin_log_id_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public.django_admin_log_id_seq', 14, true);
          public          tacio    false    212            �           0    0    django_content_type_id_seq    SEQUENCE SET     H   SELECT pg_catalog.setval('public.django_content_type_id_seq', 9, true);
          public          tacio    false    198            �           0    0    django_migrations_id_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('public.django_migrations_id_seq', 22, true);
          public          tacio    false    196            �
           2606    37910    auth_group auth_group_name_key 
   CONSTRAINT     Y   ALTER TABLE ONLY public.auth_group
    ADD CONSTRAINT auth_group_name_key UNIQUE (name);
 H   ALTER TABLE ONLY public.auth_group DROP CONSTRAINT auth_group_name_key;
       public            tacio    false    203            �
           2606    37837 R   auth_group_permissions auth_group_permissions_group_id_permission_id_0cd325b0_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_permission_id_0cd325b0_uniq UNIQUE (group_id, permission_id);
 |   ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissions_group_id_permission_id_0cd325b0_uniq;
       public            tacio    false    205    205            �
           2606    37800 2   auth_group_permissions auth_group_permissions_pkey 
   CONSTRAINT     p   ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_pkey PRIMARY KEY (id);
 \   ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissions_pkey;
       public            tacio    false    205            �
           2606    37790    auth_group auth_group_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY public.auth_group
    ADD CONSTRAINT auth_group_pkey PRIMARY KEY (id);
 D   ALTER TABLE ONLY public.auth_group DROP CONSTRAINT auth_group_pkey;
       public            tacio    false    203            �
           2606    37828 F   auth_permission auth_permission_content_type_id_codename_01ab375a_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_codename_01ab375a_uniq UNIQUE (content_type_id, codename);
 p   ALTER TABLE ONLY public.auth_permission DROP CONSTRAINT auth_permission_content_type_id_codename_01ab375a_uniq;
       public            tacio    false    201    201            �
           2606    37782 $   auth_permission auth_permission_pkey 
   CONSTRAINT     b   ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_pkey PRIMARY KEY (id);
 N   ALTER TABLE ONLY public.auth_permission DROP CONSTRAINT auth_permission_pkey;
       public            tacio    false    201            �
           2606    37818 &   auth_user_groups auth_user_groups_pkey 
   CONSTRAINT     d   ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_pkey PRIMARY KEY (id);
 P   ALTER TABLE ONLY public.auth_user_groups DROP CONSTRAINT auth_user_groups_pkey;
       public            tacio    false    209            �
           2606    37852 @   auth_user_groups auth_user_groups_user_id_group_id_94350c0c_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_user_id_group_id_94350c0c_uniq UNIQUE (user_id, group_id);
 j   ALTER TABLE ONLY public.auth_user_groups DROP CONSTRAINT auth_user_groups_user_id_group_id_94350c0c_uniq;
       public            tacio    false    209    209            �
           2606    37808    auth_user auth_user_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public.auth_user
    ADD CONSTRAINT auth_user_pkey PRIMARY KEY (id);
 B   ALTER TABLE ONLY public.auth_user DROP CONSTRAINT auth_user_pkey;
       public            tacio    false    207            �
           2606    37826 :   auth_user_user_permissions auth_user_user_permissions_pkey 
   CONSTRAINT     x   ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_pkey PRIMARY KEY (id);
 d   ALTER TABLE ONLY public.auth_user_user_permissions DROP CONSTRAINT auth_user_user_permissions_pkey;
       public            tacio    false    211            �
           2606    37866 Y   auth_user_user_permissions auth_user_user_permissions_user_id_permission_id_14a6b632_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_user_id_permission_id_14a6b632_uniq UNIQUE (user_id, permission_id);
 �   ALTER TABLE ONLY public.auth_user_user_permissions DROP CONSTRAINT auth_user_user_permissions_user_id_permission_id_14a6b632_uniq;
       public            tacio    false    211    211            �
           2606    37904     auth_user auth_user_username_key 
   CONSTRAINT     _   ALTER TABLE ONLY public.auth_user
    ADD CONSTRAINT auth_user_username_key UNIQUE (username);
 J   ALTER TABLE ONLY public.auth_user DROP CONSTRAINT auth_user_username_key;
       public            tacio    false    207            �
           2606    37919    blog_author blog_author_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public.blog_author
    ADD CONSTRAINT blog_author_pkey PRIMARY KEY (id);
 F   ALTER TABLE ONLY public.blog_author DROP CONSTRAINT blog_author_pkey;
       public            tacio    false    215            �
           2606    37938    blog_post blog_post_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public.blog_post
    ADD CONSTRAINT blog_post_pkey PRIMARY KEY (id);
 B   ALTER TABLE ONLY public.blog_post DROP CONSTRAINT blog_post_pkey;
       public            tacio    false    219                       2606    37946 "   blog_post_tags blog_post_tags_pkey 
   CONSTRAINT     `   ALTER TABLE ONLY public.blog_post_tags
    ADD CONSTRAINT blog_post_tags_pkey PRIMARY KEY (id);
 L   ALTER TABLE ONLY public.blog_post_tags DROP CONSTRAINT blog_post_tags_pkey;
       public            tacio    false    221                       2606    37956 :   blog_post_tags blog_post_tags_post_id_tag_id_4925ec37_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.blog_post_tags
    ADD CONSTRAINT blog_post_tags_post_id_tag_id_4925ec37_uniq UNIQUE (post_id, tag_id);
 d   ALTER TABLE ONLY public.blog_post_tags DROP CONSTRAINT blog_post_tags_post_id_tag_id_4925ec37_uniq;
       public            tacio    false    221    221            �
           2606    37927    blog_tag blog_tag_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public.blog_tag
    ADD CONSTRAINT blog_tag_pkey PRIMARY KEY (id);
 @   ALTER TABLE ONLY public.blog_tag DROP CONSTRAINT blog_tag_pkey;
       public            tacio    false    217            �
           2606    37890 &   django_admin_log django_admin_log_pkey 
   CONSTRAINT     d   ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_pkey PRIMARY KEY (id);
 P   ALTER TABLE ONLY public.django_admin_log DROP CONSTRAINT django_admin_log_pkey;
       public            tacio    false    213            �
           2606    37774 E   django_content_type django_content_type_app_label_model_76bd3d3b_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.django_content_type
    ADD CONSTRAINT django_content_type_app_label_model_76bd3d3b_uniq UNIQUE (app_label, model);
 o   ALTER TABLE ONLY public.django_content_type DROP CONSTRAINT django_content_type_app_label_model_76bd3d3b_uniq;
       public            tacio    false    199    199            �
           2606    37772 ,   django_content_type django_content_type_pkey 
   CONSTRAINT     j   ALTER TABLE ONLY public.django_content_type
    ADD CONSTRAINT django_content_type_pkey PRIMARY KEY (id);
 V   ALTER TABLE ONLY public.django_content_type DROP CONSTRAINT django_content_type_pkey;
       public            tacio    false    199            �
           2606    37764 (   django_migrations django_migrations_pkey 
   CONSTRAINT     f   ALTER TABLE ONLY public.django_migrations
    ADD CONSTRAINT django_migrations_pkey PRIMARY KEY (id);
 R   ALTER TABLE ONLY public.django_migrations DROP CONSTRAINT django_migrations_pkey;
       public            tacio    false    197            	           2606    37976 "   django_session django_session_pkey 
   CONSTRAINT     i   ALTER TABLE ONLY public.django_session
    ADD CONSTRAINT django_session_pkey PRIMARY KEY (session_key);
 L   ALTER TABLE ONLY public.django_session DROP CONSTRAINT django_session_pkey;
       public            tacio    false    222            �
           1259    37911    auth_group_name_a6ea08ec_like    INDEX     h   CREATE INDEX auth_group_name_a6ea08ec_like ON public.auth_group USING btree (name varchar_pattern_ops);
 1   DROP INDEX public.auth_group_name_a6ea08ec_like;
       public            tacio    false    203            �
           1259    37848 (   auth_group_permissions_group_id_b120cbf9    INDEX     o   CREATE INDEX auth_group_permissions_group_id_b120cbf9 ON public.auth_group_permissions USING btree (group_id);
 <   DROP INDEX public.auth_group_permissions_group_id_b120cbf9;
       public            tacio    false    205            �
           1259    37849 -   auth_group_permissions_permission_id_84c5c92e    INDEX     y   CREATE INDEX auth_group_permissions_permission_id_84c5c92e ON public.auth_group_permissions USING btree (permission_id);
 A   DROP INDEX public.auth_group_permissions_permission_id_84c5c92e;
       public            tacio    false    205            �
           1259    37834 (   auth_permission_content_type_id_2f476e4b    INDEX     o   CREATE INDEX auth_permission_content_type_id_2f476e4b ON public.auth_permission USING btree (content_type_id);
 <   DROP INDEX public.auth_permission_content_type_id_2f476e4b;
       public            tacio    false    201            �
           1259    37864 "   auth_user_groups_group_id_97559544    INDEX     c   CREATE INDEX auth_user_groups_group_id_97559544 ON public.auth_user_groups USING btree (group_id);
 6   DROP INDEX public.auth_user_groups_group_id_97559544;
       public            tacio    false    209            �
           1259    37863 !   auth_user_groups_user_id_6a12ed8b    INDEX     a   CREATE INDEX auth_user_groups_user_id_6a12ed8b ON public.auth_user_groups USING btree (user_id);
 5   DROP INDEX public.auth_user_groups_user_id_6a12ed8b;
       public            tacio    false    209            �
           1259    37878 1   auth_user_user_permissions_permission_id_1fbb5f2c    INDEX     �   CREATE INDEX auth_user_user_permissions_permission_id_1fbb5f2c ON public.auth_user_user_permissions USING btree (permission_id);
 E   DROP INDEX public.auth_user_user_permissions_permission_id_1fbb5f2c;
       public            tacio    false    211            �
           1259    37877 +   auth_user_user_permissions_user_id_a95ead1b    INDEX     u   CREATE INDEX auth_user_user_permissions_user_id_a95ead1b ON public.auth_user_user_permissions USING btree (user_id);
 ?   DROP INDEX public.auth_user_user_permissions_user_id_a95ead1b;
       public            tacio    false    211            �
           1259    37905     auth_user_username_6821ab7c_like    INDEX     n   CREATE INDEX auth_user_username_6821ab7c_like ON public.auth_user USING btree (username varchar_pattern_ops);
 4   DROP INDEX public.auth_user_username_6821ab7c_like;
       public            tacio    false    207            �
           1259    37954    blog_post_author_id_dd7a8485    INDEX     W   CREATE INDEX blog_post_author_id_dd7a8485 ON public.blog_post USING btree (author_id);
 0   DROP INDEX public.blog_post_author_id_dd7a8485;
       public            tacio    false    219            �
           1259    37952    blog_post_slug_b95473f2    INDEX     M   CREATE INDEX blog_post_slug_b95473f2 ON public.blog_post USING btree (slug);
 +   DROP INDEX public.blog_post_slug_b95473f2;
       public            tacio    false    219                        1259    37953    blog_post_slug_b95473f2_like    INDEX     f   CREATE INDEX blog_post_slug_b95473f2_like ON public.blog_post USING btree (slug varchar_pattern_ops);
 0   DROP INDEX public.blog_post_slug_b95473f2_like;
       public            tacio    false    219                       1259    37967    blog_post_tags_post_id_a1c71c8a    INDEX     ]   CREATE INDEX blog_post_tags_post_id_a1c71c8a ON public.blog_post_tags USING btree (post_id);
 3   DROP INDEX public.blog_post_tags_post_id_a1c71c8a;
       public            tacio    false    221                       1259    37968    blog_post_tags_tag_id_0875c551    INDEX     [   CREATE INDEX blog_post_tags_tag_id_0875c551 ON public.blog_post_tags USING btree (tag_id);
 2   DROP INDEX public.blog_post_tags_tag_id_0875c551;
       public            tacio    false    221            �
           1259    37901 )   django_admin_log_content_type_id_c4bce8eb    INDEX     q   CREATE INDEX django_admin_log_content_type_id_c4bce8eb ON public.django_admin_log USING btree (content_type_id);
 =   DROP INDEX public.django_admin_log_content_type_id_c4bce8eb;
       public            tacio    false    213            �
           1259    37902 !   django_admin_log_user_id_c564eba6    INDEX     a   CREATE INDEX django_admin_log_user_id_c564eba6 ON public.django_admin_log USING btree (user_id);
 5   DROP INDEX public.django_admin_log_user_id_c564eba6;
       public            tacio    false    213                       1259    37978 #   django_session_expire_date_a5c62663    INDEX     e   CREATE INDEX django_session_expire_date_a5c62663 ON public.django_session USING btree (expire_date);
 7   DROP INDEX public.django_session_expire_date_a5c62663;
       public            tacio    false    222            
           1259    37977 (   django_session_session_key_c0390e0f_like    INDEX     ~   CREATE INDEX django_session_session_key_c0390e0f_like ON public.django_session USING btree (session_key varchar_pattern_ops);
 <   DROP INDEX public.django_session_session_key_c0390e0f_like;
       public            tacio    false    222                       2606    37843 O   auth_group_permissions auth_group_permissio_permission_id_84c5c92e_fk_auth_perm    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissio_permission_id_84c5c92e_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id) DEFERRABLE INITIALLY DEFERRED;
 y   ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissio_permission_id_84c5c92e_fk_auth_perm;
       public          tacio    false    2775    205    201                       2606    37838 P   auth_group_permissions auth_group_permissions_group_id_b120cbf9_fk_auth_group_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_b120cbf9_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;
 z   ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissions_group_id_b120cbf9_fk_auth_group_id;
       public          tacio    false    203    2780    205                       2606    37829 E   auth_permission auth_permission_content_type_id_2f476e4b_fk_django_co    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_2f476e4b_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;
 o   ALTER TABLE ONLY public.auth_permission DROP CONSTRAINT auth_permission_content_type_id_2f476e4b_fk_django_co;
       public          tacio    false    199    201    2770                       2606    37858 D   auth_user_groups auth_user_groups_group_id_97559544_fk_auth_group_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_group_id_97559544_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;
 n   ALTER TABLE ONLY public.auth_user_groups DROP CONSTRAINT auth_user_groups_group_id_97559544_fk_auth_group_id;
       public          tacio    false    209    2780    203                       2606    37853 B   auth_user_groups auth_user_groups_user_id_6a12ed8b_fk_auth_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_user_id_6a12ed8b_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 l   ALTER TABLE ONLY public.auth_user_groups DROP CONSTRAINT auth_user_groups_user_id_6a12ed8b_fk_auth_user_id;
       public          tacio    false    207    209    2788                       2606    37872 S   auth_user_user_permissions auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id) DEFERRABLE INITIALLY DEFERRED;
 }   ALTER TABLE ONLY public.auth_user_user_permissions DROP CONSTRAINT auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm;
       public          tacio    false    2775    201    211                       2606    37867 V   auth_user_user_permissions auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY public.auth_user_user_permissions DROP CONSTRAINT auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id;
       public          tacio    false    207    211    2788                       2606    37980 8   blog_post blog_post_author_id_dd7a8485_fk_blog_author_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.blog_post
    ADD CONSTRAINT blog_post_author_id_dd7a8485_fk_blog_author_id FOREIGN KEY (author_id) REFERENCES public.blog_author(id) DEFERRABLE INITIALLY DEFERRED;
 b   ALTER TABLE ONLY public.blog_post DROP CONSTRAINT blog_post_author_id_dd7a8485_fk_blog_author_id;
       public          tacio    false    215    219    2809                       2606    37957 >   blog_post_tags blog_post_tags_post_id_a1c71c8a_fk_blog_post_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.blog_post_tags
    ADD CONSTRAINT blog_post_tags_post_id_a1c71c8a_fk_blog_post_id FOREIGN KEY (post_id) REFERENCES public.blog_post(id) DEFERRABLE INITIALLY DEFERRED;
 h   ALTER TABLE ONLY public.blog_post_tags DROP CONSTRAINT blog_post_tags_post_id_a1c71c8a_fk_blog_post_id;
       public          tacio    false    2814    221    219                       2606    37962 <   blog_post_tags blog_post_tags_tag_id_0875c551_fk_blog_tag_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.blog_post_tags
    ADD CONSTRAINT blog_post_tags_tag_id_0875c551_fk_blog_tag_id FOREIGN KEY (tag_id) REFERENCES public.blog_tag(id) DEFERRABLE INITIALLY DEFERRED;
 f   ALTER TABLE ONLY public.blog_post_tags DROP CONSTRAINT blog_post_tags_tag_id_0875c551_fk_blog_tag_id;
       public          tacio    false    217    221    2811                       2606    37891 G   django_admin_log django_admin_log_content_type_id_c4bce8eb_fk_django_co    FK CONSTRAINT     �   ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_content_type_id_c4bce8eb_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;
 q   ALTER TABLE ONLY public.django_admin_log DROP CONSTRAINT django_admin_log_content_type_id_c4bce8eb_fk_django_co;
       public          tacio    false    213    2770    199                       2606    37896 B   django_admin_log django_admin_log_user_id_c564eba6_fk_auth_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_user_id_c564eba6_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 l   ALTER TABLE ONLY public.django_admin_log DROP CONSTRAINT django_admin_log_user_id_c564eba6_fk_auth_user_id;
       public          tacio    false    213    2788    207            �      x������ � �      �      x������ � �      �   k  x�]�An�0E��)8AIȺרT�`�H) 0�r����3�Ξ��y����l�����5����6�l���NW[r�C�GVv������ߧ�S�>`��&?�<��9�$5؋�S �{�~���`VT$9
�-�y\'S� ��;I�����N	���U@��l�.~65	�G�j�)�G�,���\x7bZ�k�|���Zޓ7g2�h�X�H�!�ߤׁ����kh�U��֋��z!a�l���<3����2&��Ye��ޮ�1��JB�bKU�L@'A���L�D�3B*	�6��7il'[�&����)�!-���;�K0������T{��OM�j/���	�E��~}Xk����%      �   �   x�mʽ�0@�}
6ioi���8�1�4���')Ķ��>��t������MW�T(���[-��r��b�Z��n1� �O��\9���{��aW@~l	Og�x��65kx�dr�e.x.T�)�b1A,�u�O���g��g<E�3�Ŕ��,L      �      x������ � �      �      x������ � �      �   5   x�3�9�093�3%U!8��*Q�91� ���$(ꐞ������������ ~�7      �   B  x���n�0���S�O����4hoA�i���������:I�ǎ��J��y� >�@r9�C��h���l�K��Q�Z-f����Ӌ��G������r��H֥���#Sj�v��H�i͉�-[j-�j)8�L��6tO{�E"ޡ��&pC+p�$j��l��o��i�'�w(��-��ܓ��{j\��Q�S��F���4�%J].s'��o��R�<H\��5�����|0�&���fIb�Qr�a�����OjI&���d�M_�v�u��ю��:w�`<E�31��#C�����A]����q��W��;�|�.�`-V�ϫO8���R}nL�G����4-.��R�g�v�o�88x@�P�r�y�>����8<"ą �_�o���p�?k��g:��84�PU����W�R�i�z�-�z���t�I�>`�#XWz�^�k�h;֕.���)!��(��[��%�#�N1�7�s�ٓ��q&����Tb��i������ص�����ei��}x�W���dz��>>�|c�"_n�x��,����g�q���as>YV���/�{��      �   0   x�ȱ  ��?�	��ρ�+βLŢc���8��Ug<S�����      �   .   x�3��K-�2�t�J�K��2�tJL�N�K�2�t+��+1c���� � $      �   �  x����J�0��;O������;�3��w�E��Zu�C�AP|��,���P�̈�\�Z{�,�8�0er�%Y �Q��F>e�Av��߼nI��y�|r��-��}|�|�]Y�2/����u�3��v�ZL$�S��Aj��R^0EQ�D������5U�E.����74f�n~�r�^n�K*��-�um����P�h�M���yp]�9^�1�)�v�6b� #T�,D0�b:i�MpuC���uS��!@���J3��<�ڪs���|֓�λ�3c	Xj���)�S��'{��BO�}�2��C�P� |���&L~S��������U}~��u��T)cxĖFP��T��G����F����j��YDK��Q.~lC<,~$nd�ݸ�}E�-\�?�Wt2���k�      �   k   x�M�K
�0�z�	�Iw��I�kh,#ɋܾ&&��̃�](����+���+��*�[2K�1�%�Ԃ�K5V�h��-���d|�v���#ų���W�"� ?��13      �   �  x���ݎ� �����hC���,��fq2���b�=�&r��TQP4nf�:��@���VwFΈ�1��&�����UgDN��sx��������	G�H�T��ε1PU���Өx�S�ry��+���3�N�&X7��N��yw�����b���[4�J;jн9DIDW�x�+���h|o�)�����_�3CO���H"��J����^��)��:2S�{JZ�h��ݑd+0�̠��NO!9ocbsw\sY�F�La�܏����b�J�=�l��ޞ|�Sw�����R|��7Ӥ�u�n�4qh�3��X�L��,z	�3�n(@+��n_��aXƀ���Q�w_׻~|`�̌�̀�z��yZP#T�2��D�'�ʏS�&ٝ��d�@�� `�L0�o·a��#���'�Ԭ��F�����0d5�m�$� I��4Y�'����(X 8���VԈ�B2Nx�.O��_�Ӕ�      �   
  x���B@  ��y��v�򯒈b�Psf�\��Y��<���o_4%��u���Ui��S��l.������;w,�x���{J��#F"U�)QGl��i~6fV�W8���Z'Į���!@���3��Lɣ�;*lOΑ�E﹇�H�n�xj������:����X3L�^��6>mB�/�q���\��ر�-5��)�Q�(M���M����`T;"��J�g���
u�p�����EY�Eċ�Iр�$���"ȋ��8���S_b      �    �           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            �           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            �           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            �           1262    37526    my_site    DATABASE     �   CREATE DATABASE my_site WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'Portuguese_Brazil.1252' LC_CTYPE = 'Portuguese_Brazil.1252';
    DROP DATABASE my_site;
                tacio    false                        2615    37753    public    SCHEMA        CREATE SCHEMA public;
    DROP SCHEMA public;
                tacio    false            �            1259    37785 
   auth_group    TABLE     f   CREATE TABLE public.auth_group (
    id integer NOT NULL,
    name character varying(150) NOT NULL
);
    DROP TABLE public.auth_group;
       public            tacio    false    7            �            1259    37783    auth_group_id_seq    SEQUENCE     �   CREATE SEQUENCE public.auth_group_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE public.auth_group_id_seq;
       public          tacio    false    7    203            �           0    0    auth_group_id_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE public.auth_group_id_seq OWNED BY public.auth_group.id;
          public          tacio    false    202            �            1259    37795    auth_group_permissions    TABLE     �   CREATE TABLE public.auth_group_permissions (
    id integer NOT NULL,
    group_id integer NOT NULL,
    permission_id integer NOT NULL
);
 *   DROP TABLE public.auth_group_permissions;
       public            tacio    false    7            �            1259    37793    auth_group_permissions_id_seq    SEQUENCE     �   CREATE SEQUENCE public.auth_group_permissions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 4   DROP SEQUENCE public.auth_group_permissions_id_seq;
       public          tacio    false    7    205            �           0    0    auth_group_permissions_id_seq    SEQUENCE OWNED BY     _   ALTER SEQUENCE public.auth_group_permissions_id_seq OWNED BY public.auth_group_permissions.id;
          public          tacio    false    204            �            1259    37777    auth_permission    TABLE     �   CREATE TABLE public.auth_permission (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    content_type_id integer NOT NULL,
    codename character varying(100) NOT NULL
);
 #   DROP TABLE public.auth_permission;
       public            tacio    false    7            �            1259    37775    auth_permission_id_seq    SEQUENCE     �   CREATE SEQUENCE public.auth_permission_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE public.auth_permission_id_seq;
       public          tacio    false    7    201            �           0    0    auth_permission_id_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE public.auth_permission_id_seq OWNED BY public.auth_permission.id;
          public          tacio    false    200            �            1259    37803 	   auth_user    TABLE     �  CREATE TABLE public.auth_user (
    id integer NOT NULL,
    password character varying(128) NOT NULL,
    last_login timestamp with time zone,
    is_superuser boolean NOT NULL,
    username character varying(150) NOT NULL,
    first_name character varying(150) NOT NULL,
    last_name character varying(150) NOT NULL,
    email character varying(254) NOT NULL,
    is_staff boolean NOT NULL,
    is_active boolean NOT NULL,
    date_joined timestamp with time zone NOT NULL
);
    DROP TABLE public.auth_user;
       public            tacio    false    7            �            1259    37813    auth_user_groups    TABLE        CREATE TABLE public.auth_user_groups (
    id integer NOT NULL,
    user_id integer NOT NULL,
    group_id integer NOT NULL
);
 $   DROP TABLE public.auth_user_groups;
       public            tacio    false    7            �            1259    37811    auth_user_groups_id_seq    SEQUENCE     �   CREATE SEQUENCE public.auth_user_groups_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public.auth_user_groups_id_seq;
       public          tacio    false    209    7            �           0    0    auth_user_groups_id_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE public.auth_user_groups_id_seq OWNED BY public.auth_user_groups.id;
          public          tacio    false    208            �            1259    37801    auth_user_id_seq    SEQUENCE     �   CREATE SEQUENCE public.auth_user_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public.auth_user_id_seq;
       public          tacio    false    207    7            �           0    0    auth_user_id_seq    SEQUENCE OWNED BY     E   ALTER SEQUENCE public.auth_user_id_seq OWNED BY public.auth_user.id;
          public          tacio    false    206            �            1259    37821    auth_user_user_permissions    TABLE     �   CREATE TABLE public.auth_user_user_permissions (
    id integer NOT NULL,
    user_id integer NOT NULL,
    permission_id integer NOT NULL
);
 .   DROP TABLE public.auth_user_user_permissions;
       public            tacio    false    7            �            1259    37819 !   auth_user_user_permissions_id_seq    SEQUENCE     �   CREATE SEQUENCE public.auth_user_user_permissions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 8   DROP SEQUENCE public.auth_user_user_permissions_id_seq;
       public          tacio    false    211    7            �           0    0 !   auth_user_user_permissions_id_seq    SEQUENCE OWNED BY     g   ALTER SEQUENCE public.auth_user_user_permissions_id_seq OWNED BY public.auth_user_user_permissions.id;
          public          tacio    false    210            �            1259    37914    blog_author    TABLE     �   CREATE TABLE public.blog_author (
    id bigint NOT NULL,
    first_name character varying(100) NOT NULL,
    last_name character varying(100) NOT NULL,
    email character varying(254) NOT NULL
);
    DROP TABLE public.blog_author;
       public            tacio    false    7            �            1259    37912    blog_author_id_seq    SEQUENCE     {   CREATE SEQUENCE public.blog_author_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 )   DROP SEQUENCE public.blog_author_id_seq;
       public          tacio    false    7    215            �           0    0    blog_author_id_seq    SEQUENCE OWNED BY     I   ALTER SEQUENCE public.blog_author_id_seq OWNED BY public.blog_author.id;
          public          tacio    false    214            �            1259    37930 	   blog_post    TABLE     /  CREATE TABLE public.blog_post (
    id bigint NOT NULL,
    title character varying(100) NOT NULL,
    date date NOT NULL,
    image character varying(100) NOT NULL,
    excerpt character varying(255) NOT NULL,
    content text NOT NULL,
    slug character varying(50) NOT NULL,
    author_id bigint
);
    DROP TABLE public.blog_post;
       public            tacio    false    7            �            1259    37928    blog_post_id_seq    SEQUENCE     y   CREATE SEQUENCE public.blog_post_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public.blog_post_id_seq;
       public          tacio    false    219    7            �           0    0    blog_post_id_seq    SEQUENCE OWNED BY     E   ALTER SEQUENCE public.blog_post_id_seq OWNED BY public.blog_post.id;
          public          tacio    false    218            �            1259    37941    blog_post_tags    TABLE     y   CREATE TABLE public.blog_post_tags (
    id integer NOT NULL,
    post_id bigint NOT NULL,
    tag_id bigint NOT NULL
);
 "   DROP TABLE public.blog_post_tags;
       public            tacio    false    7            �            1259    37939    blog_post_tags_id_seq    SEQUENCE     �   CREATE SEQUENCE public.blog_post_tags_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ,   DROP SEQUENCE public.blog_post_tags_id_seq;
       public          tacio    false    7    221            �           0    0    blog_post_tags_id_seq    SEQUENCE OWNED BY     O   ALTER SEQUENCE public.blog_post_tags_id_seq OWNED BY public.blog_post_tags.id;
          public          tacio    false    220            �            1259    37922    blog_tag    TABLE     e   CREATE TABLE public.blog_tag (
    id bigint NOT NULL,
    caption character varying(20) NOT NULL
);
    DROP TABLE public.blog_tag;
       public            tacio    false    7            �            1259    37920    blog_tag_id_seq    SEQUENCE     x   CREATE SEQUENCE public.blog_tag_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 &   DROP SEQUENCE public.blog_tag_id_seq;
       public          tacio    false    7    217            �           0    0    blog_tag_id_seq    SEQUENCE OWNED BY     C   ALTER SEQUENCE public.blog_tag_id_seq OWNED BY public.blog_tag.id;
          public          tacio    false    216            �            1259    37881    django_admin_log    TABLE     �  CREATE TABLE public.django_admin_log (
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
 $   DROP TABLE public.django_admin_log;
       public            tacio    false    7            �            1259    37879    django_admin_log_id_seq    SEQUENCE     �   CREATE SEQUENCE public.django_admin_log_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public.django_admin_log_id_seq;
       public          tacio    false    7    213            �           0    0    django_admin_log_id_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE public.django_admin_log_id_seq OWNED BY public.django_admin_log.id;
          public          tacio    false    212            �            1259    37767    django_content_type    TABLE     �   CREATE TABLE public.django_content_type (
    id integer NOT NULL,
    app_label character varying(100) NOT NULL,
    model character varying(100) NOT NULL
);
 '   DROP TABLE public.django_content_type;
       public            tacio    false    7            �            1259    37765    django_content_type_id_seq    SEQUENCE     �   CREATE SEQUENCE public.django_content_type_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 1   DROP SEQUENCE public.django_content_type_id_seq;
       public          tacio    false    7    199            �           0    0    django_content_type_id_seq    SEQUENCE OWNED BY     Y   ALTER SEQUENCE public.django_content_type_id_seq OWNED BY public.django_content_type.id;
          public          tacio    false    198            �            1259    37756    django_migrations    TABLE     �   CREATE TABLE public.django_migrations (
    id integer NOT NULL,
    app character varying(255) NOT NULL,
    name character varying(255) NOT NULL,
    applied timestamp with time zone NOT NULL
);
 %   DROP TABLE public.django_migrations;
       public            tacio    false    7            �            1259    37754    django_migrations_id_seq    SEQUENCE     �   CREATE SEQUENCE public.django_migrations_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 /   DROP SEQUENCE public.django_migrations_id_seq;
       public          tacio    false    7    197            �           0    0    django_migrations_id_seq    SEQUENCE OWNED BY     U   ALTER SEQUENCE public.django_migrations_id_seq OWNED BY public.django_migrations.id;
          public          tacio    false    196            �            1259    37969    django_session    TABLE     �   CREATE TABLE public.django_session (
    session_key character varying(40) NOT NULL,
    session_data text NOT NULL,
    expire_date timestamp with time zone NOT NULL
);
 "   DROP TABLE public.django_session;
       public            tacio    false    7            �
           2604    37788    auth_group id    DEFAULT     n   ALTER TABLE ONLY public.auth_group ALTER COLUMN id SET DEFAULT nextval('public.auth_group_id_seq'::regclass);
 <   ALTER TABLE public.auth_group ALTER COLUMN id DROP DEFAULT;
       public          tacio    false    203    202    203            �
           2604    37798    auth_group_permissions id    DEFAULT     �   ALTER TABLE ONLY public.auth_group_permissions ALTER COLUMN id SET DEFAULT nextval('public.auth_group_permissions_id_seq'::regclass);
 H   ALTER TABLE public.auth_group_permissions ALTER COLUMN id DROP DEFAULT;
       public          tacio    false    204    205    205            �
           2604    37780    auth_permission id    DEFAULT     x   ALTER TABLE ONLY public.auth_permission ALTER COLUMN id SET DEFAULT nextval('public.auth_permission_id_seq'::regclass);
 A   ALTER TABLE public.auth_permission ALTER COLUMN id DROP DEFAULT;
       public          tacio    false    200    201    201            �
           2604    37806    auth_user id    DEFAULT     l   ALTER TABLE ONLY public.auth_user ALTER COLUMN id SET DEFAULT nextval('public.auth_user_id_seq'::regclass);
 ;   ALTER TABLE public.auth_user ALTER COLUMN id DROP DEFAULT;
       public          tacio    false    206    207    207            �
           2604    37816    auth_user_groups id    DEFAULT     z   ALTER TABLE ONLY public.auth_user_groups ALTER COLUMN id SET DEFAULT nextval('public.auth_user_groups_id_seq'::regclass);
 B   ALTER TABLE public.auth_user_groups ALTER COLUMN id DROP DEFAULT;
       public          tacio    false    209    208    209            �
           2604    37824    auth_user_user_permissions id    DEFAULT     �   ALTER TABLE ONLY public.auth_user_user_permissions ALTER COLUMN id SET DEFAULT nextval('public.auth_user_user_permissions_id_seq'::regclass);
 L   ALTER TABLE public.auth_user_user_permissions ALTER COLUMN id DROP DEFAULT;
       public          tacio    false    211    210    211            �
           2604    37917    blog_author id    DEFAULT     p   ALTER TABLE ONLY public.blog_author ALTER COLUMN id SET DEFAULT nextval('public.blog_author_id_seq'::regclass);
 =   ALTER TABLE public.blog_author ALTER COLUMN id DROP DEFAULT;
       public          tacio    false    215    214    215            �
           2604    37933    blog_post id    DEFAULT     l   ALTER TABLE ONLY public.blog_post ALTER COLUMN id SET DEFAULT nextval('public.blog_post_id_seq'::regclass);
 ;   ALTER TABLE public.blog_post ALTER COLUMN id DROP DEFAULT;
       public          tacio    false    219    218    219            �
           2604    37944    blog_post_tags id    DEFAULT     v   ALTER TABLE ONLY public.blog_post_tags ALTER COLUMN id SET DEFAULT nextval('public.blog_post_tags_id_seq'::regclass);
 @   ALTER TABLE public.blog_post_tags ALTER COLUMN id DROP DEFAULT;
       public          tacio    false    221    220    221            �
           2604    37925    blog_tag id    DEFAULT     j   ALTER TABLE ONLY public.blog_tag ALTER COLUMN id SET DEFAULT nextval('public.blog_tag_id_seq'::regclass);
 :   ALTER TABLE public.blog_tag ALTER COLUMN id DROP DEFAULT;
       public          tacio    false    217    216    217            �
           2604    37884    django_admin_log id    DEFAULT     z   ALTER TABLE ONLY public.django_admin_log ALTER COLUMN id SET DEFAULT nextval('public.django_admin_log_id_seq'::regclass);
 B   ALTER TABLE public.django_admin_log ALTER COLUMN id DROP DEFAULT;
       public          tacio    false    213    212    213            �
           2604    37770    django_content_type id    DEFAULT     �   ALTER TABLE ONLY public.django_content_type ALTER COLUMN id SET DEFAULT nextval('public.django_content_type_id_seq'::regclass);
 E   ALTER TABLE public.django_content_type ALTER COLUMN id DROP DEFAULT;
       public          tacio    false    198    199    199            �
           2604    37759    django_migrations id    DEFAULT     |   ALTER TABLE ONLY public.django_migrations ALTER COLUMN id SET DEFAULT nextval('public.django_migrations_id_seq'::regclass);
 C   ALTER TABLE public.django_migrations ALTER COLUMN id DROP DEFAULT;
       public          tacio    false    196    197    197            �          0    37785 
   auth_group 
   TABLE DATA           .   COPY public.auth_group (id, name) FROM stdin;
    public          tacio    false    203            �          0    37795    auth_group_permissions 
   TABLE DATA           M   COPY public.auth_group_permissions (id, group_id, permission_id) FROM stdin;
    public          tacio    false    205           �          0    37777    auth_permission 
   TABLE DATA           N   COPY public.auth_permission (id, name, content_type_id, codename) FROM stdin;
    public          tacio    false    201           �          0    37803 	   auth_user 
   TABLE DATA           �   COPY public.auth_user (id, password, last_login, is_superuser, username, first_name, last_name, email, is_staff, is_active, date_joined) FROM stdin;
    public          tacio    false    207   u       �          0    37813    auth_user_groups 
   TABLE DATA           A   COPY public.auth_user_groups (id, user_id, group_id) FROM stdin;
    public          tacio    false    209   �        �          0    37821    auth_user_user_permissions 
   TABLE DATA           P   COPY public.auth_user_user_permissions (id, user_id, permission_id) FROM stdin;
    public          tacio    false    211           �          0    37914    blog_author 
   TABLE DATA           G   COPY public.blog_author (id, first_name, last_name, email) FROM stdin;
    public          tacio    false    215           �          0    37930 	   blog_post 
   TABLE DATA           ^   COPY public.blog_post (id, title, date, image, excerpt, content, slug, author_id) FROM stdin;
    public          tacio    false    219   ?        �          0    37941    blog_post_tags 
   TABLE DATA           =   COPY public.blog_post_tags (id, post_id, tag_id) FROM stdin;
    public          tacio    false    221   L       �          0    37922    blog_tag 
   TABLE DATA           /   COPY public.blog_tag (id, caption) FROM stdin;
    public          tacio    false    217   :        �          0    37881    django_admin_log 
   TABLE DATA           �   COPY public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) FROM stdin;
    public          tacio    false    213   8        �          0    37767    django_content_type 
   TABLE DATA           C   COPY public.django_content_type (id, app_label, model) FROM stdin;
    public          tacio    false    199   �       �          0    37756    django_migrations 
   TABLE DATA           C   COPY public.django_migrations (id, app, name, applied) FROM stdin;
    public          tacio    false    197   u        �          0    37969    django_session 
   TABLE DATA           P   COPY public.django_session (session_key, session_data, expire_date) FROM stdin;
    public          tacio    false    222   �       �           0    0    auth_group_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public.auth_group_id_seq', 1, false);
          public          tacio    false    202            �           0    0    auth_group_permissions_id_seq    SEQUENCE SET     L   SELECT pg_catalog.setval('public.auth_group_permissions_id_seq', 1, false);
          public          tacio    false    204            �           0    0    auth_permission_id_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public.auth_permission_id_seq', 36, true);
          public          tacio    false    200            �           0    0    auth_user_groups_id_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public.auth_user_groups_id_seq', 1, false);
          public          tacio    false    208            �           0    0    auth_user_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public.auth_user_id_seq', 1, true);
          public          tacio    false    206            �           0    0 !   auth_user_user_permissions_id_seq    SEQUENCE SET     P   SELECT pg_catalog.setval('public.auth_user_user_permissions_id_seq', 1, false);
          public          tacio    false    210            �           0    0    blog_author_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public.blog_author_id_seq', 1, true);
          public          tacio    false    214            �           0    0    blog_post_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public.blog_post_id_seq', 4, true);
          public          tacio    false    218            �           0    0    blog_post_tags_id_seq    SEQUENCE SET     D   SELECT pg_catalog.setval('public.blog_post_tags_id_seq', 10, true);
          public          tacio    false    220            �           0    0    blog_tag_id_seq    SEQUENCE SET     =   SELECT pg_catalog.setval('public.blog_tag_id_seq', 4, true);
          public          tacio    false    216            �           0    0    django_admin_log_id_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public.django_admin_log_id_seq', 14, true);
          public          tacio    false    212            �           0    0    django_content_type_id_seq    SEQUENCE SET     H   SELECT pg_catalog.setval('public.django_content_type_id_seq', 9, true);
          public          tacio    false    198            �           0    0    django_migrations_id_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('public.django_migrations_id_seq', 22, true);
          public          tacio    false    196            �
           2606    37910    auth_group auth_group_name_key 
   CONSTRAINT     Y   ALTER TABLE ONLY public.auth_group
    ADD CONSTRAINT auth_group_name_key UNIQUE (name);
 H   ALTER TABLE ONLY public.auth_group DROP CONSTRAINT auth_group_name_key;
       public            tacio    false    203            �
           2606    37837 R   auth_group_permissions auth_group_permissions_group_id_permission_id_0cd325b0_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_permission_id_0cd325b0_uniq UNIQUE (group_id, permission_id);
 |   ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissions_group_id_permission_id_0cd325b0_uniq;
       public            tacio    false    205    205            �
           2606    37800 2   auth_group_permissions auth_group_permissions_pkey 
   CONSTRAINT     p   ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_pkey PRIMARY KEY (id);
 \   ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissions_pkey;
       public            tacio    false    205            �
           2606    37790    auth_group auth_group_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY public.auth_group
    ADD CONSTRAINT auth_group_pkey PRIMARY KEY (id);
 D   ALTER TABLE ONLY public.auth_group DROP CONSTRAINT auth_group_pkey;
       public            tacio    false    203            �
           2606    37828 F   auth_permission auth_permission_content_type_id_codename_01ab375a_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_codename_01ab375a_uniq UNIQUE (content_type_id, codename);
 p   ALTER TABLE ONLY public.auth_permission DROP CONSTRAINT auth_permission_content_type_id_codename_01ab375a_uniq;
       public            tacio    false    201    201            �
           2606    37782 $   auth_permission auth_permission_pkey 
   CONSTRAINT     b   ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_pkey PRIMARY KEY (id);
 N   ALTER TABLE ONLY public.auth_permission DROP CONSTRAINT auth_permission_pkey;
       public            tacio    false    201            �
           2606    37818 &   auth_user_groups auth_user_groups_pkey 
   CONSTRAINT     d   ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_pkey PRIMARY KEY (id);
 P   ALTER TABLE ONLY public.auth_user_groups DROP CONSTRAINT auth_user_groups_pkey;
       public            tacio    false    209            �
           2606    37852 @   auth_user_groups auth_user_groups_user_id_group_id_94350c0c_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_user_id_group_id_94350c0c_uniq UNIQUE (user_id, group_id);
 j   ALTER TABLE ONLY public.auth_user_groups DROP CONSTRAINT auth_user_groups_user_id_group_id_94350c0c_uniq;
       public            tacio    false    209    209            �
           2606    37808    auth_user auth_user_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public.auth_user
    ADD CONSTRAINT auth_user_pkey PRIMARY KEY (id);
 B   ALTER TABLE ONLY public.auth_user DROP CONSTRAINT auth_user_pkey;
       public            tacio    false    207            �
           2606    37826 :   auth_user_user_permissions auth_user_user_permissions_pkey 
   CONSTRAINT     x   ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_pkey PRIMARY KEY (id);
 d   ALTER TABLE ONLY public.auth_user_user_permissions DROP CONSTRAINT auth_user_user_permissions_pkey;
       public            tacio    false    211            �
           2606    37866 Y   auth_user_user_permissions auth_user_user_permissions_user_id_permission_id_14a6b632_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_user_id_permission_id_14a6b632_uniq UNIQUE (user_id, permission_id);
 �   ALTER TABLE ONLY public.auth_user_user_permissions DROP CONSTRAINT auth_user_user_permissions_user_id_permission_id_14a6b632_uniq;
       public            tacio    false    211    211            �
           2606    37904     auth_user auth_user_username_key 
   CONSTRAINT     _   ALTER TABLE ONLY public.auth_user
    ADD CONSTRAINT auth_user_username_key UNIQUE (username);
 J   ALTER TABLE ONLY public.auth_user DROP CONSTRAINT auth_user_username_key;
       public            tacio    false    207            �
           2606    37919    blog_author blog_author_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public.blog_author
    ADD CONSTRAINT blog_author_pkey PRIMARY KEY (id);
 F   ALTER TABLE ONLY public.blog_author DROP CONSTRAINT blog_author_pkey;
       public            tacio    false    215            �
           2606    37938    blog_post blog_post_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public.blog_post
    ADD CONSTRAINT blog_post_pkey PRIMARY KEY (id);
 B   ALTER TABLE ONLY public.blog_post DROP CONSTRAINT blog_post_pkey;
       public            tacio    false    219                       2606    37946 "   blog_post_tags blog_post_tags_pkey 
   CONSTRAINT     `   ALTER TABLE ONLY public.blog_post_tags
    ADD CONSTRAINT blog_post_tags_pkey PRIMARY KEY (id);
 L   ALTER TABLE ONLY public.blog_post_tags DROP CONSTRAINT blog_post_tags_pkey;
       public            tacio    false    221                       2606    37956 :   blog_post_tags blog_post_tags_post_id_tag_id_4925ec37_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.blog_post_tags
    ADD CONSTRAINT blog_post_tags_post_id_tag_id_4925ec37_uniq UNIQUE (post_id, tag_id);
 d   ALTER TABLE ONLY public.blog_post_tags DROP CONSTRAINT blog_post_tags_post_id_tag_id_4925ec37_uniq;
       public            tacio    false    221    221            �
           2606    37927    blog_tag blog_tag_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public.blog_tag
    ADD CONSTRAINT blog_tag_pkey PRIMARY KEY (id);
 @   ALTER TABLE ONLY public.blog_tag DROP CONSTRAINT blog_tag_pkey;
       public            tacio    false    217            �
           2606    37890 &   django_admin_log django_admin_log_pkey 
   CONSTRAINT     d   ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_pkey PRIMARY KEY (id);
 P   ALTER TABLE ONLY public.django_admin_log DROP CONSTRAINT django_admin_log_pkey;
       public            tacio    false    213            �
           2606    37774 E   django_content_type django_content_type_app_label_model_76bd3d3b_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.django_content_type
    ADD CONSTRAINT django_content_type_app_label_model_76bd3d3b_uniq UNIQUE (app_label, model);
 o   ALTER TABLE ONLY public.django_content_type DROP CONSTRAINT django_content_type_app_label_model_76bd3d3b_uniq;
       public            tacio    false    199    199            �
           2606    37772 ,   django_content_type django_content_type_pkey 
   CONSTRAINT     j   ALTER TABLE ONLY public.django_content_type
    ADD CONSTRAINT django_content_type_pkey PRIMARY KEY (id);
 V   ALTER TABLE ONLY public.django_content_type DROP CONSTRAINT django_content_type_pkey;
       public            tacio    false    199            �
           2606    37764 (   django_migrations django_migrations_pkey 
   CONSTRAINT     f   ALTER TABLE ONLY public.django_migrations
    ADD CONSTRAINT django_migrations_pkey PRIMARY KEY (id);
 R   ALTER TABLE ONLY public.django_migrations DROP CONSTRAINT django_migrations_pkey;
       public            tacio    false    197            	           2606    37976 "   django_session django_session_pkey 
   CONSTRAINT     i   ALTER TABLE ONLY public.django_session
    ADD CONSTRAINT django_session_pkey PRIMARY KEY (session_key);
 L   ALTER TABLE ONLY public.django_session DROP CONSTRAINT django_session_pkey;
       public            tacio    false    222            �
           1259    37911    auth_group_name_a6ea08ec_like    INDEX     h   CREATE INDEX auth_group_name_a6ea08ec_like ON public.auth_group USING btree (name varchar_pattern_ops);
 1   DROP INDEX public.auth_group_name_a6ea08ec_like;
       public            tacio    false    203            �
           1259    37848 (   auth_group_permissions_group_id_b120cbf9    INDEX     o   CREATE INDEX auth_group_permissions_group_id_b120cbf9 ON public.auth_group_permissions USING btree (group_id);
 <   DROP INDEX public.auth_group_permissions_group_id_b120cbf9;
       public            tacio    false    205            �
           1259    37849 -   auth_group_permissions_permission_id_84c5c92e    INDEX     y   CREATE INDEX auth_group_permissions_permission_id_84c5c92e ON public.auth_group_permissions USING btree (permission_id);
 A   DROP INDEX public.auth_group_permissions_permission_id_84c5c92e;
       public            tacio    false    205            �
           1259    37834 (   auth_permission_content_type_id_2f476e4b    INDEX     o   CREATE INDEX auth_permission_content_type_id_2f476e4b ON public.auth_permission USING btree (content_type_id);
 <   DROP INDEX public.auth_permission_content_type_id_2f476e4b;
       public            tacio    false    201            �
           1259    37864 "   auth_user_groups_group_id_97559544    INDEX     c   CREATE INDEX auth_user_groups_group_id_97559544 ON public.auth_user_groups USING btree (group_id);
 6   DROP INDEX public.auth_user_groups_group_id_97559544;
       public            tacio    false    209            �
           1259    37863 !   auth_user_groups_user_id_6a12ed8b    INDEX     a   CREATE INDEX auth_user_groups_user_id_6a12ed8b ON public.auth_user_groups USING btree (user_id);
 5   DROP INDEX public.auth_user_groups_user_id_6a12ed8b;
       public            tacio    false    209            �
           1259    37878 1   auth_user_user_permissions_permission_id_1fbb5f2c    INDEX     �   CREATE INDEX auth_user_user_permissions_permission_id_1fbb5f2c ON public.auth_user_user_permissions USING btree (permission_id);
 E   DROP INDEX public.auth_user_user_permissions_permission_id_1fbb5f2c;
       public            tacio    false    211            �
           1259    37877 +   auth_user_user_permissions_user_id_a95ead1b    INDEX     u   CREATE INDEX auth_user_user_permissions_user_id_a95ead1b ON public.auth_user_user_permissions USING btree (user_id);
 ?   DROP INDEX public.auth_user_user_permissions_user_id_a95ead1b;
       public            tacio    false    211            �
           1259    37905     auth_user_username_6821ab7c_like    INDEX     n   CREATE INDEX auth_user_username_6821ab7c_like ON public.auth_user USING btree (username varchar_pattern_ops);
 4   DROP INDEX public.auth_user_username_6821ab7c_like;
       public            tacio    false    207            �
           1259    37954    blog_post_author_id_dd7a8485    INDEX     W   CREATE INDEX blog_post_author_id_dd7a8485 ON public.blog_post USING btree (author_id);
 0   DROP INDEX public.blog_post_author_id_dd7a8485;
       public            tacio    false    219            �
           1259    37952    blog_post_slug_b95473f2    INDEX     M   CREATE INDEX blog_post_slug_b95473f2 ON public.blog_post USING btree (slug);
 +   DROP INDEX public.blog_post_slug_b95473f2;
       public            tacio    false    219                        1259    37953    blog_post_slug_b95473f2_like    INDEX     f   CREATE INDEX blog_post_slug_b95473f2_like ON public.blog_post USING btree (slug varchar_pattern_ops);
 0   DROP INDEX public.blog_post_slug_b95473f2_like;
       public            tacio    false    219                       1259    37967    blog_post_tags_post_id_a1c71c8a    INDEX     ]   CREATE INDEX blog_post_tags_post_id_a1c71c8a ON public.blog_post_tags USING btree (post_id);
 3   DROP INDEX public.blog_post_tags_post_id_a1c71c8a;
       public            tacio    false    221                       1259    37968    blog_post_tags_tag_id_0875c551    INDEX     [   CREATE INDEX blog_post_tags_tag_id_0875c551 ON public.blog_post_tags USING btree (tag_id);
 2   DROP INDEX public.blog_post_tags_tag_id_0875c551;
       public            tacio    false    221            �
           1259    37901 )   django_admin_log_content_type_id_c4bce8eb    INDEX     q   CREATE INDEX django_admin_log_content_type_id_c4bce8eb ON public.django_admin_log USING btree (content_type_id);
 =   DROP INDEX public.django_admin_log_content_type_id_c4bce8eb;
       public            tacio    false    213            �
           1259    37902 !   django_admin_log_user_id_c564eba6    INDEX     a   CREATE INDEX django_admin_log_user_id_c564eba6 ON public.django_admin_log USING btree (user_id);
 5   DROP INDEX public.django_admin_log_user_id_c564eba6;
       public            tacio    false    213                       1259    37978 #   django_session_expire_date_a5c62663    INDEX     e   CREATE INDEX django_session_expire_date_a5c62663 ON public.django_session USING btree (expire_date);
 7   DROP INDEX public.django_session_expire_date_a5c62663;
       public            tacio    false    222            
           1259    37977 (   django_session_session_key_c0390e0f_like    INDEX     ~   CREATE INDEX django_session_session_key_c0390e0f_like ON public.django_session USING btree (session_key varchar_pattern_ops);
 <   DROP INDEX public.django_session_session_key_c0390e0f_like;
       public            tacio    false    222                       2606    37843 O   auth_group_permissions auth_group_permissio_permission_id_84c5c92e_fk_auth_perm    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissio_permission_id_84c5c92e_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id) DEFERRABLE INITIALLY DEFERRED;
 y   ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissio_permission_id_84c5c92e_fk_auth_perm;
       public          tacio    false    2775    205    201                       2606    37838 P   auth_group_permissions auth_group_permissions_group_id_b120cbf9_fk_auth_group_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_b120cbf9_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;
 z   ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissions_group_id_b120cbf9_fk_auth_group_id;
       public          tacio    false    203    2780    205                       2606    37829 E   auth_permission auth_permission_content_type_id_2f476e4b_fk_django_co    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_2f476e4b_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;
 o   ALTER TABLE ONLY public.auth_permission DROP CONSTRAINT auth_permission_content_type_id_2f476e4b_fk_django_co;
       public          tacio    false    199    201    2770                       2606    37858 D   auth_user_groups auth_user_groups_group_id_97559544_fk_auth_group_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_group_id_97559544_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;
 n   ALTER TABLE ONLY public.auth_user_groups DROP CONSTRAINT auth_user_groups_group_id_97559544_fk_auth_group_id;
       public          tacio    false    209    2780    203                       2606    37853 B   auth_user_groups auth_user_groups_user_id_6a12ed8b_fk_auth_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_user_id_6a12ed8b_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 l   ALTER TABLE ONLY public.auth_user_groups DROP CONSTRAINT auth_user_groups_user_id_6a12ed8b_fk_auth_user_id;
       public          tacio    false    207    209    2788                       2606    37872 S   auth_user_user_permissions auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id) DEFERRABLE INITIALLY DEFERRED;
 }   ALTER TABLE ONLY public.auth_user_user_permissions DROP CONSTRAINT auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm;
       public          tacio    false    2775    201    211                       2606    37867 V   auth_user_user_permissions auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY public.auth_user_user_permissions DROP CONSTRAINT auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id;
       public          tacio    false    207    211    2788                       2606    37980 8   blog_post blog_post_author_id_dd7a8485_fk_blog_author_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.blog_post
    ADD CONSTRAINT blog_post_author_id_dd7a8485_fk_blog_author_id FOREIGN KEY (author_id) REFERENCES public.blog_author(id) DEFERRABLE INITIALLY DEFERRED;
 b   ALTER TABLE ONLY public.blog_post DROP CONSTRAINT blog_post_author_id_dd7a8485_fk_blog_author_id;
       public          tacio    false    215    219    2809                       2606    37957 >   blog_post_tags blog_post_tags_post_id_a1c71c8a_fk_blog_post_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.blog_post_tags
    ADD CONSTRAINT blog_post_tags_post_id_a1c71c8a_fk_blog_post_id FOREIGN KEY (post_id) REFERENCES public.blog_post(id) DEFERRABLE INITIALLY DEFERRED;
 h   ALTER TABLE ONLY public.blog_post_tags DROP CONSTRAINT blog_post_tags_post_id_a1c71c8a_fk_blog_post_id;
       public          tacio    false    2814    221    219                       2606    37962 <   blog_post_tags blog_post_tags_tag_id_0875c551_fk_blog_tag_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.blog_post_tags
    ADD CONSTRAINT blog_post_tags_tag_id_0875c551_fk_blog_tag_id FOREIGN KEY (tag_id) REFERENCES public.blog_tag(id) DEFERRABLE INITIALLY DEFERRED;
 f   ALTER TABLE ONLY public.blog_post_tags DROP CONSTRAINT blog_post_tags_tag_id_0875c551_fk_blog_tag_id;
       public          tacio    false    217    221    2811                       2606    37891 G   django_admin_log django_admin_log_content_type_id_c4bce8eb_fk_django_co    FK CONSTRAINT     �   ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_content_type_id_c4bce8eb_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;
 q   ALTER TABLE ONLY public.django_admin_log DROP CONSTRAINT django_admin_log_content_type_id_c4bce8eb_fk_django_co;
       public          tacio    false    213    2770    199                       2606    37896 B   django_admin_log django_admin_log_user_id_c564eba6_fk_auth_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_user_id_c564eba6_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 l   ALTER TABLE ONLY public.django_admin_log DROP CONSTRAINT django_admin_log_user_id_c564eba6_fk_auth_user_id;
       public          tacio    false    213    2788    207           