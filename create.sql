create table Variedad(
    var_id
    var_nom
    var_maduracion
    var_paisorigen
    var_desc
);
create table Cultivo(
    cult_id
    cult_calibre
    cult_prodanual
    cult_periodoini
    cult_periodofin
    cult_destexport
);
create table Produccion(
    prod_id
    prod_year
    prod_logradakg
);
create table Asociacion(
    asoc_id
    asoc_nom
    asoc_dir
);
create table Productor(
    p_id
    p_nom
    p_dir
    p_envase
);
create table Proveedor(
    prov_id
    prov_nom
    prov_negocio
    prov_dir
);
create table Padrino(
    pad_id
    pad_nom
    pad_seg_nom
    pad_ape
    pad_seg_ape
);
create table Apadrinamiento();
create table Converion();
create table Ciudad();
create table Region();
create table Pais();
create table Cliente();
create table Contrato();
create table Renovacion();
create table Pago();
create table Formula();
create table Variable();
create table Detalle_Var();
create table Envio();
create table Precio_Promedio();
create table Resultado_Eval_Anual();
create table Receta();
create table Elaboracion();
create table Ingrediente_Receta();
create table Ingrediente();
create table Forma_Pago();
create table Var_Receta();
create table Prod_Conv();