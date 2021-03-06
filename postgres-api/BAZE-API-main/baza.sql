PGDMP                         y           rentacar    13.2    13.2 J               0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false                       0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false                       0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false                       1262    16619    rentacar    DATABASE     g   CREATE DATABASE rentacar WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE = 'Croatian_Croatia.1252';
    DROP DATABASE rentacar;
                rentacar_admin    false                       0    0    SCHEMA public    ACL     ?   REVOKE ALL ON SCHEMA public FROM PUBLIC;
GRANT USAGE ON SCHEMA public TO rentacar_user;
GRANT ALL ON SCHEMA public TO rentacar_admin;
                   postgres    false    3            ?            1259    16637    komentar    TABLE     ?   CREATE TABLE public.komentar (
    id bigint NOT NULL,
    komentartext text NOT NULL,
    ocjena integer NOT NULL,
    auto_id bigint NOT NULL,
    kupac_id bigint NOT NULL
);
    DROP TABLE public.komentar;
       public         heap    postgres    false                       0    0    TABLE komentar    ACL     n   GRANT ALL ON TABLE public.komentar TO rentacar_admin;
GRANT SELECT ON TABLE public.komentar TO rentacar_user;
          public          postgres    false    203            ?            1259    16643    Komentar_id_seq    SEQUENCE     z   CREATE SEQUENCE public."Komentar_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE public."Komentar_id_seq";
       public          postgres    false    203                       0    0    Komentar_id_seq    SEQUENCE OWNED BY     E   ALTER SEQUENCE public."Komentar_id_seq" OWNED BY public.komentar.id;
          public          postgres    false    204            ?            1259    16620    kupac    TABLE     ?   CREATE TABLE public.kupac (
    id bigint NOT NULL,
    ime text NOT NULL,
    prezime text NOT NULL,
    email text NOT NULL,
    lozinka text NOT NULL,
    datumrodjenja date NOT NULL
);
    DROP TABLE public.kupac;
       public         heap    postgres    false                       0    0    TABLE kupac    ACL     h   GRANT ALL ON TABLE public.kupac TO rentacar_admin;
GRANT SELECT ON TABLE public.kupac TO rentacar_user;
          public          postgres    false    200            ?            1259    16626    Kupac_id_seq    SEQUENCE     w   CREATE SEQUENCE public."Kupac_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 %   DROP SEQUENCE public."Kupac_id_seq";
       public          postgres    false    200                       0    0    Kupac_id_seq    SEQUENCE OWNED BY     ?   ALTER SEQUENCE public."Kupac_id_seq" OWNED BY public.kupac.id;
          public          postgres    false    201            ?            1259    16645    prodavac    TABLE     ?   CREATE TABLE public.prodavac (
    id bigint NOT NULL,
    ime text NOT NULL,
    prezime text NOT NULL,
    email text NOT NULL,
    lozinka text NOT NULL,
    datumrodjenja date NOT NULL
);
    DROP TABLE public.prodavac;
       public         heap    postgres    false                       0    0    TABLE prodavac    ACL     n   GRANT ALL ON TABLE public.prodavac TO rentacar_admin;
GRANT SELECT ON TABLE public.prodavac TO rentacar_user;
          public          postgres    false    205            ?            1259    16651    Prodavac_id_seq    SEQUENCE     z   CREATE SEQUENCE public."Prodavac_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE public."Prodavac_id_seq";
       public          postgres    false    205                       0    0    Prodavac_id_seq    SEQUENCE OWNED BY     E   ALTER SEQUENCE public."Prodavac_id_seq" OWNED BY public.prodavac.id;
          public          postgres    false    206            ?            1259    16653    rezervacija    TABLE     ?   CREATE TABLE public.rezervacija (
    id bigint NOT NULL,
    datumod date NOT NULL,
    datumdo date NOT NULL,
    cijenaukupno double precision NOT NULL,
    kupac_id bigint,
    auto_id bigint
);
    DROP TABLE public.rezervacija;
       public         heap    postgres    false                       0    0    TABLE rezervacija    ACL     t   GRANT ALL ON TABLE public.rezervacija TO rentacar_admin;
