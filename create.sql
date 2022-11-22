-- ENTIDADES FUERTES --

create table Variedad(
    v_id          varchar(255)    primary key,
    v_nom         varchar(255)    not null,
    v_maduracion  varchar(255),
    v_paisorigen  varchar(255)    not null,
    v_desc        varchar(255)    not null,
);
create table Pais(
    pais_id         varchar(255)    primary key,
    pais_nom        varchar(255)    not null,
    pais_continente varchar(255)    not null
);
create table Variable(
    var_id          varchar(255)    primary key,
    var_nom         varchar(255)    not null,
    var_desc        varchar(255)    not null,
    var_tipo        varchar(255)    not null
);
create table Ingrediente(
    ing_id         varchar(255)    primary key,
    ing_nom        varchar(255)    not null,
);

-- ENTIDADES DEBILES --

create table Cultivo(
    cult_id         varchar(255),
    cult_calibre    varchar(255)    not null,
    cult_prodanual  int             not null,
    cult_periodoini date            not null,
    cult_periodofin date            not null,
    cult_destexport int             not null,
    fk_cult_v       varchar(255)    not null,
    fk_cult_p       varchar(255)    not null,
    primary key     (cult_id, fk_cult_v, fk_cult_p),
    foreign key     fk_cult_v       references  Variedad(v_id),
    foreign key     fk_cult_p       references  Productor(prod_id)
);
create table Produccion(
    prod_id         varchar(255),
    prod_year       date            not null,
    prod_logradakg  numeric         not null,
    fk_prod_v       varchar(255)    not null,
    fk_prod_cult    varchar(255)    not null,
    primary key     (prod_id, fk_prod_v, fk_prod_cult),
    foreign key     fk_prod_v       references  Variedad(v_id),
    foreign key     fk_prod_cult    references  Cultivo(cult_id)    
);
create table Asociacion(
    asoc_id     varchar(255)    primary key,
    asoc_nom    varchar(255)    not null,
    asoc_dir    varchar(255)    not null,
    fk_asoc_reg varchar(255)    not null,
    foreign key fk_asoc_reg     references  Region(reg_id)
);
create table Productor(
    p_id        varchar(255)    primary key,
    p_nom       varchar(255)    not null,
    p_dir       varchar(255)    not null,
    p_envase    varchar(255)    not null,
    fk_p        varchar(255),
    fk_p_asoc   varchar(255),
    fk_p_ciu    varchar(255)    not null,
    foreign key fk_p_ciu        references  Ciudad(ciu_id)
);
create table Proveedor(
    prov_id         varchar(255)    primary key,
    prov_nom        varchar(255)    not null,
    prov_negocio    varchar(255)    not null,
    prov_dir        varchar(255)    not null,
    fk_prov_ciu     varchar(255)    not null,
    foreign key     fk_prov_ciu     references  Ciudad(ciu_id)
);
create table Padrino(
    pad_id      varchar(255)    primary key,
    pad_nom     varchar(255)    not null,
    pad_seg_nom varchar(255),
    pad_ape     varchar(255)    not null,
    pad_seg_ape varchar(255),
    fk_pad_ciu  varchar(255)    not null,
    foreign key fk_pad_ciu      references  Ciudad(ciu_id)
);
create table Apadrinamiento(
    ap_fechaini date            not null,
    ap_fechafin date,
    ap_aporte   money,
    fk_ap_pad   varchar(255)    not null,
    fk_ap_p     varchar(255)    not null,
    fk_ap_v   varchar(255)      not null,
    primary key (fk_ap_pad, fk_ap_p, fk_ap_v),
    foreign key fk_ap_pad       references  Padrino(pad_id),
    foreign key fk_ap_p         references  Productor(p_id),
    foreign key fk_ap_v         references  Variedad(v_id)
);
create table Convenio(
    conv_id         varchar(255),
    conv_ben        varchar(255)    not null,
    conv_fechaini   date            not null,
    conv_fechafin   date,
    fk_conv_asoc    varchar(255),
    fk_conv_prov    varchar(255)    not null,
    fk_pprod1       varchar(255),
    fk_pprod2       varchar(255),
    primary key     (conv_id, fk_conv_prov),
    foreign key     fk_conv_asoc    references  Asociacion(asoc_id),
    foreign key     fk_conv_prov    references  Proveedor(prov_id)
    foreign key     (fk_pprod1, fk_pprod2)    
        references  P_Prov(fk_pprov_p, fk_pprov_prov),
    constraint      -- IMPORTANTE
);
create table Ciudad(
    ciu_id      varchar(255),
    ciu_nom     varchar(255)    not null,
    fk_ciu_pais varchar(255)    not null,
    primary key (ciu_id, fk_ciu_pais),
    foreign key fk_ciu_pais     references  Pais(pais_id)
);
create table Region(
    reg_id      varchar(255),
    reg_nom     varchar(255)    not null,
    fk_reg_pais varchar(255)    not null,
    primary key (reg_id, fk_reg_pais),
    foreign key fk_reg_pais     references  Pais(pais_id)
);
create table Cliente(
    cli_id          varchar(255)    primary key,
    cli_nom         varchar(255)    not null,
    cli_tipo        varchar(255)    not null,
    cli_dir         varchar(255)    not null,
    cli_rangosup    varchar(255)    not null,
    cli_rangoinf    varchar(255)    not null,
    cli_aceptacion  smallint        not null,
    foreign key     fk_cli_ciu      references  Ciudad(ciu_id),
    constraint  -- IMPORTANTE
);
create table P_Prod(
    fk_pp_p         varchar(255)    not null,
    fk_pp_prov      varchar(255)    not null,
    primary key     (fk_pp_p, fk_pp_prov),
    foreign key     fk_pp_p         references  Productor(p_id),
    foreign key     fk_pp_prov      references  Proveedor(prov_id)
);
create table Contrato(
    cont_id             varchar(255),
    cont_emision        date            not null,
    cont_vencimiento    date            not null,
    cont_descuento      smallint        not null,
    cont_total          money           not null,
    cont_transporte     varchar(255)    not null,
    cont_status         varchar(255)    not null,
    fk_cont_cli         varchar(255)    not null,
    fk_cont_p           varchar(255)    not null,
    fk_forma_pago       varchar(255)    not null,
    primary key         (cont_id, fk_cont_cli, fk_cont_p),
    foreign key         fk_cont_cli     references  Cliente(cli_id),
    foreign key         fk_cont_p       references  Productor(p_id),
    foreign key         fk_forma_pago   references  Forma_Pago(fp_id)
    constraint  -- IMPORTANTE
);
create table Renovacion(
    ren_id          serial,
    ren_renovar     date            not null,
    ren_total       money           not null,
    fk_ren_cont1    varchar(255)    not null,
    fk_ren_cont2    varchar(255)    not null,
    fk_ren_cont3    varchar(255)    not null,
    primary key     (ren_id, fk_ren_cont1, fk_ren_cont2, fk_ren_cont3),
    foreign key     (fk_ren_cont1, fk_ren_cont2, fk_ren_cont3)
        references  Contrato(cont_id, fk_cont_cli, fk_cont_p)
);
create table Pago(
    pag_id          varchar(255),
    pag_fecha       date            not null,
    pag_monto       money           not null,
    fk_pag_cont1    varchar(255)    not null,
    fk_pag_cont2    varchar(255)    not null,
    fk_pag_cont3    varchar(255)    not null,
    primary key     (pag_id, fk_pag_cont, fk_pag_cont2, fk_pag_cont3),
    foreign key     (fk_pag_cont1, fk_pag_cont2, fk_pag_cont3)
        references  Contrato(cont_id, fk_cont_cli, fk_cont_p)
);
create table Formula(
    for_id          varchar(255),
    for_tipo        varchar(255)    not null,
    for_import      money           not null,
    fk_for_cli      varchar(255)    not null,
    fk_for_var      varchar(255)    not null,
    primary key     (for_id, fk_for_cli, fk_for_var),
    foreign key     fk_for_cli      references  Cliente(cli_id),
    foreign key     fk_for_var      references  Variable(var_id) 
);
create table Detalle_V(
    dv_cantidad     int             not null,
    dv_decuento     smallint        not null,
    fk_dv_cont1     varchar(255)    not null,
    fk_dv_cont2     varchar(255)    not null,
    fk_dv_cont3     varchar(255)    not null,
    fk_dv_cult      varchar(255)    not null,
    primary key     (fk_dv_cont1, fk_dv_cont2, fk_dv_cont3, fk_dv_cult),
    foreign key     fk_dv_cult      references  Cultivo(cult_id),
    foreign key     (fk_dv_cont1, fk_dv_cont2, fk_dv_cont3)
        references  Contrato(cont_id, fk_cont_cli, fk_cont_p)
);
create table Envio(
    env_id          varchar(255),
    env_cantidad    int             not null,
    fk_env_v        varchar(255)    not null,
    fk_env_dv1      varchar(255)    not null,
    fk_env_dv2      varchar(255)    not null,
    fk_env_dv3      varchar(255)    not null,
    fk_env_dv4      varchar(255)    not null,
    primary key     (env_id, fk_env_v, fk_env_dv1, fk_env_dv2, fk_env_dv3, fk_env_dv4),
    foreign key     fk_env_v        references  Variedad(v_id),
    foreign key     (fk_env_dv1, fk_env_dv2, fk_env_dv3, fk_env_dv4)
        references  Detalle_V(fk_dv_cont1, fk_dv_cont2, fk_dv_cont3, fk_dv_cult)
);
create table Precio_Promedio(
    pro_id          varchar(255),
    pro_fechaini    date            not null,
    pro_fechafin    date,
    pro_precio      money           not null,
    pro_calibre     varchar(255)    not null,
    fk_pro_v        varchar(255)    not null,
    fk_pro_pais     varchar(255)    not null,
    primary key     (pro_id, fk_pro_v, fk_pro_pais),
    foreign key     fk_pro_v        references  Variedad(v_id),
    foreign key     fk_pro_pais     references  Pais(pais_id)
);
create table Resultado_Eval_Anual(
    rea_year        smallint,
    rea_valor       smallint        not null,
    rea_porc        smallint        not null,
    rea_fecha       date            not null,
    rea_decision    varchar(255)    not null,
    fk_rea_cli      varchar(255)    not null,
    primary key     (rea_year, fk_rea_cli),
    foreign key     fk_rea_cli      references  Cliente(cli_id)
    constraint -- IMPORTANTE
);
create table Receta(
    rec_id          varchar(255)    primary key,
    rec_nom         varchar(255)    not null,
    rec_tipo        varchar(255)    not null,
    rec_tiempo      time without time zone not null,
    rec_raciones    smallint        not null,
    rec_autor       varchar(255),
    fk_rec_cli      varchar(255),
    fk_rec_p        varchar(255),
    foreign key     fk_rec_cli      references  Cliente(cli_id),
    foreign key     fk_rec_p        references  Productor(p_id),
    constraint -- IMPORTANTE
);
create table Elaboracion(
    elab_paso       smallint        primary key,
    elab_desc       varchar(255)    not null,
    fk_elab_rec     varchar(255)    not null,
    foreign key     fk_elab_rec     references  Receta(rec_id)
);
create table Ingrediente_Receta(
    ir_cantidad     int             not null,
    ir_unidad       varchar(255),
    fk_ir_rec       varchar(255)    not null,
    fk_ir_ing       varchar(255)    not null,
    primary key     (fk_ir_rec, fk_ir_ing),
    foreign key     fk_ir_rec       references  Receta(rec_id),
    foreign key     fk_ir_ing       references  Ingrediente(ing_id)
    constraint -- IMPORTANTE
);
create table Forma_Pago(
    fp_id           varchar(255),
    fp_tipo         varchar(255)    not null,
    fp_cant         money           not null,
    fp_porc         smallint        not null,
    fp_cuota        smallint        not null,
    fp_emision      date            not null,
    fp_envio        date            not null,
    fk_fp_p         varchar(255)    not null,
    primary key     (fp_id, fk_fp_p),
    foreign key     fk_fp_p         references  Productor(p_id)
);
create table V_Receta(
    cantgr          int             not null,
    fk_vr_rec       varchar(255)    not null,
    fk_vr_v         varchar(255)    not null,
    primary key     (fk_vr_rec, fk_vr_v),
    foreign key     fk_vr_rec       references  Receta(rec_id),
    foreign key     fk_vr_v         references  Variedad(v_id)
);