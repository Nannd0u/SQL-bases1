-- ENTIDADES FUERTES --

CREATE TABLE Variedad(
    v_id          VARCHAR(255)  PRIMARY KEY,
    v_nom         VARCHAR(255)  NOT NULL,
    v_maduracion  VARCHAR(255),
    v_paisorigen  VARCHAR(255)  NOT NULL,
    v_desc        VARCHAR(255),
    CONSTRAINT    chk_v         CHECK 
    (
        v_maduracion IN 
        (
            'Extra-temprana',
            'Temprana',
            'Media Estación',
            'Tardía',
            'Extra-tardía'
        )
    ),
);
CREATE TABLE Pais(
    pais_id         VARCHAR(255)    PRIMARY KEY,
    pais_nom        VARCHAR(255)    NOT NULL,
    pais_continente VARCHAR(255)    NOT NULL,
    CONSTRAINT      chk_continente  CHECK 
    (
        pais_continente IN 
        (
            'Asia',
            'America del Norte',
            'America del Sur',
            'Europa',
            'Europa y Asia',
            'Africa'
        )
    ),
);
CREATE TABLE Variable(
    var_id          VARCHAR(255)    PRIMARY KEY,
    var_nom         VARCHAR(255)    NOT NULL,
    var_desc        VARCHAR(255)    NOT NULL,
    var_tipo        VARCHAR(255)    NOT NULL
);
CREATE TABLE Ingrediente(
    ing_id         VARCHAR(255)    PRIMARY KEY,
    ing_nom        VARCHAR(255)    NOT NULL,
);

-- ENTIDADES DEBILES --

