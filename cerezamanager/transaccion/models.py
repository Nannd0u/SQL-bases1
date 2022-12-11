from django.db import models
from productores.models import Asociacion, Ciudad, Cultivo, Pais

# Create your models here.


class Convenio(models.Model):
    conv_id = models.IntegerField(primary_key=True)
    conv_ben = models.CharField(max_length=255)
    conv_fechaini = models.DateField()
    conv_fechafin = models.DateField(blank=True, null=True)
    fk_conv_asoc = models.ForeignKey(
        Asociacion, models.DO_NOTHING, db_column='fk_conv_asoc', blank=True, null=True)
    fk_conv_pp1 = models.ForeignKey(
        'PProv', models.DO_NOTHING, db_column='fk_conv_pp1', blank=True, null=True)
    fk_conv_pp2 = models.IntegerField(blank=True, null=True)

    class Meta:
        managed = True
        db_table = 'convenio'


class Cliente(models.Model):
    cli_id = models.IntegerField(primary_key=True)
    cli_nom = models.CharField(max_length=255)
    cli_tipo = models.CharField(max_length=255)
    cli_dir = models.CharField(max_length=255)
    cli_aceptacion = models.SmallIntegerField()
    fk_cli_ciu = models.ForeignKey(
        Ciudad, models.DO_NOTHING, db_column='fk_cli_ciu')

    class Meta:
        managed = True
        db_table = 'cliente'


class FormaPago(models.Model):
    fp_id = models.IntegerField(primary_key=True)
    fp_tipo = models.CharField(max_length=255)
    # This field type is a guess.
    fp_cant = models.TextField(blank=True, null=True)
    fp_porc = models.SmallIntegerField(blank=True, null=True)
    fp_cuota = models.SmallIntegerField(blank=True, null=True)
    fp_emision = models.DateField(blank=True, null=True)
    fp_envio = models.DateField(blank=True, null=True)
    fk_fp_p = models.ForeignKey(
        'Productor', models.DO_NOTHING, db_column='fk_fp_p')

    class Meta:
        managed = True
        db_table = 'forma_pago'
        unique_together = (('fp_id', 'fk_fp_p'),)


class Contrato(models.Model):
    cont_id = models.IntegerField(primary_key=True)
    cont_emision = models.DateField()
    cont_vencimiento = models.DateField()
    cont_descuento = models.SmallIntegerField(blank=True, null=True)
    cont_total = models.TextField()  # This field type is a guess.
    cont_transporte = models.CharField(max_length=255)
    cont_status = models.CharField(max_length=255)
    fk_cont_cli = models.ForeignKey(
        Cliente, models.DO_NOTHING, db_column='fk_cont_cli')
    fk_cont_p = models.ForeignKey(
        'Productor', models.DO_NOTHING, db_column='fk_cont_p')
    fk_forma_pago = models.ForeignKey(
        'FormaPago', models.DO_NOTHING, db_column='fk_forma_pago')

    class Meta:
        managed = True
        db_table = 'contrato'
        unique_together = (('cont_id', 'fk_cont_cli', 'fk_cont_p'),)


class Renovacion(models.Model):
    ren_id = models.IntegerField(primary_key=True)
    ren_renovar = models.DateField()
    ren_total = models.TextField()  # This field type is a guess.
    fk_ren_cont1 = models.ForeignKey(
        Contrato, models.DO_NOTHING, db_column='fk_ren_cont1')
    fk_ren_cont2 = models.IntegerField()
    fk_ren_cont3 = models.IntegerField()

    class Meta:
        managed = True
        db_table = 'renovacion'
        unique_together = (
            ('ren_id', 'fk_ren_cont1', 'fk_ren_cont2', 'fk_ren_cont3'),)


class Pago(models.Model):
    pag_id = models.IntegerField(primary_key=True)
    pag_fecha = models.DateField()
    pag_monto = models.TextField()  # This field type is a guess.
    fk_pag_cont1 = models.ForeignKey(
        Contrato, models.DO_NOTHING, db_column='fk_pag_cont1')
    fk_pag_cont2 = models.IntegerField()
    fk_pag_cont3 = models.IntegerField()

    class Meta:
        managed = True
        db_table = 'pago'
        unique_together = (
            ('pag_id', 'fk_pag_cont1', 'fk_pag_cont2', 'fk_pag_cont3'),)


class DetalleV(models.Model):
    dv_cantidad = models.IntegerField()
    dv_decuento = models.SmallIntegerField(blank=True, null=True)
    fk_dv_cont1 = models.OneToOneField(
        Contrato, models.DO_NOTHING, db_column='fk_dv_cont1', primary_key=True)
    fk_dv_cont2 = models.IntegerField()
    fk_dv_cont3 = models.IntegerField()
    fk_dv_cult = models.ForeignKey(
        Cultivo, models.DO_NOTHING, db_column='fk_dv_cult')

    class Meta:
        managed = True
        db_table = 'detalle_v'
        unique_together = (('fk_dv_cont1', 'fk_dv_cont2',
                            'fk_dv_cont3', 'fk_dv_cult'),)


class Envio(models.Model):
    env_id = models.IntegerField(primary_key=True)
    env_cantidad = models.IntegerField()
    fk_env_v = models.ForeignKey(
        'Variedad', models.DO_NOTHING, db_column='fk_env_v')
    fk_env_dv1 = models.ForeignKey(
        DetalleV, models.DO_NOTHING, db_column='fk_env_dv1')
    fk_env_dv2 = models.IntegerField()
    fk_env_dv3 = models.IntegerField()
    fk_env_dv4 = models.IntegerField()

    class Meta:
        managed = True
        db_table = 'envio'
        unique_together = (('env_id', 'fk_env_v', 'fk_env_dv1',
                            'fk_env_dv2', 'fk_env_dv3', 'fk_env_dv4'),)


class PrecioPromedio(models.Model):
    pro_id = models.IntegerField(primary_key=True)
    pro_fechaini = models.DateField()
    pro_fechafin = models.DateField(blank=True, null=True)
    pro_precio = models.TextField()  # This field type is a guess.
    pro_calibre = models.CharField(max_length=255)
    fk_pro_v = models.ForeignKey(
        'Variedad', models.DO_NOTHING, db_column='fk_pro_v')
    fk_pro_pais = models.ForeignKey(
        Pais, models.DO_NOTHING, db_column='fk_pro_pais')

    class Meta:
        managed = True
        db_table = 'precio_promedio'
        unique_together = (('pro_id', 'fk_pro_v', 'fk_pro_pais'),)