GRANT SELECT ON TABLE public.rezervacija TO rentacar_user;
          public          postgres    false    207            ?            1259    16656    Rezervacija_id_seq    SEQUENCE     }   CREATE SEQUENCE public."Rezervacija_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 +   DROP SEQUENCE public."Rezervacija_id_seq";
       public          postgres    false    207                       0    0    Rezervacija_id_seq    SEQUENCE OWNED BY     K   ALTER SEQUENCE public."Rezervacija_id_seq" OWNED BY public.rezervacija.id;
          public          postgres    false    208            ?            1259    16658    slika    TABLE     n   CREATE TABLE public.slika (
    id bigint NOT NULL,
    putanja text NOT NULL,
    auto_id bigint NOT NULL
);
    DROP TABLE public.slika;
       public         heap    postgres    false                       0    0    TABLE slika    ACL     h   GRANT ALL ON TABLE public.slika TO rentacar_admin;
GRANT SELECT ON TABLE public.slika TO rentacar_user;
          public          postgres    false    209            ?            1259    16664    Slika_id_seq    SEQUENCE     w   CREATE SEQUENCE public."Slika_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 %   DROP SEQUENCE public."Slika_id_seq";
       public          postgres    false    209                       0    0    Slika_id_seq    SEQUENCE OWNED BY     ?   ALTER SEQUENCE public."Slika_id_seq" OWNED BY public.slika.id;
          public          postgres    false    210            ?            1259    16628    auto    TABLE     ?   CREATE TABLE public.auto (
    id bigint DEFAULT nextval('public."Kupac_id_seq"'::regclass) NOT NULL,
    brojsjedala integer NOT NULL,
    cijenadan double precision NOT NULL,
    tipgoriva text NOT NULL,
    prodavac_id bigint
);
    DROP TABLE public.auto;
       public         heap    postgres    false    201                       0    0 
   TABLE auto    ACL     f   GRANT ALL ON TABLE public.auto TO rentacar_admin;