CREATE TABLE Ciudad(
    ciu_id      VARCHAR(255),
    ciu_nom     VARCHAR(255)    NOT NULL,
    fk_ciu_pais VARCHAR(255)    NOT NULL,
    PRIMARY KEY (ciu_id, fk_ciu_pais),
    FOREIGN KEY fk_ciu_pais     REFERENCES  Pais(pais_id)
);
CREATE TABLE Productor(
    p_id        VARCHAR(255)    PRIMARY KEY,
    p_nom       VARCHAR(255)    NOT NULL,
    p_dir       VARCHAR(255)    NOT NULL,
    p_envase    VARCHAR(255)    NOT NULL,
    fk_p        VARCHAR(255),
    fk_p_asoc   VARCHAR(255),
    fk_p_ciu    VARCHAR(255)    NOT NULL,
    FOREIGN KEY fk_p_ciu        REFERENCES  Ciudad(ciu_id)
    CONSTRAINT  chk_prod_asoc   CHECK (p_envase in ('Bolsa', 'Caja', 'Mallas', 'Cajones'))
);
CREATE TABLE Cultivo(
    cult_id         VARCHAR(255),
    cult_calibre    VARCHAR(255)    NOT NULL,
    cult_prodanual  INT             NOT NULL,
    cult_periodoini DATE            NOT NULL,
    cult_periodofin DATE            NOT NULL,
    cult_destexport INT             NOT NULL,
    fk_cult_v       VARCHAR(255)    NOT NULL,
    fk_cult_p       VARCHAR(255)    NOT NULL,
    PRIMARY KEY     (cult_id, fk_cult_v, fk_cult_p),
    FOREIGN KEY     fk_cult_v       REFERENCES  Variedad(v_id),
    FOREIGN KEY     fk_cult_p       REFERENCES  Productor(prod_id)
);
CREATE TABLE Produccion(
    prod_id         VARCHAR(255),
    prod_year       DATE            NOT NULL,
    prod_logradakg  NUMERIC         NOT NULL,
    fk_prod_v       VARCHAR(255)    NOT NULL,
    fk_prod_cult    VARCHAR(255)    NOT NULL,
    PRIMARY KEY     (prod_id, fk_prod_v, fk_prod_cult),
    FOREIGN KEY     fk_prod_v       REFERENCES  Variedad(v_id),
    FOREIGN KEY     fk_prod_cult    REFERENCES  Cultivo(cult_id)    
);
CREATE TABLE Region(
    reg_id      VARCHAR(255),
    reg_nom     VARCHAR(255)    NOT NULL,
    fk_reg_pais VARCHAR(255)    NOT NULL,
    PRIMARY KEY (reg_id, fk_reg_pais),
    FOREIGN KEY fk_reg_pais     REFERENCES  Pais(pais_id)
);
CREATE TABLE Asociacion(
    asoc_id     VARCHAR(255)    PRIMARY KEY,
    asoc_nom    VARCHAR(255)    NOT NULL,
    asoc_dir    VARCHAR(255)    NOT NULL,
    fk_asoc_reg VARCHAR(255)    NOT NULL,
    FOREIGN KEY fk_asoc_reg     REFERENCES  Region(reg_id)
);
CREATE TABLE Proveedor(
    prov_id         VARCHAR(255)    PRIMARY KEY,
    prov_nom        VARCHAR(255)    NOT NULL,
    prov_negocio    VARCHAR(255)    NOT NULL,
    prov_dir        VARCHAR(255)    NOT NULL,
    fk_prov_ciu     VARCHAR(255)    NOT NULL,
    FOREIGN KEY     fk_prov_ciu     REFERENCES  Ciudad(ciu_id)
);
CREATE TABLE Padrino(
    pad_id      VARCHAR(255)    PRIMARY KEY,
    pad_nom     VARCHAR(255)    NOT NULL,
    pad_seg_nom VARCHAR(255),
    pad_ape     VARCHAR(255)    NOT NULL,
    pad_seg_ape VARCHAR(255),
    fk_pad_ciu  VARCHAR(255)    NOT NULL,
    FOREIGN KEY fk_pad_ciu      REFERENCES  Ciudad(ciu_id)
);
CREATE TABLE Apadrinamiento(
    ap_fechaini DATE            NOT NULL,
    ap_fechafin DATE,
    ap_aporte   MONEY,
    fk_ap_pad   VARCHAR(255)    NOT NULL,
    fk_ap_p     VARCHAR(255)    NOT NULL,
    fk_ap_v     VARCHAR(255)    NOT NULL,
    PRIMARY KEY (fk_ap_pad, fk_ap_p, fk_ap_v),
    FOREIGN KEY fk_ap_pad       REFERENCES  Padrino(pad_id),
    FOREIGN KEY fk_ap_p         REFERENCES  Productor(p_id),
    FOREIGN KEY fk_ap_v         REFERENCES  Variedad(v_id)
);
CREATE TABLE P_Prod(
    fk_pp_p         VARCHAR(255)    NOT NULL,
    fk_pp_prov      VARCHAR(255)    NOT NULL,
    PRIMARY KEY     (fk_pp_p, fk_pp_prov),
    FOREIGN KEY     fk_pp_p         REFERENCES  Productor(p_id),
    FOREIGN KEY     fk_pp_prov      REFERENCES  Proveedor(prov_id)
);
CREATE TABLE Convenio(
    conv_id         VARCHAR(255),
    conv_ben        VARCHAR(255)    NOT NULL,
    conv_fechaini   DATE            NOT NULL,
    conv_fechafin   DATE,
    fk_conv_asoc    VARCHAR(255),
    fk_conv_prov    VARCHAR(255)    NOT NULL,
    fk_pprod1       VARCHAR(255),
    fk_pprod2       VARCHAR(255),
    PRIMARY KEY     (conv_id, fk_conv_prov),
    FOREIGN KEY     fk_conv_asoc    REFERENCES  Asociacion(asoc_id),
    FOREIGN KEY     fk_conv_prov    REFERENCES  Proveedor(prov_id),
    FOREIGN KEY     (fk_pprod1, fk_pprod2)    
        REFERENCES  P_Prov(fk_pprov_p, fk_pprov_prov),
    CONSTRAINT      chk_convenio     CHECK 
    (
        CASE WHEN fk_conv_asoc IS NULL then fk_conv_prov IS NOT NULL
        ELSE fk_conv_asoc IS NULL END
    )
);
CREATE TABLE Cliente(
    cli_id          VARCHAR(255)    PRIMARY KEY,
    cli_nom         VARCHAR(255)    NOT NULL,
    cli_tipo        VARCHAR(255)    NOT NULL,
    cli_dir         VARCHAR(255)    NOT NULL,
    cli_rangosup    VARCHAR(255)    NOT NULL,
    cli_rangoinf    VARCHAR(255)    NOT NULL,
    cli_aceptacion  SMALLINT        NOT NULL,
    FOREIGN KEY     fk_cli_ciu      REFERENCES  Ciudad(ciu_id),
    CONSTRAINT      chk_cliente     CHECK (cli_tipo IN ('Natural', 'Juridico'))
);
CREATE TABLE Forma_Pago(
    fp_id           VARCHAR(255),
    fp_tipo         VARCHAR(255)    NOT NULL,
    fp_cant         MONEY           NOT NULL,
    fp_porc         SMALLINT        NOT NULL,
    fp_cuota        SMALLINT        NOT NULL,
    fp_emision      DATE            NOT NULL,
    fp_envio        DATE            NOT NULL,
    fk_fp_p         VARCHAR(255)    NOT NULL,
    PRIMARY KEY     (fp_id, fk_fp_p),
    FOREIGN KEY     fk_fp_p         REFERENCES  Productor(p_id)
);
CREATE TABLE Contrato(
    cont_id             VARCHAR(255),
    cont_emision        DATE            NOT NULL,
    cont_vencimiento    DATE            NOT NULL,
    cont_descuento      SMALLINT        NOT NULL,
    cont_total          MONEY           NOT NULL,
    cont_transporte     VARCHAR(255)    NOT NULL,
    cont_status         VARCHAR(255)    NOT NULL,
    fk_cont_cli         VARCHAR(255)    NOT NULL,
    fk_cont_p           VARCHAR(255)    NOT NULL,
    fk_forma_pago       VARCHAR(255)    NOT NULL,
    PRIMARY KEY         (cont_id, fk_cont_cli, fk_cont_p),
    FOREIGN KEY         fk_cont_cli     REFERENCES  Cliente(cli_id),
    FOREIGN KEY         fk_cont_p       REFERENCES  Productor(p_id),
    FOREIGN KEY         fk_forma_pago   REFERENCES  Forma_Pago(fp_id),
    CONSTRAINT          chk_contrato    CHECK (cont_status IN ('Pendiente', 'Pagado'))
);
CREATE TABLE Renovacion(
    ren_id          SERIAL,
    ren_renovar     DATE            NOT NULL,
    ren_total       MONEY           NOT NULL,
    fk_ren_cont1    VARCHAR(255)    NOT NULL,
    fk_ren_cont2    VARCHAR(255)    NOT NULL,
    fk_ren_cont3    VARCHAR(255)    NOT NULL,
    PRIMARY KEY     (ren_id, fk_ren_cont1, fk_ren_cont2, fk_ren_cont3),
    FOREIGN KEY     (fk_ren_cont1, fk_ren_cont2, fk_ren_cont3)
        REFERENCES  Contrato(cont_id, fk_cont_cli, fk_cont_p)
);
CREATE TABLE Pago(
    pag_id          VARCHAR(255),
    pag_fecha       DATE            NOT NULL,
    pag_monto       MONEY           NOT NULL,
    fk_pag_cont1    VARCHAR(255)    NOT NULL,
    fk_pag_cont2    VARCHAR(255)    NOT NULL,
    fk_pag_cont3    VARCHAR(255)    NOT NULL,
    PRIMARY KEY     (pag_id, fk_pag_cont, fk_pag_cont2, fk_pag_cont3),
    FOREIGN KEY     (fk_pag_cont1, fk_pag_cont2, fk_pag_cont3)
        REFERENCES  Contrato(cont_id, fk_cont_cli, fk_cont_p)
);
CREATE TABLE Formula(
    for_id          VARCHAR(255),
    for_tipo        VARCHAR(255)    NOT NULL,
    for_import      MONEY           NOT NULL,
    fk_for_cli      VARCHAR(255)    NOT NULL,
    fk_for_var      VARCHAR(255)    NOT NULL,
    PRIMARY KEY     (for_id, fk_for_cli, fk_for_var),
    FOREIGN KEY     fk_for_cli      REFERENCES  Cliente(cli_id),
    FOREIGN KEY     fk_for_var      REFERENCES  Variable(var_id) 
);
CREATE TABLE Detalle_V(
    dv_cantidad     INT             NOT NULL,
    dv_decuento     SMALLINT        NOT NULL,
    fk_dv_cont1     VARCHAR(255)    NOT NULL,
    fk_dv_cont2     VARCHAR(255)    NOT NULL,
    fk_dv_cont3     VARCHAR(255)    NOT NULL,
    fk_dv_cult      VARCHAR(255)    NOT NULL,
    PRIMARY KEY     (fk_dv_cont1, fk_dv_cont2, fk_dv_cont3, fk_dv_cult),
    FOREIGN KEY     fk_dv_cult      REFERENCES  Cultivo(cult_id),
    FOREIGN KEY     (fk_dv_cont1, fk_dv_cont2, fk_dv_cont3)
        REFERENCES  Contrato(cont_id, fk_cont_cli, fk_cont_p)
);
CREATE TABLE Envio(
    env_id          VARCHAR(255),
    env_cantidad    INT             NOT NULL,
    fk_env_v        VARCHAR(255)    NOT NULL,
    fk_env_dv1      VARCHAR(255)    NOT NULL,
    fk_env_dv2      VARCHAR(255)    NOT NULL,
    fk_env_dv3      VARCHAR(255)    NOT NULL,
    fk_env_dv4      VARCHAR(255)    NOT NULL,
    PRIMARY KEY     (env_id, fk_env_v, fk_env_dv1, fk_env_dv2, fk_env_dv3, fk_env_dv4),
    FOREIGN KEY     fk_env_v        REFERENCES  Variedad(v_id),
    FOREIGN KEY     (fk_env_dv1, fk_env_dv2, fk_env_dv3, fk_env_dv4)
        REFERENCES  Detalle_V(fk_dv_cont1, fk_dv_cont2, fk_dv_cont3, fk_dv_cult)
);
CREATE TABLE Precio_Promedio(
    pro_id          VARCHAR(255),
    pro_fechaini    DATE            NOT NULL,
    pro_fechafin    DATE,
    pro_precio      MONEY           NOT NULL,
    pro_calibre     VARCHAR(255)    NOT NULL,
    fk_pro_v        VARCHAR(255)    NOT NULL,
    fk_pro_pais     VARCHAR(255)    NOT NULL,
    PRIMARY KEY     (pro_id, fk_pro_v, fk_pro_pais),
    FOREIGN KEY     fk_pro_v        REFERENCES  Variedad(v_id),
    FOREIGN KEY     fk_pro_pais     REFERENCES  Pais(pais_id)
);
CREATE TABLE Resultado_Eval_Anual(
    rea_year        SMALLINT,
    rea_valor       SMALLINT            NOT NULL,
    rea_porc        SMALLINT            NOT NULL,
    rea_fecha       DATE                NOT NULL,
    rea_decision    VARCHAR(255)        NOT NULL,
    fk_rea_cli      VARCHAR(255)        NOT NULL,
    PRIMARY KEY     (rea_year, fk_rea_cli),
    FOREIGN KEY     fk_rea_cli          REFERENCES  Cliente(cli_id),
    CONSTRAINT      chk_rea_porc        CHECK (rea_porc >= 0 AND rea_porc <= 100),
    CONSTRAINT      chk_rea_decision    CHECK (rea_decision IN ('Aceptado', 'Rechazado'))
);
CREATE TABLE Receta(
    rec_id          VARCHAR(255)    PRIMARY KEY,
    rec_nom         VARCHAR(255)    NOT NULL,
    rec_tipo        VARCHAR(255)    NOT NULL,
    rec_tiempo      TIME WITHOUT TIME ZONE NOT NULL,
    rec_raciones    SMALLINT        NOT NULL,
    rec_autor       VARCHAR(255),
    fk_rec_cli      VARCHAR(255),
    fk_rec_p        VARCHAR(255),
    FOREIGN KEY     fk_rec_cli      REFERENCES  Cliente(cli_id),
    FOREIGN KEY     fk_rec_p        REFERENCES  Productor(p_id),
    CONSTRAINT      chk_receta      CHECK 
    (
        (fk_rec_cli IS NOT NULL AND fk_rec_p IS NULL) OR
        (fk_rec_cli IS NULL AND fk_rec_p IS NOT NULL)
    )
);
CREATE TABLE Elaboracion(
    elab_paso       SMALLINT        PRIMARY KEY,
    elab_desc       VARCHAR(255)    NOT NULL,
    fk_elab_rec     VARCHAR(255)    NOT NULL,
    FOREIGN KEY     fk_elab_rec     REFERENCES  Receta(rec_id)
);
CREATE TABLE Ingrediente_Receta(
    ir_cantidad     INT                 NOT NULL,
    ir_unidad       VARCHAR(255),
    fk_ir_rec       VARCHAR(255)        NOT NULL,
    fk_ir_ing       VARCHAR(255)        NOT NULL,
    PRIMARY KEY     (fk_ir_rec, fk_ir_ing),
    FOREIGN KEY     fk_ir_rec           REFERENCES  Receta(rec_id),
    FOREIGN KEY     fk_ir_ing           REFERENCES  Ingrediente(ing_id),
    CONSTRAINT      chk_ir_cantidad     CHECK (ir_cantidad > 0),
    CONSTRAINT      chk_ir_unidad       CHECK 
    (
        ir_unidad IN ('gramos', 'kilogramos', 'litros', 'mililitros')
    )
);
CREATE TABLE V_Receta(
    cantgr          INT             NOT NULL,
    fk_vr_rec       VARCHAR(255)    NOT NULL,
    fk_vr_v         VARCHAR(255)    NOT NULL,
    PRIMARY KEY     (fk_vr_rec, fk_vr_v),
    FOREIGN KEY     fk_vr_rec       REFERENCES  Receta(rec_id),
    FOREIGN KEY     fk_vr_v         REFERENCES  Variedad(v_id)
);