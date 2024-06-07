PGDMP          	            |            smartphone_data    16.2    16.2     �           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            �           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            �           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            �           1262    25055    smartphone_data    DATABASE     �   CREATE DATABASE smartphone_data WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'English_United States.1252';
    DROP DATABASE smartphone_data;
                postgres    false            �            1259    25078    company    TABLE     �   CREATE TABLE public.company (
    com_id integer NOT NULL,
    smartphone_manufacture_country character varying(50),
    smartphone_maker character varying(50),
    smartphone_model character varying(50),
    product_id integer
);
    DROP TABLE public.company;
       public         heap    postgres    false            �            1259    25077    company_com_id_seq    SEQUENCE     �   CREATE SEQUENCE public.company_com_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 )   DROP SEQUENCE public.company_com_id_seq;
       public          postgres    false    220                        0    0    company_com_id_seq    SEQUENCE OWNED BY     I   ALTER SEQUENCE public.company_com_id_seq OWNED BY public.company.com_id;
          public          postgres    false    219            �            1259    25066    customer    TABLE     �   CREATE TABLE public.customer (
    cus_id integer NOT NULL,
    product_id integer,
    customer_name character varying(50),
    gender character(1),
    city character varying(50),
    state character varying(50),
    pincode character varying(50)
);
    DROP TABLE public.customer;
       public         heap    postgres    false            �            1259    25065    customer_cus_id_seq    SEQUENCE     �   CREATE SEQUENCE public.customer_cus_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 *   DROP SEQUENCE public.customer_cus_id_seq;
       public          postgres    false    218                       0    0    customer_cus_id_seq    SEQUENCE OWNED BY     K   ALTER SEQUENCE public.customer_cus_id_seq OWNED BY public.customer.cus_id;
          public          postgres    false    217            �            1259    25057    smartphone_product    TABLE     �  CREATE TABLE public.smartphone_product (
    product_id integer NOT NULL,
    product_name character varying(255),
    category1 character varying(50),
    category2 character varying(50),
    category3 character varying(50),
    category4 character varying(50),
    price numeric(10,2),
    weight numeric(5,2),
    stock integer,
    discount integer,
    city character varying,
    state character varying,
    postal_code bigint,
    region character varying
);
 &   DROP TABLE public.smartphone_product;
       public         heap    postgres    false            �            1259    25056 !   smartphone_product_product_id_seq    SEQUENCE     �   CREATE SEQUENCE public.smartphone_product_product_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 8   DROP SEQUENCE public.smartphone_product_product_id_seq;
       public          postgres    false    216                       0    0 !   smartphone_product_product_id_seq    SEQUENCE OWNED BY     g   ALTER SEQUENCE public.smartphone_product_product_id_seq OWNED BY public.smartphone_product.product_id;
          public          postgres    false    215            \           2604    25081    company com_id    DEFAULT     p   ALTER TABLE ONLY public.company ALTER COLUMN com_id SET DEFAULT nextval('public.company_com_id_seq'::regclass);
 =   ALTER TABLE public.company ALTER COLUMN com_id DROP DEFAULT;
       public          postgres    false    219    220    220            [           2604    25069    customer cus_id    DEFAULT     r   ALTER TABLE ONLY public.customer ALTER COLUMN cus_id SET DEFAULT nextval('public.customer_cus_id_seq'::regclass);
 >   ALTER TABLE public.customer ALTER COLUMN cus_id DROP DEFAULT;
       public          postgres    false    218    217    218            Z           2604    25060    smartphone_product product_id    DEFAULT     �   ALTER TABLE ONLY public.smartphone_product ALTER COLUMN product_id SET DEFAULT nextval('public.smartphone_product_product_id_seq'::regclass);
 L   ALTER TABLE public.smartphone_product ALTER COLUMN product_id DROP DEFAULT;
       public          postgres    false    215    216    216            �          0    25078    company 
   TABLE DATA           y   COPY public.company (com_id, smartphone_manufacture_country, smartphone_maker, smartphone_model, product_id) FROM stdin;
    public          postgres    false    220   !       �          0    25066    customer 
   TABLE DATA           c   COPY public.customer (cus_id, product_id, customer_name, gender, city, state, pincode) FROM stdin;
    public          postgres    false    218   $       �          0    25057    smartphone_product 
   TABLE DATA           �   COPY public.smartphone_product (product_id, product_name, category1, category2, category3, category4, price, weight, stock, discount, city, state, postal_code, region) FROM stdin;
    public          postgres    false    216   �(                  0    0    company_com_id_seq    SEQUENCE SET     A   SELECT pg_catalog.setval('public.company_com_id_seq', 49, true);
          public          postgres    false    219                       0    0    customer_cus_id_seq    SEQUENCE SET     B   SELECT pg_catalog.setval('public.customer_cus_id_seq', 50, true);
          public          postgres    false    217                       0    0 !   smartphone_product_product_id_seq    SEQUENCE SET     P   SELECT pg_catalog.setval('public.smartphone_product_product_id_seq', 28, true);
          public          postgres    false    215            b           2606    25083    company company_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public.company
    ADD CONSTRAINT company_pkey PRIMARY KEY (com_id);
 >   ALTER TABLE ONLY public.company DROP CONSTRAINT company_pkey;
       public            postgres    false    220            `           2606    25071    customer customer_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY public.customer
    ADD CONSTRAINT customer_pkey PRIMARY KEY (cus_id);
 @   ALTER TABLE ONLY public.customer DROP CONSTRAINT customer_pkey;
       public            postgres    false    218            ^           2606    25064 *   smartphone_product smartphone_product_pkey 
   CONSTRAINT     p   ALTER TABLE ONLY public.smartphone_product
    ADD CONSTRAINT smartphone_product_pkey PRIMARY KEY (product_id);
 T   ALTER TABLE ONLY public.smartphone_product DROP CONSTRAINT smartphone_product_pkey;
       public            postgres    false    216            d           2606    25084    company company_product_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.company
    ADD CONSTRAINT company_product_id_fkey FOREIGN KEY (product_id) REFERENCES public.smartphone_product(product_id);
 I   ALTER TABLE ONLY public.company DROP CONSTRAINT company_product_id_fkey;
       public          postgres    false    220    216    4702            c           2606    25072 !   customer customer_product_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.customer
    ADD CONSTRAINT customer_product_id_fkey FOREIGN KEY (product_id) REFERENCES public.smartphone_product(product_id);
 K   ALTER TABLE ONLY public.customer DROP CONSTRAINT customer_product_id_fkey;
       public          postgres    false    4702    218    216            �   �  x�}T]s�0|>�
�w�A6�#I�P �R��

�DH��$���,�LK3ya�����̋t��j0�G�4e�p�h����z��j��l�i������w�t�VP��v���WV�h�"a�̋r�)��N��O@�$��{�ơS�-M!!)�ʭ��?ٙ���"�����I��Q����<bO�����H8'�ŋ^i�^��aE9�A��[�[��FâM��#�(¤,}EnE""2NP�j���|�VAw��_�	�$|S%n^xw�E��Q���` L�4�w���"��b_BX
}6
�f#�B�>���v�ql��o����k��0`m²t��Gؑ^��/��������.�	o��y����!�fV]��M�y�~��~օ�+N-:����czD�wᭇnP4Y����<�PB���o�m
��-�)�������i�:R�8yH�k��=�&�g5��%\V�����f�����Ӟ�+**�D+�\tfP����M;�w>@Ҫ,�!7T�w�=�=╽B�Ļ��c �l�.���"�C�I�G�ѱq�J�HOm�<�ю��V-��uvĸ�cV�V�*���7��,��F��YO�j�Q���V�����}��{>`�
*ǣ�Ga�V?TН���xƒGB��V��Q�W_��K�3:C���(c�G������*.�{V[:p���P�C���fn&��&�������xt�(����Q	���*z�      �   �  x�-U�R�8|�|��`���~4!�@�P@�=��E8�X�,ee;����#���3��ӊ)�'�Zq�մS���_��EqE�,����U��CK�u���I�Ӳ�2T��R��V*#�wh�V7��h��y4GYF�:m�⠍Ѳ��vc?���oZ,,��nw�}3�K����ME�Es���hgü��ȣ2�VKz�(.���-hA�򢏢��z���v�g� ����F_�\΀\w���5�U%�@�[>JߠQ����}@�)���9�C��ڪ�ܓ�U@�-��|٩^���ק�5U�COt�)���^~*4k孴� �$�/0}���aKi��,f1�ӹ[w����K�辙���,Hu����i������X��(���X�e+=dg�n;3v�cO�5ei�c]jl^aF�U��� �Ԇ��3�޺N��]^���/�wàh��$��0U�`1��^���eSS�ah�߭b'��x���pY���.k���|��
�������ӝ���N[�4� ����=�=wL�.��2W���� �V���L��Y�h7���1@�U��8;J9Wf=��q
78��\8���(0�	J�[�E+��*��v�@�
��	J��0�zB�fН��枒8-2�)�(��kA)���d��RW�?Å�sA����Q�@����Ͽ(��)qy�z���
�@z�����0^�O����_ `p:A��K��\�.Ց��i�-�/H|�P,�&�q'i�k���|�����v5�!My�-��N�,�>6�Mȕ�dLʖ3���&���t7i(ʙ��+E,ew��W�x�3�e:�"�f��Mk=4�
�=K�c��p��y8�t���n����+o�=�;%�v�ۂkvU-��k�H��a�z9��)٣;'[��h���*�b��XQq�d;�����C���������$��h��|C[w��!O��l%�V4�%��j��K\���E"t:DT0S�⪷c���'�`0:�-p�e�����f���-���˯ऐ`�E��Z�02�N&�V���Q�g\9G������mP@d�hi���F�`�l��h�Y/�-Ĳ7��!Ʒ�H��8�P�[��"HqK!�a�>i$�џ�����c=&|[\'�R��8�W���y�HY3�zC�����l�?�� D      �   �  x��VKs�:^~����X~{�@hӒ6$Ӎ.�M���&!��G6ئw��]���s�=�wLA��ZqB��5Y�3�K�-s�Ķ�����ќ(@�k��GɁ�QtE`��P�|`��ɳ�_a�lY�:/���Ȇ)���A�6%?d���m�,�"�5;'�J�V�����.H�v\��$��j�ı�+q��Ko���;^�B~-!ً-�i����|,�ٻ�����֠�'���� ��>�V� 0�_�S�y�9�\0B�l6�gH���rU]�J�!~��k���{:%��^o�x�cQSۇȰ���d�ǽ`���F�:BH�C5��7Q����f
%F���X
톥&Bed�� =u��[�ի:�G���lz�)�Z��L�̈3ܩ���cAP)1fR��B�P���5B�d"�q�agZ���W����CEp�)�p�bt��]�8��m��� |��S��?��¶��VoB��M���x�Z߁T�<$&q}"�uQd]���LmE��uv[�\�Ҕd�w\eðD(uV�T&�bG-E�%���	4�Z]o|�t�{{͹ҷ̅�Q�\�����M�unZ�F�re���Vf��L��4W���U=��E���:^c���ɞ�R���evg�1|/���E�Y��0��7Q�bnxCPT��:Aw�Q����XQGR5w7�rF�k`�<�C��f��+ge��N������^g�Q��͘�7�C��m���]j�kA��}���\K���j�y�Ċ�P;��Ɖyx���4ܐG<����6��I#$g��u0L��^˽&�q{k7g������"�jt��/I�7HN7R�X"Ku�U0Z��}�J����W����a�V��d):�#�C �yvd���{��L���e���d{}`$��_qG�i�quI��?<-\�3on�h�O��	������n4���,�     