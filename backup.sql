PGDMP     '                    s            deojsci64tlnej    9.1.15    9.1.14 !    �           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                       false            �           0    0 
   STDSTRINGS 
   STDSTRINGS     )   SET standard_conforming_strings = 'off';
                       false            �           1262    18396    deojsci64tlnej    DATABASE     �   CREATE DATABASE deojsci64tlnej WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'en_US.UTF-8' LC_CTYPE = 'en_US.UTF-8';
    DROP DATABASE deojsci64tlnej;
             uzkrccjtofebnd    false                        2615    18845    public    SCHEMA        CREATE SCHEMA public;
    DROP SCHEMA public;
             uzkrccjtofebnd    false            �           0    0    SCHEMA public    COMMENT     6   COMMENT ON SCHEMA public IS 'standard public schema';
                  uzkrccjtofebnd    false    6            �            3079    12027    plpgsql 	   EXTENSION     ?   CREATE EXTENSION IF NOT EXISTS plpgsql WITH SCHEMA pg_catalog;
    DROP EXTENSION plpgsql;
                  false            �           0    0    EXTENSION plpgsql    COMMENT     @   COMMENT ON EXTENSION plpgsql IS 'PL/pgSQL procedural language';
                       false    169            �            1259    826232    dlcs    TABLE     �   CREATE TABLE dlcs (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);
    DROP TABLE public.dlcs;
       public         uzkrccjtofebnd    false    6            �            1259    826230    dlcs_id_seq    SEQUENCE     m   CREATE SEQUENCE dlcs_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 "   DROP SEQUENCE public.dlcs_id_seq;
       public       uzkrccjtofebnd    false    168    6            �           0    0    dlcs_id_seq    SEQUENCE OWNED BY     -   ALTER SEQUENCE dlcs_id_seq OWNED BY dlcs.id;
            public       uzkrccjtofebnd    false    167            �            1259    18846    effects    TABLE     �  CREATE TABLE effects (
    id integer NOT NULL,
    name character varying(255),
    game_id character varying(255),
    uesp_link character varying(255),
    positive boolean DEFAULT true NOT NULL,
    base_value integer DEFAULT 0 NOT NULL,
    magnitude integer DEFAULT 0 NOT NULL,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL,
    slug character varying(255)
);
    DROP TABLE public.effects;
       public         uzkrccjtofebnd    false    2155    2156    2157    6            �            1259    18855    effects_id_seq    SEQUENCE     p   CREATE SEQUENCE effects_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 %   DROP SEQUENCE public.effects_id_seq;
       public       uzkrccjtofebnd    false    6    161            �           0    0    effects_id_seq    SEQUENCE OWNED BY     3   ALTER SEQUENCE effects_id_seq OWNED BY effects.id;
            public       uzkrccjtofebnd    false    162            �            1259    18857    effects_ingredients    TABLE     W   CREATE TABLE effects_ingredients (
    effect_id integer,
    ingredient_id integer
);
 '   DROP TABLE public.effects_ingredients;
       public         uzkrccjtofebnd    false    6            �            1259    18860    ingredients    TABLE     �  CREATE TABLE ingredients (
    id integer NOT NULL,
    name character varying(255),
    game_id character varying(255),
    uesp_link character varying(255),
    base_value integer DEFAULT 0 NOT NULL,
    weight double precision DEFAULT 0.0 NOT NULL,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL,
    slug character varying(255),
    location text,
    dlc_id integer
);
    DROP TABLE public.ingredients;
       public         uzkrccjtofebnd    false    2159    2160    6            �            1259    18868    ingredients_id_seq    SEQUENCE     t   CREATE SEQUENCE ingredients_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 )   DROP SEQUENCE public.ingredients_id_seq;
       public       uzkrccjtofebnd    false    164    6            �           0    0    ingredients_id_seq    SEQUENCE OWNED BY     ;   ALTER SEQUENCE ingredients_id_seq OWNED BY ingredients.id;
            public       uzkrccjtofebnd    false    165            �            1259    18870    schema_migrations    TABLE     P   CREATE TABLE schema_migrations (
    version character varying(255) NOT NULL
);
 %   DROP TABLE public.schema_migrations;
       public         uzkrccjtofebnd    false    6            r           2604    826235    id    DEFAULT     T   ALTER TABLE ONLY dlcs ALTER COLUMN id SET DEFAULT nextval('dlcs_id_seq'::regclass);
 6   ALTER TABLE public.dlcs ALTER COLUMN id DROP DEFAULT;
       public       uzkrccjtofebnd    false    168    167    168            n           2604    18873    id    DEFAULT     Z   ALTER TABLE ONLY effects ALTER COLUMN id SET DEFAULT nextval('effects_id_seq'::regclass);
 9   ALTER TABLE public.effects ALTER COLUMN id DROP DEFAULT;
       public       uzkrccjtofebnd    false    162    161            q           2604    18874    id    DEFAULT     b   ALTER TABLE ONLY ingredients ALTER COLUMN id SET DEFAULT nextval('ingredients_id_seq'::regclass);
 =   ALTER TABLE public.ingredients ALTER COLUMN id DROP DEFAULT;
       public       uzkrccjtofebnd    false    165    164            �          0    826232    dlcs 
   TABLE DATA               9   COPY dlcs (id, name, created_at, updated_at) FROM stdin;
    public       uzkrccjtofebnd    false    168    2279            �           0    0    dlcs_id_seq    SEQUENCE SET     2   SELECT pg_catalog.setval('dlcs_id_seq', 3, true);
            public       uzkrccjtofebnd    false    167            �          0    18846    effects 
   TABLE DATA               w   COPY effects (id, name, game_id, uesp_link, positive, base_value, magnitude, created_at, updated_at, slug) FROM stdin;
    public       uzkrccjtofebnd    false    161    2279            �           0    0    effects_id_seq    SEQUENCE SET     6   SELECT pg_catalog.setval('effects_id_seq', 55, true);
            public       uzkrccjtofebnd    false    162            �          0    18857    effects_ingredients 
   TABLE DATA               @   COPY effects_ingredients (effect_id, ingredient_id) FROM stdin;
    public       uzkrccjtofebnd    false    163    2279            �          0    18860    ingredients 
   TABLE DATA               �   COPY ingredients (id, name, game_id, uesp_link, base_value, weight, created_at, updated_at, slug, location, dlc_id) FROM stdin;
    public       uzkrccjtofebnd    false    164    2279            �           0    0    ingredients_id_seq    SEQUENCE SET     ;   SELECT pg_catalog.setval('ingredients_id_seq', 109, true);
            public       uzkrccjtofebnd    false    165            �          0    18870    schema_migrations 
   TABLE DATA               -   COPY schema_migrations (version) FROM stdin;
    public       uzkrccjtofebnd    false    166    2279            y           2606    826237 	   dlcs_pkey 
   CONSTRAINT     E   ALTER TABLE ONLY dlcs
    ADD CONSTRAINT dlcs_pkey PRIMARY KEY (id);
 8   ALTER TABLE ONLY public.dlcs DROP CONSTRAINT dlcs_pkey;
       public         uzkrccjtofebnd    false    168    168    2280            t           2606    18876    effects_pkey 
   CONSTRAINT     K   ALTER TABLE ONLY effects
    ADD CONSTRAINT effects_pkey PRIMARY KEY (id);
 >   ALTER TABLE ONLY public.effects DROP CONSTRAINT effects_pkey;
       public         uzkrccjtofebnd    false    161    161    2280            v           2606    18878    ingredients_pkey 
   CONSTRAINT     S   ALTER TABLE ONLY ingredients
    ADD CONSTRAINT ingredients_pkey PRIMARY KEY (id);
 F   ALTER TABLE ONLY public.ingredients DROP CONSTRAINT ingredients_pkey;
       public         uzkrccjtofebnd    false    164    164    2280            w           1259    18879    unique_schema_migrations    INDEX     Y   CREATE UNIQUE INDEX unique_schema_migrations ON schema_migrations USING btree (version);
 ,   DROP INDEX public.unique_schema_migrations;
       public         uzkrccjtofebnd    false    166    2280            �   r   x�}�=�0@�9>Hd;���=D�T�.A��z}��"����P~u�#�G��7��5#��Gy `�����tu�c�Hj攙B�>D7XY��٭�t:��Ľ�; �	6+�      �   �  x����N�H���O���ms ю4�+q�R�C��$��O��>;�l��S�Gw�_�I���rv_5eє	�x���&��=�\_�N����9^����T�U�o�u����.�M(IDB1�sL�8�ay���W�Q*�!�Ie�?�L�&�Ůx-g�Ŷ�t<ly��yL�چ�	K��_*h��!�Yg�ot&�П�k��Vh��M���6��������d�v&�gP���k���$[���D[�h����vQH������K���|h�]�w�w7y�\\�p.^�0��Z�h�Ʌ�3�����&�_<"r`�R�!�CR��.�LVeQ;.<ʥ��8�W/�wJ�O���e��P����l�m˺h��ޞC��)L�:�U�'���J/&߼��P�o�Z}���d8��2p�DN%�K�B�����B��z�P:Lm ��Ւ�_>�V�P].D�g�+��s�XV��֢a2MG�m��	2U�ِ�����N�T�y�����~щ�Qp�H��RF3<(yʐ�!�˦�ߟb�qKs�qpgP�L��eϳ��|�r����ڿ:�|2d�9tJX��k%�X�|�O7��j���]>�`!f)��Zrd�ϓ4��P�W��Z��w�>���`��0���lP��>��u	���v��D�''��6�9�|�2>(9��fC$��ݡ�/�j2����\P����]B���w|WyT�Jt<�b���L� ��H2$D4��x�T'$��NI�=�xx���;)���fW��#�3g ����N`u:#6���C�ګ��?��o��E�ÀT
