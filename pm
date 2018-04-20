PGDMP     	    :                v            pm    9.6.4    9.6.4 \    �           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                       false            �           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                       false            �           1262    17440    pm    DATABASE     �   CREATE DATABASE pm WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'Vietnamese_Vietnam.1258' LC_CTYPE = 'Vietnamese_Vietnam.1258';
    DROP DATABASE pm;
             postgres    false                        2615    2200    public    SCHEMA        CREATE SCHEMA public;
    DROP SCHEMA public;
             postgres    false            �           0    0    SCHEMA public    COMMENT     6   COMMENT ON SCHEMA public IS 'standard public schema';
                  postgres    false    3                        3079    12387    plpgsql 	   EXTENSION     ?   CREATE EXTENSION IF NOT EXISTS plpgsql WITH SCHEMA pg_catalog;
    DROP EXTENSION plpgsql;
                  false            �           0    0    EXTENSION plpgsql    COMMENT     @   COMMENT ON EXTENSION plpgsql IS 'PL/pgSQL procedural language';
                       false    1            �            1259    17599 
   baocaotuan    TABLE     �   CREATE TABLE baocaotuan (
    ma_bct bigint NOT NULL,
    ma_da bigint NOT NULL,
    ma_tt bigint NOT NULL,
    thoi_gian_upload date NOT NULL,
    tep character varying(255),
    ghi_chu text,
    diem smallint,
    ma_sv character(8) NOT NULL
);
    DROP TABLE public.baocaotuan;
       public         postgres    false    3            �            1259    17597    baocaotuan_ma_bct_seq    SEQUENCE     w   CREATE SEQUENCE baocaotuan_ma_bct_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ,   DROP SEQUENCE public.baocaotuan_ma_bct_seq;
       public       postgres    false    3    195            �           0    0    baocaotuan_ma_bct_seq    SEQUENCE OWNED BY     A   ALTER SEQUENCE baocaotuan_ma_bct_seq OWNED BY baocaotuan.ma_bct;
            public       postgres    false    194            �            1259    17580    doan    TABLE     e  CREATE TABLE doan (
    ma_da bigint NOT NULL,
    ma_sv character(8) NOT NULL,
    ma_gv bigint NOT NULL,
    ma_tt bigint NOT NULL,
    ma_mnc bigint,
    ten_de_tai character varying(1023),
    ki_hoc character varying(8),
    tep_bao_cao character varying(255),
    ghi_chu_sv text,
    ghi_chu_gv text,
    ma_lda bigint NOT NULL,
    diem smallint
);
    DROP TABLE public.doan;
       public         postgres    false    3            �            1259    17578    doan_ma_da_seq    SEQUENCE     p   CREATE SEQUENCE doan_ma_da_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 %   DROP SEQUENCE public.doan_ma_da_seq;
       public       postgres    false    191    3            �           0    0    doan_ma_da_seq    SEQUENCE OWNED BY     3   ALTER SEQUENCE doan_ma_da_seq OWNED BY doan.ma_da;
            public       postgres    false    190            �            1259    17569 	   giangvien    TABLE     �   CREATE TABLE giangvien (
    ma_gv bigint NOT NULL,
    ten_gv character varying(127) NOT NULL,
    sdt character varying(15),
    email character varying(127) NOT NULL,
    mat_khau character varying(255) NOT NULL,
    ma_kv bigint NOT NULL
);
    DROP TABLE public.giangvien;
       public         postgres    false    3            �            1259    17567    giangvien_ma_gv_seq    SEQUENCE     u   CREATE SEQUENCE giangvien_ma_gv_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 *   DROP SEQUENCE public.giangvien_ma_gv_seq;
       public       postgres    false    189    3            �           0    0    giangvien_ma_gv_seq    SEQUENCE OWNED BY     =   ALTER SEQUENCE giangvien_ma_gv_seq OWNED BY giangvien.ma_gv;
            public       postgres    false    188            �            1259    17550    khoavien    TABLE     �   CREATE TABLE khoavien (
    ma_kv bigint NOT NULL,
    ten_kv character varying(127) NOT NULL,
    dia_chi character varying(1023) NOT NULL
);
    DROP TABLE public.khoavien;
       public         postgres    false    3            �            1259    17548    khoavien_ma_kv_seq    SEQUENCE     t   CREATE SEQUENCE khoavien_ma_kv_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 )   DROP SEQUENCE public.khoavien_ma_kv_seq;
       public       postgres    false    186    3            �           0    0    khoavien_ma_kv_seq    SEQUENCE OWNED BY     ;   ALTER SEQUENCE khoavien_ma_kv_seq OWNED BY khoavien.ma_kv;
            public       postgres    false    185            �            1259    17630    lienhe    TABLE     �   CREATE TABLE lienhe (
    ma_lh bigint NOT NULL,
    ma_sv character(8) NOT NULL,
    ma_gv bigint NOT NULL,
    noi_dung text,
    thoi_gian date NOT NULL
);
    DROP TABLE public.lienhe;
       public         postgres    false    3            �            1259    17628    lienhe_ma_lh_seq    SEQUENCE     r   CREATE SEQUENCE lienhe_ma_lh_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public.lienhe_ma_lh_seq;
       public       postgres    false    3    201            �           0    0    lienhe_ma_lh_seq    SEQUENCE OWNED BY     7   ALTER SEQUENCE lienhe_ma_lh_seq OWNED BY lienhe.ma_lh;
            public       postgres    false    200            �            1259    17591    loaidoan    TABLE     b   CREATE TABLE loaidoan (
    ma_lda bigint NOT NULL,
    ten_lda character varying(31) NOT NULL
);
    DROP TABLE public.loaidoan;
       public         postgres    false    3            �            1259    17589    loaidoan_ma_lda_seq    SEQUENCE     u   CREATE SEQUENCE loaidoan_ma_lda_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 *   DROP SEQUENCE public.loaidoan_ma_lda_seq;
       public       postgres    false    193    3            �           0    0    loaidoan_ma_lda_seq    SEQUENCE OWNED BY     =   ALTER SEQUENCE loaidoan_ma_lda_seq OWNED BY loaidoan.ma_lda;
            public       postgres    false    192            �            1259    17611    manguoncuoi    TABLE     �   CREATE TABLE manguoncuoi (
    ma_mnc bigint NOT NULL,
    tep character varying(255),
    che_do smallint NOT NULL,
    ghi_chu text,
    hinh_anh character varying(255)
);
    DROP TABLE public.manguoncuoi;
       public         postgres    false    3            �            1259    17609    manguoncuoi_ma_mnc_seq    SEQUENCE     x   CREATE SEQUENCE manguoncuoi_ma_mnc_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE public.manguoncuoi_ma_mnc_seq;
       public       postgres    false    197    3            �           0    0    manguoncuoi_ma_mnc_seq    SEQUENCE OWNED BY     C   ALTER SEQUENCE manguoncuoi_ma_mnc_seq OWNED BY manguoncuoi.ma_mnc;
            public       postgres    false    196            �            1259    17641    quantrivien    TABLE     #  CREATE TABLE quantrivien (
    ma_qtv bigint NOT NULL,
    ten_qtv character varying(127) NOT NULL,
    sdt character varying(15),
    email character varying(127) NOT NULL,
    mat_khau character varying(255) NOT NULL,
    CONSTRAINT "ma_qtv_greaterThan100000" CHECK ((ma_qtv > 100000))
);
    DROP TABLE public.quantrivien;
       public         postgres    false    3            �            1259    17639    quantrivien_ma_qtv_seq    SEQUENCE     x   CREATE SEQUENCE quantrivien_ma_qtv_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE public.quantrivien_ma_qtv_seq;
       public       postgres    false    203    3            �           0    0    quantrivien_ma_qtv_seq    SEQUENCE OWNED BY     C   ALTER SEQUENCE quantrivien_ma_qtv_seq OWNED BY quantrivien.ma_qtv;
            public       postgres    false    202            �            1259    17559    sinhvien    TABLE       CREATE TABLE sinhvien (
    ma_sv character(8) NOT NULL,
    ten_sv character varying(127) NOT NULL,
    khoa bigint NOT NULL,
    lop character varying(31) NOT NULL,
    mat_khau character varying(255) NOT NULL,
    email character varying(127) NOT NULL
);
    DROP TABLE public.sinhvien;
       public         postgres    false    3            �            1259    17652    thongbao    TABLE     �   CREATE TABLE thongbao (
    tep character varying(255),
    noi_dung text NOT NULL,
    ma_tb bigint NOT NULL,
    hinh_anh character varying(255),
    tieu_de character varying(127) NOT NULL
);
    DROP TABLE public.thongbao;
       public         postgres    false    3            �            1259    17650    thongbao_ma_tb_seq    SEQUENCE     t   CREATE SEQUENCE thongbao_ma_tb_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 )   DROP SEQUENCE public.thongbao_ma_tb_seq;
       public       postgres    false    205    3            �           0    0    thongbao_ma_tb_seq    SEQUENCE OWNED BY     ;   ALTER SEQUENCE thongbao_ma_tb_seq OWNED BY thongbao.ma_tb;
            public       postgres    false    204            �            1259    17622 	   trangthai    TABLE     b   CREATE TABLE trangthai (
    ma_tt bigint NOT NULL,
    ten_tt character varying(127) NOT NULL
);
    DROP TABLE public.trangthai;
       public         postgres    false    3            �            1259    17620    trangthai_ma_tt_seq    SEQUENCE     u   CREATE SEQUENCE trangthai_ma_tt_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 *   DROP SEQUENCE public.trangthai_ma_tt_seq;
       public       postgres    false    3    199            �           0    0    trangthai_ma_tt_seq    SEQUENCE OWNED BY     =   ALTER SEQUENCE trangthai_ma_tt_seq OWNED BY trangthai.ma_tt;
            public       postgres    false    198                       2604    17602    baocaotuan ma_bct    DEFAULT     h   ALTER TABLE ONLY baocaotuan ALTER COLUMN ma_bct SET DEFAULT nextval('baocaotuan_ma_bct_seq'::regclass);
 @   ALTER TABLE public.baocaotuan ALTER COLUMN ma_bct DROP DEFAULT;
       public       postgres    false    194    195    195                       2604    17583 
   doan ma_da    DEFAULT     Z   ALTER TABLE ONLY doan ALTER COLUMN ma_da SET DEFAULT nextval('doan_ma_da_seq'::regclass);
 9   ALTER TABLE public.doan ALTER COLUMN ma_da DROP DEFAULT;
       public       postgres    false    190    191    191                       2604    17572    giangvien ma_gv    DEFAULT     d   ALTER TABLE ONLY giangvien ALTER COLUMN ma_gv SET DEFAULT nextval('giangvien_ma_gv_seq'::regclass);
 >   ALTER TABLE public.giangvien ALTER COLUMN ma_gv DROP DEFAULT;
       public       postgres    false    188    189    189                       2604    17553    khoavien ma_kv    DEFAULT     b   ALTER TABLE ONLY khoavien ALTER COLUMN ma_kv SET DEFAULT nextval('khoavien_ma_kv_seq'::regclass);
 =   ALTER TABLE public.khoavien ALTER COLUMN ma_kv DROP DEFAULT;
       public       postgres    false    186    185    186                       2604    17633    lienhe ma_lh    DEFAULT     ^   ALTER TABLE ONLY lienhe ALTER COLUMN ma_lh SET DEFAULT nextval('lienhe_ma_lh_seq'::regclass);
 ;   ALTER TABLE public.lienhe ALTER COLUMN ma_lh DROP DEFAULT;
       public       postgres    false    201    200    201                       2604    17594    loaidoan ma_lda    DEFAULT     d   ALTER TABLE ONLY loaidoan ALTER COLUMN ma_lda SET DEFAULT nextval('loaidoan_ma_lda_seq'::regclass);
 >   ALTER TABLE public.loaidoan ALTER COLUMN ma_lda DROP DEFAULT;
       public       postgres    false    192    193    193                       2604    17614    manguoncuoi ma_mnc    DEFAULT     j   ALTER TABLE ONLY manguoncuoi ALTER COLUMN ma_mnc SET DEFAULT nextval('manguoncuoi_ma_mnc_seq'::regclass);
 A   ALTER TABLE public.manguoncuoi ALTER COLUMN ma_mnc DROP DEFAULT;
       public       postgres    false    197    196    197                       2604    17644    quantrivien ma_qtv    DEFAULT     j   ALTER TABLE ONLY quantrivien ALTER COLUMN ma_qtv SET DEFAULT nextval('quantrivien_ma_qtv_seq'::regclass);
 A   ALTER TABLE public.quantrivien ALTER COLUMN ma_qtv DROP DEFAULT;
       public       postgres    false    203    202    203                       2604    17655    thongbao ma_tb    DEFAULT     b   ALTER TABLE ONLY thongbao ALTER COLUMN ma_tb SET DEFAULT nextval('thongbao_ma_tb_seq'::regclass);
 =   ALTER TABLE public.thongbao ALTER COLUMN ma_tb DROP DEFAULT;
       public       postgres    false    205    204    205                       2604    17625    trangthai ma_tt    DEFAULT     d   ALTER TABLE ONLY trangthai ALTER COLUMN ma_tt SET DEFAULT nextval('trangthai_ma_tt_seq'::regclass);
 >   ALTER TABLE public.trangthai ALTER COLUMN ma_tt DROP DEFAULT;
       public       postgres    false    198    199    199            �          0    17599 
   baocaotuan 
   TABLE DATA               `   COPY baocaotuan (ma_bct, ma_da, ma_tt, thoi_gian_upload, tep, ghi_chu, diem, ma_sv) FROM stdin;
    public       postgres    false    195   5d       �           0    0    baocaotuan_ma_bct_seq    SEQUENCE SET     =   SELECT pg_catalog.setval('baocaotuan_ma_bct_seq', 1, false);
            public       postgres    false    194            �          0    17580    doan 
   TABLE DATA               �   COPY doan (ma_da, ma_sv, ma_gv, ma_tt, ma_mnc, ten_de_tai, ki_hoc, tep_bao_cao, ghi_chu_sv, ghi_chu_gv, ma_lda, diem) FROM stdin;
    public       postgres    false    191   Rd       �           0    0    doan_ma_da_seq    SEQUENCE SET     6   SELECT pg_catalog.setval('doan_ma_da_seq', 1, false);
            public       postgres    false    190            �          0    17569 	   giangvien 
   TABLE DATA               H   COPY giangvien (ma_gv, ten_gv, sdt, email, mat_khau, ma_kv) FROM stdin;
    public       postgres    false    189   od       �           0    0    giangvien_ma_gv_seq    SEQUENCE SET     ;   SELECT pg_catalog.setval('giangvien_ma_gv_seq', 17, true);
            public       postgres    false    188            �          0    17550    khoavien 
   TABLE DATA               3   COPY khoavien (ma_kv, ten_kv, dia_chi) FROM stdin;
    public       postgres    false    186   �d       �           0    0    khoavien_ma_kv_seq    SEQUENCE SET     :   SELECT pg_catalog.setval('khoavien_ma_kv_seq', 41, true);
            public       postgres    false    185            �          0    17630    lienhe 
   TABLE DATA               C   COPY lienhe (ma_lh, ma_sv, ma_gv, noi_dung, thoi_gian) FROM stdin;
    public       postgres    false    201   �d       �           0    0    lienhe_ma_lh_seq    SEQUENCE SET     8   SELECT pg_catalog.setval('lienhe_ma_lh_seq', 1, false);
            public       postgres    false    200            �          0    17591    loaidoan 
   TABLE DATA               ,   COPY loaidoan (ma_lda, ten_lda) FROM stdin;
    public       postgres    false    193   e       �           0    0    loaidoan_ma_lda_seq    SEQUENCE SET     ;   SELECT pg_catalog.setval('loaidoan_ma_lda_seq', 1, false);
            public       postgres    false    192            �          0    17611    manguoncuoi 
   TABLE DATA               F   COPY manguoncuoi (ma_mnc, tep, che_do, ghi_chu, hinh_anh) FROM stdin;
    public       postgres    false    197   9e       �           0    0    manguoncuoi_ma_mnc_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('manguoncuoi_ma_mnc_seq', 1, false);
            public       postgres    false    196            �          0    17641    quantrivien 
   TABLE DATA               E   COPY quantrivien (ma_qtv, ten_qtv, sdt, email, mat_khau) FROM stdin;
    public       postgres    false    203   Ve       �           0    0    quantrivien_ma_qtv_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('quantrivien_ma_qtv_seq', 1, false);
            public       postgres    false    202            �          0    17559    sinhvien 
   TABLE DATA               F   COPY sinhvien (ma_sv, ten_sv, khoa, lop, mat_khau, email) FROM stdin;
    public       postgres    false    187   �e       �          0    17652    thongbao 
   TABLE DATA               D   COPY thongbao (tep, noi_dung, ma_tb, hinh_anh, tieu_de) FROM stdin;
    public       postgres    false    205   ,f       �           0    0    thongbao_ma_tb_seq    SEQUENCE SET     :   SELECT pg_catalog.setval('thongbao_ma_tb_seq', 1, false);
            public       postgres    false    204            �          0    17622 	   trangthai 
   TABLE DATA               +   COPY trangthai (ma_tt, ten_tt) FROM stdin;
    public       postgres    false    199   If       �           0    0    trangthai_ma_tt_seq    SEQUENCE SET     ;   SELECT pg_catalog.setval('trangthai_ma_tt_seq', 1, false);
            public       postgres    false    198            ,           2606    17607    baocaotuan baocaotuan_pkey 
   CONSTRAINT     U   ALTER TABLE ONLY baocaotuan
    ADD CONSTRAINT baocaotuan_pkey PRIMARY KEY (ma_bct);
 D   ALTER TABLE ONLY public.baocaotuan DROP CONSTRAINT baocaotuan_pkey;
       public         postgres    false    195    195            (           2606    17588    doan doan_pkey 
   CONSTRAINT     H   ALTER TABLE ONLY doan
    ADD CONSTRAINT doan_pkey PRIMARY KEY (ma_da);
 8   ALTER TABLE ONLY public.doan DROP CONSTRAINT doan_pkey;
       public         postgres    false    191    191            $           2606    17733    giangvien giangvien_email_key 
   CONSTRAINT     R   ALTER TABLE ONLY giangvien
    ADD CONSTRAINT giangvien_email_key UNIQUE (email);
 G   ALTER TABLE ONLY public.giangvien DROP CONSTRAINT giangvien_email_key;
       public         postgres    false    189    189            &           2606    17577    giangvien giangvien_pkey 
   CONSTRAINT     R   ALTER TABLE ONLY giangvien
    ADD CONSTRAINT giangvien_pkey PRIMARY KEY (ma_gv);
 B   ALTER TABLE ONLY public.giangvien DROP CONSTRAINT giangvien_pkey;
       public         postgres    false    189    189                        2606    17558    khoavien khoavien_pkey 
   CONSTRAINT     P   ALTER TABLE ONLY khoavien
    ADD CONSTRAINT khoavien_pkey PRIMARY KEY (ma_kv);
 @   ALTER TABLE ONLY public.khoavien DROP CONSTRAINT khoavien_pkey;
       public         postgres    false    186    186            2           2606    17638    lienhe lienhe_pkey 
   CONSTRAINT     L   ALTER TABLE ONLY lienhe
    ADD CONSTRAINT lienhe_pkey PRIMARY KEY (ma_lh);
 <   ALTER TABLE ONLY public.lienhe DROP CONSTRAINT lienhe_pkey;
       public         postgres    false    201    201            *           2606    17596    loaidoan loaidoan_pkey 
   CONSTRAINT     Q   ALTER TABLE ONLY loaidoan
    ADD CONSTRAINT loaidoan_pkey PRIMARY KEY (ma_lda);
 @   ALTER TABLE ONLY public.loaidoan DROP CONSTRAINT loaidoan_pkey;
       public         postgres    false    193    193            .           2606    17619    manguoncuoi manguoncuoi_pkey 
   CONSTRAINT     W   ALTER TABLE ONLY manguoncuoi
    ADD CONSTRAINT manguoncuoi_pkey PRIMARY KEY (ma_mnc);
 F   ALTER TABLE ONLY public.manguoncuoi DROP CONSTRAINT manguoncuoi_pkey;
       public         postgres    false    197    197            4           2606    17735 !   quantrivien quantrivien_email_key 
   CONSTRAINT     V   ALTER TABLE ONLY quantrivien
    ADD CONSTRAINT quantrivien_email_key UNIQUE (email);
 K   ALTER TABLE ONLY public.quantrivien DROP CONSTRAINT quantrivien_email_key;
       public         postgres    false    203    203            6           2606    17649    quantrivien quantrivien_pkey 
   CONSTRAINT     W   ALTER TABLE ONLY quantrivien
    ADD CONSTRAINT quantrivien_pkey PRIMARY KEY (ma_qtv);
 F   ALTER TABLE ONLY public.quantrivien DROP CONSTRAINT quantrivien_pkey;
       public         postgres    false    203    203            "           2606    17566    sinhvien sinhvien_pkey 
   CONSTRAINT     P   ALTER TABLE ONLY sinhvien
    ADD CONSTRAINT sinhvien_pkey PRIMARY KEY (ma_sv);
 @   ALTER TABLE ONLY public.sinhvien DROP CONSTRAINT sinhvien_pkey;
       public         postgres    false    187    187            8           2606    17660    thongbao thongbao_pkey 
   CONSTRAINT     P   ALTER TABLE ONLY thongbao
    ADD CONSTRAINT thongbao_pkey PRIMARY KEY (ma_tb);
 @   ALTER TABLE ONLY public.thongbao DROP CONSTRAINT thongbao_pkey;
       public         postgres    false    205    205            0           2606    17627    trangthai trangthai_pkey 
   CONSTRAINT     R   ALTER TABLE ONLY trangthai
    ADD CONSTRAINT trangthai_pkey PRIMARY KEY (ma_tt);
 B   ALTER TABLE ONLY public.trangthai DROP CONSTRAINT trangthai_pkey;
       public         postgres    false    199    199            ?           2606    17701    baocaotuan baocaotuan_fk_doan    FK CONSTRAINT     n   ALTER TABLE ONLY baocaotuan
    ADD CONSTRAINT baocaotuan_fk_doan FOREIGN KEY (ma_da) REFERENCES doan(ma_da);
 G   ALTER TABLE ONLY public.baocaotuan DROP CONSTRAINT baocaotuan_fk_doan;
       public       postgres    false    2088    191    195            @           2606    17706 "   baocaotuan baocaotuan_fk_trangthai    FK CONSTRAINT     x   ALTER TABLE ONLY baocaotuan
    ADD CONSTRAINT baocaotuan_fk_trangthai FOREIGN KEY (ma_tt) REFERENCES trangthai(ma_tt);
 L   ALTER TABLE ONLY public.baocaotuan DROP CONSTRAINT baocaotuan_fk_trangthai;
       public       postgres    false    2096    195    199            ;           2606    17681    doan doan_fk_giangvien    FK CONSTRAINT     l   ALTER TABLE ONLY doan
    ADD CONSTRAINT doan_fk_giangvien FOREIGN KEY (ma_gv) REFERENCES giangvien(ma_gv);
 @   ALTER TABLE ONLY public.doan DROP CONSTRAINT doan_fk_giangvien;
       public       postgres    false    2086    189    191            <           2606    17686    doan doan_fk_loaidoan    FK CONSTRAINT     l   ALTER TABLE ONLY doan
    ADD CONSTRAINT doan_fk_loaidoan FOREIGN KEY (ma_lda) REFERENCES loaidoan(ma_lda);
 ?   ALTER TABLE ONLY public.doan DROP CONSTRAINT doan_fk_loaidoan;
       public       postgres    false    2090    191    193            =           2606    17696    doan doan_fk_manguoncuoi    FK CONSTRAINT     r   ALTER TABLE ONLY doan
    ADD CONSTRAINT doan_fk_manguoncuoi FOREIGN KEY (ma_mnc) REFERENCES manguoncuoi(ma_mnc);
 B   ALTER TABLE ONLY public.doan DROP CONSTRAINT doan_fk_manguoncuoi;
       public       postgres    false    2094    197    191            :           2606    17676    doan doan_fk_sinhvien    FK CONSTRAINT     j   ALTER TABLE ONLY doan
    ADD CONSTRAINT doan_fk_sinhvien FOREIGN KEY (ma_sv) REFERENCES sinhvien(ma_sv);
 ?   ALTER TABLE ONLY public.doan DROP CONSTRAINT doan_fk_sinhvien;
       public       postgres    false    187    2082    191            >           2606    17711    doan doan_fk_trangthai    FK CONSTRAINT     l   ALTER TABLE ONLY doan
    ADD CONSTRAINT doan_fk_trangthai FOREIGN KEY (ma_tt) REFERENCES trangthai(ma_tt);
 @   ALTER TABLE ONLY public.doan DROP CONSTRAINT doan_fk_trangthai;
       public       postgres    false    199    191    2096            9           2606    17671    giangvien giangvien_fk_khoavien    FK CONSTRAINT     t   ALTER TABLE ONLY giangvien
    ADD CONSTRAINT giangvien_fk_khoavien FOREIGN KEY (ma_kv) REFERENCES khoavien(ma_kv);
 I   ALTER TABLE ONLY public.giangvien DROP CONSTRAINT giangvien_fk_khoavien;
       public       postgres    false    186    2080    189            B           2606    17666    lienhe lienhe_fk_giangvien    FK CONSTRAINT     p   ALTER TABLE ONLY lienhe
    ADD CONSTRAINT lienhe_fk_giangvien FOREIGN KEY (ma_gv) REFERENCES giangvien(ma_gv);
 D   ALTER TABLE ONLY public.lienhe DROP CONSTRAINT lienhe_fk_giangvien;
       public       postgres    false    189    201    2086            A           2606    17661    lienhe lienhe_fk_sinhvien    FK CONSTRAINT     n   ALTER TABLE ONLY lienhe
    ADD CONSTRAINT lienhe_fk_sinhvien FOREIGN KEY (ma_sv) REFERENCES sinhvien(ma_sv);
 C   ALTER TABLE ONLY public.lienhe DROP CONSTRAINT lienhe_fk_sinhvien;
       public       postgres    false    2082    201    187            �      x������ � �      �      x������ � �      �   =   x�3���?� /]�1/C!,����NKc#SS ��H,sH�M���K���4������� �X      �   3   x�����t���8�@�ɐː�%$�5�21����Q��s��qqq �
9      �      x������ � �      �      x������ � �      �      x������ � �      �   T   x��1� Й����
�.Ђ!Y��7>�f���}��\��l����S�&�,Q�q.�5#U	V�Q4G�ٻJ�DD/��      �   b   x��1�  �����"Bd3�U'F(($T���FT��`,���k~�"�����͔4�l0E.�#����d�)0���F�-7��zY���	s�      �      x������ � �      �      x������ � �     