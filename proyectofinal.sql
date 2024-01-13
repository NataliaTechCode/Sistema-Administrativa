PGDMP     %    5    
            {            sc_doc    15.2    15.2 �               0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false                       0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false                       0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false                       1262    49538    sc_doc    DATABASE     y   CREATE DATABASE sc_doc WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'Spanish_Spain.utf8';
    DROP DATABASE sc_doc;
                postgres    false            �            1259    49539    atencion    TABLE     �   CREATE TABLE public.atencion (
    idatencion integer NOT NULL,
    fecha_atencion date NOT NULL,
    idestudiante integer NOT NULL,
    condicionatencion smallint DEFAULT 1 NOT NULL,
    accion_atencion character varying(500) NOT NULL
);
    DROP TABLE public.atencion;
       public         heap    postgres    false            �            1259    49545    atencion_idatencion_seq    SEQUENCE     �   CREATE SEQUENCE public.atencion_idatencion_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public.atencion_idatencion_seq;
       public          postgres    false    214                       0    0    atencion_idatencion_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE public.atencion_idatencion_seq OWNED BY public.atencion.idatencion;
          public          postgres    false    215            �            1259    49546    carrera    TABLE     �   CREATE TABLE public.carrera (
    idcarrera integer NOT NULL,
    nombrecarrera character varying(100) NOT NULL,
    condicioncarrera smallint DEFAULT 1 NOT NULL,
    iddepartamento integer NOT NULL
);
    DROP TABLE public.carrera;
       public         heap    postgres    false            �            1259    49550    carrera_idcarrera_seq    SEQUENCE     �   CREATE SEQUENCE public.carrera_idcarrera_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ,   DROP SEQUENCE public.carrera_idcarrera_seq;
       public          postgres    false    216                       0    0    carrera_idcarrera_seq    SEQUENCE OWNED BY     O   ALTER SEQUENCE public.carrera_idcarrera_seq OWNED BY public.carrera.idcarrera;
          public          postgres    false    217            �            1259    49551    departamento    TABLE     �   CREATE TABLE public.departamento (
    iddepartamento integer NOT NULL,
    nombredepartamento character varying(100) NOT NULL,
    condiciondepartamento smallint DEFAULT 1 NOT NULL
);
     DROP TABLE public.departamento;
       public         heap    postgres    false            �            1259    49555    departamento_iddepartamento_seq    SEQUENCE     �   CREATE SEQUENCE public.departamento_iddepartamento_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 6   DROP SEQUENCE public.departamento_iddepartamento_seq;
       public          postgres    false    218                       0    0    departamento_iddepartamento_seq    SEQUENCE OWNED BY     c   ALTER SEQUENCE public.departamento_iddepartamento_seq OWNED BY public.departamento.iddepartamento;
          public          postgres    false    219            �            1259    49556 
   derivacion    TABLE     h  CREATE TABLE public.derivacion (
    idderivacion integer NOT NULL,
    fechaderivacion date NOT NULL,
    remitentederivacion character varying(100) NOT NULL,
    destinatarioderivacion character varying(100) NOT NULL,
    idpersonal integer NOT NULL,
    tipoderivacion character varying(100) NOT NULL,
    condicionderivacion smallint DEFAULT 1 NOT NULL
);
    DROP TABLE public.derivacion;
       public         heap    postgres    false            �            1259    49560    derivacion_idderivacion_seq    SEQUENCE     �   CREATE SEQUENCE public.derivacion_idderivacion_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 2   DROP SEQUENCE public.derivacion_idderivacion_seq;
       public          postgres    false    220                       0    0    derivacion_idderivacion_seq    SEQUENCE OWNED BY     [   ALTER SEQUENCE public.derivacion_idderivacion_seq OWNED BY public.derivacion.idderivacion;
          public          postgres    false    221            �            1259    49561 
   estudiante    TABLE     �  CREATE TABLE public.estudiante (
    idestudiante integer NOT NULL,
    nombreestudiante character varying(100) NOT NULL,
    correoestudiante character varying(100) NOT NULL,
    identificacionestudiante character varying(30) NOT NULL,
    telefonoestudiante character varying(30) NOT NULL,
    condicionestudiante smallint DEFAULT 1 NOT NULL,
    idcarrera integer NOT NULL,
    idtipoestudiante integer NOT NULL
);
    DROP TABLE public.estudiante;
       public         heap    postgres    false            �            1259    49565    estudiante_idestudiante_seq    SEQUENCE     �   CREATE SEQUENCE public.estudiante_idestudiante_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 2   DROP SEQUENCE public.estudiante_idestudiante_seq;
       public          postgres    false    222                       0    0    estudiante_idestudiante_seq    SEQUENCE OWNED BY     [   ALTER SEQUENCE public.estudiante_idestudiante_seq OWNED BY public.estudiante.idestudiante;
          public          postgres    false    223            �            1259    49566    gestion    TABLE     �   CREATE TABLE public.gestion (
    idgestion integer NOT NULL,
    nombregestion character varying NOT NULL,
    condiciongestion smallint NOT NULL
);
    DROP TABLE public.gestion;
       public         heap    postgres    false            �            1259    49571 	   hoja_ruta    TABLE     �   CREATE TABLE public.hoja_ruta (
    idruta integer NOT NULL,
    fecharuta date,
    idderivacion integer,
    descripcionruta character varying(250),
    condicionruta smallint DEFAULT 1
);
    DROP TABLE public.hoja_ruta;
       public         heap    postgres    false            �            1259    49575    hoja_ruta_idruta_seq    SEQUENCE     �   CREATE SEQUENCE public.hoja_ruta_idruta_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 +   DROP SEQUENCE public.hoja_ruta_idruta_seq;
       public          postgres    false    225                       0    0    hoja_ruta_idruta_seq    SEQUENCE OWNED BY     M   ALTER SEQUENCE public.hoja_ruta_idruta_seq OWNED BY public.hoja_ruta.idruta;
          public          postgres    false    226            �            1259    49576    permiso    TABLE     s   CREATE TABLE public.permiso (
    idpermiso integer NOT NULL,
    permisonombre character varying(100) NOT NULL
);
    DROP TABLE public.permiso;
       public         heap    postgres    false            �            1259    49579    permiso_idpermiso_seq    SEQUENCE     �   CREATE SEQUENCE public.permiso_idpermiso_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ,   DROP SEQUENCE public.permiso_idpermiso_seq;
       public          postgres    false    227                       0    0    permiso_idpermiso_seq    SEQUENCE OWNED BY     O   ALTER SEQUENCE public.permiso_idpermiso_seq OWNED BY public.permiso.idpermiso;
          public          postgres    false    228            �            1259    49580    personal    TABLE     �  CREATE TABLE public.personal (
    idpersonal integer NOT NULL,
    personalnombre character varying(100) NOT NULL,
    iddepartamento integer NOT NULL,
    idrol integer NOT NULL,
    personalcelular character varying(30) NOT NULL,
    personaldireccion character varying(150) NOT NULL,
    personalemail character varying(100) NOT NULL,
    identificacionpersonal character varying(30)
);
    DROP TABLE public.personal;
       public         heap    postgres    false            �            1259    49583    personal_idpersonal_seq    SEQUENCE     �   CREATE SEQUENCE public.personal_idpersonal_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public.personal_idpersonal_seq;
       public          postgres    false    229                       0    0    personal_idpersonal_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE public.personal_idpersonal_seq OWNED BY public.personal.idpersonal;
          public          postgres    false    230            �            1259    49584    puesto    TABLE     �   CREATE TABLE public.puesto (
    idpuesto integer NOT NULL,
    puestonombre character varying(100) NOT NULL,
    puestocondicion smallint DEFAULT 1 NOT NULL
);
    DROP TABLE public.puesto;
       public         heap    postgres    false            �            1259    49588    puesto_idpuesto_seq    SEQUENCE     �   CREATE SEQUENCE public.puesto_idpuesto_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 *   DROP SEQUENCE public.puesto_idpuesto_seq;
       public          postgres    false    231                       0    0    puesto_idpuesto_seq    SEQUENCE OWNED BY     K   ALTER SEQUENCE public.puesto_idpuesto_seq OWNED BY public.puesto.idpuesto;
          public          postgres    false    232                       1259    49839    registro_atencion    TABLE       CREATE TABLE public.registro_atencion (
    id_registroa integer NOT NULL,
    id_usuariop integer NOT NULL,
    idatencion integer NOT NULL,
    idtipoaccion integer NOT NULL,
    fechaaccion date NOT NULL,
    horaaccion time without time zone NOT NULL
);
 %   DROP TABLE public.registro_atencion;
       public         heap    postgres    false                       1259    49838 "   registro_atencion_id_registroa_seq    SEQUENCE     �   CREATE SEQUENCE public.registro_atencion_id_registroa_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 9   DROP SEQUENCE public.registro_atencion_id_registroa_seq;
       public          postgres    false    262                        0    0 "   registro_atencion_id_registroa_seq    SEQUENCE OWNED BY     i   ALTER SEQUENCE public.registro_atencion_id_registroa_seq OWNED BY public.registro_atencion.id_registroa;
          public          postgres    false    261                       1259    49817    registro_hoja_ruta    TABLE     �   CREATE TABLE public.registro_hoja_ruta (
    id_registroh integer NOT NULL,
    id_usuariop integer NOT NULL,
    idruta integer NOT NULL,
    idtipoaccion integer NOT NULL,
    fechaaccion date NOT NULL,
    horaaccion time without time zone NOT NULL
);
 &   DROP TABLE public.registro_hoja_ruta;
       public         heap    postgres    false                       1259    49816 #   registro_hoja_ruta_id_registroh_seq    SEQUENCE     �   CREATE SEQUENCE public.registro_hoja_ruta_id_registroh_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 :   DROP SEQUENCE public.registro_hoja_ruta_id_registroh_seq;
       public          postgres    false    260            !           0    0 #   registro_hoja_ruta_id_registroh_seq    SEQUENCE OWNED BY     k   ALTER SEQUENCE public.registro_hoja_ruta_id_registroh_seq OWNED BY public.registro_hoja_ruta.id_registroh;
          public          postgres    false    259                       1259    49861    registro_servicios    TABLE       CREATE TABLE public.registro_servicios (
    id_registros integer NOT NULL,
    id_usuariop integer NOT NULL,
    idservicio integer NOT NULL,
    idtipoaccion integer NOT NULL,
    fechaaccion date NOT NULL,
    horaaccion time without time zone NOT NULL
);
 &   DROP TABLE public.registro_servicios;
       public         heap    postgres    false                       1259    49860 #   registro_servicios_id_registros_seq    SEQUENCE     �   CREATE SEQUENCE public.registro_servicios_id_registros_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 :   DROP SEQUENCE public.registro_servicios_id_registros_seq;
       public          postgres    false    264            "           0    0 #   registro_servicios_id_registros_seq    SEQUENCE OWNED BY     k   ALTER SEQUENCE public.registro_servicios_id_registros_seq OWNED BY public.registro_servicios.id_registros;
          public          postgres    false    263            �            1259    49589    registro_usuarios    TABLE       CREATE TABLE public.registro_usuarios (
    id_registrou integer NOT NULL,
    id_usuariop integer NOT NULL,
    idusuarioe integer NOT NULL,
    idtipoaccion integer NOT NULL,
    fechaaccion date NOT NULL,
    horaaccion time without time zone NOT NULL
);
 %   DROP TABLE public.registro_usuarios;
       public         heap    postgres    false            �            1259    49592 "   registro_usuarios_id_registrou_seq    SEQUENCE     �   CREATE SEQUENCE public.registro_usuarios_id_registrou_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 9   DROP SEQUENCE public.registro_usuarios_id_registrou_seq;
       public          postgres    false    233            #           0    0 "   registro_usuarios_id_registrou_seq    SEQUENCE OWNED BY     i   ALTER SEQUENCE public.registro_usuarios_id_registrou_seq OWNED BY public.registro_usuarios.id_registrou;
          public          postgres    false    234            �            1259    49593    registro_usuariosp    TABLE       CREATE TABLE public.registro_usuariosp (
    id_registroup integer NOT NULL,
    id_usuariop integer NOT NULL,
    id_usuariopr integer NOT NULL,
    idtipoaccion integer NOT NULL,
    fechaaccion date NOT NULL,
    horaaccion time without time zone NOT NULL
);
 &   DROP TABLE public.registro_usuariosp;
       public         heap    postgres    false            �            1259    49596 $   registro_usuariosp_id_registroup_seq    SEQUENCE     �   CREATE SEQUENCE public.registro_usuariosp_id_registroup_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ;   DROP SEQUENCE public.registro_usuariosp_id_registroup_seq;
       public          postgres    false    235            $           0    0 $   registro_usuariosp_id_registroup_seq    SEQUENCE OWNED BY     m   ALTER SEQUENCE public.registro_usuariosp_id_registroup_seq OWNED BY public.registro_usuariosp.id_registroup;
          public          postgres    false    236            �            1259    49597    reporte    TABLE     �   CREATE TABLE public.reporte (
    idreporte integer NOT NULL,
    fechareporte date NOT NULL,
    idpersonal integer NOT NULL,
    condcionreporte smallint NOT NULL
);
    DROP TABLE public.reporte;
       public         heap    postgres    false            �            1259    49600    rol    TABLE     �   CREATE TABLE public.rol (
    idrol integer NOT NULL,
    rolnombre character varying(100) NOT NULL,
    rolcondicion smallint DEFAULT 1 NOT NULL
);
    DROP TABLE public.rol;
       public         heap    postgres    false            �            1259    49604    rol_idrol_seq    SEQUENCE     �   CREATE SEQUENCE public.rol_idrol_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 $   DROP SEQUENCE public.rol_idrol_seq;
       public          postgres    false    238            %           0    0    rol_idrol_seq    SEQUENCE OWNED BY     ?   ALTER SEQUENCE public.rol_idrol_seq OWNED BY public.rol.idrol;
          public          postgres    false    239            �            1259    49605    rol_permiso    TABLE     �   CREATE TABLE public.rol_permiso (
    idrol_permiso integer NOT NULL,
    idrol integer NOT NULL,
    idpermiso integer NOT NULL
);
    DROP TABLE public.rol_permiso;
       public         heap    postgres    false            �            1259    49608    rol_permiso_idpermiso_seq    SEQUENCE     �   CREATE SEQUENCE public.rol_permiso_idpermiso_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 0   DROP SEQUENCE public.rol_permiso_idpermiso_seq;
       public          postgres    false    240            &           0    0    rol_permiso_idpermiso_seq    SEQUENCE OWNED BY     W   ALTER SEQUENCE public.rol_permiso_idpermiso_seq OWNED BY public.rol_permiso.idpermiso;
          public          postgres    false    241            �            1259    49609    rol_permiso_idrol_permiso_seq    SEQUENCE     �   CREATE SEQUENCE public.rol_permiso_idrol_permiso_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 4   DROP SEQUENCE public.rol_permiso_idrol_permiso_seq;
       public          postgres    false    240            '           0    0    rol_permiso_idrol_permiso_seq    SEQUENCE OWNED BY     _   ALTER SEQUENCE public.rol_permiso_idrol_permiso_seq OWNED BY public.rol_permiso.idrol_permiso;
          public          postgres    false    242            �            1259    49610    rol_permiso_idrol_seq    SEQUENCE     �   CREATE SEQUENCE public.rol_permiso_idrol_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ,   DROP SEQUENCE public.rol_permiso_idrol_seq;
       public          postgres    false    240            (           0    0    rol_permiso_idrol_seq    SEQUENCE OWNED BY     O   ALTER SEQUENCE public.rol_permiso_idrol_seq OWNED BY public.rol_permiso.idrol;
          public          postgres    false    243            �            1259    49611    servicio    TABLE     �   CREATE TABLE public.servicio (
    idservicio integer NOT NULL,
    nombreservicio character varying(100) NOT NULL,
    condicionservicio smallint DEFAULT '1'::smallint NOT NULL
);
    DROP TABLE public.servicio;
       public         heap    postgres    false            �            1259    49615    servicio_idservicio_seq    SEQUENCE     �   CREATE SEQUENCE public.servicio_idservicio_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public.servicio_idservicio_seq;
       public          postgres    false    244            )           0    0    servicio_idservicio_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE public.servicio_idservicio_seq OWNED BY public.servicio.idservicio;
          public          postgres    false    245            �            1259    49616    tipo_atencion    TABLE     �   CREATE TABLE public.tipo_atencion (
    id_tipoatencion integer NOT NULL,
    nombretipoatencion character varying(50) NOT NULL,
    condiciontipoatencion smallint NOT NULL
);
 !   DROP TABLE public.tipo_atencion;
       public         heap    postgres    false            �            1259    49619    tipo_registrousuario    TABLE     �   CREATE TABLE public.tipo_registrousuario (
    idtipoaccion integer NOT NULL,
    tiponombre character varying(100) NOT NULL
);
 (   DROP TABLE public.tipo_registrousuario;
       public         heap    postgres    false            �            1259    49622 %   tipo_registrousuario_idtipoaccion_seq    SEQUENCE     �   CREATE SEQUENCE public.tipo_registrousuario_idtipoaccion_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 <   DROP SEQUENCE public.tipo_registrousuario_idtipoaccion_seq;
       public          postgres    false    247            *           0    0 %   tipo_registrousuario_idtipoaccion_seq    SEQUENCE OWNED BY     o   ALTER SEQUENCE public.tipo_registrousuario_idtipoaccion_seq OWNED BY public.tipo_registrousuario.idtipoaccion;
          public          postgres    false    248            �            1259    49623    tipoestudiante    TABLE     y   CREATE TABLE public.tipoestudiante (
    idtipoestudiante integer NOT NULL,
    nombre character varying(50) NOT NULL
);
 "   DROP TABLE public.tipoestudiante;
       public         heap    postgres    false            �            1259    49626 #   tipoestudiante_idtipoestudiante_seq    SEQUENCE     �   CREATE SEQUENCE public.tipoestudiante_idtipoestudiante_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 :   DROP SEQUENCE public.tipoestudiante_idtipoestudiante_seq;
       public          postgres    false    249            +           0    0 #   tipoestudiante_idtipoestudiante_seq    SEQUENCE OWNED BY     k   ALTER SEQUENCE public.tipoestudiante_idtipoestudiante_seq OWNED BY public.tipoestudiante.idtipoestudiante;
          public          postgres    false    250            �            1259    49627    usuario    TABLE       CREATE TABLE public.usuario (
    idusuarioe integer NOT NULL,
    nombreusuarioe character varying(100) NOT NULL,
    "contraseñausuario" character varying(100) NOT NULL,
    usuariocondicion smallint DEFAULT 1 NOT NULL,
    idestudiante integer NOT NULL
);
    DROP TABLE public.usuario;
       public         heap    postgres    false            �            1259    49631    usuario_idusuario_seq    SEQUENCE     �   CREATE SEQUENCE public.usuario_idusuario_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ,   DROP SEQUENCE public.usuario_idusuario_seq;
       public          postgres    false    251            ,           0    0    usuario_idusuario_seq    SEQUENCE OWNED BY     P   ALTER SEQUENCE public.usuario_idusuario_seq OWNED BY public.usuario.idusuarioe;
          public          postgres    false    252            �            1259    49632    usuario_personal    TABLE       CREATE TABLE public.usuario_personal (
    id_usuariop integer NOT NULL,
    nombreusuariop character varying(100) NOT NULL,
    "contraseñausuario" character varying(100) NOT NULL,
    idpersonal integer NOT NULL,
    usuariocondicion smallint DEFAULT 1 NOT NULL
);
 $   DROP TABLE public.usuario_personal;
       public         heap    postgres    false            �            1259    49636    usuario_personal_id_usuario_seq    SEQUENCE     �   CREATE SEQUENCE public.usuario_personal_id_usuario_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 6   DROP SEQUENCE public.usuario_personal_id_usuario_seq;
       public          postgres    false    253            -           0    0    usuario_personal_id_usuario_seq    SEQUENCE OWNED BY     d   ALTER SEQUENCE public.usuario_personal_id_usuario_seq OWNED BY public.usuario_personal.id_usuariop;
          public          postgres    false    254            �            1259    49637    usuario_servicio    TABLE     �   CREATE TABLE public.usuario_servicio (
    idusuario_servicio integer NOT NULL,
    idservicio integer NOT NULL,
    idusuarioe integer NOT NULL
);
 $   DROP TABLE public.usuario_servicio;
       public         heap    postgres    false                        1259    49641    usuario_servicio_idservicio_seq    SEQUENCE     �   CREATE SEQUENCE public.usuario_servicio_idservicio_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 6   DROP SEQUENCE public.usuario_servicio_idservicio_seq;
       public          postgres    false    255            .           0    0    usuario_servicio_idservicio_seq    SEQUENCE OWNED BY     c   ALTER SEQUENCE public.usuario_servicio_idservicio_seq OWNED BY public.usuario_servicio.idservicio;
          public          postgres    false    256                       1259    49642 '   usuario_servicio_idusuario_servicio_seq    SEQUENCE     �   CREATE SEQUENCE public.usuario_servicio_idusuario_servicio_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 >   DROP SEQUENCE public.usuario_servicio_idusuario_servicio_seq;
       public          postgres    false    255            /           0    0 '   usuario_servicio_idusuario_servicio_seq    SEQUENCE OWNED BY     s   ALTER SEQUENCE public.usuario_servicio_idusuario_servicio_seq OWNED BY public.usuario_servicio.idusuario_servicio;
          public          postgres    false    257                       1259    49643    usuario_servicio_idusuarioe_seq    SEQUENCE     �   CREATE SEQUENCE public.usuario_servicio_idusuarioe_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 6   DROP SEQUENCE public.usuario_servicio_idusuarioe_seq;
       public          postgres    false    255            0           0    0    usuario_servicio_idusuarioe_seq    SEQUENCE OWNED BY     c   ALTER SEQUENCE public.usuario_servicio_idusuarioe_seq OWNED BY public.usuario_servicio.idusuarioe;
          public          postgres    false    258            �           2604    49644    atencion idatencion    DEFAULT     z   ALTER TABLE ONLY public.atencion ALTER COLUMN idatencion SET DEFAULT nextval('public.atencion_idatencion_seq'::regclass);
 B   ALTER TABLE public.atencion ALTER COLUMN idatencion DROP DEFAULT;
       public          postgres    false    215    214            �           2604    49645    carrera idcarrera    DEFAULT     v   ALTER TABLE ONLY public.carrera ALTER COLUMN idcarrera SET DEFAULT nextval('public.carrera_idcarrera_seq'::regclass);
 @   ALTER TABLE public.carrera ALTER COLUMN idcarrera DROP DEFAULT;
       public          postgres    false    217    216            �           2604    49646    departamento iddepartamento    DEFAULT     �   ALTER TABLE ONLY public.departamento ALTER COLUMN iddepartamento SET DEFAULT nextval('public.departamento_iddepartamento_seq'::regclass);
 J   ALTER TABLE public.departamento ALTER COLUMN iddepartamento DROP DEFAULT;
       public          postgres    false    219    218            �           2604    49647    derivacion idderivacion    DEFAULT     �   ALTER TABLE ONLY public.derivacion ALTER COLUMN idderivacion SET DEFAULT nextval('public.derivacion_idderivacion_seq'::regclass);
 F   ALTER TABLE public.derivacion ALTER COLUMN idderivacion DROP DEFAULT;
       public          postgres    false    221    220            �           2604    49648    estudiante idestudiante    DEFAULT     �   ALTER TABLE ONLY public.estudiante ALTER COLUMN idestudiante SET DEFAULT nextval('public.estudiante_idestudiante_seq'::regclass);
 F   ALTER TABLE public.estudiante ALTER COLUMN idestudiante DROP DEFAULT;
       public          postgres    false    223    222            �           2604    49649    hoja_ruta idruta    DEFAULT     t   ALTER TABLE ONLY public.hoja_ruta ALTER COLUMN idruta SET DEFAULT nextval('public.hoja_ruta_idruta_seq'::regclass);
 ?   ALTER TABLE public.hoja_ruta ALTER COLUMN idruta DROP DEFAULT;
       public          postgres    false    226    225            �           2604    49650    permiso idpermiso    DEFAULT     v   ALTER TABLE ONLY public.permiso ALTER COLUMN idpermiso SET DEFAULT nextval('public.permiso_idpermiso_seq'::regclass);
 @   ALTER TABLE public.permiso ALTER COLUMN idpermiso DROP DEFAULT;
       public          postgres    false    228    227            �           2604    49651    personal idpersonal    DEFAULT     z   ALTER TABLE ONLY public.personal ALTER COLUMN idpersonal SET DEFAULT nextval('public.personal_idpersonal_seq'::regclass);
 B   ALTER TABLE public.personal ALTER COLUMN idpersonal DROP DEFAULT;
       public          postgres    false    230    229            �           2604    49652    puesto idpuesto    DEFAULT     r   ALTER TABLE ONLY public.puesto ALTER COLUMN idpuesto SET DEFAULT nextval('public.puesto_idpuesto_seq'::regclass);
 >   ALTER TABLE public.puesto ALTER COLUMN idpuesto DROP DEFAULT;
       public          postgres    false    232    231                       2604    49842    registro_atencion id_registroa    DEFAULT     �   ALTER TABLE ONLY public.registro_atencion ALTER COLUMN id_registroa SET DEFAULT nextval('public.registro_atencion_id_registroa_seq'::regclass);
 M   ALTER TABLE public.registro_atencion ALTER COLUMN id_registroa DROP DEFAULT;
       public          postgres    false    262    261    262                        2604    49820    registro_hoja_ruta id_registroh    DEFAULT     �   ALTER TABLE ONLY public.registro_hoja_ruta ALTER COLUMN id_registroh SET DEFAULT nextval('public.registro_hoja_ruta_id_registroh_seq'::regclass);
 N   ALTER TABLE public.registro_hoja_ruta ALTER COLUMN id_registroh DROP DEFAULT;
       public          postgres    false    260    259    260                       2604    49864    registro_servicios id_registros    DEFAULT     �   ALTER TABLE ONLY public.registro_servicios ALTER COLUMN id_registros SET DEFAULT nextval('public.registro_servicios_id_registros_seq'::regclass);
 N   ALTER TABLE public.registro_servicios ALTER COLUMN id_registros DROP DEFAULT;
       public          postgres    false    263    264    264            �           2604    49653    registro_usuarios id_registrou    DEFAULT     �   ALTER TABLE ONLY public.registro_usuarios ALTER COLUMN id_registrou SET DEFAULT nextval('public.registro_usuarios_id_registrou_seq'::regclass);
 M   ALTER TABLE public.registro_usuarios ALTER COLUMN id_registrou DROP DEFAULT;
       public          postgres    false    234    233            �           2604    49654     registro_usuariosp id_registroup    DEFAULT     �   ALTER TABLE ONLY public.registro_usuariosp ALTER COLUMN id_registroup SET DEFAULT nextval('public.registro_usuariosp_id_registroup_seq'::regclass);
 O   ALTER TABLE public.registro_usuariosp ALTER COLUMN id_registroup DROP DEFAULT;
       public          postgres    false    236    235            �           2604    49655 	   rol idrol    DEFAULT     f   ALTER TABLE ONLY public.rol ALTER COLUMN idrol SET DEFAULT nextval('public.rol_idrol_seq'::regclass);
 8   ALTER TABLE public.rol ALTER COLUMN idrol DROP DEFAULT;
       public          postgres    false    239    238            �           2604    49656    rol_permiso idrol_permiso    DEFAULT     �   ALTER TABLE ONLY public.rol_permiso ALTER COLUMN idrol_permiso SET DEFAULT nextval('public.rol_permiso_idrol_permiso_seq'::regclass);
 H   ALTER TABLE public.rol_permiso ALTER COLUMN idrol_permiso DROP DEFAULT;
       public          postgres    false    242    240            �           2604    49657    rol_permiso idrol    DEFAULT     v   ALTER TABLE ONLY public.rol_permiso ALTER COLUMN idrol SET DEFAULT nextval('public.rol_permiso_idrol_seq'::regclass);
 @   ALTER TABLE public.rol_permiso ALTER COLUMN idrol DROP DEFAULT;
       public          postgres    false    243    240            �           2604    49658    rol_permiso idpermiso    DEFAULT     ~   ALTER TABLE ONLY public.rol_permiso ALTER COLUMN idpermiso SET DEFAULT nextval('public.rol_permiso_idpermiso_seq'::regclass);
 D   ALTER TABLE public.rol_permiso ALTER COLUMN idpermiso DROP DEFAULT;
       public          postgres    false    241    240            �           2604    49659    servicio idservicio    DEFAULT     z   ALTER TABLE ONLY public.servicio ALTER COLUMN idservicio SET DEFAULT nextval('public.servicio_idservicio_seq'::regclass);
 B   ALTER TABLE public.servicio ALTER COLUMN idservicio DROP DEFAULT;
       public          postgres    false    245    244            �           2604    49660 !   tipo_registrousuario idtipoaccion    DEFAULT     �   ALTER TABLE ONLY public.tipo_registrousuario ALTER COLUMN idtipoaccion SET DEFAULT nextval('public.tipo_registrousuario_idtipoaccion_seq'::regclass);
 P   ALTER TABLE public.tipo_registrousuario ALTER COLUMN idtipoaccion DROP DEFAULT;
       public          postgres    false    248    247            �           2604    49661    tipoestudiante idtipoestudiante    DEFAULT     �   ALTER TABLE ONLY public.tipoestudiante ALTER COLUMN idtipoestudiante SET DEFAULT nextval('public.tipoestudiante_idtipoestudiante_seq'::regclass);
 N   ALTER TABLE public.tipoestudiante ALTER COLUMN idtipoestudiante DROP DEFAULT;
       public          postgres    false    250    249            �           2604    49662    usuario idusuarioe    DEFAULT     w   ALTER TABLE ONLY public.usuario ALTER COLUMN idusuarioe SET DEFAULT nextval('public.usuario_idusuario_seq'::regclass);
 A   ALTER TABLE public.usuario ALTER COLUMN idusuarioe DROP DEFAULT;
       public          postgres    false    252    251            �           2604    49663    usuario_personal id_usuariop    DEFAULT     �   ALTER TABLE ONLY public.usuario_personal ALTER COLUMN id_usuariop SET DEFAULT nextval('public.usuario_personal_id_usuario_seq'::regclass);
 K   ALTER TABLE public.usuario_personal ALTER COLUMN id_usuariop DROP DEFAULT;
       public          postgres    false    254    253            �           2604    49664 #   usuario_servicio idusuario_servicio    DEFAULT     �   ALTER TABLE ONLY public.usuario_servicio ALTER COLUMN idusuario_servicio SET DEFAULT nextval('public.usuario_servicio_idusuario_servicio_seq'::regclass);
 R   ALTER TABLE public.usuario_servicio ALTER COLUMN idusuario_servicio DROP DEFAULT;
       public          postgres    false    257    255            �           2604    49665    usuario_servicio idservicio    DEFAULT     �   ALTER TABLE ONLY public.usuario_servicio ALTER COLUMN idservicio SET DEFAULT nextval('public.usuario_servicio_idservicio_seq'::regclass);
 J   ALTER TABLE public.usuario_servicio ALTER COLUMN idservicio DROP DEFAULT;
       public          postgres    false    256    255            �           2604    49666    usuario_servicio idusuarioe    DEFAULT     �   ALTER TABLE ONLY public.usuario_servicio ALTER COLUMN idusuarioe SET DEFAULT nextval('public.usuario_servicio_idusuarioe_seq'::regclass);
 J   ALTER TABLE public.usuario_servicio ALTER COLUMN idusuarioe DROP DEFAULT;
       public          postgres    false    258    255            �          0    49539    atencion 
   TABLE DATA           p   COPY public.atencion (idatencion, fecha_atencion, idestudiante, condicionatencion, accion_atencion) FROM stdin;
    public          postgres    false    214   �      �          0    49546    carrera 
   TABLE DATA           ]   COPY public.carrera (idcarrera, nombrecarrera, condicioncarrera, iddepartamento) FROM stdin;
    public          postgres    false    216   R	      �          0    49551    departamento 
   TABLE DATA           a   COPY public.departamento (iddepartamento, nombredepartamento, condiciondepartamento) FROM stdin;
    public          postgres    false    218   �	      �          0    49556 
   derivacion 
   TABLE DATA           �   COPY public.derivacion (idderivacion, fechaderivacion, remitentederivacion, destinatarioderivacion, idpersonal, tipoderivacion, condicionderivacion) FROM stdin;
    public          postgres    false    220   �
      �          0    49561 
   estudiante 
   TABLE DATA           �   COPY public.estudiante (idestudiante, nombreestudiante, correoestudiante, identificacionestudiante, telefonoestudiante, condicionestudiante, idcarrera, idtipoestudiante) FROM stdin;
    public          postgres    false    222   �
      �          0    49566    gestion 
   TABLE DATA           M   COPY public.gestion (idgestion, nombregestion, condiciongestion) FROM stdin;
    public          postgres    false    224   N      �          0    49571 	   hoja_ruta 
   TABLE DATA           d   COPY public.hoja_ruta (idruta, fecharuta, idderivacion, descripcionruta, condicionruta) FROM stdin;
    public          postgres    false    225   k      �          0    49576    permiso 
   TABLE DATA           ;   COPY public.permiso (idpermiso, permisonombre) FROM stdin;
    public          postgres    false    227   �      �          0    49580    personal 
   TABLE DATA           �   COPY public.personal (idpersonal, personalnombre, iddepartamento, idrol, personalcelular, personaldireccion, personalemail, identificacionpersonal) FROM stdin;
    public          postgres    false    229   -      �          0    49584    puesto 
   TABLE DATA           I   COPY public.puesto (idpuesto, puestonombre, puestocondicion) FROM stdin;
    public          postgres    false    231   �                0    49839    registro_atencion 
   TABLE DATA           y   COPY public.registro_atencion (id_registroa, id_usuariop, idatencion, idtipoaccion, fechaaccion, horaaccion) FROM stdin;
    public          postgres    false    262   �                0    49817    registro_hoja_ruta 
   TABLE DATA           v   COPY public.registro_hoja_ruta (id_registroh, id_usuariop, idruta, idtipoaccion, fechaaccion, horaaccion) FROM stdin;
    public          postgres    false    260                   0    49861    registro_servicios 
   TABLE DATA           z   COPY public.registro_servicios (id_registros, id_usuariop, idservicio, idtipoaccion, fechaaccion, horaaccion) FROM stdin;
    public          postgres    false    264   _      �          0    49589    registro_usuarios 
   TABLE DATA           y   COPY public.registro_usuarios (id_registrou, id_usuariop, idusuarioe, idtipoaccion, fechaaccion, horaaccion) FROM stdin;
    public          postgres    false    233   �      �          0    49593    registro_usuariosp 
   TABLE DATA           }   COPY public.registro_usuariosp (id_registroup, id_usuariop, id_usuariopr, idtipoaccion, fechaaccion, horaaccion) FROM stdin;
    public          postgres    false    235   >      �          0    49597    reporte 
   TABLE DATA           W   COPY public.reporte (idreporte, fechareporte, idpersonal, condcionreporte) FROM stdin;
    public          postgres    false    237   [      �          0    49600    rol 
   TABLE DATA           =   COPY public.rol (idrol, rolnombre, rolcondicion) FROM stdin;
    public          postgres    false    238   x      �          0    49605    rol_permiso 
   TABLE DATA           F   COPY public.rol_permiso (idrol_permiso, idrol, idpermiso) FROM stdin;
    public          postgres    false    240   �      �          0    49611    servicio 
   TABLE DATA           Q   COPY public.servicio (idservicio, nombreservicio, condicionservicio) FROM stdin;
    public          postgres    false    244   �      �          0    49616    tipo_atencion 
   TABLE DATA           c   COPY public.tipo_atencion (id_tipoatencion, nombretipoatencion, condiciontipoatencion) FROM stdin;
    public          postgres    false    246   �      �          0    49619    tipo_registrousuario 
   TABLE DATA           H   COPY public.tipo_registrousuario (idtipoaccion, tiponombre) FROM stdin;
    public          postgres    false    247   �                0    49623    tipoestudiante 
   TABLE DATA           B   COPY public.tipoestudiante (idtipoestudiante, nombre) FROM stdin;
    public          postgres    false    249   �                0    49627    usuario 
   TABLE DATA           s   COPY public.usuario (idusuarioe, nombreusuarioe, "contraseñausuario", usuariocondicion, idestudiante) FROM stdin;
    public          postgres    false    251                   0    49632    usuario_personal 
   TABLE DATA           {   COPY public.usuario_personal (id_usuariop, nombreusuariop, "contraseñausuario", idpersonal, usuariocondicion) FROM stdin;
    public          postgres    false    253   n                0    49637    usuario_servicio 
   TABLE DATA           V   COPY public.usuario_servicio (idusuario_servicio, idservicio, idusuarioe) FROM stdin;
    public          postgres    false    255         1           0    0    atencion_idatencion_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public.atencion_idatencion_seq', 11, true);
          public          postgres    false    215            2           0    0    carrera_idcarrera_seq    SEQUENCE SET     D   SELECT pg_catalog.setval('public.carrera_idcarrera_seq', 29, true);
          public          postgres    false    217            3           0    0    departamento_iddepartamento_seq    SEQUENCE SET     M   SELECT pg_catalog.setval('public.departamento_iddepartamento_seq', 8, true);
          public          postgres    false    219            4           0    0    derivacion_idderivacion_seq    SEQUENCE SET     I   SELECT pg_catalog.setval('public.derivacion_idderivacion_seq', 1, true);
          public          postgres    false    221            5           0    0    estudiante_idestudiante_seq    SEQUENCE SET     J   SELECT pg_catalog.setval('public.estudiante_idestudiante_seq', 15, true);
          public          postgres    false    223            6           0    0    hoja_ruta_idruta_seq    SEQUENCE SET     B   SELECT pg_catalog.setval('public.hoja_ruta_idruta_seq', 5, true);
          public          postgres    false    226            7           0    0    permiso_idpermiso_seq    SEQUENCE SET     C   SELECT pg_catalog.setval('public.permiso_idpermiso_seq', 3, true);
          public          postgres    false    228            8           0    0    personal_idpersonal_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public.personal_idpersonal_seq', 4, true);
          public          postgres    false    230            9           0    0    puesto_idpuesto_seq    SEQUENCE SET     B   SELECT pg_catalog.setval('public.puesto_idpuesto_seq', 1, false);
          public          postgres    false    232            :           0    0 "   registro_atencion_id_registroa_seq    SEQUENCE SET     Q   SELECT pg_catalog.setval('public.registro_atencion_id_registroa_seq', 1, false);
          public          postgres    false    261            ;           0    0 #   registro_hoja_ruta_id_registroh_seq    SEQUENCE SET     Q   SELECT pg_catalog.setval('public.registro_hoja_ruta_id_registroh_seq', 2, true);
          public          postgres    false    259            <           0    0 #   registro_servicios_id_registros_seq    SEQUENCE SET     Q   SELECT pg_catalog.setval('public.registro_servicios_id_registros_seq', 2, true);
          public          postgres    false    263            =           0    0 "   registro_usuarios_id_registrou_seq    SEQUENCE SET     P   SELECT pg_catalog.setval('public.registro_usuarios_id_registrou_seq', 9, true);
          public          postgres    false    234            >           0    0 $   registro_usuariosp_id_registroup_seq    SEQUENCE SET     S   SELECT pg_catalog.setval('public.registro_usuariosp_id_registroup_seq', 1, false);
          public          postgres    false    236            ?           0    0    rol_idrol_seq    SEQUENCE SET     ;   SELECT pg_catalog.setval('public.rol_idrol_seq', 5, true);
          public          postgres    false    239            @           0    0    rol_permiso_idpermiso_seq    SEQUENCE SET     H   SELECT pg_catalog.setval('public.rol_permiso_idpermiso_seq', 1, false);
          public          postgres    false    241            A           0    0    rol_permiso_idrol_permiso_seq    SEQUENCE SET     K   SELECT pg_catalog.setval('public.rol_permiso_idrol_permiso_seq', 4, true);
          public          postgres    false    242            B           0    0    rol_permiso_idrol_seq    SEQUENCE SET     D   SELECT pg_catalog.setval('public.rol_permiso_idrol_seq', 1, false);
          public          postgres    false    243            C           0    0    servicio_idservicio_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public.servicio_idservicio_seq', 18, true);
          public          postgres    false    245            D           0    0 %   tipo_registrousuario_idtipoaccion_seq    SEQUENCE SET     S   SELECT pg_catalog.setval('public.tipo_registrousuario_idtipoaccion_seq', 4, true);
          public          postgres    false    248            E           0    0 #   tipoestudiante_idtipoestudiante_seq    SEQUENCE SET     Q   SELECT pg_catalog.setval('public.tipoestudiante_idtipoestudiante_seq', 2, true);
          public          postgres    false    250            F           0    0    usuario_idusuario_seq    SEQUENCE SET     D   SELECT pg_catalog.setval('public.usuario_idusuario_seq', 15, true);
          public          postgres    false    252            G           0    0    usuario_personal_id_usuario_seq    SEQUENCE SET     M   SELECT pg_catalog.setval('public.usuario_personal_id_usuario_seq', 4, true);
          public          postgres    false    254            H           0    0    usuario_servicio_idservicio_seq    SEQUENCE SET     N   SELECT pg_catalog.setval('public.usuario_servicio_idservicio_seq', 1, false);
          public          postgres    false    256            I           0    0 '   usuario_servicio_idusuario_servicio_seq    SEQUENCE SET     V   SELECT pg_catalog.setval('public.usuario_servicio_idusuario_servicio_seq', 14, true);
          public          postgres    false    257            J           0    0    usuario_servicio_idusuarioe_seq    SEQUENCE SET     N   SELECT pg_catalog.setval('public.usuario_servicio_idusuarioe_seq', 1, false);
          public          postgres    false    258                       2606    49669    atencion atencion_pkey 
   CONSTRAINT     \   ALTER TABLE ONLY public.atencion
    ADD CONSTRAINT atencion_pkey PRIMARY KEY (idatencion);
 @   ALTER TABLE ONLY public.atencion DROP CONSTRAINT atencion_pkey;
       public            postgres    false    214                       2606    49671    carrera carrera_pkey 
   CONSTRAINT     Y   ALTER TABLE ONLY public.carrera
    ADD CONSTRAINT carrera_pkey PRIMARY KEY (idcarrera);
 >   ALTER TABLE ONLY public.carrera DROP CONSTRAINT carrera_pkey;
       public            postgres    false    216                       2606    49673    departamento departamento_pkey 
   CONSTRAINT     h   ALTER TABLE ONLY public.departamento
    ADD CONSTRAINT departamento_pkey PRIMARY KEY (iddepartamento);
 H   ALTER TABLE ONLY public.departamento DROP CONSTRAINT departamento_pkey;
       public            postgres    false    218            
           2606    49675    derivacion derivacion_pkey 
   CONSTRAINT     b   ALTER TABLE ONLY public.derivacion
    ADD CONSTRAINT derivacion_pkey PRIMARY KEY (idderivacion);
 D   ALTER TABLE ONLY public.derivacion DROP CONSTRAINT derivacion_pkey;
       public            postgres    false    220                       2606    49677    estudiante estudiante_pkey 
   CONSTRAINT     b   ALTER TABLE ONLY public.estudiante
    ADD CONSTRAINT estudiante_pkey PRIMARY KEY (idestudiante);
 D   ALTER TABLE ONLY public.estudiante DROP CONSTRAINT estudiante_pkey;
       public            postgres    false    222                       2606    49679    gestion gestion_pkey 
   CONSTRAINT     Y   ALTER TABLE ONLY public.gestion
    ADD CONSTRAINT gestion_pkey PRIMARY KEY (idgestion);
 >   ALTER TABLE ONLY public.gestion DROP CONSTRAINT gestion_pkey;
       public            postgres    false    224                       2606    49681    hoja_ruta hoja_ruta_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public.hoja_ruta
    ADD CONSTRAINT hoja_ruta_pkey PRIMARY KEY (idruta);
 B   ALTER TABLE ONLY public.hoja_ruta DROP CONSTRAINT hoja_ruta_pkey;
       public            postgres    false    225                       2606    49683    permiso permiso_pkey 
   CONSTRAINT     Y   ALTER TABLE ONLY public.permiso
    ADD CONSTRAINT permiso_pkey PRIMARY KEY (idpermiso);
 >   ALTER TABLE ONLY public.permiso DROP CONSTRAINT permiso_pkey;
       public            postgres    false    227                       2606    49685    personal personal_pkey 
   CONSTRAINT     \   ALTER TABLE ONLY public.personal
    ADD CONSTRAINT personal_pkey PRIMARY KEY (idpersonal);
 @   ALTER TABLE ONLY public.personal DROP CONSTRAINT personal_pkey;
       public            postgres    false    229                       2606    49687    puesto puesto_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public.puesto
    ADD CONSTRAINT puesto_pkey PRIMARY KEY (idpuesto);
 <   ALTER TABLE ONLY public.puesto DROP CONSTRAINT puesto_pkey;
       public            postgres    false    231            0           2606    49844 (   registro_atencion registro_atencion_pkey 
   CONSTRAINT     p   ALTER TABLE ONLY public.registro_atencion
    ADD CONSTRAINT registro_atencion_pkey PRIMARY KEY (id_registroa);
 R   ALTER TABLE ONLY public.registro_atencion DROP CONSTRAINT registro_atencion_pkey;
       public            postgres    false    262            .           2606    49822 *   registro_hoja_ruta registro_hoja_ruta_pkey 
   CONSTRAINT     r   ALTER TABLE ONLY public.registro_hoja_ruta
    ADD CONSTRAINT registro_hoja_ruta_pkey PRIMARY KEY (id_registroh);
 T   ALTER TABLE ONLY public.registro_hoja_ruta DROP CONSTRAINT registro_hoja_ruta_pkey;
       public            postgres    false    260            2           2606    49866 *   registro_servicios registro_servicios_pkey 
   CONSTRAINT     r   ALTER TABLE ONLY public.registro_servicios
    ADD CONSTRAINT registro_servicios_pkey PRIMARY KEY (id_registros);
 T   ALTER TABLE ONLY public.registro_servicios DROP CONSTRAINT registro_servicios_pkey;
       public            postgres    false    264                       2606    49689 (   registro_usuarios registro_usuarios_pkey 
   CONSTRAINT     p   ALTER TABLE ONLY public.registro_usuarios
    ADD CONSTRAINT registro_usuarios_pkey PRIMARY KEY (id_registrou);
 R   ALTER TABLE ONLY public.registro_usuarios DROP CONSTRAINT registro_usuarios_pkey;
       public            postgres    false    233                       2606    49691 *   registro_usuariosp registro_usuariosp_pkey 
   CONSTRAINT     s   ALTER TABLE ONLY public.registro_usuariosp
    ADD CONSTRAINT registro_usuariosp_pkey PRIMARY KEY (id_registroup);
 T   ALTER TABLE ONLY public.registro_usuariosp DROP CONSTRAINT registro_usuariosp_pkey;
       public            postgres    false    235                       2606    49693    reporte reporte_pkey 
   CONSTRAINT     Y   ALTER TABLE ONLY public.reporte
    ADD CONSTRAINT reporte_pkey PRIMARY KEY (idreporte);
 >   ALTER TABLE ONLY public.reporte DROP CONSTRAINT reporte_pkey;
       public            postgres    false    237                       2606    49695    rol rol_pkey 
   CONSTRAINT     M   ALTER TABLE ONLY public.rol
    ADD CONSTRAINT rol_pkey PRIMARY KEY (idrol);
 6   ALTER TABLE ONLY public.rol DROP CONSTRAINT rol_pkey;
       public            postgres    false    238                        2606    49697    servicio servicio_pkey 
   CONSTRAINT     \   ALTER TABLE ONLY public.servicio
    ADD CONSTRAINT servicio_pkey PRIMARY KEY (idservicio);
 @   ALTER TABLE ONLY public.servicio DROP CONSTRAINT servicio_pkey;
       public            postgres    false    244            "           2606    49699     tipo_atencion tipo_atencion_pkey 
   CONSTRAINT     k   ALTER TABLE ONLY public.tipo_atencion
    ADD CONSTRAINT tipo_atencion_pkey PRIMARY KEY (id_tipoatencion);
 J   ALTER TABLE ONLY public.tipo_atencion DROP CONSTRAINT tipo_atencion_pkey;
       public            postgres    false    246            $           2606    49701 .   tipo_registrousuario tipo_registrousuario_pkey 
   CONSTRAINT     v   ALTER TABLE ONLY public.tipo_registrousuario
    ADD CONSTRAINT tipo_registrousuario_pkey PRIMARY KEY (idtipoaccion);
 X   ALTER TABLE ONLY public.tipo_registrousuario DROP CONSTRAINT tipo_registrousuario_pkey;
       public            postgres    false    247            &           2606    49703 "   tipoestudiante tipoestudiante_pkey 
   CONSTRAINT     n   ALTER TABLE ONLY public.tipoestudiante
    ADD CONSTRAINT tipoestudiante_pkey PRIMARY KEY (idtipoestudiante);
 L   ALTER TABLE ONLY public.tipoestudiante DROP CONSTRAINT tipoestudiante_pkey;
       public            postgres    false    249            *           2606    49705 &   usuario_personal usuario_personal_pkey 
   CONSTRAINT     m   ALTER TABLE ONLY public.usuario_personal
    ADD CONSTRAINT usuario_personal_pkey PRIMARY KEY (id_usuariop);
 P   ALTER TABLE ONLY public.usuario_personal DROP CONSTRAINT usuario_personal_pkey;
       public            postgres    false    253            (           2606    49707    usuario usuario_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public.usuario
    ADD CONSTRAINT usuario_pkey PRIMARY KEY (idusuarioe);
 >   ALTER TABLE ONLY public.usuario DROP CONSTRAINT usuario_pkey;
       public            postgres    false    251            ,           2606    49709 &   usuario_servicio usuario_servicio_pkey 
   CONSTRAINT     t   ALTER TABLE ONLY public.usuario_servicio
    ADD CONSTRAINT usuario_servicio_pkey PRIMARY KEY (idusuario_servicio);
 P   ALTER TABLE ONLY public.usuario_servicio DROP CONSTRAINT usuario_servicio_pkey;
       public            postgres    false    255            5           2606    49710 %   derivacion derivacion_idpersonal_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.derivacion
    ADD CONSTRAINT derivacion_idpersonal_fkey FOREIGN KEY (idpersonal) REFERENCES public.personal(idpersonal);
 O   ALTER TABLE ONLY public.derivacion DROP CONSTRAINT derivacion_idpersonal_fkey;
       public          postgres    false    220    229    3348            8           2606    49715 %   hoja_ruta hoja_ruta_idderivacion_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.hoja_ruta
    ADD CONSTRAINT hoja_ruta_idderivacion_fkey FOREIGN KEY (idderivacion) REFERENCES public.derivacion(idderivacion);
 O   ALTER TABLE ONLY public.hoja_ruta DROP CONSTRAINT hoja_ruta_idderivacion_fkey;
       public          postgres    false    3338    220    225            ;           2606    49720    registro_usuarios id_usuariop    FK CONSTRAINT     �   ALTER TABLE ONLY public.registro_usuarios
    ADD CONSTRAINT id_usuariop FOREIGN KEY (id_usuariop) REFERENCES public.usuario_personal(id_usuariop) NOT VALID;
 G   ALTER TABLE ONLY public.registro_usuarios DROP CONSTRAINT id_usuariop;
       public          postgres    false    233    253    3370            >           2606    49725    registro_usuariosp id_usuariop    FK CONSTRAINT     �   ALTER TABLE ONLY public.registro_usuariosp
    ADD CONSTRAINT id_usuariop FOREIGN KEY (id_usuariop) REFERENCES public.usuario_personal(id_usuariop);
 H   ALTER TABLE ONLY public.registro_usuariosp DROP CONSTRAINT id_usuariop;
       public          postgres    false    235    3370    253            G           2606    49823    registro_hoja_ruta id_usuariop    FK CONSTRAINT     �   ALTER TABLE ONLY public.registro_hoja_ruta
    ADD CONSTRAINT id_usuariop FOREIGN KEY (id_usuariop) REFERENCES public.usuario_personal(id_usuariop);
 H   ALTER TABLE ONLY public.registro_hoja_ruta DROP CONSTRAINT id_usuariop;
       public          postgres    false    253    3370    260            J           2606    49845    registro_atencion id_usuariop    FK CONSTRAINT     �   ALTER TABLE ONLY public.registro_atencion
    ADD CONSTRAINT id_usuariop FOREIGN KEY (id_usuariop) REFERENCES public.usuario_personal(id_usuariop);
 G   ALTER TABLE ONLY public.registro_atencion DROP CONSTRAINT id_usuariop;
       public          postgres    false    3370    262    253            M           2606    49867    registro_servicios id_usuariop    FK CONSTRAINT     �   ALTER TABLE ONLY public.registro_servicios
    ADD CONSTRAINT id_usuariop FOREIGN KEY (id_usuariop) REFERENCES public.usuario_personal(id_usuariop);
 H   ALTER TABLE ONLY public.registro_servicios DROP CONSTRAINT id_usuariop;
       public          postgres    false    264    3370    253            K           2606    49850    registro_atencion idatencion    FK CONSTRAINT     �   ALTER TABLE ONLY public.registro_atencion
    ADD CONSTRAINT idatencion FOREIGN KEY (idatencion) REFERENCES public.atencion(idatencion);
 F   ALTER TABLE ONLY public.registro_atencion DROP CONSTRAINT idatencion;
       public          postgres    false    3332    262    214            6           2606    49735    estudiante idcarrera    FK CONSTRAINT     �   ALTER TABLE ONLY public.estudiante
    ADD CONSTRAINT idcarrera FOREIGN KEY (idcarrera) REFERENCES public.carrera(idcarrera) NOT VALID;
 >   ALTER TABLE ONLY public.estudiante DROP CONSTRAINT idcarrera;
       public          postgres    false    222    3334    216            4           2606    49740    carrera iddepartamento    FK CONSTRAINT     �   ALTER TABLE ONLY public.carrera
    ADD CONSTRAINT iddepartamento FOREIGN KEY (iddepartamento) REFERENCES public.departamento(iddepartamento) NOT VALID;
 @   ALTER TABLE ONLY public.carrera DROP CONSTRAINT iddepartamento;
       public          postgres    false    216    3336    218            9           2606    49745    personal iddepartamento    FK CONSTRAINT     �   ALTER TABLE ONLY public.personal
    ADD CONSTRAINT iddepartamento FOREIGN KEY (iddepartamento) REFERENCES public.departamento(iddepartamento) NOT VALID;
 A   ALTER TABLE ONLY public.personal DROP CONSTRAINT iddepartamento;
       public          postgres    false    3336    229    218            C           2606    49750    usuario idestudiante    FK CONSTRAINT     �   ALTER TABLE ONLY public.usuario
    ADD CONSTRAINT idestudiante FOREIGN KEY (idestudiante) REFERENCES public.estudiante(idestudiante) NOT VALID;
 >   ALTER TABLE ONLY public.usuario DROP CONSTRAINT idestudiante;
       public          postgres    false    3340    251    222            3           2606    49755    atencion idestudiante    FK CONSTRAINT     �   ALTER TABLE ONLY public.atencion
    ADD CONSTRAINT idestudiante FOREIGN KEY (idestudiante) REFERENCES public.estudiante(idestudiante);
 ?   ALTER TABLE ONLY public.atencion DROP CONSTRAINT idestudiante;
       public          postgres    false    222    3340    214            A           2606    49760    rol_permiso idpermiso    FK CONSTRAINT        ALTER TABLE ONLY public.rol_permiso
    ADD CONSTRAINT idpermiso FOREIGN KEY (idpermiso) REFERENCES public.permiso(idpermiso);
 ?   ALTER TABLE ONLY public.rol_permiso DROP CONSTRAINT idpermiso;
       public          postgres    false    240    227    3346            D           2606    49765    usuario_personal idpersonal    FK CONSTRAINT     �   ALTER TABLE ONLY public.usuario_personal
    ADD CONSTRAINT idpersonal FOREIGN KEY (idpersonal) REFERENCES public.personal(idpersonal) NOT VALID;
 E   ALTER TABLE ONLY public.usuario_personal DROP CONSTRAINT idpersonal;
       public          postgres    false    253    229    3348            :           2606    49770    personal idrol    FK CONSTRAINT     v   ALTER TABLE ONLY public.personal
    ADD CONSTRAINT idrol FOREIGN KEY (idrol) REFERENCES public.rol(idrol) NOT VALID;
 8   ALTER TABLE ONLY public.personal DROP CONSTRAINT idrol;
       public          postgres    false    229    238    3358            B           2606    49775    rol_permiso idrol    FK CONSTRAINT     o   ALTER TABLE ONLY public.rol_permiso
    ADD CONSTRAINT idrol FOREIGN KEY (idrol) REFERENCES public.rol(idrol);
 ;   ALTER TABLE ONLY public.rol_permiso DROP CONSTRAINT idrol;
       public          postgres    false    238    3358    240            H           2606    49833    registro_hoja_ruta idruta    FK CONSTRAINT        ALTER TABLE ONLY public.registro_hoja_ruta
    ADD CONSTRAINT idruta FOREIGN KEY (idruta) REFERENCES public.hoja_ruta(idruta);
 C   ALTER TABLE ONLY public.registro_hoja_ruta DROP CONSTRAINT idruta;
       public          postgres    false    260    3344    225            E           2606    49780    usuario_servicio idservicio    FK CONSTRAINT     �   ALTER TABLE ONLY public.usuario_servicio
    ADD CONSTRAINT idservicio FOREIGN KEY (idservicio) REFERENCES public.servicio(idservicio);
 E   ALTER TABLE ONLY public.usuario_servicio DROP CONSTRAINT idservicio;
       public          postgres    false    3360    244    255            N           2606    49872    registro_servicios idservicio    FK CONSTRAINT     �   ALTER TABLE ONLY public.registro_servicios
    ADD CONSTRAINT idservicio FOREIGN KEY (idservicio) REFERENCES public.servicio(idservicio);
 G   ALTER TABLE ONLY public.registro_servicios DROP CONSTRAINT idservicio;
       public          postgres    false    264    3360    244            <           2606    49785    registro_usuarios idtipoaccion    FK CONSTRAINT     �   ALTER TABLE ONLY public.registro_usuarios
    ADD CONSTRAINT idtipoaccion FOREIGN KEY (idtipoaccion) REFERENCES public.tipo_registrousuario(idtipoaccion) NOT VALID;
 H   ALTER TABLE ONLY public.registro_usuarios DROP CONSTRAINT idtipoaccion;
       public          postgres    false    233    3364    247            ?           2606    49790    registro_usuariosp idtipoaccion    FK CONSTRAINT     �   ALTER TABLE ONLY public.registro_usuariosp
    ADD CONSTRAINT idtipoaccion FOREIGN KEY (idtipoaccion) REFERENCES public.tipo_registrousuario(idtipoaccion);
 I   ALTER TABLE ONLY public.registro_usuariosp DROP CONSTRAINT idtipoaccion;
       public          postgres    false    247    235    3364            I           2606    49828    registro_hoja_ruta idtipoaccion    FK CONSTRAINT     �   ALTER TABLE ONLY public.registro_hoja_ruta
    ADD CONSTRAINT idtipoaccion FOREIGN KEY (idtipoaccion) REFERENCES public.tipo_registrousuario(idtipoaccion);
 I   ALTER TABLE ONLY public.registro_hoja_ruta DROP CONSTRAINT idtipoaccion;
       public          postgres    false    260    3364    247            L           2606    49855    registro_atencion idtipoaccion    FK CONSTRAINT     �   ALTER TABLE ONLY public.registro_atencion
    ADD CONSTRAINT idtipoaccion FOREIGN KEY (idtipoaccion) REFERENCES public.tipo_registrousuario(idtipoaccion);
 H   ALTER TABLE ONLY public.registro_atencion DROP CONSTRAINT idtipoaccion;
       public          postgres    false    3364    262    247            O           2606    49877    registro_servicios idtipoaccion    FK CONSTRAINT     �   ALTER TABLE ONLY public.registro_servicios
    ADD CONSTRAINT idtipoaccion FOREIGN KEY (idtipoaccion) REFERENCES public.tipo_registrousuario(idtipoaccion);
 I   ALTER TABLE ONLY public.registro_servicios DROP CONSTRAINT idtipoaccion;
       public          postgres    false    3364    247    264            7           2606    49795    estudiante idtipoestudiante    FK CONSTRAINT     �   ALTER TABLE ONLY public.estudiante
    ADD CONSTRAINT idtipoestudiante FOREIGN KEY (idtipoestudiante) REFERENCES public.tipoestudiante(idtipoestudiante) NOT VALID;
 E   ALTER TABLE ONLY public.estudiante DROP CONSTRAINT idtipoestudiante;
       public          postgres    false    3366    249    222            =           2606    49800    registro_usuarios idusuarioe    FK CONSTRAINT     �   ALTER TABLE ONLY public.registro_usuarios
    ADD CONSTRAINT idusuarioe FOREIGN KEY (idusuarioe) REFERENCES public.usuario(idusuarioe) NOT VALID;
 F   ALTER TABLE ONLY public.registro_usuarios DROP CONSTRAINT idusuarioe;
       public          postgres    false    233    3368    251            F           2606    49805    usuario_servicio idusuarioe    FK CONSTRAINT     �   ALTER TABLE ONLY public.usuario_servicio
    ADD CONSTRAINT idusuarioe FOREIGN KEY (idusuarioe) REFERENCES public.usuario(idusuarioe);
 E   ALTER TABLE ONLY public.usuario_servicio DROP CONSTRAINT idusuarioe;
       public          postgres    false    3368    255    251            @           2606    49810 %   registro_usuariosp registro_usuariosp    FK CONSTRAINT     �   ALTER TABLE ONLY public.registro_usuariosp
    ADD CONSTRAINT registro_usuariosp FOREIGN KEY (id_usuariopr) REFERENCES public.usuario_personal(id_usuariop);
 O   ALTER TABLE ONLY public.registro_usuariosp DROP CONSTRAINT registro_usuariosp;
       public          postgres    false    235    253    3370            �   �   x���M
�0FיS������4m u�D]���V�R(����{c�3�W���Q��*���{�)ބ��W+��P��A�#���@I�:cY0A{����Pҹ���ﬧ!�$e�Id�%wR꾒�朐����9oٿˤ�(���SEH^ xK�S�      �   �   x�32�tqru���4�4�22��uu�t��s�9=��S�2S�2RR�3�KRs����\F���~�~��A��
��Ύ!A�'�y:���p�s:�����Ξ@q�`gOG�=�p��{�<���B4��qqq �&�      �   �   x�E�K�PEǼU����J+��C�Ǥ�[r`\R7&ՁC���$��&�.`�h�%�1J�T��[�-S�a��X�`/X��E�'���dwb]�ɓ[`�ZR�,���^���<�A�E��9�|k����N�%��m�(�5N���2]������&����5B      �   6   x�3�4202�50�52��M,�N-��K�tq��4���K�/�M,�4����� 
�j      �   `  x����j�0��O��O0�i�G��R��2Q;WP+����/΂��э�P�w��N�Lt�
}��T���
�����Kh�]om��[�[�$�q(8D� 4����bP8q<�ҌS��v�`�z�})W<`���P�<
�N�G��9��T��VU�D����E	�Q��u��V�9��vx�co\�3Jhc�J��H�c����}^���zfi_����LK��MY�u+���=4�G����R�:_���\�x"dB�̍`,�����I9�<&"j@J�^j��`7'��פ�,��cW`a��P>1�H�*�_�p^g�L?L%�vL h[���X���!��d�"���5�����y�cC�      �      x������ � �      �   r   x�3�4202�50�52�4�NU(JM�ɬ�W�I2K�2o�S�/(*)�K�M�+I�4�2Bh2jJ+�K���KT(�)���&*$����%LP%�3@f��
���!�W� �R(y      �   0   x�3�tv�����2�t<<���3�˘3(5=���(��+F��� ��
�      �   �   x�u��
�@E�o�b> d潙1w�9Q`.\D�f	cB��$����sΕ`�þ9/VZ�6�E|;���>�>��q )i�SP����8��k�M�@�C��·��	�N�"����+$I	1[Զ:�J[�����ߘW���E����9b�} ��3d      �      x������ � �            x������ � �         =   x�]ʱ�0�v�����%���e��.-���d�g�-EB�[�WJ�>E��w��چ�         >   x�]ʱ� �v���(fq�9�4W�����X�%XMoҐ��{ �����@�S��a�      �   �   x�e���@�3�b�g�Ԓ��{��XB�3NF�YP��y!ɪ}PEq�OSd��.{��qҀx��P�U��5�(��n���a��8�MRZa����O?�H�1eRb���>��Yf�i�j�$���a�/�G+v      �      x������ � �      �      x������ � �      �   A   x�3�tIMN���4�2�t�,JM.�/RHIUpN,*J-J�s�:��qp� ��0�!W� ڏ�      �   !   x�3�4�4�2�4��@҈�Hs��qqq 4~r      �   �   x�m�K�0D��à��#�,�T),��g�b��"��{3�l8i /-��sQ��}�ɀV^R��uB(5��xV���G7��eN4n��=l؂ܠ���`0X�g#B��pH��~1X�<���E0�      �      x������ � �      �   0   x�3���v
��2�tt	u����2�=���L8]\���=... �
�            x�3�rurt��2����c���� `�9         F  x���ˎ�0����S�L(��:��ZZifSK��"��gONW'O>Tv٩R�YM�,;X�dR�+Y�S6�|Z`�� JU�b�)�>�����*ju9v�1r��iSV�!m�۹�e��I���I�mw���E6`�`y�$H�e�O��xfQw��Ż��'��$��ҁ�̪F��;M�q�
1��[� l��n.գ�F-b���D~���t�~xq���E7��B����	�N���$	��5�i���O�!N�>� ��jZTA=(w�X�.ua����>nuncH�L������2�����E?��_��g         �   x��M�  ���	m�>F�A�c��x=Ԝ�������� �|�pr�7c��S��#6�ޫ�ꉯ��50`����ke�g�������Z6�I��y����Щz�����I��q�/]���������=(�         *   x�3�4�4�2�4�4�2��4�24�44�&�� ~� d�     