GRANT SELECT ON TABLE public.auto TO rentacar_user;
          public          postgres    false    202            ?            1259    16802 	   locations    TABLE     I   CREATE TABLE public.locations (
    id bigint NOT NULL,
    name text
);
    DROP TABLE public.locations;
       public         heap    rentacar_admin    false            ?            1259    16726    products    TABLE     ?   CREATE TABLE public.products (
    productid integer NOT NULL,
    productname character varying(255) NOT NULL,
    quantity integer NOT NULL,
    price numeric(5,2)
);
    DROP TABLE public.products;
       public         heap    rentacar_admin    false            ?            1259    16724    products_productid_seq    SEQUENCE     ?   CREATE SEQUENCE public.products_productid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE public.products_productid_seq;
       public          rentacar_admin    false    212                       0    0    products_productid_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE public.products_productid_seq OWNED BY public.products.productid;
          public          rentacar_admin    false    211            ?            1259    16777    roles    TABLE     G   CREATE TABLE public.roles (
    id bigint NOT NULL,
    name "char"
);
    DROP TABLE public.roles;
       public         heap    rentacar_admin    false            ?            1259    16782    users    TABLE     ?   CREATE TABLE public.users (
    id bigint NOT NULL,
    first_name text,
    last_name text,
    email text,
    password text,
    birth_date date,
    role_id bigint
);
    DROP TABLE public.users;
       public         heap    rentacar_admin    false            [           2604    16667    komentar id    DEFAULT     l   ALTER TABLE ONLY public.komentar ALTER COLUMN id SET DEFAULT nextval('public."Komentar_id_seq"'::regclass);
 :   ALTER TABLE public.komentar ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    204    203            Y           2604    16668    kupac id    DEFAULT     f   ALTER TABLE ONLY public.kupac ALTER COLUMN id SET DEFAULT nextval('public."Kupac_id_seq"'::regclass);
 7   ALTER TABLE public.kupac ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    201    200            \           2604    16669    prodavac id    DEFAULT     l   ALTER TABLE ONLY public.prodavac ALTER COLUMN id SET DEFAULT nextval('public."Prodavac_id_seq"'::regclass);
 :   ALTER TABLE public.prodavac ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    206    205            _           2604    16729    products productid    DEFAULT     x   ALTER TABLE ONLY public.products ALTER COLUMN productid SET DEFAULT nextval('public.products_productid_seq'::regclass);
 A   ALTER TABLE public.products ALTER COLUMN productid DROP DEFAULT;
       public          rentacar_admin    false    212    211    212            ]           2604    16670    rezervacija id    DEFAULT     r   ALTER TABLE ONLY public.rezervacija ALTER COLUMN id SET DEFAULT nextval('public."Rezervacija_id_seq"'::regclass);
 =   ALTER TABLE public.rezervacija ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    208    207            ^           2604    16671    slika id    DEFAULT     f   ALTER TABLE ONLY public.slika ALTER COLUMN id SET DEFAULT nextval('public."Slika_id_seq"'::regclass);
 7   ALTER TABLE public.slika ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    210    209            ?          0    16628    auto 
   TABLE DATA           R   COPY public.auto (id, brojsjedala, cijenadan, tipgoriva, prodavac_id) FROM stdin;
    public          postgres    false    202   P                  0    16637    komentar 
   TABLE DATA           O   COPY public.komentar (id, komentartext, ocjena, auto_id, kupac_id) FROM stdin;
    public          postgres    false    203   ?P       ?          0    16620    kupac 
   TABLE DATA           P   COPY public.kupac (id, ime, prezime, email, lozinka, datumrodjenja) FROM stdin;
    public          postgres    false    200   ZQ                 0    16802 	   locations 
   TABLE DATA           -   COPY public.locations (id, name) FROM stdin;
    public          rentacar_admin    false    215   ?Q                 0    16645    prodavac 
   TABLE DATA           S   COPY public.prodavac (id, ime, prezime, email, lozinka, datumrodjenja) FROM stdin;
    public          postgres    false    205   R       	          0    16726    products 
   TABLE DATA           K   COPY public.products (productid, productname, quantity, price) FROM stdin;
    public          rentacar_admin    false    212   nR                 0    16653    rezervacija 
   TABLE DATA           \   COPY public.rezervacija (id, datumod, datumdo, cijenaukupno, kupac_id, auto_id) FROM stdin;
    public          postgres    false    207   ?R       
          0    16777    roles 
   TABLE DATA           )   COPY public.roles (id, name) FROM stdin;
    public          rentacar_admin    false    213   ,S                 0    16658    slika 
   TABLE DATA           5   COPY public.slika (id, putanja, auto_id) FROM stdin;
    public          postgres    false    209   QS                 0    16782    users 
   TABLE DATA           `   COPY public.users (id, first_name, last_name, email, password, birth_date, role_id) FROM stdin;
    public          rentacar_admin    false    214   ?S                   0    0    Komentar_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public."Komentar_id_seq"', 10, true);
          public          postgres    false    204            !           0    0    Kupac_id_seq    SEQUENCE SET     =   SELECT pg_catalog.setval('public."Kupac_id_seq"', 31, true);
          public          postgres    false    201            "           0    0    Prodavac_id_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('public."Prodavac_id_seq"', 2, true);
          public          postgres    false    206            #           0    0    Rezervacija_id_seq    SEQUENCE SET     C   SELECT pg_catalog.setval('public."Rezervacija_id_seq"', 25, true);
          public          postgres    false    208            $           0    0    Slika_id_seq    SEQUENCE SET     =   SELECT pg_catalog.setval('public."Slika_id_seq"', 35, true);
          public          postgres    false    210            %           0    0    products_productid_seq    SEQUENCE SET     D   SELECT pg_catalog.setval('public.products_productid_seq', 2, true);
          public          rentacar_admin    false    211            c           2606    16673    auto Auto_pkey 
   CONSTRAINT     N   ALTER TABLE ONLY public.auto
    ADD CONSTRAINT "Auto_pkey" PRIMARY KEY (id);
 :   ALTER TABLE ONLY public.auto DROP CONSTRAINT "Auto_pkey";
       public            postgres    false    202            e           2606    16675    komentar Komentar_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public.komentar
    ADD CONSTRAINT "Komentar_pkey" PRIMARY KEY (id);
 B   ALTER TABLE ONLY public.komentar DROP CONSTRAINT "Komentar_pkey";
       public            postgres    false    203            a           2606    16677    kupac Kupac_pkey 
   CONSTRAINT     P   ALTER TABLE ONLY public.kupac
    ADD CONSTRAINT "Kupac_pkey" PRIMARY KEY (id);
 <   ALTER TABLE ONLY public.kupac DROP CONSTRAINT "Kupac_pkey";
       public            postgres    false    200            g           2606    16679    prodavac Prodavac_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public.prodavac
    ADD CONSTRAINT "Prodavac_pkey" PRIMARY KEY (id);
 B   ALTER TABLE ONLY public.prodavac DROP CONSTRAINT "Prodavac_pkey";
       public            postgres    false    205            i           2606    16681    rezervacija Rezervacija_pkey 
   CONSTRAINT     \   ALTER TABLE ONLY public.rezervacija
    ADD CONSTRAINT "Rezervacija_pkey" PRIMARY KEY (id);
 H   ALTER TABLE ONLY public.rezervacija DROP CONSTRAINT "Rezervacija_pkey";
       public            postgres    false    207            k           2606    16683    slika Slika_pkey 
   CONSTRAINT     P   ALTER TABLE ONLY public.slika
    ADD CONSTRAINT "Slika_pkey" PRIMARY KEY (id);
 <   ALTER TABLE ONLY public.slika DROP CONSTRAINT "Slika_pkey";
       public            postgres    false    209            s           2606    16806    locations locations_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public.locations
    ADD CONSTRAINT locations_pkey PRIMARY KEY (id);
 B   ALTER TABLE ONLY public.locations DROP CONSTRAINT locations_pkey;
       public            rentacar_admin    false    215            m           2606    16731    products products_pkey 
   CONSTRAINT     [   ALTER TABLE ONLY public.products
    ADD CONSTRAINT products_pkey PRIMARY KEY (productid);
 @   ALTER TABLE ONLY public.products DROP CONSTRAINT products_pkey;
       public            rentacar_admin    false    212            o           2606    16781    roles roles_pkey 
   CONSTRAINT     N   ALTER TABLE ONLY public.roles
    ADD CONSTRAINT roles_pkey PRIMARY KEY (id);
 :   ALTER TABLE ONLY public.roles DROP CONSTRAINT roles_pkey;
       public            rentacar_admin    false    213            q           2606    16786    users users_pkey 
   CONSTRAINT     N   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (id);
 :   ALTER TABLE ONLY public.users DROP CONSTRAINT users_pkey;
       public            rentacar_admin    false    214            u           2606    16684    komentar auto_id    FK CONSTRAINT     x   ALTER TABLE ONLY public.komentar
    ADD CONSTRAINT auto_id FOREIGN KEY (auto_id) REFERENCES public.auto(id) NOT VALID;
 :   ALTER TABLE ONLY public.komentar DROP CONSTRAINT auto_id;
       public          postgres    false    203    202    2915            y           2606    16694    slika auto_id    FK CONSTRAINT     u   ALTER TABLE ONLY public.slika
    ADD CONSTRAINT auto_id FOREIGN KEY (auto_id) REFERENCES public.auto(id) NOT VALID;
 7   ALTER TABLE ONLY public.slika DROP CONSTRAINT auto_id;
       public          postgres    false    2915    202    209            x           2606    16772    rezervacija auto_id    FK CONSTRAINT     {   ALTER TABLE ONLY public.rezervacija
    ADD CONSTRAINT auto_id FOREIGN KEY (auto_id) REFERENCES public.auto(id) NOT VALID;
 =   ALTER TABLE ONLY public.rezervacija DROP CONSTRAINT auto_id;
       public          postgres    false    207    202    2915            v           2606    16699    komentar kupac_id    FK CONSTRAINT     {   ALTER TABLE ONLY public.komentar
    ADD CONSTRAINT kupac_id FOREIGN KEY (kupac_id) REFERENCES public.kupac(id) NOT VALID;
 ;   ALTER TABLE ONLY public.komentar DROP CONSTRAINT kupac_id;
       public          postgres    false    203    200    2913            w           2606    16767    rezervacija kupac_id    FK CONSTRAINT     ~   ALTER TABLE ONLY public.rezervacija
    ADD CONSTRAINT kupac_id FOREIGN KEY (kupac_id) REFERENCES public.kupac(id) NOT VALID;
 >   ALTER TABLE ONLY public.rezervacija DROP CONSTRAINT kupac_id;
       public          postgres    false    200    207    2913            t           2606    16750    auto prodavac_id    FK CONSTRAINT     ?   ALTER TABLE ONLY public.auto
    ADD CONSTRAINT prodavac_id FOREIGN KEY (prodavac_id) REFERENCES public.prodavac(id) NOT VALID;
 :   ALTER TABLE ONLY public.auto DROP CONSTRAINT prodavac_id;
       public          postgres    false    202    205    2919            z           2606    16787    users role_id    FK CONSTRAINT     l   ALTER TABLE ONLY public.users
    ADD CONSTRAINT role_id FOREIGN KEY (role_id) REFERENCES public.roles(id);
 7   ALTER TABLE ONLY public.users DROP CONSTRAINT role_id;
       public          rentacar_admin    false    214    213    2927            ?           826    16714    DEFAULT PRIVILEGES FOR TABLES    DEFAULT ACL     O  ALTER DEFAULT PRIVILEGES FOR ROLE postgres IN SCHEMA public REVOKE ALL ON TABLES  FROM postgres;
ALTER DEFAULT PRIVILEGES FOR ROLE postgres IN SCHEMA public GRANT ALL ON TABLES  TO rentacar_admin WITH GRANT OPTION;
ALTER DEFAULT PRIVILEGES FOR ROLE postgres IN SCHEMA public GRANT SELECT ON TABLES  TO rentacar_user WITH GRANT OPTION;
          public          postgres    false            ?           826    16715     DEFAULT PRIVILEGES FOR SEQUENCES    DEFAULT ACL     X   ALTER DEFAULT PRIVILEGES FOR ROLE postgres GRANT SELECT ON SEQUENCES  TO rentacar_user;
                   postgres    false            ?      x?]?=?0???0(?o{	N?D?U?u??50`P&??????0ֶI?????Y?????Q?S?X!Y?'\?P???????????#?*?^S?&A??[?^W????259??4?m#߀i???V??S          ?   x?M?M?0?ׯ??	?-??FML\?i?	 0M?]pz??q7??}_F???c???q'?PZh<??>8O!?]??(p??9?-.9<??0?J??????????a???ə6?[?\?K??)?<ٕ[?v?<?L???n???5??Q??uB| ??3U      ?   a   x?3??,K??t?O?L??2?s3s???s9??ML??-8---tt????8]S?9?R??R?8S?l?9}???9??K?8sAl:b???? ??(?         5   x?3???/.I,?2?tN,????K?2?.??IL?2???*M*-???????? =a&         N   x?3??M,???JL/?????s3s???s9??ML??-8---tt????8=??8]?S2?93?L?c???? id      	      x?3???O?,IM?4?44?30?????? H?            x?u??? ?o?%ѝ4]?d?9?*?????????h???<?l???әj?]?Ű???$?ū
?,?U?#D|?????[xd??U0D?>?^?G(?x6?????R?C˝?}?޿bP      
      x?3?L?2?,?????? ?         ?   x?]?;
?@E??o1f$?泗4?.??d???<?\[??g{??ǹ/?	z?ݡ1qt&???1?4HaEEQVb??TVQ?Հ4VQ:?(?ՄLVZXEVR???J??J5A?z??Z??z?
	F?	*?$h0I0?&h??????V ?B?         k   x?M˻@@???̻??q???*Ԛ??,6A??-??)?_`??C UUF,?*??n????z??lv<?zq??kh4I??(???p??0?ըGo?????2?#Y??b"?}s ?     