���� >!����PzT{^�n<e���Q�0�`)P|Fr�G���>~��r�w���CJ��8�:�C44��]�n�	&��}�PQ��tPrx�͆hh#��pc����a�k����k$���B4t����d��1�OTc%��0�ǲ71Z�ߧ�ّ]Lf�b��M��c���Z���iU���>�=l��+,��)�2��JK/:	b8������W���O�6l��{Q��޵<���TE�#�wU�e�~�Οj^,������G�,�L�%o��K:?{��_�CW%�~)�g�/Ľ�
!�A	B��d�g��N�fH�0�#��[sJ��a�/��,3��(�b��T�=+l���U�� �2
���.b"�Y|�_�s;~?3a�Sh���J���+0uD�4�!���)T'͌�9pd�|�IG���j�f�B=����:F�T���D��uO=go�x��а�DJ�~��������^�1_o:���3 F{:@��awH���0�{��pbd0b��tm���2'
Q�v����#���a��:H7`mr*s� �T�D��q�a�C�:�����Q�8�65�8�.�����4�R��L-��R�f�-�t�#i$ˣ�	�S`y~���r��d 68��̀˞�,�Q�B\8���i],�_Z-���1�����$�t������Ιc��K�
�?�ĔEm%sE�Vť�����S+���R%)��yVr\ޠ2�w'2��X�{`0�2h�����-����pr�p|��������9�)+5*8yT�X���"\gwt|�?��.�!�e���J�^2�<�Q��e��ڃ��nm&���u{p��68o�1
�i�d��ۃqmA�lκ;��ٸg�[�M�N�cZ�G�m\���r�7��c��Ёb&���J1�qu�{x}k�����ÀT��F����#�F����}-tn/@���r`�����
!�?�p�      �   �  x�5�Iv%!��a�!������3{�@�gЄ�5�hc+�@�o�X�B�w����k!�-�������[-���Vˉ��6JȍĿ�;-�� �wۘ�f�v�P�*l)M-���2�~e18V�	�e�����d�Ȓ��!/�<���Ɓ��P��<����w�pM��.�^��^mE9�%�i����<ΊYPf!�7pP�ǅ:tLk�\�<t�DEԋX�k��Ll�� �6k	(1,��z����G?Mٰ򪢄��f�t�i���1�F�'�7y�1��R�)*(�^"3)p��M�����'�ə�Ɲv[�7�݀*^�����u�OӔ�/;��	Ty��7vS�}���×ʗn��I���E�I�绉I�$i�EY�2Yd���L&�������ᆪNQ)Hj6�S�	�}Q��eK�<��V��w�HTf�\�si[�\q[Tcp6E�WT���5�D���y��ju���0RTU�a�*�@9�����U<�#pt�9�;,�)-�F����$swb���8��y;pDDش�I� ?�l�˔~b�vъ���v��J�P;���N�G��}�&#�ԫ��ow"dM�զ�lgRd�"�"��lP���t'Qۈ�D�YTȏ����3�\A!�ħ��Pn����DJT��d��)ʤ���19�Ƹ�"�<��ee��j�h.�=�}xG�^T�Zq;�E@��)����r�������^����^�{�D^�'ʁ���>�v�������*��d�aP^�����\�&���
��WS����M��Y�'��w��[Aٗ�Y���+^���VtW��v�N+���-hD��my�E%�:�-����%�_�[n��.�(�ʏI�Z�e�֗���v4zǻ��a{XÃ��}��xA�|���a��g(z��l������1�p=�70a=s�������_���.f����[����p<3�Sާ��^�����gc=Ϫ��k���	r�      �      x��}ے�ȑ�3�+�rb�f��I-�.�4֪�3ል`�"�i��8�ן�T �#Ϯ�Yoؒ�L2��Y�g�,��n���X6[����X���8a�ֶi�/~��x<�d��/d��1{�~x|:U��#�`=˹w���E����Ifnj��/y�x�~�Qx�'���v�vD�/W+����n��~-��� ����ë;��Sj[T�>ҟ��h�(셴���
��uU������e+ki�KkQ��^���^����J��Rԍ]��7"������,6�Ⱥ<��T���V��ǘ|���⫊��~�R_q�f��9ѧ����/︕��_���huo�ߥ��j+ա������(�D^������Z!�3�y��C/
�K?-�%�-�d&�K.q}�ˈ<����rq<89 }���&G2�-��\6�<{��{�$��Φ+�j'r��Y��%��_�:Y�<�˯�&��5��6�b��˺.wt�Nz�=��L��O.��11_���;�ϳ��j�?z�p{�GY5O�$���b�D�d�sg�/���y/���;�� #�<�de�g����X=��ПD]�/�MYm�6�����.P@ 0���V/L,��5|m����fۡz+�Cf3�G�w&��֧2�a-y��s�p���?��3������8��O{�4[�K�2���ɠ��WWIa�_�(���N�2�H@�ϖOrugg/��$�
N��VR��ۈ���Έ�uRTD�����am �
X�Z)�O��U*3�\���3�V�{��]��D� ��15/rb��l`���2�t���SUJ�"�6;�0p���@��H�E�t�6e���=0
��2j��-J�x[�������qÖ��].��a���s���O�ߟ9��qm'y�/<���;��z&7����]��@~��5*�`�5 Z6�����a݀*x<���?�+�UU	4��'�_E�Ľ�O
��x�_3	$pd�-�4�E���%i_���*�f�0$+[�uGi�i�~�	�*�e�uk�MJگޑB��7{y�D�v�dy#'�?�v�8dyco��h�zZ�>���_�=�//��G@Y�$���?g�S���C]�f'�b7������Ȑ�zYo�W��{�U~�C��]��`�/�+�)0� >'���V��>N��K/�$��l��fK��/J�7+�w�z�J(v��2P��D�Wh[�BɁbtjY�Ʉ��f��u���7D�b��2��V�ѳ����l��qh�l%�k��V���ATUy�S�7[�.B��3h�m�'�cV����G������2������Hv��;4�*��@��f�{3Kz�З8��~ė~B�n	��WBw���ҙ�(��ân�q�FP�U��@?5�`Qs�(<�G�`��vP��ɑ��uW&�	�	���N�c��#h��ʱ%G�_�y}N1w\����
L4�JVĜHzѭ̑Ŝ���N*�3~�I��|�A�= ��)�3�Qϲ�gO ��	�DEc:3���%��%�g=�pҿ�'���M�E�9��v�����)�CS?- ͬA4��.�52���Wc�>TY��r!�O�* �ϙ|�;��B�������Dd$���2ci��3?�=[oK � oAѓgDW�z8TEc?�A�m���R����Q�5�9!�D����1����@��Z!���B��Oz��GZ_����t9���H+��"``�����蟺���k��z_0�
*s�aN�)��߻^�ɥ�$c��#���"ǾBm::��i��H�jp/�ӵ�k����_$���:�d���HZod^� ���� ᑶ�r�ܶ;�9���(����I=�I�1��i���G����=�e���_Z����"�V���G�3`���K�<�4�z��i��c�(NG����2N��5�*�W�Ly]vkD����������i�*��3� ��� ޶��U�1Y?�4{���n�hZ=���#'M��b�Ke^oV�i��(zV���6��c�d�a�QG��a_���-@��W�����V�Ur�a4�CNlk��t8ksz�M��# �s.���A��8�by)h0΀��"���KFݑ����{����Y�P4�#J.�F��|�g��`2-�n���1i���_�7�.����X�%�5��6j#����H���h�Ԩ�j�;���Bl�j>1�
,��w`7HL�L9�J����<D�P�>)����$�L���������Pe*!��$��}-AR�7��a��֗J����ǹ�38Bps�so� ���u�ڟ�;��E�t���6�X	~6B_�@�� O��C���f����\A�C�D�u�{�	"��B.%����uVX@A'������k@��y@ޙ��N��_��\I����v������ȋS��l�+d�U)�)��N6
���‡x.O���D��3�12JQ��8�1"t%1��b])]��y����B��}*��C}�FXD�F��KYȂ򃭿r?E�-Q�}@�10�Ċ|	�'��*�����;p�P[��ű�P�,��e���0s��7Y�޻n�8�(�B7|�Z �ْ�Ҳ�C�)�s�<І!�܊ǧ����+P��&Z,9�����LJ�n����P*>�?��$�����8N�%��6�*q8�E�)�5ڋ~+o��+�l�vF��l���t�lt��V��-���s�O���S�~�����S�E�$^ӥ ��;��/.��:^ Ԝ�B��@��|/<K}�l�h̕��������B�pB�x	�/���1/P�*l;uza;�5���ӿ��H��zȥ���+�(r�`%���JF7g8���i���t��q�&�q�쿅B>[����j}XJB�z�A~K��E\'����n� y��
��2�����k�o��u�0�U:/ӕ[��U�|GV2��Y�喨�e�S˪�$�A�@�7io���}''w���O��"Pv�$C���si���Cò�~84���uQ]P$��Յ@DK؃���7�:��	� -̩��\U4����R[��w$�7h,����K_
��J�X�Ŭ.ʣ2��
+m0����9Y������uz�����<��ʞH��H�:�~�[	�k0'��O2X;�3�ħl��<��v%�F_%�>��J�����ڽ�ҕ�f�D	�n~�MS<1�O ��~_����A#��q64�12�->6GX�����J
��ȉ))����P,�y󬚇��(��qŁ��X4�x[4Q�NY=6���OݠLº��F�V��Y	��⇳P���9�7Q%+¯�Baǖ�Bbv�^1ϊ6���0y,�?�\�?���d�,�mc��z�s���������J��R�9�`���Л@�2��HTFs��I [cHf;DҮ`�2Ї�X=|��d.��C�X�5\�v��m�3�E.Z�|��OUF��!~�\���<�J��XE7X�4g�.<zF@�4���i��͊�f[Bd���Sz+>b����Q�t鹞�!h!�@˺�ć����8��rU�Qj3��[�}+���VQ4�%8�c�^�`���3�� ������R��u��l�d������W��j�!m�by=�C0Z�Xi��P�xI8��#ߋ@�,/�ֺe�eѩ�hl�����6�ڸK'{�*j�Q�7��؎�D��2���V=|��͝�1���=��~�������}v1��O�7�6�����{,�9`}&	A����tU��}W����B���$���e+
��^tCDA�����IqzN4�Ip}�߬f|�-�.�q�#W��1��_T !l,@��<`����j�q� d۽��Q)&|�=F�Cu�	��.�/e�U��k���e̶��m�U��|���J��-��;
#�6{5�-l�Q���B�ˠ���ؿ���'�q���(�\PD���!�    ejqgF�8�ů�,�3F���"{����G�ʬ��c<�^��!�0ǘ�XOJ����P��JX%F�;�M��B�n1�zgk����V`�x{ \v���2��9���Pխ@e�_ŷ�JX[��M��qw5�D)��pq�ko=�RϪbU%t֢�b��Կu�-4<dH�:/�*Q��zbč5�M�������uӅ/�<L(�fҴ�^%j�l����܁(��X�b�JM�V�(���ĿN�^�t�q�M1"v��+��W\"Y:���V¿qH't�����ξ�����~,�G3�w���8�L�4�n	���n�ݿ��|��M`��{~ʪ�R��"v��=_
r�B>K�a�O(�8H��L�g�F?\�J�pͅݜ����_GSr�Ēu�������z���t�iĴ�hJ�&��T�f;**����SB�0D�0�S�թ*WY�-1뺒�@�:��^���w�n�s�Ol�@R܋�/
k�1������ߓa�;|W���-�:�&��aBN�� �n�q����=�}ߞ�s��B�S�s'��5Ci2�v(�����q�y^�Z+B�<Js5g.e�c��u%�%��~��
e	���/[�� �GC��@�5H���mzP4L�G�J�,(�F�Y�U7E�ܩ��d߶�8rKn�h1x��w��ȳ�c�?9��J��G�=*�������	Ʃ�r�D�CTx����>��%�B1��}�Y�Z�1���9_B7Z^�G�@���8p�h� ����Z�h��j7R�Ӛ�o��(���.p�9Ae�)|>���7�|���,נ���t�Suh+�~�,�Ğ�A��pi���.׳�H�}���I�qj*�8\��=Xf���y����oM��z�%k��]�{��N�����J�ߨ�~����D��әp�Q;�F�q����G�q
�虜���.��x���W�UG�;�đG��1�J�d,exԿ�<4%x�@���w�'q��R�K�%���Nm�F�T��j�fR��%]�s��0��z�_��(`(�k]������Ϭ 7,�� �k��}�5�;U�E����VP"
�	ʖ�\Y�^`��n��z���-��{ΉI/�b^��'[����{ŰRM叱�m���(���1��� f���F��B��\G�;OuW�Y�V9}�v�[��S���d���&U��2@h��)"X]~�ؑ 6�6�/�~�1�8���ǧ	d� �t]����	�"PJ�;s4��F���;�]&��{P��d���=��+��Ez�Y�-8I��c��}�+p�}�o���o"�X��d�#���;��D��pTT!)�T����ىi��>�&�����D�~�
�<�.��% �y���!���%�M��8u�Ē'9+׳�ϖ�^W�V�Bg'G�xF����;���݀X���s�~�Q��6W�\��+� �54�B��!u�Ka]�\�mЉ��wi��oɓ�7�f�m[�<��ޙYW/�T�K�80����;r7�©Zm��.N�	�5!�3׭��Fՠ�S]ٻ�|(Gk��p|(PƏ�IF
qP���� qC�$��V�J[�%�� �dWwJ�R�@ENt��̸�hWl�i�Xo���"o�0�����3L�L�"�%Ʉ��$1����B<�2T孡�X��4��ewm��9����d��1�����|,�j�ӿ}�b�H�������)h���ТZ�(�9�Z���{Q�������Sm�|��ӽ��Sq��R%�w���ʝ�������;��hP�!Lj�jddwj�2�܉"k���r�۞ 4�@ϐ�iA�8�� �0�(bce�r8ظF�V�Xg��FM��J9*��� ��m�4�]���i�]YfZ��(9m�Pe��j�~����A��������Xb�?fU���6J�;c6�`ϨJ�Н���i깞�FԳ�B�[�
{ �U==U�8���!����҅ld}MCV���ص��2gXP�q��%P���;��N$�;6)�2�G��7w�6�\���[�#�vX�=m��[�Xd���ѓ���{�b 죟��޽���?Κ�	]?R�QR�[˔���3J��**	�@Tҿ���r�΁����W	���0=���ͺw�m��UY,K��k�؎U��&	���-�Yu���Q=�^�n�e��+�k,>'��c�u���'�#i�#��D��������H�����0oM~ӼoM���6�p�ѱ���ׁ�}��}�+3>d8�
`d����\AMFG�{ �3Qq'��᳜1��iK�TE���ж̪�]q"�V�k|�7��"ː�f�r���E���H(6�u�utf��:�\��n3S�.����T��(�&uL���*(�lk�${��;U	x[��F���%�@,+��{R��0� �&c��nK���N�i���m�g����
�)��F0T#�XFc�}�Vz�2���0Pj���:�,}��n�;�ԣ����7���:��l;k1��}�䞕�=��_�+Y��c����Zo1�
�P'\���-��d�l� H����%�[X�0[!�v(%ty���N$��\9g��ѭa�旬޳N�?�Jՙ��N'���J�:N�Ƿ�u�����yb�g&~��b���+l�5�C����-l����z����̂S:7N�����s�����~<��N|/L����m���r�)�R#�O�iGO�1�W���Kq�e��WM��:r��J��3K��:7�~lux0���[D�cw�����?Q?��qdu�v�uc�0�&�Y8zh�);zh�2�[�Y��#����U���b���$nK(9�=PJ�/RU]�-SYԒO��30�ڂ�ƞ0L��V*�NW��R����5��<�[�Ĳꊛz�c?�މME}�����(�^a���-Ԝyu�Q?J����ΰQ�V���.�s ��o�C�N�P��K��w0<��\����Tj�h=T�K�7�j�Aj����幙߷����Rθ�ie�lO;*��[��t���e}za���v��<��ӓ0NqP���̗�4�KM�w��(�5��oY����v�� O`�[Ѧ�0�M�kĜ���.ķ/
�A�w��+p`'��E㑀ma���WA�*��;�x�P�C�N?a�aJ�b�y���3��)�k*�;�8��JQ*Ƀ"U�N;�5����0KOj)w�LZ��$��i��{鏭�J4�����N�r��H��g�9(�L+��In6��c8��pv^��f�i�u�c޺4o�~����e,��[��t�ũ3��?r��:[ �v�E��0���kԖ]e�`F̇��8!�7o�>��p��w9�$z9U�������R��0|)��n�k��A��g�h���z4��x�\�s�&Q8!�S��a��V4��7��l[Q�\`��3���=� <t�j�5M5�Mao3���-)j�Uuj���p\�[�@B�{]�y�,����Og�DS����b��Vc��+�J�o����Ue�+��R� �h�
k�jv���~�d|
���t��M��X�-��H��`����v�W�ئ�T��02�⏘P�ֻ�>�)����v������Y���S�7@J!�ٚ�4:�W�^V����>��r{(�H��@��E��;���:��4&���LRa�Z����@y8E��qe�@�򖰫���d�B.�w� �q%�jX.��I�M��,1�D�g/+lb��[`FɮŲ�8��(�`x�rj�|�������y��@��T+t���e���ε�ԍ������W�l(jy��E�֎+�o��omU��M��K2x�)����?Q㙆���2�6��6�Q�������^Ϭug [�8���B}�mF�vQ�y��VU�i�ᮗ�즃�+���:�,VB�[�����B���Y�s��3�! ��;�K���;�#a�Q���A˓���0,���{���so9��McS~ǐ@��(�u�_��Hp;z`��܈��ڳ�ҿ�U�U�O�Y�f:�:���Y;��\.l    ��n�����<��"@�
���C�}Ju�����@�Z�n?�	m�&�up0x���V�ƹCݻ��	9`+�U�s*�m%��g��ep��0�\���ކ="���"'�~%�8�1��G�5��b�p)K큰�0���N��kVhP
ƚ������4�w�������Uȫ�� hB3'�M��б�z(2�����J1'�4�[����a�8�ұ"\�^��X�2�b�p�,2�W��7��Q�b*<*���DCz9`e꛵(�&Dހ�C-�F<�G�f�Ȣ�xP��k�����{Y4�r�����Q!�������d4��l��2�h�x9��O�B�6T���_K����?�%đ��Fl�b�%��Z��_{�Ϗ��*��1p��V>t~×�e�C��I�<�����+o�x=9���J��/�]V�ί`����A��ɻud-g~u�����v� \z�����0�A��܏�$q��
�Fn^��J;P��,��P�3SA�$UD��Rb����l"|�Z�+o�NS��mR;!ݝ���9�u�������#7H:<��z���G>#����3:;�� P�V�qsd����FQ�1m��Y��-�=J�*}���ah����c�˝��[����¼O��:e�!�=u:��seLg�D�C^
�ҏ�u�4�Q�c\�\��XC�x�p9�*��u�"̜a�K�1-�V��bЂ�������t�`S���PW�q"aPN1t>K�t���4���߶�׬i�K74
K5�� N�`'�6�����|�4�e_#ܼ�.�8�`,b�4�q�v�ΚWI���m�hڰ�x�w��`s���8��n;Uǂ�v�PI�~���|�ڗ��?X�Υcd3g�����s9�'�üT�숬������M�&3�v0�\�y��Hc�m�v���{֎q͖�������)#a��n2�����V����>�7�ҁ��l�}�tN�+&۰�����ǟ��y�ן��U�}�B3�$��V,��;D�<�~��:�?�����+EE�w�Q)��Ȑ��~�W[.�\��V36��>�.Z祖5#�i�m�s&�l�V�@)o�3�Lr���"�wy\?�" u��{_�c�]�$Ϡ·���O��с�3�oT���:<}I�Y��ö��'�����fi0S˜����za�t�/�b� 
��j���p2��x���f�n�x�̓��o����6�QLX`U{%��|M�B6Gl�U��ڦ!�TĴ������=����tv,P�l�b�K�+\��g�p��\V��!��	���LA�g�|��A����{B� ԽGT���{'s o`�p���l�
��!٫-���w�b3/����w�
F3�wF�9A���Un�wV}y����k�#�����Rg�����"@n'tFG��8A����u�(�?���ip���c��{}Ye���lJk��˶X���� E��ޑu�z\�M�\��>�n��2�UWd�	c�S�7ű�Ba�pã�^���[�ꄙ,�j2�P���7	�l�@�K�3j~��/������A�������!\4Sn�(f��icg�$��Y�җ%?��}��<��	n�CA<�=`�ɷӶ��j>4�e��3fIQ} ymԘ�>%먶�c�����ܱ�=�5_˟F<�O�qE�����d���/h�W�m�~�ȏ�񸇛��?߫W�v�
��st���CM��7�o��'o<�;4Ɉ��|��}���ĥ
8�����((�\���f���{�ڹ �1�%�OZfN��'60'��� d	���a^'n�K]�	�ƳT�q8�}|�g����i�$��Wf�j/t����h8c
t�쟍ё����Qd}��<�%�&|ƃ�����x�D�s�0,:���0��;�|H��6P��z*?G�F?��Ap�#��MU��6_�0 ftc��B� ����g�h�@ӥ����Mӱ�4�<�	7�(�3[&c)fr�w���Z���i�S�zb����P95Us4����y�&����0J����[��'�r� �Xyh��E�~�;  ������;7�p�� ���3snT�֞av�97���=7(�ĺ������K�7ŕ�4�.���F��J:|=�؎p�3�3DzDє�� M�v�Ӭ!�������S�pN�s�8=oz�Z��7��\��ۯʦ�{lj��N���~{���YL�m��)�F��^�r�C�9��|�p9M�	&�A"��f�G����x�����5X%إ�U��U�eL+����=��0�����S���IJ�nr�i���P�291�����]��Nk`#EǇ4+]�6��iz��A�:�;d7o�&�ixCo:>������W%��^��/I%��>[���ᛓf�9Am�PB�ЌQA�q
X$�/���� �b�y���h1��J�W��xF�k�O�gq��|>�j����DC9g�KfS���xԋ��u�m�'lÅ}���f���~�������4���D��|���ۥiF�h+�������א�Dssqg�L���c9���� W�����(�#�),��M&zl��N�k��@O��=�{�/�/����v�WV,��I�����W�f@W��,!.8C݀���ʬ �r����Qsu:z�eQ���∷����P���K�x��cN�HV����z��JF�3�Q��e���b�cVm�'3�l��jU	a��]����,�)V����a�H�x�k�Cv���la�[@�g���~��9���Hk�����i�kIXng������ ��_�:F�f�jh��FA�|�l�ԟt��M������uW���gu�yU�Z������G�r����%x{�K%c�A3t��j�̋e֨�dZd�؛F�Lު��P�Y/��&�ދ�j�8�z���9�~��=�ؿ��Й�N�0N�͈�-��Ns�/�A�F�o���+�͟��j}U��~`�����ҽlXK>�r^�Ǌ�F�3��.����<g�n<aŉ����4v��d}[����w�;���=��酫����1TP�&��ps�����+�~~�ZZ5N�Ǣ<.�>w�/���M������w���|@��=��ߓ�:}x���'�ø�M�~<�Ь�F�߂��ް���� �����{ ����$�{n�Ν`I��A?�Lt�F��u�%m}���f�땙ĩ�Ȇ�2S7to��C��3�uR'���d�q�ҟ�~6��eM�{������n��Z@���{��˶ׁu�U����d/x�~FN�����e�K��@籡6�Q�I�Ki���ph�4�1�6��Ӄ`ў��kpB�H�n�m6��G�'��/nU����>��^���8�I#�<��Հ�\]o|���� �fZ��Y�w;,�*�y;��`���Jv�~U[�Ef�����Z��#ֻ��^�ho�g��&�ݩ���:�X�ܫ.�����w�o`׊\Ϙ�nq�b��3$����I7J�}8ߍ\Ƿ�.�ٚ�ь��ºQs�m��`����<n��d��[�OQ���A����X5�� �ĳԦ�N���P���6�&��T8`����k5
�B�f/p�������ꊩ����U<+�}3�����\ԗ=S��GF5þ�Z�g�{�Hc�p�[�[_p�K��:���?���
n���Qs����da~��0�si�˛�<��7�v�=��$��H\?/F1qp���S�`x�ƺw,t��g���3]��9Gt`�+68��o�e�)�zq���H��nX_J�(���WV�7��p�p[8W��a{:q�:�=p� ����F>X��Z[���p}�&��[2j_��8��/%���[����S�v���p<�T�N�i+Y��c'�9���Ӈ�{'E7!Y��	"�A$�5 iW���!Q	۸8��`@�j>��x����a�֗շS/ѓ�Vtq.Q;����*A�ᒺ��u��^j�`sv�1	�]7
Fo� r  ���s��l�lɨ{�c�<[%��݂����y�2�z�-�J*�"m�����Ӗƹ�.�Q����V�w4��M�����=)��,8����CU��oD�QA���ή�;�d����[?�9��z?��RC�o6��w~��"���M����{��c�Q�N׳�I����r~�K��;	�<�T��iFd/�s��t��̲i����#���<�-��Ka�@���_.��s��O#�ܳ�x7$��e���V]��!����Y[!�ǯO��*׏���X]]ҭk��n_�xq	��j7����폻�d����%�B�����z���b#�ܔ�8��ywoIb��G���vbR�5���/ O��s�,�[���̓`o�^����/��XGBI�y�Tw�S+�U�����<0%1��.��.�q�c��<�:�SL{�i��т]Fw�b#"����X���5u,U�c3�m{ݤ!�9��:
(��^:^`�y��Z�vM#=���f<X&�"-�[nܚj�}ȥ���������Ե���Eɚ6�u�� ���͙���s�ȟ�~�®�8QM��аL�q��Lo��.��^�Og�Ge���̦Zĝ�rc�\��u��w��_z��n      �   Q   x�U���0��A�כ���	ϑ|$�s�}TU]L5�b�sL
�@0�t���	���vf>�3�{�96zvϣ�r�!}     